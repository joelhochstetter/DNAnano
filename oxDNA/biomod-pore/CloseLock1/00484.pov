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
	<24.431223, 35.254463, 35.259201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310675, 34.940983, 35.041950>,  <24.238346, 34.752895, 34.911598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310675, 34.940983, 35.041950>,  <24.431223, 35.254463, 35.259201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310675, 34.940983, 35.041950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720543, 0.185883, -0.668030,
		0.624494, -0.592673, 0.508670,
		-0.301371, -0.783700, -0.543130,
		24.220264, 34.705872, 34.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975231, 34.817604, 35.059265>,  <24.431223, 35.254463, 35.259201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975231, 34.817604, 35.059265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711266, 34.742081, 34.768375>,  <24.552885, 34.696766, 34.593842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711266, 34.742081, 34.768375>,  <24.975231, 34.817604, 35.059265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711266, 34.742081, 34.768375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679420, 0.263279, -0.684889,
		0.320780, -0.946062, -0.045458,
		-0.659916, -0.188814, -0.727228,
		24.513290, 34.685436, 34.550205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431356, 34.683174, 34.450726>,  <24.975231, 34.817604, 35.059265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431356, 34.683174, 34.450726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057737, 34.754612, 34.327007>,  <24.833567, 34.797474, 34.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057737, 34.754612, 34.327007>,  <25.431356, 34.683174, 34.450726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057737, 34.754612, 34.327007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353772, 0.581512, -0.732590,
		0.049023, -0.793693, -0.606340,
		-0.934046, 0.178593, -0.309294,
		24.777523, 34.808189, 34.234219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433317, 34.986362, 33.831730>,  <25.431356, 34.683174, 34.450726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433317, 34.986362, 33.831730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035776, 34.996822, 33.788692>,  <24.797253, 35.003098, 33.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035776, 34.996822, 33.788692>,  <25.433317, 34.986362, 33.831730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035776, 34.996822, 33.788692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110514, 0.294196, -0.949334,
		0.006827, -0.955387, -0.295277,
		-0.993851, 0.026151, -0.107592,
		24.737621, 35.004669, 33.756416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166883, 34.681709, 33.184746>,  <25.433317, 34.986362, 33.831730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166883, 34.681709, 33.184746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917522, 34.967670, 33.311417>,  <24.767906, 35.139248, 33.387421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917522, 34.967670, 33.311417>,  <25.166883, 34.681709, 33.184746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917522, 34.967670, 33.311417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047885, 0.369342, -0.928059,
		-0.780435, -0.593717, -0.196015,
		-0.623401, 0.714904, 0.316677,
		24.730503, 35.182140, 33.406422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563046, 34.742458, 32.715263>,  <25.166883, 34.681709, 33.184746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563046, 34.742458, 32.715263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656158, 35.089214, 32.891590>,  <24.712027, 35.297268, 32.997387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656158, 35.089214, 32.891590>,  <24.563046, 34.742458, 32.715263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656158, 35.089214, 32.891590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030789, 0.459607, -0.887588,
		-0.972042, 0.193042, 0.133679,
		0.232782, 0.866889, 0.440814,
		24.725992, 35.349281, 33.023834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213335, 35.463173, 32.540154>,  <24.563046, 34.742458, 32.715263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213335, 35.463173, 32.540154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565956, 35.606209, 32.663441>,  <24.777529, 35.692032, 32.737411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565956, 35.606209, 32.663441>,  <24.213335, 35.463173, 32.540154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565956, 35.606209, 32.663441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100749, 0.495334, -0.862841,
		-0.461212, 0.791691, 0.400635,
		0.881552, 0.357589, 0.308216,
		24.830421, 35.713486, 32.755905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259443, 36.209354, 32.466160>,  <24.213335, 35.463173, 32.540154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259443, 36.209354, 32.466160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637367, 36.078876, 32.453960>,  <24.864122, 36.000587, 32.446640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637367, 36.078876, 32.453960>,  <24.259443, 36.209354, 32.466160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637367, 36.078876, 32.453960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169832, 0.567244, -0.805848,
		0.280164, 0.756194, 0.591336,
		0.944810, -0.326197, -0.030495,
		24.920811, 35.981018, 32.444813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742167, 36.828533, 32.393127>,  <24.259443, 36.209354, 32.466160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742167, 36.828533, 32.393127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951469, 36.508736, 32.275135>,  <25.077051, 36.316856, 32.204342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951469, 36.508736, 32.275135>,  <24.742167, 36.828533, 32.393127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951469, 36.508736, 32.275135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381187, 0.529176, -0.758070,
		0.762166, 0.284225, 0.581652,
		0.523258, -0.799493, -0.294977,
		25.108446, 36.268887, 32.186642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261892, 37.101768, 32.171852>,  <24.742167, 36.828533, 32.393127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261892, 37.101768, 32.171852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320698, 36.730053, 32.036312>,  <25.355982, 36.507023, 31.954988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320698, 36.730053, 32.036312>,  <25.261892, 37.101768, 32.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320698, 36.730053, 32.036312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493852, 0.365777, -0.788871,
		0.857028, -0.051364, 0.512704,
		0.147016, -0.929284, -0.338847,
		25.364803, 36.451267, 31.934658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987263, 37.067528, 31.827053>,  <25.261892, 37.101768, 32.171852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987263, 37.067528, 31.827053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740158, 36.787495, 31.683805>,  <25.591894, 36.619473, 31.597857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740158, 36.787495, 31.683805>,  <25.987263, 37.067528, 31.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740158, 36.787495, 31.683805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427452, 0.083291, -0.900193,
		0.660040, -0.709185, 0.247799,
		-0.617764, -0.700085, -0.358118,
		25.554829, 36.577469, 31.576370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390366, 36.696648, 31.217045>,  <25.987263, 37.067528, 31.827053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390366, 36.696648, 31.217045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005730, 36.606102, 31.154947>,  <25.774948, 36.551773, 31.117689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005730, 36.606102, 31.154947>,  <26.390366, 36.696648, 31.217045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005730, 36.606102, 31.154947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188814, -0.135002, -0.972689,
		0.199223, -0.964642, 0.172558,
		-0.961592, -0.226363, -0.155243,
		25.717253, 36.538193, 31.108374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361231, 35.976212, 30.796419>,  <26.390366, 36.696648, 31.217045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361231, 35.976212, 30.796419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032558, 36.197987, 30.743607>,  <25.835354, 36.331051, 30.711918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032558, 36.197987, 30.743607>,  <26.361231, 35.976212, 30.796419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032558, 36.197987, 30.743607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039655, -0.175481, -0.983684,
		-0.568565, -0.813511, 0.122203,
		-0.821682, 0.554442, -0.132032,
		25.786055, 36.364319, 30.703997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960897, 35.585186, 30.396896>,  <26.361231, 35.976212, 30.796419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960897, 35.585186, 30.396896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807144, 35.952484, 30.358784>,  <25.714891, 36.172863, 30.335917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807144, 35.952484, 30.358784>,  <25.960897, 35.585186, 30.396896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807144, 35.952484, 30.358784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020898, -0.111841, -0.993506,
		-0.922937, -0.379895, 0.062180,
		-0.384382, 0.918243, -0.095283,
		25.691830, 36.227959, 30.330198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504616, 35.449486, 29.922844>,  <25.960897, 35.585186, 30.396896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504616, 35.449486, 29.922844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547209, 35.846916, 29.907480>,  <25.572765, 36.085373, 29.898262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547209, 35.846916, 29.907480>,  <25.504616, 35.449486, 29.922844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547209, 35.846916, 29.907480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090862, -0.028746, -0.995448,
		-0.990154, 0.109488, 0.087217,
		0.106483, 0.993572, -0.038411,
		25.579153, 36.144989, 29.895956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175894, 35.657887, 29.324806>,  <25.504616, 35.449486, 29.922844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175894, 35.657887, 29.324806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405258, 35.970284, 29.423807>,  <25.542877, 36.157722, 29.483208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405258, 35.970284, 29.423807>,  <25.175894, 35.657887, 29.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405258, 35.970284, 29.423807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261538, 0.111796, -0.958697,
		-0.776401, 0.614458, -0.140154,
		0.573410, 0.780989, 0.247503,
		25.577282, 36.204578, 29.498058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915346, 36.289600, 28.944382>,  <25.175894, 35.657887, 29.324806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915346, 36.289600, 28.944382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296251, 36.349312, 29.050898>,  <25.524796, 36.385139, 29.114807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296251, 36.349312, 29.050898>,  <24.915346, 36.289600, 28.944382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296251, 36.349312, 29.050898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213835, 0.296378, -0.930825,
		-0.217871, 0.943333, 0.250311,
		0.952264, 0.149274, 0.266289,
		25.581930, 36.394093, 29.130785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169455, 36.914658, 28.534800>,  <24.915346, 36.289600, 28.944382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169455, 36.914658, 28.534800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489384, 36.713940, 28.666546>,  <25.681341, 36.593510, 28.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489384, 36.713940, 28.666546>,  <25.169455, 36.914658, 28.534800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489384, 36.713940, 28.666546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518780, 0.301911, -0.799823,
		0.301911, 0.810584, 0.501799,
		0.799823, -0.501799, 0.329365,
		25.729330, 36.563400, 28.765356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706396, 37.249672, 28.211977>,  <25.169455, 36.914658, 28.534800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706396, 37.249672, 28.211977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888788, 36.910461, 28.320005>,  <25.998224, 36.706936, 28.384823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888788, 36.910461, 28.320005>,  <25.706396, 37.249672, 28.211977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888788, 36.910461, 28.320005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467631, -0.029901, -0.883418,
		0.757234, 0.529116, 0.382927,
		0.455981, -0.848022, 0.270073,
		26.025583, 36.656055, 28.401028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419701, 37.268112, 28.106852>,  <25.706396, 37.249672, 28.211977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419701, 37.268112, 28.106852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328089, 36.879051, 28.091400>,  <26.273121, 36.645615, 28.082129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328089, 36.879051, 28.091400>,  <26.419701, 37.268112, 28.106852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328089, 36.879051, 28.091400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428098, -0.065005, -0.901391,
		0.874229, -0.222985, 0.431279,
		-0.229032, -0.972652, -0.038630,
		26.259378, 36.587257, 28.079811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993420, 37.014267, 27.755093>,  <26.419701, 37.268112, 28.106852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993420, 37.014267, 27.755093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719898, 36.725838, 27.710421>,  <26.555786, 36.552780, 27.683619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719898, 36.725838, 27.710421>,  <26.993420, 37.014267, 27.755093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719898, 36.725838, 27.710421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221963, -0.059760, -0.973222,
		0.695087, -0.690280, 0.200915,
		-0.683803, -0.721070, -0.111678,
		26.514757, 36.509518, 27.676918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324141, 36.510273, 27.286085>,  <26.993420, 37.014267, 27.755093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324141, 36.510273, 27.286085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931431, 36.437122, 27.265411>,  <26.695805, 36.393230, 27.253008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931431, 36.437122, 27.265411>,  <27.324141, 36.510273, 27.286085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931431, 36.437122, 27.265411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076013, -0.128625, -0.988776,
		0.174180, -0.974685, 0.140182,
		-0.981776, -0.182881, -0.051684,
		26.636898, 36.382259, 27.249907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329756, 36.169735, 26.667690>,  <27.324141, 36.510273, 27.286085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329756, 36.169735, 26.667690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948538, 36.259758, 26.748734>,  <26.719807, 36.313774, 26.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948538, 36.259758, 26.748734>,  <27.329756, 36.169735, 26.667690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948538, 36.259758, 26.748734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199317, 0.037493, -0.979218,
		-0.227980, -0.973623, 0.009126,
		-0.953046, 0.225061, 0.202607,
		26.662624, 36.327274, 26.809515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837854, 35.678188, 26.401993>,  <27.329756, 36.169735, 26.667690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837854, 35.678188, 26.401993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664375, 36.038460, 26.412504>,  <26.560287, 36.254623, 26.418810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664375, 36.038460, 26.412504>,  <26.837854, 35.678188, 26.401993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664375, 36.038460, 26.412504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035810, 0.011911, -0.999288,
		-0.900347, -0.434329, 0.027087,
		-0.433696, 0.900676, 0.026277,
		26.534266, 36.308662, 26.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791830, 34.854469, 26.546181>,  <26.837854, 35.678188, 26.401993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791830, 34.854469, 26.546181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785372, 34.462471, 26.625532>,  <26.781498, 34.227272, 26.673143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785372, 34.462471, 26.625532>,  <26.791830, 34.854469, 26.546181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785372, 34.462471, 26.625532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657250, -0.139117, -0.740722,
		0.753500, -0.142343, -0.641854,
		-0.016144, -0.979992, 0.198379,
		26.780529, 34.168472, 26.685045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087372, 34.428143, 26.048344>,  <26.791830, 34.854469, 26.546181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087372, 34.428143, 26.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816490, 34.189217, 26.220211>,  <26.653961, 34.045860, 26.323332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816490, 34.189217, 26.220211>,  <27.087372, 34.428143, 26.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816490, 34.189217, 26.220211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361992, -0.237930, -0.901305,
		0.640592, -0.765903, -0.055096,
		-0.677203, -0.597313, 0.429666,
		26.613329, 34.010021, 26.349112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626776, 34.668251, 25.613922>,  <27.087372, 34.428143, 26.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626776, 34.668251, 25.613922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743095, 34.650700, 25.231611>,  <26.812887, 34.640171, 25.002224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743095, 34.650700, 25.231611>,  <26.626776, 34.668251, 25.613922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743095, 34.650700, 25.231611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235340, -0.971538, -0.027003,
		-0.927389, 0.232785, -0.292851,
		0.290801, -0.043877, -0.955777,
		26.830336, 34.637535, 24.944878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130087, 34.257595, 25.254456>,  <26.626776, 34.668251, 25.613922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130087, 34.257595, 25.254456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488770, 34.264591, 25.077545>,  <26.703979, 34.268787, 24.971399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488770, 34.264591, 25.077545>,  <26.130087, 34.257595, 25.254456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488770, 34.264591, 25.077545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136341, -0.939721, -0.313586,
		-0.421102, 0.341496, -0.840270,
		0.896708, 0.017489, -0.442278,
		26.757782, 34.269836, 24.944862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119806, 33.917763, 24.616371>,  <26.130087, 34.257595, 25.254456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119806, 33.917763, 24.616371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498299, 33.865650, 24.734808>,  <26.725395, 33.834381, 24.805870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498299, 33.865650, 24.734808>,  <26.119806, 33.917763, 24.616371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498299, 33.865650, 24.734808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071752, -0.977042, -0.200603,
		0.315427, 0.168572, -0.933857,
		0.946233, -0.130282, 0.296090,
		26.782169, 33.826565, 24.823635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434361, 33.609833, 24.047806>,  <26.119806, 33.917763, 24.616371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434361, 33.609833, 24.047806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642546, 33.531418, 24.380236>,  <26.767458, 33.484367, 24.579693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642546, 33.531418, 24.380236>,  <26.434361, 33.609833, 24.047806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642546, 33.531418, 24.380236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172371, -0.977372, -0.122602,
		0.836304, -0.079443, -0.542480,
		0.520465, -0.196041, 0.831074,
		26.798685, 33.472607, 24.629559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953743, 33.097771, 23.861391>,  <26.434361, 33.609833, 24.047806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953743, 33.097771, 23.861391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832890, 33.095970, 24.242693>,  <26.760378, 33.094891, 24.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832890, 33.095970, 24.242693>,  <26.953743, 33.097771, 23.861391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832890, 33.095970, 24.242693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088445, -0.995543, -0.032736,
		0.949154, -0.094201, 0.300387,
		-0.302132, -0.004504, 0.953255,
		26.742250, 33.094620, 24.528669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507381, 32.807316, 24.312782>,  <26.953743, 33.097771, 23.861391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507381, 32.807316, 24.312782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111891, 32.775394, 24.363462>,  <26.874598, 32.756241, 24.393871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111891, 32.775394, 24.363462>,  <27.507381, 32.807316, 24.312782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111891, 32.775394, 24.363462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045201, -0.965747, -0.255517,
		0.142753, -0.246909, 0.958466,
		-0.988726, -0.079800, 0.126703,
		26.815273, 32.751453, 24.401474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007021, 32.330647, 24.606388>,  <27.507381, 32.807316, 24.312782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007021, 32.330647, 24.606388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111498, 31.944679, 24.595734>,  <27.174185, 31.713099, 24.589342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111498, 31.944679, 24.595734>,  <27.007021, 32.330647, 24.606388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111498, 31.944679, 24.595734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390584, 0.080414, 0.917049,
		-0.882736, -0.249930, 0.397885,
		0.261193, -0.964919, -0.026635,
		27.189856, 31.655203, 24.587744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738289, 31.830347, 25.209152>,  <27.007021, 32.330647, 24.606388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738289, 31.830347, 25.209152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085239, 31.695227, 25.062973>,  <27.293409, 31.614155, 24.975266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085239, 31.695227, 25.062973>,  <26.738289, 31.830347, 25.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085239, 31.695227, 25.062973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397029, 0.026963, 0.917410,
		-0.300050, -0.940831, 0.157505,
		0.867374, -0.337803, -0.365446,
		27.345451, 31.593885, 24.953339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963703, 31.133390, 25.574703>,  <26.738289, 31.830347, 25.209152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963703, 31.133390, 25.574703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240015, 31.383257, 25.429035>,  <27.405802, 31.533176, 25.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240015, 31.383257, 25.429035>,  <26.963703, 31.133390, 25.574703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240015, 31.383257, 25.429035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244211, 0.272497, 0.930648,
		0.680578, -0.731806, 0.035685,
		0.690778, 0.624665, -0.364170,
		27.447248, 31.570656, 25.319784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634769, 30.909189, 25.816040>,  <26.963703, 31.133390, 25.574703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634769, 30.909189, 25.816040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627941, 31.305796, 25.764494>,  <27.623844, 31.543758, 25.733566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627941, 31.305796, 25.764494>,  <27.634769, 30.909189, 25.816040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627941, 31.305796, 25.764494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307825, 0.127837, 0.942816,
		0.951290, -0.023574, -0.307396,
		-0.017071, 0.991515, -0.128867,
		27.622820, 31.603251, 25.725834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250359, 31.245499, 26.030134>,  <27.634769, 30.909189, 25.816040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250359, 31.245499, 26.030134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991224, 31.549397, 26.052416>,  <27.835745, 31.731735, 26.065784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991224, 31.549397, 26.052416>,  <28.250359, 31.245499, 26.030134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991224, 31.549397, 26.052416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249953, 0.142921, 0.957652,
		0.719608, 0.634323, -0.282489,
		-0.647834, 0.759742, 0.055703,
		27.796875, 31.777319, 26.069126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583939, 31.760441, 26.312929>,  <28.250359, 31.245499, 26.030134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583939, 31.760441, 26.312929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196445, 31.826267, 26.387201>,  <27.963949, 31.865763, 26.431765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196445, 31.826267, 26.387201>,  <28.583939, 31.760441, 26.312929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196445, 31.826267, 26.387201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231719, 0.332556, 0.914173,
		0.088692, 0.928614, -0.360291,
		-0.968731, 0.164566, 0.185683,
		27.905827, 31.875637, 26.442905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557159, 32.341251, 26.579664>,  <28.583939, 31.760441, 26.312929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557159, 32.341251, 26.579664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205315, 32.191826, 26.697464>,  <27.994207, 32.102169, 26.768145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205315, 32.191826, 26.697464>,  <28.557159, 32.341251, 26.579664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205315, 32.191826, 26.697464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139883, 0.388597, 0.910728,
		-0.454656, 0.842284, -0.289561,
		-0.879614, -0.373563, 0.294499,
		27.941431, 32.079758, 26.785814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356777, 32.848297, 27.016798>,  <28.557159, 32.341251, 26.579664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356777, 32.848297, 27.016798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107189, 32.544464, 27.090229>,  <27.957436, 32.362164, 27.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107189, 32.544464, 27.090229>,  <28.356777, 32.848297, 27.016798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107189, 32.544464, 27.090229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122229, 0.326897, 0.937122,
		-0.771829, 0.562299, -0.296816,
		-0.623971, -0.759578, 0.183580,
		27.919998, 32.316589, 27.145304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654430, 33.123146, 27.109138>,  <28.356777, 32.848297, 27.016798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654430, 33.123146, 27.109138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706137, 32.778912, 27.306190>,  <27.737160, 32.572372, 27.424421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706137, 32.778912, 27.306190>,  <27.654430, 33.123146, 27.109138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706137, 32.778912, 27.306190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209042, 0.461984, 0.861900,
		-0.969326, -0.214394, -0.120180,
		0.129265, -0.860584, 0.492631,
		27.744917, 32.520737, 27.453979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126600, 33.094006, 27.719757>,  <27.654430, 33.123146, 27.109138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126600, 33.094006, 27.719757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401028, 32.824951, 27.830658>,  <27.565685, 32.663517, 27.897198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401028, 32.824951, 27.830658>,  <27.126600, 33.094006, 27.719757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401028, 32.824951, 27.830658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126216, 0.265261, 0.955880,
		-0.716503, -0.690794, 0.097090,
		0.686071, -0.672637, 0.277250,
		27.606850, 32.623161, 27.913834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814388, 32.684391, 28.277016>,  <27.126600, 33.094006, 27.719757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814388, 32.684391, 28.277016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210112, 32.633263, 28.305098>,  <27.447546, 32.602585, 28.321947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210112, 32.633263, 28.305098>,  <26.814388, 32.684391, 28.277016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210112, 32.633263, 28.305098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018401, 0.368143, 0.929587,
		-0.144666, -0.920941, 0.361855,
		0.989309, -0.127821, 0.070204,
		27.506905, 32.594917, 28.326159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803871, 32.553993, 29.003689>,  <26.814388, 32.684391, 28.277016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803871, 32.553993, 29.003689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191532, 32.580849, 28.908834>,  <27.424129, 32.596962, 28.851921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191532, 32.580849, 28.908834>,  <26.803871, 32.553993, 29.003689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191532, 32.580849, 28.908834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191897, 0.398207, 0.896999,
		0.154649, -0.914836, 0.373041,
		0.969154, 0.067134, -0.237136,
		27.482279, 32.600990, 28.837694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235107, 32.217381, 29.598553>,  <26.803871, 32.553993, 29.003689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235107, 32.217381, 29.598553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483768, 32.473133, 29.417561>,  <27.632965, 32.626583, 29.308966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483768, 32.473133, 29.417561>,  <27.235107, 32.217381, 29.598553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483768, 32.473133, 29.417561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222319, 0.409886, 0.884629,
		0.751082, -0.650526, 0.112659,
		0.621651, 0.639382, -0.452482,
		27.670263, 32.664948, 29.281816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922121, 32.156513, 29.967247>,  <27.235107, 32.217381, 29.598553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922121, 32.156513, 29.967247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880535, 32.515633, 29.796061>,  <27.855583, 32.731102, 29.693348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880535, 32.515633, 29.796061>,  <27.922121, 32.156513, 29.967247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880535, 32.515633, 29.796061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274816, 0.439478, 0.855182,
		0.955859, -0.028702, -0.292419,
		-0.103966, 0.897795, -0.427967,
		27.849346, 32.784969, 29.667671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517487, 32.604988, 30.141218>,  <27.922121, 32.156513, 29.967247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517487, 32.604988, 30.141218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220163, 32.844887, 30.022699>,  <28.041769, 32.988827, 29.951588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220163, 32.844887, 30.022699>,  <28.517487, 32.604988, 30.141218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220163, 32.844887, 30.022699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282196, 0.682717, 0.673990,
		0.606511, 0.417371, -0.676717,
		-0.743310, 0.599749, -0.296295,
		27.997169, 33.024811, 29.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745188, 33.281689, 30.404427>,  <28.517487, 32.604988, 30.141218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745188, 33.281689, 30.404427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363230, 33.353447, 30.309774>,  <28.134054, 33.396503, 30.252983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363230, 33.353447, 30.309774>,  <28.745188, 33.281689, 30.404427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363230, 33.353447, 30.309774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043370, 0.704074, 0.708800,
		0.293760, 0.687092, -0.664537,
		-0.954895, 0.179396, -0.236628,
		28.076761, 33.407265, 30.238787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774115, 33.966778, 30.436712>,  <28.745188, 33.281689, 30.404427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774115, 33.966778, 30.436712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383701, 33.879761, 30.434486>,  <28.149452, 33.827549, 30.433151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383701, 33.879761, 30.434486>,  <28.774115, 33.966778, 30.436712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383701, 33.879761, 30.434486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162368, 0.710975, 0.684216,
		-0.144892, 0.668721, -0.729259,
		-0.976034, -0.217546, -0.005564,
		28.090891, 33.814495, 30.432817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347322, 34.629768, 30.287365>,  <28.774115, 33.966778, 30.436712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347322, 34.629768, 30.287365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137726, 34.376617, 30.515362>,  <28.011967, 34.224728, 30.652161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137726, 34.376617, 30.515362>,  <28.347322, 34.629768, 30.287365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137726, 34.376617, 30.515362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077561, 0.701901, 0.708040,
		-0.848184, 0.326798, -0.416878,
		-0.523993, -0.632881, 0.569994,
		27.980528, 34.186752, 30.686359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696245, 34.974922, 30.439585>,  <28.347322, 34.629768, 30.287365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696245, 34.974922, 30.439585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788610, 34.711887, 30.726433>,  <27.844030, 34.554066, 30.898542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788610, 34.711887, 30.726433>,  <27.696245, 34.974922, 30.439585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788610, 34.711887, 30.726433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159746, 0.701416, 0.694620,
		-0.959771, -0.274956, 0.056921,
		0.230915, -0.657583, 0.717122,
		27.857885, 34.514614, 30.941568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293545, 35.260311, 30.932219>,  <27.696245, 34.974922, 30.439585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293545, 35.260311, 30.932219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534195, 35.009258, 31.129854>,  <27.678585, 34.858627, 31.248436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534195, 35.009258, 31.129854>,  <27.293545, 35.260311, 30.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534195, 35.009258, 31.129854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112808, 0.545594, 0.830423,
		-0.790772, -0.555341, 0.257441,
		0.601626, -0.627634, 0.494087,
		27.714684, 34.820969, 31.278080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878622, 35.054615, 31.605452>,  <27.293545, 35.260311, 30.932219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878622, 35.054615, 31.605452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261307, 34.988503, 31.701269>,  <27.490917, 34.948833, 31.758760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261307, 34.988503, 31.701269>,  <26.878622, 35.054615, 31.605452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261307, 34.988503, 31.701269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188305, 0.276027, 0.942523,
		-0.221904, -0.946832, 0.232955,
		0.956713, -0.165283, 0.239545,
		27.548321, 34.938919, 31.773132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847092, 34.991943, 32.269623>,  <26.878622, 35.054615, 31.605452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847092, 34.991943, 32.269623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245678, 34.978058, 32.239033>,  <27.484831, 34.969727, 32.220680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245678, 34.978058, 32.239033>,  <26.847092, 34.991943, 32.269623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245678, 34.978058, 32.239033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083046, 0.271513, 0.958845,
		-0.012520, -0.961809, 0.273436,
		0.996467, -0.034713, -0.076475,
		27.544619, 34.967644, 32.216091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184690, 34.449902, 32.725349>,  <26.847092, 34.991943, 32.269623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184690, 34.449902, 32.725349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459454, 34.731232, 32.652149>,  <27.624311, 34.900028, 32.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459454, 34.731232, 32.652149>,  <27.184690, 34.449902, 32.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459454, 34.731232, 32.652149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062881, 0.193349, 0.979113,
		0.724019, -0.684068, 0.088588,
		0.686908, 0.703325, -0.183004,
		27.665525, 34.942230, 32.597248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812870, 34.332989, 33.249847>,  <27.184690, 34.449902, 32.725349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812870, 34.332989, 33.249847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816000, 34.711246, 33.119801>,  <27.817879, 34.938202, 33.041775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816000, 34.711246, 33.119801>,  <27.812870, 34.332989, 33.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816000, 34.711246, 33.119801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144564, 0.320638, 0.936105,
		0.989465, -0.054327, -0.134196,
		0.007827, 0.945643, -0.325114,
		27.818348, 34.994938, 33.022266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312361, 34.693428, 33.636082>,  <27.812870, 34.332989, 33.249847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312361, 34.693428, 33.636082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103832, 34.989185, 33.465660>,  <27.978714, 35.166641, 33.363407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103832, 34.989185, 33.465660>,  <28.312361, 34.693428, 33.636082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103832, 34.989185, 33.465660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124657, 0.559895, 0.819133,
		0.844206, 0.373922, -0.384056,
		-0.521323, 0.739392, -0.426054,
		27.947435, 35.211002, 33.337845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607061, 35.344822, 33.927349>,  <28.312361, 34.693428, 33.636082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607061, 35.344822, 33.927349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245342, 35.455036, 33.796921>,  <28.028311, 35.521164, 33.718662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245342, 35.455036, 33.796921>,  <28.607061, 35.344822, 33.927349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245342, 35.455036, 33.796921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249419, 0.278887, 0.927369,
		0.346456, 0.919948, -0.183475,
		-0.904300, 0.275531, -0.326074,
		27.974052, 35.537697, 33.699097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227215, 34.957424, 33.843178>,  <28.607061, 35.344822, 33.927349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227215, 34.957424, 33.843178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318867, 35.265518, 34.081253>,  <29.373857, 35.450375, 34.224098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318867, 35.265518, 34.081253>,  <29.227215, 34.957424, 33.843178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318867, 35.265518, 34.081253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368788, -0.634559, 0.679213,
		0.900830, 0.063869, -0.429448,
		0.229130, 0.770231, 0.595184,
		29.387606, 35.496586, 34.259808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980951, 35.083168, 34.108475>,  <29.227215, 34.957424, 33.843178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980951, 35.083168, 34.108475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715565, 35.220890, 34.374187>,  <29.556334, 35.303524, 34.533615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715565, 35.220890, 34.374187>,  <29.980951, 35.083168, 34.108475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715565, 35.220890, 34.374187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434558, -0.545406, 0.716723,
		0.609075, 0.764188, 0.212235,
		-0.663465, 0.344310, 0.664278,
		29.516525, 35.324184, 34.573471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406023, 35.145977, 34.697857>,  <29.980951, 35.083168, 34.108475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406023, 35.145977, 34.697857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029526, 35.131042, 34.832119>,  <29.803627, 35.122082, 34.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029526, 35.131042, 34.832119>,  <30.406023, 35.145977, 34.697857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029526, 35.131042, 34.832119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290222, -0.597677, 0.747364,
		0.172708, 0.800867, 0.573397,
		-0.941246, -0.037337, 0.335653,
		29.747152, 35.119843, 34.932816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365406, 35.372437, 35.325680>,  <30.406023, 35.145977, 34.697857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365406, 35.372437, 35.325680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091145, 35.082752, 35.296303>,  <29.926588, 34.908943, 35.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091145, 35.082752, 35.296303>,  <30.365406, 35.372437, 35.325680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091145, 35.082752, 35.296303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393574, -0.453700, 0.799535,
		-0.612352, 0.519301, 0.596113,
		-0.685656, -0.724212, -0.073440,
		29.885448, 34.865490, 35.274269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199574, 35.204262, 35.990910>,  <30.365406, 35.372437, 35.325680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199574, 35.204262, 35.990910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142927, 34.876431, 35.768837>,  <30.108940, 34.679729, 35.635593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142927, 34.876431, 35.768837>,  <30.199574, 35.204262, 35.990910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142927, 34.876431, 35.768837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387231, -0.562011, 0.730886,
		-0.911042, -0.111481, 0.396957,
		-0.141615, -0.819582, -0.555185,
		30.100443, 34.630554, 35.602280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701185, 34.790611, 36.366043>,  <30.199574, 35.204262, 35.990910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701185, 34.790611, 36.366043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982941, 34.622059, 36.137562>,  <30.151995, 34.520927, 36.000473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982941, 34.622059, 36.137562>,  <29.701185, 34.790611, 36.366043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982941, 34.622059, 36.137562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578566, -0.125356, 0.805945,
		-0.411215, -0.898177, 0.155499,
		0.704389, -0.421383, -0.571202,
		30.194258, 34.495644, 35.966202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984056, 34.220894, 36.775394>,  <29.701185, 34.790611, 36.366043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984056, 34.220894, 36.775394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285742, 34.300434, 36.525074>,  <30.466753, 34.348160, 36.374882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285742, 34.300434, 36.525074>,  <29.984056, 34.220894, 36.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285742, 34.300434, 36.525074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656599, -0.219128, 0.721706,
		0.006383, -0.955218, -0.295835,
		0.754212, 0.198852, -0.625796,
		30.512005, 34.360088, 36.337334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500866, 33.778812, 36.960247>,  <29.984056, 34.220894, 36.775394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500866, 33.778812, 36.960247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719145, 34.030960, 36.739391>,  <30.850111, 34.182247, 36.606876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719145, 34.030960, 36.739391>,  <30.500866, 33.778812, 36.960247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719145, 34.030960, 36.739391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759646, -0.093956, 0.643514,
		0.353771, -0.770592, -0.530126,
		0.545695, 0.630365, -0.552139,
		30.882853, 34.220070, 36.573750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047491, 33.433277, 36.942192>,  <30.500866, 33.778812, 36.960247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047491, 33.433277, 36.942192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167953, 33.803440, 36.850170>,  <31.240231, 34.025539, 36.794956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167953, 33.803440, 36.850170>,  <31.047491, 33.433277, 36.942192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167953, 33.803440, 36.850170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873219, -0.170697, 0.456456,
		0.383139, -0.338349, -0.859491,
		0.301154, 0.925409, -0.230052,
		31.258299, 34.081062, 36.781155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739769, 33.358337, 36.937778>,  <31.047491, 33.433277, 36.942192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739769, 33.358337, 36.937778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689922, 33.754818, 36.955654>,  <31.660013, 33.992706, 36.966381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689922, 33.754818, 36.955654>,  <31.739769, 33.358337, 36.937778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689922, 33.754818, 36.955654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784635, 0.070880, 0.615893,
		0.607304, 0.111816, -0.786561,
		-0.124618, 0.991198, 0.044689,
		31.652536, 34.052177, 36.969059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437309, 33.647827, 36.877838>,  <31.739769, 33.358337, 36.937778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437309, 33.647827, 36.877838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208138, 33.916103, 37.066273>,  <32.070633, 34.077068, 37.179333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208138, 33.916103, 37.066273>,  <32.437309, 33.647827, 36.877838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208138, 33.916103, 37.066273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664847, 0.044190, 0.745672,
		0.479301, 0.740416, -0.471227,
		-0.572931, 0.670694, 0.471083,
		32.036259, 34.117313, 37.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905365, 34.071545, 37.136818>,  <32.437309, 33.647827, 36.877838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905365, 34.071545, 37.136818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573887, 34.144432, 37.348499>,  <32.375000, 34.188164, 37.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573887, 34.144432, 37.348499>,  <32.905365, 34.071545, 37.136818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573887, 34.144432, 37.348499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549230, 0.082749, 0.831564,
		0.107737, 0.979769, -0.168655,
		-0.828697, 0.182221, 0.529203,
		32.325279, 34.199097, 37.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076210, 34.544258, 37.571686>,  <32.905365, 34.071545, 37.136818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076210, 34.544258, 37.571686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750408, 34.400341, 37.753731>,  <32.554928, 34.313992, 37.862957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750408, 34.400341, 37.753731>,  <33.076210, 34.544258, 37.571686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750408, 34.400341, 37.753731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480757, 0.020506, 0.876614,
		-0.324733, 0.932806, 0.156271,
		-0.814507, -0.359794, 0.455112,
		32.506058, 34.292404, 37.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999084, 34.958309, 38.123711>,  <33.076210, 34.544258, 37.571686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999084, 34.958309, 38.123711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790749, 34.625183, 38.198704>,  <32.665749, 34.425308, 38.243698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790749, 34.625183, 38.198704>,  <32.999084, 34.958309, 38.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790749, 34.625183, 38.198704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388387, -0.035608, 0.920808,
		-0.760187, 0.552405, 0.342000,
		-0.520837, -0.832815, 0.187478,
		32.634499, 34.375340, 38.254948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701328, 35.061161, 38.865242>,  <32.999084, 34.958309, 38.123711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701328, 35.061161, 38.865242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725498, 34.671986, 38.776028>,  <32.740002, 34.438480, 38.722500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725498, 34.671986, 38.776028>,  <32.701328, 35.061161, 38.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725498, 34.671986, 38.776028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182640, -0.208896, 0.960731,
		-0.981321, -0.098789, 0.165074,
		0.060426, -0.972935, -0.223037,
		32.743626, 34.380104, 38.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381798, 34.725243, 39.370090>,  <32.701328, 35.061161, 38.865242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381798, 34.725243, 39.370090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605221, 34.427620, 39.223454>,  <32.739273, 34.249046, 39.135471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605221, 34.427620, 39.223454>,  <32.381798, 34.725243, 39.370090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605221, 34.427620, 39.223454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196102, -0.310978, 0.929966,
		-0.805953, -0.591327, -0.027787,
		0.558555, -0.744060, -0.366594,
		32.772789, 34.204403, 39.113476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314705, 34.190060, 39.860004>,  <32.381798, 34.725243, 39.370090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314705, 34.190060, 39.860004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650974, 34.076344, 39.675640>,  <32.852737, 34.008114, 39.565022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650974, 34.076344, 39.675640>,  <32.314705, 34.190060, 39.860004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650974, 34.076344, 39.675640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377395, -0.302836, 0.875136,
		-0.388380, -0.909651, -0.147294,
		0.840675, -0.284297, -0.460914,
		32.903175, 33.991055, 39.537365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409901, 33.455612, 39.989979>,  <32.314705, 34.190060, 39.860004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409901, 33.455612, 39.989979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769169, 33.602890, 39.893879>,  <32.984730, 33.691257, 39.836220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769169, 33.602890, 39.893879>,  <32.409901, 33.455612, 39.989979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769169, 33.602890, 39.893879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362889, -0.312386, 0.877910,
		0.248196, -0.875696, -0.414191,
		0.898170, 0.368199, -0.240248,
		33.038620, 33.713348, 39.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915936, 32.892227, 40.091774>,  <32.409901, 33.455612, 39.989979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915936, 32.892227, 40.091774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122772, 33.234531, 40.098480>,  <33.246876, 33.439915, 40.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122772, 33.234531, 40.098480>,  <32.915936, 32.892227, 40.091774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122772, 33.234531, 40.098480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322406, -0.212881, 0.922354,
		0.792886, -0.471539, -0.385983,
		0.517094, 0.855765, 0.016764,
		33.277901, 33.491261, 40.103508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502735, 32.663250, 40.193981>,  <32.915936, 32.892227, 40.091774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502735, 32.663250, 40.193981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510223, 33.050632, 40.293373>,  <33.514717, 33.283062, 40.353008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510223, 33.050632, 40.293373>,  <33.502735, 32.663250, 40.193981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510223, 33.050632, 40.293373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423413, -0.232818, 0.875510,
		0.905743, 0.088816, -0.414416,
		0.018724, 0.968456, 0.248479,
		33.515842, 33.341171, 40.367916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219772, 32.842781, 40.374458>,  <33.502735, 32.663250, 40.193981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219772, 32.842781, 40.374458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953033, 33.092571, 40.537109>,  <33.792988, 33.242447, 40.634701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953033, 33.092571, 40.537109>,  <34.219772, 32.842781, 40.374458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953033, 33.092571, 40.537109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398060, -0.162784, 0.902801,
		0.629968, 0.763894, -0.140026,
		-0.666850, 0.624474, 0.406624,
		33.752979, 33.279915, 40.659096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577789, 33.244488, 40.830208>,  <34.219772, 32.842781, 40.374458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577789, 33.244488, 40.830208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205765, 33.317154, 40.957951>,  <33.982552, 33.360756, 41.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205765, 33.317154, 40.957951>,  <34.577789, 33.244488, 40.830208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205765, 33.317154, 40.957951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295071, -0.148591, 0.943850,
		0.218923, 0.972068, 0.084593,
		-0.930057, 0.181669, 0.319360,
		33.926746, 33.371655, 41.053757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671482, 33.493069, 41.459236>,  <34.577789, 33.244488, 40.830208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671482, 33.493069, 41.459236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278694, 33.423038, 41.487770>,  <34.043022, 33.381020, 41.504890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278694, 33.423038, 41.487770>,  <34.671482, 33.493069, 41.459236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278694, 33.423038, 41.487770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082305, -0.056235, 0.995019,
		-0.170188, 0.982948, 0.069630,
		-0.981968, -0.175072, 0.071331,
		33.984104, 33.370518, 41.509171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293335, 33.982159, 41.943268>,  <34.671482, 33.493069, 41.459236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293335, 33.982159, 41.943268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053463, 33.662388, 41.957699>,  <33.909538, 33.470528, 41.966358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053463, 33.662388, 41.957699>,  <34.293335, 33.982159, 41.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053463, 33.662388, 41.957699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098825, -0.029244, 0.994675,
		-0.794114, 0.600053, 0.096540,
		-0.599681, -0.799425, 0.036077,
		33.873558, 33.422562, 41.968521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997093, 33.961143, 42.657413>,  <34.293335, 33.982159, 41.943268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997093, 33.961143, 42.657413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889671, 33.610588, 42.497505>,  <33.825218, 33.400253, 42.401558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889671, 33.610588, 42.497505>,  <33.997093, 33.961143, 42.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889671, 33.610588, 42.497505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004175, -0.416076, 0.909320,
		-0.963254, 0.242536, 0.115400,
		-0.268558, -0.876389, -0.399774,
		33.809105, 33.347672, 42.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312248, 33.820942, 42.990753>,  <33.997093, 33.961143, 42.657413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312248, 33.820942, 42.990753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493282, 33.488144, 42.862415>,  <33.601902, 33.288464, 42.785412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493282, 33.488144, 42.862415>,  <33.312248, 33.820942, 42.990753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493282, 33.488144, 42.862415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187612, -0.440597, 0.877881,
		-0.871760, -0.337123, -0.355502,
		0.452587, -0.831999, -0.320847,
		33.629059, 33.238544, 42.766163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804024, 33.231586, 43.012936>,  <33.312248, 33.820942, 42.990753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804024, 33.231586, 43.012936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169937, 33.072075, 43.038700>,  <33.389484, 32.976368, 43.054157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169937, 33.072075, 43.038700>,  <32.804024, 33.231586, 43.012936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169937, 33.072075, 43.038700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296768, -0.555303, 0.776896,
		-0.274040, -0.729807, -0.626326,
		0.914785, -0.398774, 0.064408,
		33.444374, 32.952442, 43.058022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699081, 32.690712, 43.365200>,  <32.804024, 33.231586, 43.012936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699081, 32.690712, 43.365200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098610, 32.706310, 43.376808>,  <33.338326, 32.715668, 43.383774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098610, 32.706310, 43.376808>,  <32.699081, 32.690712, 43.365200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098610, 32.706310, 43.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000736, -0.584808, 0.811171,
		0.048604, -0.810233, -0.584088,
		0.998818, 0.038996, 0.029020,
		33.398254, 32.718010, 43.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120758, 31.915222, 43.377499>,  <32.699081, 32.690712, 43.365200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120758, 31.915222, 43.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323059, 32.200291, 43.571945>,  <33.444439, 32.371330, 43.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323059, 32.200291, 43.571945>,  <33.120758, 31.915222, 43.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323059, 32.200291, 43.571945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140962, -0.624199, 0.768444,
		0.851084, -0.320119, -0.416150,
		0.505753, 0.712671, 0.486121,
		33.474785, 32.414093, 43.717781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224785, 31.589579, 43.983795>,  <33.120758, 31.915222, 43.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224785, 31.589579, 43.983795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414745, 31.934265, 44.055252>,  <33.528721, 32.141079, 44.098125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414745, 31.934265, 44.055252>,  <33.224785, 31.589579, 43.983795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414745, 31.934265, 44.055252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304444, -0.351330, 0.885371,
		0.825704, -0.366072, -0.429191,
		0.474897, 0.861718, 0.178646,
		33.557213, 32.192780, 44.108845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881680, 31.453520, 44.263657>,  <33.224785, 31.589579, 43.983795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881680, 31.453520, 44.263657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804535, 31.829784, 44.375340>,  <33.758247, 32.055542, 44.442348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804535, 31.829784, 44.375340>,  <33.881680, 31.453520, 44.263657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804535, 31.829784, 44.375340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147477, -0.253525, 0.956020,
		0.970079, 0.225559, -0.089830,
		-0.192865, 0.940663, 0.279205,
		33.746674, 32.111984, 44.459103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367180, 31.578844, 44.781639>,  <33.881680, 31.453520, 44.263657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367180, 31.578844, 44.781639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073471, 31.847891, 44.818375>,  <33.897247, 32.009319, 44.840416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073471, 31.847891, 44.818375>,  <34.367180, 31.578844, 44.781639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073471, 31.847891, 44.818375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010673, -0.146709, 0.989122,
		0.678775, 0.725301, 0.114903,
		-0.734269, 0.672618, 0.091841,
		33.853191, 32.049675, 44.845928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581360, 31.998077, 45.351212>,  <34.367180, 31.578844, 44.781639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581360, 31.998077, 45.351212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186592, 32.051067, 45.314445>,  <33.949734, 32.082859, 45.292385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186592, 32.051067, 45.314445>,  <34.581360, 31.998077, 45.351212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186592, 32.051067, 45.314445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126364, -0.281383, 0.951239,
		0.100150, 0.950408, 0.294441,
		-0.986916, 0.132473, -0.091916,
		33.890518, 32.090809, 45.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410786, 32.552189, 45.763660>,  <34.581360, 31.998077, 45.351212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410786, 32.552189, 45.763660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089569, 32.315624, 45.734371>,  <33.896839, 32.173687, 45.716797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089569, 32.315624, 45.734371>,  <34.410786, 32.552189, 45.763660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089569, 32.315624, 45.734371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100092, 0.012735, 0.994897,
		-0.587457, 0.806272, -0.069422,
		-0.803042, -0.591407, -0.073220,
		33.848656, 32.138203, 45.712406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057411, 32.823708, 46.260178>,  <34.410786, 32.552189, 45.763660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057411, 32.823708, 46.260178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871529, 32.483440, 46.161858>,  <33.759998, 32.279282, 46.102863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871529, 32.483440, 46.161858>,  <34.057411, 32.823708, 46.260178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871529, 32.483440, 46.161858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001484, -0.276850, 0.960912,
		-0.885464, 0.446906, 0.127392,
		-0.464706, -0.850664, -0.245804,
		33.732117, 32.228241, 46.088116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542694, 32.786060, 46.695091>,  <34.057411, 32.823708, 46.260178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542694, 32.786060, 46.695091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575096, 32.400932, 46.592003>,  <33.594536, 32.169857, 46.530151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575096, 32.400932, 46.592003>,  <33.542694, 32.786060, 46.695091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575096, 32.400932, 46.592003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098270, -0.249592, 0.963352,
		-0.991857, -0.103362, 0.074398,
		0.081005, -0.962819, -0.257717,
		33.599400, 32.112087, 46.514687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319721, 32.515476, 47.301163>,  <33.542694, 32.786060, 46.695091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319721, 32.515476, 47.301163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474701, 32.201664, 47.107502>,  <33.567688, 32.013378, 46.991306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474701, 32.201664, 47.107502>,  <33.319721, 32.515476, 47.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474701, 32.201664, 47.107502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083841, -0.493010, 0.865975,
		-0.918071, -0.376112, -0.125240,
		0.387448, -0.784526, -0.484151,
		33.590935, 31.966307, 46.962257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892193, 31.944220, 47.524429>,  <33.319721, 32.515476, 47.301163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892193, 31.944220, 47.524429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239166, 31.794447, 47.393372>,  <33.447350, 31.704584, 47.314735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239166, 31.794447, 47.393372>,  <32.892193, 31.944220, 47.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239166, 31.794447, 47.393372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076905, -0.549711, 0.831808,
		-0.491566, -0.746739, -0.448044,
		0.867438, -0.374431, -0.327647,
		33.499397, 31.682117, 47.295078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797462, 31.195004, 47.731441>,  <32.892193, 31.944220, 47.524429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797462, 31.195004, 47.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177238, 31.303562, 47.668316>,  <33.405106, 31.368696, 47.630440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177238, 31.303562, 47.668316>,  <32.797462, 31.195004, 47.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177238, 31.303562, 47.668316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274250, -0.472334, 0.837668,
		0.152798, -0.838597, -0.522884,
		0.949441, 0.271395, -0.157814,
		33.462070, 31.384981, 47.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100338, 30.629160, 47.836418>,  <32.797462, 31.195004, 47.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100338, 30.629160, 47.836418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396713, 30.895178, 47.873783>,  <33.574539, 31.054789, 47.896202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396713, 30.895178, 47.873783>,  <33.100338, 30.629160, 47.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396713, 30.895178, 47.873783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335415, -0.486967, 0.806449,
		0.581811, -0.566199, -0.583879,
		0.740940, 0.665043, 0.093411,
		33.618996, 31.094690, 47.901806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650894, 30.188192, 47.936317>,  <33.100338, 30.629160, 47.836418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650894, 30.188192, 47.936317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760235, 30.539438, 48.093388>,  <33.825840, 30.750187, 48.187630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760235, 30.539438, 48.093388>,  <33.650894, 30.188192, 47.936317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760235, 30.539438, 48.093388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251307, -0.459235, 0.852026,
		0.928507, -0.134217, -0.346208,
		0.273347, 0.878117, 0.392673,
		33.842239, 30.802874, 48.211189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331825, 30.075851, 47.985199>,  <33.650894, 30.188192, 47.936317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331825, 30.075851, 47.985199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228935, 30.349009, 48.258694>,  <34.167202, 30.512903, 48.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228935, 30.349009, 48.258694>,  <34.331825, 30.075851, 47.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228935, 30.349009, 48.258694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130831, -0.676420, 0.724803,
		0.957456, 0.275888, 0.084645,
		-0.257220, 0.682893, 0.683736,
		34.151768, 30.553877, 48.463814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862297, 30.129650, 48.423267>,  <34.331825, 30.075851, 47.985199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862297, 30.129650, 48.423267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567898, 30.285101, 48.645000>,  <34.391258, 30.378372, 48.778038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567898, 30.285101, 48.645000>,  <34.862297, 30.129650, 48.423267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567898, 30.285101, 48.645000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247388, -0.607796, 0.754575,
		0.630168, 0.692497, 0.351192,
		-0.735994, 0.388628, 0.554329,
		34.347099, 30.401690, 48.811298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225681, 30.194008, 49.066120>,  <34.862297, 30.129650, 48.423267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225681, 30.194008, 49.066120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833633, 30.201685, 49.145119>,  <34.598404, 30.206291, 49.192516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833633, 30.201685, 49.145119>,  <35.225681, 30.194008, 49.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833633, 30.201685, 49.145119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171413, -0.419482, 0.891433,
		0.099957, 0.907561, 0.407851,
		-0.980115, 0.019194, 0.197497,
		34.539600, 30.207443, 49.204369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098061, 30.485435, 49.762119>,  <35.225681, 30.194008, 49.066120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098061, 30.485435, 49.762119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771767, 30.270823, 49.675667>,  <34.575989, 30.142056, 49.623795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771767, 30.270823, 49.675667>,  <35.098061, 30.485435, 49.762119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771767, 30.270823, 49.675667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065444, -0.456856, 0.887130,
		-0.574712, 0.709519, 0.407786,
		-0.815735, -0.536531, -0.216127,
		34.527046, 30.109863, 49.610828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890953, 30.305006, 50.489746>,  <35.098061, 30.485435, 49.762119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890953, 30.305006, 50.489746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644958, 30.086735, 50.262051>,  <34.497364, 29.955772, 50.125435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644958, 30.086735, 50.262051>,  <34.890953, 30.305006, 50.489746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644958, 30.086735, 50.262051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098107, -0.663333, 0.741865,
		-0.782413, 0.512081, 0.354404,
		-0.614983, -0.545676, -0.569239,
		34.460464, 29.923033, 50.091278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273434, 30.156889, 50.848022>,  <34.890953, 30.305006, 50.489746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273434, 30.156889, 50.848022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320019, 29.878855, 50.564251>,  <34.347969, 29.712034, 50.393986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320019, 29.878855, 50.564251>,  <34.273434, 30.156889, 50.848022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320019, 29.878855, 50.564251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052731, -0.708957, 0.703278,
		-0.991795, -0.119312, -0.045911,
		0.116459, -0.695087, -0.709431,
		34.354958, 29.670328, 50.351421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712379, 29.652641, 50.875515>,  <34.273434, 30.156889, 50.848022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712379, 29.652641, 50.875515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055939, 29.496901, 50.742428>,  <34.262074, 29.403456, 50.662575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055939, 29.496901, 50.742428>,  <33.712379, 29.652641, 50.875515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055939, 29.496901, 50.742428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017005, -0.670977, 0.741283,
		-0.511868, -0.631027, -0.582920,
		0.858896, -0.389351, -0.332721,
		34.313606, 29.380095, 50.642612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597187, 28.847923, 51.075714>,  <33.712379, 29.652641, 50.875515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597187, 28.847923, 51.075714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978970, 28.959805, 51.034184>,  <34.208038, 29.026934, 51.009266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978970, 28.959805, 51.034184>,  <33.597187, 28.847923, 51.075714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978970, 28.959805, 51.034184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289303, -0.782602, 0.551215,
		0.072923, -0.556148, -0.827878,
		0.954456, 0.279703, -0.103826,
		34.265305, 29.043716, 51.003036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998699, 28.214806, 51.111881>,  <33.597187, 28.847923, 51.075714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998699, 28.214806, 51.111881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197960, 28.536781, 51.240829>,  <34.317516, 28.729967, 51.318199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197960, 28.536781, 51.240829>,  <33.998699, 28.214806, 51.111881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197960, 28.536781, 51.240829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299035, -0.508456, 0.807496,
		0.813896, -0.305852, -0.493991,
		0.498148, 0.804939, 0.322370,
		34.347404, 28.778263, 51.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708828, 27.982302, 51.376667>,  <33.998699, 28.214806, 51.111881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708828, 27.982302, 51.376667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490604, 28.281860, 51.527142>,  <34.359669, 28.461596, 51.617428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490604, 28.281860, 51.527142>,  <34.708828, 27.982302, 51.376667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490604, 28.281860, 51.527142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071705, -0.405515, 0.911272,
		0.834997, 0.524130, 0.167534,
		-0.545562, 0.748896, 0.376186,
		34.326935, 28.506529, 51.639999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100140, 27.648363, 51.946335>,  <34.708828, 27.982302, 51.376667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100140, 27.648363, 51.946335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139095, 27.262207, 52.043118>,  <35.162468, 27.030514, 52.101185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139095, 27.262207, 52.043118>,  <35.100140, 27.648363, 51.946335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139095, 27.262207, 52.043118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374140, -0.189765, -0.907749,
		0.922244, 0.178927, 0.342710,
		0.097387, -0.965388, 0.241953,
		35.168312, 26.972591, 52.115704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847561, 27.363846, 51.889217>,  <35.100140, 27.648363, 51.946335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847561, 27.363846, 51.889217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552437, 27.108765, 51.800705>,  <35.375362, 26.955715, 51.747597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552437, 27.108765, 51.800705>,  <35.847561, 27.363846, 51.889217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552437, 27.108765, 51.800705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277408, 0.012395, -0.960672,
		0.615367, -0.770182, 0.167759,
		-0.737813, -0.637704, -0.221282,
		35.331093, 26.917454, 51.734322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132912, 26.718285, 51.560951>,  <35.847561, 27.363846, 51.889217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132912, 26.718285, 51.560951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762707, 26.834391, 51.463654>,  <35.540585, 26.904055, 51.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762707, 26.834391, 51.463654>,  <36.132912, 26.718285, 51.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762707, 26.834391, 51.463654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284874, 0.110370, -0.952190,
		-0.249539, -0.950560, -0.184838,
		-0.925514, 0.290264, -0.243248,
		35.485054, 26.921471, 51.390678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709427, 26.332472, 51.030739>,  <36.132912, 26.718285, 51.560951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709427, 26.332472, 51.030739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584663, 26.712416, 51.021942>,  <35.509804, 26.940382, 51.016663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584663, 26.712416, 51.021942>,  <35.709427, 26.332472, 51.030739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584663, 26.712416, 51.021942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067190, -0.001041, -0.997740,
		-0.947734, -0.312680, -0.063496,
		-0.311907, 0.949858, -0.021996,
		35.491093, 26.997374, 51.015343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242790, 26.260895, 50.562550>,  <35.709427, 26.332472, 51.030739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242790, 26.260895, 50.562550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447464, 26.602451, 50.600586>,  <35.570271, 26.807384, 50.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447464, 26.602451, 50.600586>,  <35.242790, 26.260895, 50.562550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447464, 26.602451, 50.600586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180562, 0.001335, -0.983563,
		-0.839983, 0.520449, -0.153498,
		0.511689, 0.853892, 0.095095,
		35.600971, 26.858620, 50.629116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550362, 26.316904, 50.435516>,  <35.242790, 26.260895, 50.562550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550362, 26.316904, 50.435516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422146, 25.938757, 50.459293>,  <34.345215, 25.711868, 50.473560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422146, 25.938757, 50.459293>,  <34.550362, 26.316904, 50.435516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422146, 25.938757, 50.459293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688021, 0.189227, -0.700585,
		0.651062, -0.265465, -0.711088,
		-0.320538, -0.945368, 0.059446,
		34.325985, 25.655146, 50.477127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065483, 26.126341, 49.889034>,  <34.550362, 26.316904, 50.435516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065483, 26.126341, 49.889034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020626, 25.809204, 50.128643>,  <33.993713, 25.618921, 50.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020626, 25.809204, 50.128643>,  <34.065483, 26.126341, 49.889034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020626, 25.809204, 50.128643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877104, -0.204343, -0.434664,
		0.467025, -0.574148, -0.672489,
		-0.112143, -0.792842, 0.599021,
		33.986984, 25.571352, 50.308350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112171, 26.667313, 49.443829>,  <34.065483, 26.126341, 49.889034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112171, 26.667313, 49.443829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348938, 26.989712, 49.443829>,  <34.490997, 27.183151, 49.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348938, 26.989712, 49.443829>,  <34.112171, 26.667313, 49.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348938, 26.989712, 49.443829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392197, 0.288034, -0.873623,
		-0.704138, 0.517114, 0.486603,
		0.591921, 0.805996, 0.000005,
		34.526516, 27.231510, 49.443829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714302, 27.185028, 49.122173>,  <34.112171, 26.667313, 49.443829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714302, 27.185028, 49.122173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078308, 27.345947, 49.082108>,  <34.296711, 27.442499, 49.058067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078308, 27.345947, 49.082108>,  <33.714302, 27.185028, 49.122173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078308, 27.345947, 49.082108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173412, 0.149922, -0.973371,
		-0.376571, 0.903149, 0.206194,
		0.910012, 0.402300, -0.100161,
		34.351311, 27.466637, 49.052059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635235, 27.898514, 48.920204>,  <33.714302, 27.185028, 49.122173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635235, 27.898514, 48.920204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007244, 27.803417, 48.808105>,  <34.230450, 27.746359, 48.740849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007244, 27.803417, 48.808105>,  <33.635235, 27.898514, 48.920204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007244, 27.803417, 48.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152142, 0.445071, -0.882476,
		0.334527, 0.863361, 0.377757,
		0.930024, -0.237739, -0.280242,
		34.286251, 27.732096, 48.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005219, 28.559656, 48.670147>,  <33.635235, 27.898514, 48.920204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005219, 28.559656, 48.670147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163021, 28.226309, 48.515297>,  <34.257702, 28.026300, 48.422386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163021, 28.226309, 48.515297>,  <34.005219, 28.559656, 48.670147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163021, 28.226309, 48.515297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137934, 0.362813, -0.921597,
		0.908484, 0.416969, 0.028181,
		0.394502, -0.833369, -0.387124,
		34.281372, 27.976297, 48.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382385, 28.904514, 48.126301>,  <34.005219, 28.559656, 48.670147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382385, 28.904514, 48.126301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409073, 28.516247, 48.033905>,  <34.425083, 28.283287, 47.978470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409073, 28.516247, 48.033905>,  <34.382385, 28.904514, 48.126301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409073, 28.516247, 48.033905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197159, 0.239761, -0.950601,
		0.978099, 0.017880, 0.207371,
		0.066716, -0.970667, -0.230985,
		34.429089, 28.225046, 47.964611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893684, 28.943237, 47.687393>,  <34.382385, 28.904514, 48.126301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893684, 28.943237, 47.687393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 28.587364, 47.601192>,  <34.636066, 28.373840, 47.549473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 28.587364, 47.601192>,  <34.893684, 28.943237, 47.687393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732674, 28.587364, 47.601192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429534, 0.024325, -0.902723,
		0.808378, -0.455933, 0.372357,
		-0.402524, -0.889682, -0.215502,
		34.611916, 28.320459, 47.536541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449238, 28.565336, 47.579460>,  <34.893684, 28.943237, 47.687393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449238, 28.565336, 47.579460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110149, 28.472351, 47.388741>,  <34.906696, 28.416559, 47.274311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110149, 28.472351, 47.388741>,  <35.449238, 28.565336, 47.579460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110149, 28.472351, 47.388741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419388, 0.256639, -0.870776,
		0.324786, -0.938135, -0.120066,
		-0.847719, -0.232461, -0.476796,
		34.855835, 28.402613, 47.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610348, 28.312498, 46.927589>,  <35.449238, 28.565336, 47.579460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610348, 28.312498, 46.927589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215122, 28.322536, 46.866802>,  <34.977985, 28.328560, 46.830330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215122, 28.322536, 46.866802>,  <35.610348, 28.312498, 46.927589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215122, 28.322536, 46.866802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153117, 0.053023, -0.986785,
		-0.016709, -0.998278, -0.056233,
		-0.988067, 0.025098, -0.151967,
		34.918701, 28.330065, 46.821213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477333, 27.734797, 46.429283>,  <35.610348, 28.312498, 46.927589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477333, 27.734797, 46.429283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202957, 28.025711, 46.419968>,  <35.038330, 28.200260, 46.414379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202957, 28.025711, 46.419968>,  <35.477333, 27.734797, 46.429283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202957, 28.025711, 46.419968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021646, -0.011597, -0.999698,
		-0.727337, -0.686236, -0.007788,
		-0.685938, 0.727286, -0.023289,
		34.997177, 28.243896, 46.412979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999836, 27.705826, 45.798626>,  <35.477333, 27.734797, 46.429283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999836, 27.705826, 45.798626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950638, 28.083508, 45.920841>,  <34.921120, 28.310116, 45.994171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950638, 28.083508, 45.920841>,  <34.999836, 27.705826, 45.798626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950638, 28.083508, 45.920841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278126, 0.262738, -0.923913,
		-0.952637, -0.198615, 0.230291,
		-0.122997, 0.944204, 0.305534,
		34.913738, 28.366768, 46.012501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478367, 27.925053, 45.484913>,  <34.999836, 27.705826, 45.798626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478367, 27.925053, 45.484913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618793, 28.282434, 45.596981>,  <34.703049, 28.496862, 45.664223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618793, 28.282434, 45.596981>,  <34.478367, 27.925053, 45.484913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618793, 28.282434, 45.596981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394233, 0.412441, -0.821263,
		-0.849314, 0.177862, 0.497022,
		0.351064, 0.893452, 0.280173,
		34.724113, 28.550470, 45.681034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967838, 28.547216, 45.260647>,  <34.478367, 27.925053, 45.484913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967838, 28.547216, 45.260647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327744, 28.710815, 45.321499>,  <34.543686, 28.808975, 45.358009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327744, 28.710815, 45.321499>,  <33.967838, 28.547216, 45.260647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327744, 28.710815, 45.321499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183209, 0.670471, -0.718960,
		-0.396054, 0.619022, 0.678198,
		0.899764, 0.408999, 0.152132,
		34.597672, 28.833515, 45.367138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849754, 29.239586, 45.290424>,  <33.967838, 28.547216, 45.260647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849754, 29.239586, 45.290424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241337, 29.211424, 45.213818>,  <34.476288, 29.194527, 45.167854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241337, 29.211424, 45.213818>,  <33.849754, 29.239586, 45.290424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241337, 29.211424, 45.213818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117075, 0.574930, -0.809784,
		0.167122, 0.815168, 0.554591,
		0.978961, -0.070404, -0.191520,
		34.535027, 29.190302, 45.156361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171741, 29.912060, 45.306820>,  <33.849754, 29.239586, 45.290424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171741, 29.912060, 45.306820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400433, 29.681118, 45.073650>,  <34.537647, 29.542553, 44.933750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400433, 29.681118, 45.073650>,  <34.171741, 29.912060, 45.306820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400433, 29.681118, 45.073650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305879, 0.509272, -0.804413,
		0.761295, 0.638205, 0.114563,
		0.571724, -0.577353, -0.582919,
		34.571949, 29.507912, 44.898773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372818, 30.385939, 44.851357>,  <34.171741, 29.912060, 45.306820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372818, 30.385939, 44.851357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431931, 30.036064, 44.666710>,  <34.467400, 29.826139, 44.555923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431931, 30.036064, 44.666710>,  <34.372818, 30.385939, 44.851357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431931, 30.036064, 44.666710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395383, 0.375570, -0.838224,
		0.906550, 0.306389, -0.290333,
		0.147782, -0.874685, -0.461614,
		34.476265, 29.773659, 44.528225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467228, 30.557060, 44.078629>,  <34.372818, 30.385939, 44.851357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467228, 30.557060, 44.078629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418209, 30.160105, 44.083416>,  <34.388798, 29.921930, 44.086288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418209, 30.160105, 44.083416>,  <34.467228, 30.557060, 44.078629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418209, 30.160105, 44.083416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532784, 0.055609, -0.844422,
		0.837331, -0.109856, -0.535545,
		-0.122546, -0.992391, 0.011967,
		34.381447, 29.862387, 44.087006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817837, 30.359037, 43.463020>,  <34.467228, 30.557060, 44.078629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817837, 30.359037, 43.463020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528805, 30.105688, 43.573811>,  <34.355385, 29.953678, 43.640285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528805, 30.105688, 43.573811>,  <34.817837, 30.359037, 43.463020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528805, 30.105688, 43.573811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385698, 0.036870, -0.921888,
		0.573687, -0.772968, -0.270932,
		-0.722579, -0.633373, 0.276980,
		34.312031, 29.915676, 43.656906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738697, 29.772390, 42.966415>,  <34.817837, 30.359037, 43.463020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738697, 29.772390, 42.966415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378902, 29.815874, 43.135696>,  <34.163025, 29.841965, 43.237267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378902, 29.815874, 43.135696>,  <34.738697, 29.772390, 42.966415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378902, 29.815874, 43.135696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407170, 0.142862, -0.902110,
		-0.158531, -0.983754, -0.084238,
		-0.899489, 0.108713, 0.423203,
		34.109055, 29.848488, 43.262657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300621, 29.389084, 42.484196>,  <34.738697, 29.772390, 42.966415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300621, 29.389084, 42.484196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057297, 29.603365, 42.718452>,  <33.911301, 29.731934, 42.859009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057297, 29.603365, 42.718452>,  <34.300621, 29.389084, 42.484196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057297, 29.603365, 42.718452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651781, 0.083899, -0.753752,
		-0.452924, -0.840227, 0.298125,
		-0.608310, 0.535705, 0.585644,
		33.874805, 29.764076, 42.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545666, 29.130764, 42.468300>,  <34.300621, 29.389084, 42.484196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545666, 29.130764, 42.468300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541225, 29.521032, 42.555885>,  <33.538563, 29.755194, 42.608437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541225, 29.521032, 42.555885>,  <33.545666, 29.130764, 42.468300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541225, 29.521032, 42.555885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708057, 0.146952, -0.690696,
		-0.706068, -0.162707, 0.689198,
		-0.011102, 0.975670, 0.218964,
		33.537895, 29.813734, 42.621574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821632, 29.305223, 42.337299>,  <33.545666, 29.130764, 42.468300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821632, 29.305223, 42.337299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019936, 29.651871, 42.359913>,  <33.138920, 29.859859, 42.373482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019936, 29.651871, 42.359913>,  <32.821632, 29.305223, 42.337299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019936, 29.651871, 42.359913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639573, 0.408362, -0.651296,
		-0.587510, 0.286731, 0.756715,
		0.495760, 0.866617, 0.056531,
		33.168663, 29.911856, 42.376873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369190, 29.904596, 42.379826>,  <32.821632, 29.305223, 42.337299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369190, 29.904596, 42.379826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709583, 30.074450, 42.256203>,  <32.913818, 30.176361, 42.182030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709583, 30.074450, 42.256203>,  <32.369190, 29.904596, 42.379826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709583, 30.074450, 42.256203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478421, 0.383992, -0.789724,
		-0.216666, 0.819901, 0.529923,
		0.850981, 0.424632, -0.309060,
		32.964878, 30.201839, 42.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292801, 30.641088, 42.346504>,  <32.369190, 29.904596, 42.379826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292801, 30.641088, 42.346504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582851, 30.534906, 42.092346>,  <32.756882, 30.471197, 41.939850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582851, 30.534906, 42.092346>,  <32.292801, 30.641088, 42.346504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582851, 30.534906, 42.092346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507493, 0.417675, -0.753657,
		0.465451, 0.868954, 0.168150,
		0.725125, -0.265456, -0.635395,
		32.800388, 30.455269, 41.901726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245083, 31.175657, 41.873455>,  <32.292801, 30.641088, 42.346504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245083, 31.175657, 41.873455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453362, 30.875933, 41.709797>,  <32.578331, 30.696098, 41.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453362, 30.875933, 41.709797>,  <32.245083, 31.175657, 41.873455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453362, 30.875933, 41.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415603, 0.196149, -0.888144,
		0.745752, 0.632499, -0.209282,
		0.520700, -0.749313, -0.409147,
		32.609573, 30.651138, 41.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503742, 31.398676, 41.327229>,  <32.245083, 31.175657, 41.873455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503742, 31.398676, 41.327229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533413, 31.010746, 41.234333>,  <32.551216, 30.777988, 41.178596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533413, 31.010746, 41.234333>,  <32.503742, 31.398676, 41.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533413, 31.010746, 41.234333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277203, 0.203654, -0.938980,
		0.957944, 0.134026, -0.253732,
		0.074174, -0.969826, -0.232242,
		32.555664, 30.719799, 41.164661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082417, 31.336035, 40.752880>,  <32.503742, 31.398676, 41.327229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082417, 31.336035, 40.752880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845009, 31.015251, 40.725777>,  <32.702564, 30.822781, 40.709515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845009, 31.015251, 40.725777>,  <33.082417, 31.336035, 40.752880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845009, 31.015251, 40.725777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192212, 0.223004, -0.955680,
		0.781529, -0.554192, -0.286504,
		-0.593521, -0.801960, -0.067761,
		32.666954, 30.774664, 40.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038593, 31.174879, 40.086617>,  <33.082417, 31.336035, 40.752880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038593, 31.174879, 40.086617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730919, 30.945642, 40.199692>,  <32.546314, 30.808102, 40.267536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730919, 30.945642, 40.199692>,  <33.038593, 31.174879, 40.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730919, 30.945642, 40.199692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487947, 0.241094, -0.838917,
		0.412620, -0.783225, -0.465085,
		-0.769189, -0.573090, 0.282692,
		32.500160, 30.773716, 40.284500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937836, 30.707935, 39.546375>,  <33.038593, 31.174879, 40.086617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937836, 30.707935, 39.546375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600204, 30.749521, 39.756794>,  <32.397625, 30.774473, 39.883045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600204, 30.749521, 39.756794>,  <32.937836, 30.707935, 39.546375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600204, 30.749521, 39.756794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510788, 0.142641, -0.847790,
		-0.163174, -0.984299, -0.067297,
		-0.844079, 0.103963, 0.526044,
		32.346981, 30.780710, 39.914608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536461, 30.144281, 39.297813>,  <32.937836, 30.707935, 39.546375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536461, 30.144281, 39.297813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293030, 30.407721, 39.474850>,  <32.146973, 30.565784, 39.581070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293030, 30.407721, 39.474850>,  <32.536461, 30.144281, 39.297813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293030, 30.407721, 39.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447704, 0.175517, -0.876786,
		-0.655132, -0.731739, 0.188042,
		-0.608574, 0.658598, 0.442589,
		32.110458, 30.605301, 39.607628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815964, 29.970978, 39.111687>,  <32.536461, 30.144281, 39.297813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815964, 29.970978, 39.111687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796144, 30.357738, 39.211803>,  <31.784254, 30.589794, 39.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796144, 30.357738, 39.211803>,  <31.815964, 29.970978, 39.111687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796144, 30.357738, 39.211803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601644, 0.171140, -0.780215,
		-0.797226, -0.189246, 0.573251,
		-0.049546, 0.966901, 0.250296,
		31.781281, 30.647808, 39.286892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120762, 30.198381, 38.830830>,  <31.815964, 29.970978, 39.111687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120762, 30.198381, 38.830830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291874, 30.551632, 38.907867>,  <31.394541, 30.763582, 38.954090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291874, 30.551632, 38.907867>,  <31.120762, 30.198381, 38.830830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291874, 30.551632, 38.907867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519675, 0.414633, -0.747005,
		-0.739555, 0.219469, 0.636311,
		0.427780, 0.883126, 0.192592,
		31.420208, 30.816570, 38.965645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633898, 30.701208, 38.916443>,  <31.120762, 30.198381, 38.830830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633898, 30.701208, 38.916443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958004, 30.913340, 38.816669>,  <31.152468, 31.040619, 38.756805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958004, 30.913340, 38.816669>,  <30.633898, 30.701208, 38.916443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958004, 30.913340, 38.816669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521797, 0.459044, -0.719031,
		-0.266824, 0.712760, 0.648674,
		0.810267, 0.530331, -0.249432,
		31.201084, 31.072439, 38.741840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376635, 31.372864, 38.745014>,  <30.633898, 30.701208, 38.916443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376635, 31.372864, 38.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734114, 31.359182, 38.566067>,  <30.948601, 31.350973, 38.458698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734114, 31.359182, 38.566067>,  <30.376635, 31.372864, 38.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734114, 31.359182, 38.566067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370970, 0.504512, -0.779647,
		0.252369, 0.862727, 0.438192,
		0.893696, -0.034202, -0.447369,
		31.002222, 31.348921, 38.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527689, 32.023365, 38.505936>,  <30.376635, 31.372864, 38.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527689, 32.023365, 38.505936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752974, 31.790304, 38.271564>,  <30.888145, 31.650469, 38.130943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752974, 31.790304, 38.271564>,  <30.527689, 32.023365, 38.505936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752974, 31.790304, 38.271564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277814, 0.534288, -0.798346,
		0.778210, 0.612417, 0.139050,
		0.563213, -0.582650, -0.585926,
		30.921938, 31.615509, 38.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861368, 32.547501, 38.111572>,  <30.527689, 32.023365, 38.505936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861368, 32.547501, 38.111572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924004, 32.202114, 37.919777>,  <30.961584, 31.994883, 37.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924004, 32.202114, 37.919777>,  <30.861368, 32.547501, 38.111572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924004, 32.202114, 37.919777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105949, 0.467991, -0.877359,
		0.981965, 0.188185, -0.018202,
		0.156587, -0.863464, -0.479489,
		30.970980, 31.943075, 37.775928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501221, 32.481075, 37.751282>,  <30.861368, 32.547501, 38.111572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501221, 32.481075, 37.751282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281773, 32.218197, 37.544552>,  <31.150105, 32.060471, 37.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281773, 32.218197, 37.544552>,  <31.501221, 32.481075, 37.751282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281773, 32.218197, 37.544552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316683, 0.408750, -0.855941,
		0.773775, -0.633255, -0.016124,
		-0.548620, -0.657200, -0.516822,
		31.117188, 32.021038, 37.389503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879534, 32.449551, 37.157055>,  <31.501221, 32.481075, 37.751282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879534, 32.449551, 37.157055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523321, 32.303108, 37.049042>,  <31.309593, 32.215244, 36.984234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523321, 32.303108, 37.049042>,  <31.879534, 32.449551, 37.157055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523321, 32.303108, 37.049042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168818, 0.285256, -0.943467,
		0.422437, -0.885775, -0.192224,
		-0.890532, -0.366105, -0.270038,
		31.256161, 32.193275, 36.968029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031910, 32.040672, 36.526592>,  <31.879534, 32.449551, 37.157055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031910, 32.040672, 36.526592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641775, 32.128956, 36.527885>,  <31.407694, 32.181927, 36.528660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641775, 32.128956, 36.527885>,  <32.031910, 32.040672, 36.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641775, 32.128956, 36.527885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051953, 0.243757, -0.968444,
		-0.214529, -0.944389, -0.249212,
		-0.975335, 0.220707, 0.003229,
		31.349174, 32.195168, 36.528854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776659, 31.640802, 35.924587>,  <32.031910, 32.040672, 36.526592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776659, 31.640802, 35.924587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555586, 31.955530, 36.034466>,  <31.422941, 32.144367, 36.100391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555586, 31.955530, 36.034466>,  <31.776659, 31.640802, 35.924587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555586, 31.955530, 36.034466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111018, 0.257160, -0.959971,
		-0.825965, -0.561054, -0.054777,
		-0.552682, 0.786821, 0.274692,
		31.389782, 32.191578, 36.116875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581032, 31.505180, 36.051010>,  <31.776659, 31.640802, 35.924587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581032, 31.505180, 36.051010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909389, 31.688259, 35.914398>,  <33.106403, 31.798107, 35.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909389, 31.688259, 35.914398>,  <32.581032, 31.505180, 36.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909389, 31.688259, 35.914398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569356, -0.609560, 0.551606,
		0.044287, -0.647263, -0.760979,
		0.820897, 0.457697, -0.341528,
		33.155659, 31.825569, 35.811939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099262, 30.906384, 35.892532>,  <32.581032, 31.505180, 36.051010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099262, 30.906384, 35.892532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298115, 31.253132, 35.907516>,  <33.417427, 31.461180, 35.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298115, 31.253132, 35.907516>,  <33.099262, 30.906384, 35.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298115, 31.253132, 35.907516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764246, -0.457902, 0.454152,
		0.410844, -0.197141, -0.890136,
		0.497127, 0.866869, 0.037462,
		33.447254, 31.513193, 35.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772453, 30.709398, 35.880028>,  <33.099262, 30.906384, 35.892532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772453, 30.709398, 35.880028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786896, 31.070362, 36.051777>,  <33.795563, 31.286940, 36.154827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786896, 31.070362, 36.051777>,  <33.772453, 30.709398, 35.880028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786896, 31.070362, 36.051777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827094, -0.268131, 0.493984,
		0.560902, 0.337292, -0.756057,
		0.036106, 0.902408, 0.429368,
		33.797726, 31.341084, 36.180588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542454, 30.827824, 35.840889>,  <33.772453, 30.709398, 35.880028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542454, 30.827824, 35.840889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370346, 31.099567, 36.078659>,  <34.267082, 31.262613, 36.221321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370346, 31.099567, 36.078659>,  <34.542454, 30.827824, 35.840889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370346, 31.099567, 36.078659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789670, -0.035776, 0.612487,
		0.437364, 0.732934, -0.521076,
		-0.430271, 0.679359, 0.594423,
		34.241264, 31.303375, 36.256985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050552, 31.489391, 36.077843>,  <34.542454, 30.827824, 35.840889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050552, 31.489391, 36.077843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765232, 31.422167, 36.350010>,  <34.594040, 31.381832, 36.513309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765232, 31.422167, 36.350010>,  <35.050552, 31.489391, 36.077843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765232, 31.422167, 36.350010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699958, -0.121526, 0.703769,
		-0.035588, 0.978257, 0.204320,
		-0.713297, -0.168061, 0.680413,
		34.551243, 31.371748, 36.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314705, 31.662092, 36.723953>,  <35.050552, 31.489391, 36.077843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314705, 31.662092, 36.723953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011131, 31.434183, 36.850044>,  <34.828987, 31.297438, 36.925701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011131, 31.434183, 36.850044>,  <35.314705, 31.662092, 36.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011131, 31.434183, 36.850044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557014, -0.317319, 0.767492,
		-0.337268, 0.758067, 0.558198,
		-0.758937, -0.569775, 0.315232,
		34.783451, 31.263250, 36.944614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249611, 31.823116, 37.400505>,  <35.314705, 31.662092, 36.723953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249611, 31.823116, 37.400505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076756, 31.465492, 37.353321>,  <34.973042, 31.250917, 37.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076756, 31.465492, 37.353321>,  <35.249611, 31.823116, 37.400505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076756, 31.465492, 37.353321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493811, -0.344046, 0.798613,
		-0.754592, 0.286860, 0.590172,
		-0.432136, -0.894060, -0.117960,
		34.947113, 31.197273, 37.317932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106247, 31.669016, 38.016399>,  <35.249611, 31.823116, 37.400505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106247, 31.669016, 38.016399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077168, 31.311583, 37.839211>,  <35.059719, 31.097122, 37.732899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077168, 31.311583, 37.839211>,  <35.106247, 31.669016, 38.016399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077168, 31.311583, 37.839211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268551, -0.445280, 0.854170,
		-0.960518, -0.056862, 0.272345,
		-0.072700, -0.893584, -0.442970,
		35.055359, 31.043507, 37.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639931, 31.386580, 38.431866>,  <35.106247, 31.669016, 38.016399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639931, 31.386580, 38.431866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869305, 31.126825, 38.232079>,  <35.006931, 30.970972, 38.112206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869305, 31.126825, 38.232079>,  <34.639931, 31.386580, 38.431866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869305, 31.126825, 38.232079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122166, -0.535067, 0.835930,
		-0.810089, -0.540372, -0.227495,
		0.573438, -0.649386, -0.499467,
		35.041336, 30.932009, 38.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487747, 30.739841, 38.737671>,  <34.639931, 31.386580, 38.431866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487747, 30.739841, 38.737671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829605, 30.665234, 38.543846>,  <35.034718, 30.620468, 38.427551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829605, 30.665234, 38.543846>,  <34.487747, 30.739841, 38.737671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829605, 30.665234, 38.543846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326248, -0.533092, 0.780625,
		-0.403915, -0.825242, -0.394751,
		0.854643, -0.186519, -0.484558,
		35.085999, 30.609278, 38.398479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537331, 30.095947, 38.818382>,  <34.487747, 30.739841, 38.737671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537331, 30.095947, 38.818382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911098, 30.213087, 38.737286>,  <35.135357, 30.283371, 38.688625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911098, 30.213087, 38.737286>,  <34.537331, 30.095947, 38.818382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911098, 30.213087, 38.737286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336239, -0.537439, 0.773371,
		0.117518, -0.790821, -0.600659,
		0.934416, 0.292850, -0.202746,
		35.191422, 30.300941, 38.676460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975594, 29.572514, 38.939922>,  <34.537331, 30.095947, 38.818382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975594, 29.572514, 38.939922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252354, 29.861286, 38.943726>,  <35.418411, 30.034550, 38.946007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252354, 29.861286, 38.943726>,  <34.975594, 29.572514, 38.939922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252354, 29.861286, 38.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540045, -0.526235, 0.656832,
		0.479192, -0.449326, -0.753977,
		0.691901, 0.721930, 0.009512,
		35.459923, 30.077866, 38.946579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618668, 29.133574, 39.001202>,  <34.975594, 29.572514, 38.939922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618668, 29.133574, 39.001202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703556, 29.511019, 39.102837>,  <35.754490, 29.737486, 39.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703556, 29.511019, 39.102837>,  <35.618668, 29.133574, 39.001202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703556, 29.511019, 39.102837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659188, -0.330177, 0.675614,
		0.721410, 0.024111, -0.692088,
		0.212222, 0.943611, 0.254087,
		35.767223, 29.794102, 39.179062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317276, 29.081337, 39.400318>,  <35.618668, 29.133574, 39.001202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317276, 29.081337, 39.400318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139683, 29.422457, 39.510311>,  <36.033127, 29.627129, 39.576305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139683, 29.422457, 39.510311>,  <36.317276, 29.081337, 39.400318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139683, 29.422457, 39.510311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294243, -0.151110, 0.943709,
		0.846346, 0.499902, -0.183839,
		-0.443982, 0.852798, 0.274984,
		36.006489, 29.678295, 39.592808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776707, 29.466238, 39.828087>,  <36.317276, 29.081337, 39.400318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776707, 29.466238, 39.828087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420807, 29.611483, 39.938717>,  <36.207268, 29.698629, 40.005096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420807, 29.611483, 39.938717>,  <36.776707, 29.466238, 39.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420807, 29.611483, 39.938717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168078, -0.302719, 0.938142,
		0.424375, 0.881199, 0.208314,
		-0.889750, 0.363111, 0.276577,
		36.153881, 29.720415, 40.021690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945938, 29.823797, 40.432381>,  <36.776707, 29.466238, 39.828087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945938, 29.823797, 40.432381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553329, 29.747335, 40.429108>,  <36.317764, 29.701458, 40.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553329, 29.747335, 40.429108>,  <36.945938, 29.823797, 40.432381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553329, 29.747335, 40.429108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049379, -0.294389, 0.954409,
		-0.184850, 0.936373, 0.298389,
		-0.981526, -0.191156, -0.008181,
		36.258873, 29.689989, 40.426655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655178, 30.278957, 41.113415>,  <36.945938, 29.823797, 40.432381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655178, 30.278957, 41.113415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378311, 30.016617, 40.992908>,  <36.212193, 29.859213, 40.920605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378311, 30.016617, 40.992908>,  <36.655178, 30.278957, 41.113415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378311, 30.016617, 40.992908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149684, -0.277895, 0.948878,
		-0.706044, 0.701877, 0.094180,
		-0.692168, -0.655853, -0.301266,
		36.170662, 29.819860, 40.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179230, 30.385900, 41.631371>,  <36.655178, 30.278957, 41.113415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179230, 30.385900, 41.631371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127640, 30.028152, 41.460037>,  <36.096684, 29.813503, 41.357239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127640, 30.028152, 41.460037>,  <36.179230, 30.385900, 41.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127640, 30.028152, 41.460037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088802, -0.440621, 0.893290,
		-0.987663, 0.077179, 0.136253,
		-0.128979, -0.894369, -0.428332,
		36.088947, 29.759842, 41.331539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583359, 30.129076, 41.911869>,  <36.179230, 30.385900, 41.631371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583359, 30.129076, 41.911869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803650, 29.817471, 41.791981>,  <35.935825, 29.630508, 41.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803650, 29.817471, 41.791981>,  <35.583359, 30.129076, 41.911869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803650, 29.817471, 41.791981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147723, -0.444387, 0.883571,
		-0.821507, -0.442334, -0.359816,
		0.550731, -0.779013, -0.299724,
		35.968868, 29.583767, 41.702065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327568, 29.584883, 42.247543>,  <35.583359, 30.129076, 41.911869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327568, 29.584883, 42.247543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682407, 29.440140, 42.132923>,  <35.895313, 29.353294, 42.064152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682407, 29.440140, 42.132923>,  <35.327568, 29.584883, 42.247543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682407, 29.440140, 42.132923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169096, -0.322866, 0.931217,
		-0.429484, -0.874538, -0.225226,
		0.887102, -0.361858, -0.286546,
		35.948540, 29.331583, 42.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373589, 28.961056, 42.637985>,  <35.327568, 29.584883, 42.247543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373589, 28.961056, 42.637985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746807, 29.043182, 42.519821>,  <35.970737, 29.092459, 42.448921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746807, 29.043182, 42.519821>,  <35.373589, 28.961056, 42.637985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746807, 29.043182, 42.519821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331352, -0.170681, 0.927941,
		0.140101, -0.963697, -0.227286,
		0.933047, 0.205317, -0.295410,
		36.026722, 29.104778, 42.431198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730961, 28.489180, 42.903934>,  <35.373589, 28.961056, 42.637985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730961, 28.489180, 42.903934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012634, 28.758659, 42.814266>,  <36.181637, 28.920347, 42.760464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012634, 28.758659, 42.814266>,  <35.730961, 28.489180, 42.903934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012634, 28.758659, 42.814266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411868, -0.130409, 0.901864,
		0.578352, -0.727407, -0.369307,
		0.704183, 0.673701, -0.224173,
		36.223888, 28.960770, 42.747013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384964, 28.269501, 43.127033>,  <35.730961, 28.489180, 42.903934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384964, 28.269501, 43.127033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405914, 28.667072, 43.088322>,  <36.418484, 28.905615, 43.065094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405914, 28.667072, 43.088322>,  <36.384964, 28.269501, 43.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405914, 28.667072, 43.088322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404623, 0.067481, 0.911991,
		0.912983, -0.086926, -0.398631,
		0.052375, 0.993927, -0.096781,
		36.421627, 28.965250, 43.059288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086063, 28.355162, 43.443718>,  <36.384964, 28.269501, 43.127033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086063, 28.355162, 43.443718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887154, 28.702126, 43.450821>,  <36.767807, 28.910305, 43.455082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887154, 28.702126, 43.450821>,  <37.086063, 28.355162, 43.443718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887154, 28.702126, 43.450821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307463, 0.157054, 0.938510,
		0.811286, 0.472156, -0.344795,
		-0.497275, 0.867411, 0.017755,
		36.737972, 28.962349, 43.456146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563126, 28.854477, 43.610580>,  <37.086063, 28.355162, 43.443718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563126, 28.854477, 43.610580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196110, 28.982216, 43.705360>,  <36.975903, 29.058859, 43.762230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196110, 28.982216, 43.705360>,  <37.563126, 28.854477, 43.610580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196110, 28.982216, 43.705360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310348, 0.202525, 0.928799,
		0.248620, 0.925744, -0.284932,
		-0.917536, 0.319346, 0.236951,
		36.920849, 29.078020, 43.776447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772835, 29.419161, 44.061573>,  <37.563126, 28.854477, 43.610580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772835, 29.419161, 44.061573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382034, 29.362463, 44.125290>,  <37.147552, 29.328444, 44.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382034, 29.362463, 44.125290>,  <37.772835, 29.419161, 44.061573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382034, 29.362463, 44.125290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139432, 0.140473, 0.980217,
		-0.161317, 0.979885, -0.117479,
		-0.977003, -0.141745, 0.159288,
		37.088932, 29.319939, 44.173077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600197, 29.950815, 44.447720>,  <37.772835, 29.419161, 44.061573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600197, 29.950815, 44.447720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304752, 29.695452, 44.534340>,  <37.127487, 29.542234, 44.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304752, 29.695452, 44.534340>,  <37.600197, 29.950815, 44.447720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304752, 29.695452, 44.534340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025988, 0.294022, 0.955445,
		-0.673635, 0.711326, -0.200576,
		-0.738607, -0.638409, 0.216550,
		37.083172, 29.503929, 44.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124187, 30.403284, 44.744743>,  <37.600197, 29.950815, 44.447720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124187, 30.403284, 44.744743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065155, 30.030624, 44.877556>,  <37.029736, 29.807028, 44.957245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065155, 30.030624, 44.877556>,  <37.124187, 30.403284, 44.744743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065155, 30.030624, 44.877556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094962, 0.347505, 0.932857,
		-0.984481, 0.106140, -0.139756,
		-0.147580, -0.931652, 0.332033,
		37.020882, 29.751129, 44.977165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721008, 30.508585, 45.263958>,  <37.124187, 30.403284, 44.744743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721008, 30.508585, 45.263958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856449, 30.138994, 45.335083>,  <36.937714, 29.917240, 45.377758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856449, 30.138994, 45.335083>,  <36.721008, 30.508585, 45.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856449, 30.138994, 45.335083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024221, 0.180357, 0.983303,
		-0.940619, -0.337252, 0.038690,
		0.338599, -0.923976, 0.177816,
		36.958031, 29.861801, 45.388428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367146, 30.321997, 45.736683>,  <36.721008, 30.508585, 45.263958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367146, 30.321997, 45.736683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684017, 30.079485, 45.764614>,  <36.874142, 29.933979, 45.781372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684017, 30.079485, 45.764614>,  <36.367146, 30.321997, 45.736683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684017, 30.079485, 45.764614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110350, 0.254825, 0.960670,
		-0.600226, -0.753320, 0.268771,
		0.792181, -0.606278, 0.069824,
		36.921673, 29.897602, 45.785561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277924, 29.769611, 46.287998>,  <36.367146, 30.321997, 45.736683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277924, 29.769611, 46.287998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670013, 29.822794, 46.229370>,  <36.905266, 29.854704, 46.194195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670013, 29.822794, 46.229370>,  <36.277924, 29.769611, 46.287998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670013, 29.822794, 46.229370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128312, 0.136847, 0.982247,
		0.150669, -0.981627, 0.117079,
		0.980222, 0.132972, -0.146573,
		36.964081, 29.862680, 46.185398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511536, 29.414711, 46.728157>,  <36.277924, 29.769611, 46.287998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511536, 29.414711, 46.728157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836311, 29.639261, 46.664146>,  <37.031178, 29.773993, 46.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836311, 29.639261, 46.664146>,  <36.511536, 29.414711, 46.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836311, 29.639261, 46.664146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070444, 0.177910, 0.981522,
		0.579475, -0.808210, 0.104907,
		0.811940, 0.561377, -0.160029,
		37.079895, 29.807674, 46.616138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109531, 29.119513, 47.158646>,  <36.511536, 29.414711, 46.728157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109531, 29.119513, 47.158646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172070, 29.507412, 47.083656>,  <37.209591, 29.740150, 47.038662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172070, 29.507412, 47.083656>,  <37.109531, 29.119513, 47.158646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172070, 29.507412, 47.083656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197117, 0.155358, 0.967992,
		0.967834, -0.188293, -0.166865,
		0.156342, 0.969747, -0.187476,
		37.218971, 29.798336, 47.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668297, 29.302357, 47.607967>,  <37.109531, 29.119513, 47.158646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668297, 29.302357, 47.607967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493477, 29.642292, 47.490147>,  <37.388584, 29.846254, 47.419453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493477, 29.642292, 47.490147>,  <37.668297, 29.302357, 47.607967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493477, 29.642292, 47.490147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156445, 0.394322, 0.905558,
		0.885729, 0.349690, -0.305290,
		-0.437047, 0.849840, -0.294555,
		37.362362, 29.897243, 47.401779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090748, 29.839046, 47.893543>,  <37.668297, 29.302357, 47.607967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090748, 29.839046, 47.893543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729237, 29.990456, 47.813637>,  <37.512329, 30.081301, 47.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729237, 29.990456, 47.813637>,  <38.090748, 29.839046, 47.893543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729237, 29.990456, 47.813637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077116, 0.315078, 0.945927,
		0.420997, 0.870313, -0.255570,
		-0.903778, 0.378524, -0.199762,
		37.458103, 30.104013, 47.753708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015133, 30.468664, 48.263382>,  <38.090748, 29.839046, 47.893543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015133, 30.468664, 48.263382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632557, 30.392521, 48.174858>,  <37.403011, 30.346836, 48.121742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632557, 30.392521, 48.174858>,  <38.015133, 30.468664, 48.263382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632557, 30.392521, 48.174858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276605, 0.348670, 0.895499,
		-0.093299, 0.917711, -0.386137,
		-0.956444, -0.190357, -0.221313,
		37.345623, 30.335413, 48.108463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535927, 31.072237, 48.372238>,  <38.015133, 30.468664, 48.263382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535927, 31.072237, 48.372238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321945, 30.739235, 48.429859>,  <37.193554, 30.539433, 48.464432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321945, 30.739235, 48.429859>,  <37.535927, 31.072237, 48.372238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321945, 30.739235, 48.429859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170385, 0.273304, 0.946718,
		-0.827519, 0.481910, -0.288053,
		-0.534959, -0.832507, 0.144054,
		37.161457, 30.489483, 48.473076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191746, 31.260433, 48.953720>,  <37.535927, 31.072237, 48.372238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191746, 31.260433, 48.953720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037754, 30.895502, 49.009502>,  <36.945358, 30.676542, 49.042973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037754, 30.895502, 49.009502>,  <37.191746, 31.260433, 48.953720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037754, 30.895502, 49.009502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264897, 0.253972, 0.930230,
		-0.884095, 0.321174, -0.339446,
		-0.384975, -0.912330, 0.139457,
		36.922260, 30.621803, 49.051338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757069, 31.721657, 49.422184>,  <37.191746, 31.260433, 48.953720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757069, 31.721657, 49.422184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918388, 32.085144, 49.465225>,  <37.015179, 32.303238, 49.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918388, 32.085144, 49.465225>,  <36.757069, 31.721657, 49.422184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918388, 32.085144, 49.465225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315240, -0.027582, -0.948611,
		-0.859054, 0.416494, -0.297589,
		0.403299, 0.908720, 0.107602,
		37.039379, 32.357761, 49.497505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560585, 32.080219, 48.778511>,  <36.757069, 31.721657, 49.422184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560585, 32.080219, 48.778511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851208, 32.294384, 48.950764>,  <37.025581, 32.422882, 49.054115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851208, 32.294384, 48.950764>,  <36.560585, 32.080219, 48.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851208, 32.294384, 48.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471291, 0.067730, -0.879373,
		-0.499993, 0.841871, -0.203124,
		0.726561, 0.535411, 0.430632,
		37.069176, 32.455006, 49.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436443, 32.681316, 48.431114>,  <36.560585, 32.080219, 48.778511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436443, 32.681316, 48.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793606, 32.735069, 48.603001>,  <37.007904, 32.767323, 48.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793606, 32.735069, 48.603001>,  <36.436443, 32.681316, 48.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793606, 32.735069, 48.603001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359555, 0.361606, -0.860210,
		-0.270988, 0.922595, 0.274562,
		0.892909, 0.134387, 0.429715,
		37.061478, 32.775387, 48.731915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648365, 33.482155, 48.434338>,  <36.436443, 32.681316, 48.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648365, 33.482155, 48.434338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939945, 33.209045, 48.414562>,  <37.114895, 33.045177, 48.402699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939945, 33.209045, 48.414562>,  <36.648365, 33.482155, 48.434338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939945, 33.209045, 48.414562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285808, 0.369168, -0.884324,
		0.622047, 0.630501, 0.464249,
		0.728953, -0.682777, -0.049438,
		37.158630, 33.004211, 48.399731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133564, 33.788029, 48.054142>,  <36.648365, 33.482155, 48.434338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133564, 33.788029, 48.054142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229225, 33.399815, 48.042381>,  <37.286621, 33.166885, 48.035324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229225, 33.399815, 48.042381>,  <37.133564, 33.788029, 48.054142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229225, 33.399815, 48.042381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303985, 0.103597, -0.947028,
		0.922170, 0.217551, 0.319804,
		0.239157, -0.970536, -0.029402,
		37.300972, 33.108654, 48.033562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631611, 33.721554, 47.596066>,  <37.133564, 33.788029, 48.054142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631611, 33.721554, 47.596066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521156, 33.337193, 47.604198>,  <37.454884, 33.106575, 47.609077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521156, 33.337193, 47.604198>,  <37.631611, 33.721554, 47.596066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521156, 33.337193, 47.604198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235003, -0.088014, -0.968001,
		0.931946, -0.262519, 0.250119,
		-0.276133, -0.960904, 0.020331,
		37.438316, 33.048920, 47.610298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094105, 33.309917, 47.104248>,  <37.631611, 33.721554, 47.596066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094105, 33.309917, 47.104248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753735, 33.104839, 47.149979>,  <37.549511, 32.981792, 47.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753735, 33.104839, 47.149979>,  <38.094105, 33.309917, 47.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753735, 33.104839, 47.149979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075169, -0.096559, -0.992485,
		0.519883, -0.853123, 0.043626,
		-0.850923, -0.512697, 0.114328,
		37.498459, 32.951031, 47.184277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227402, 32.780960, 46.712021>,  <38.094105, 33.309917, 47.104248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227402, 32.780960, 46.712021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829918, 32.799145, 46.752956>,  <37.591427, 32.810055, 46.777515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829918, 32.799145, 46.752956>,  <38.227402, 32.780960, 46.712021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829918, 32.799145, 46.752956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107372, -0.127360, -0.986028,
		-0.031790, -0.990814, 0.131440,
		-0.993710, 0.045459, 0.102337,
		37.531803, 32.812782, 46.783657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997070, 32.180202, 46.322823>,  <38.227402, 32.780960, 46.712021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997070, 32.180202, 46.322823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655689, 32.383842, 46.367439>,  <37.450863, 32.506027, 46.394207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655689, 32.383842, 46.367439>,  <37.997070, 32.180202, 46.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655689, 32.383842, 46.367439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239747, -0.193476, -0.951362,
		-0.462757, -0.838681, 0.287177,
		-0.853450, 0.509099, 0.111539,
		37.399654, 32.536572, 46.400902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401714, 31.798073, 45.978397>,  <37.997070, 32.180202, 46.322823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401714, 31.798073, 45.978397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225883, 32.154228, 46.025688>,  <37.120384, 32.367924, 46.054062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225883, 32.154228, 46.025688>,  <37.401714, 31.798073, 45.978397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225883, 32.154228, 46.025688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540955, -0.157359, -0.826199,
		-0.717036, -0.427134, 0.550833,
		-0.439576, 0.890390, 0.118228,
		37.094009, 32.421345, 46.061157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736763, 31.753292, 45.899029>,  <37.401714, 31.798073, 45.978397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736763, 31.753292, 45.899029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847942, 32.120586, 45.786186>,  <36.914650, 32.340961, 45.718483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847942, 32.120586, 45.786186>,  <36.736763, 31.753292, 45.899029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847942, 32.120586, 45.786186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165705, -0.243441, -0.955656,
		-0.946195, 0.312374, 0.084491,
		0.277953, 0.918237, -0.282104,
		36.931328, 32.396057, 45.701553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325188, 31.993080, 45.407333>,  <36.736763, 31.753292, 45.899029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325188, 31.993080, 45.407333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617268, 32.258110, 45.340641>,  <36.792515, 32.417130, 45.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617268, 32.258110, 45.340641>,  <36.325188, 31.993080, 45.407333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617268, 32.258110, 45.340641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054161, -0.187137, -0.980840,
		-0.681084, 0.725239, -0.100761,
		0.730200, 0.662577, -0.166735,
		36.836327, 32.456882, 45.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105621, 32.469952, 44.856670>,  <36.325188, 31.993080, 45.407333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105621, 32.469952, 44.856670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505383, 32.477947, 44.867970>,  <36.745239, 32.482742, 44.874748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505383, 32.477947, 44.867970>,  <36.105621, 32.469952, 44.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505383, 32.477947, 44.867970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032668, -0.276099, -0.960574,
		-0.011401, 0.960921, -0.276587,
		0.999401, 0.019987, 0.028243,
		36.805202, 32.483944, 44.876442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266605, 33.037376, 44.513645>,  <36.105621, 32.469952, 44.856670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266605, 33.037376, 44.513645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585335, 32.797104, 44.487564>,  <36.776573, 32.652939, 44.471916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585335, 32.797104, 44.487564>,  <36.266605, 33.037376, 44.513645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585335, 32.797104, 44.487564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031552, 0.066403, -0.997294,
		0.603387, 0.796726, 0.033959,
		0.796824, -0.600682, -0.065205,
		36.824383, 32.616898, 44.468002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682735, 33.391888, 44.022396>,  <36.266605, 33.037376, 44.513645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682735, 33.391888, 44.022396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811275, 33.013435, 44.038223>,  <36.888397, 32.786362, 44.047722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811275, 33.013435, 44.038223>,  <36.682735, 33.391888, 44.022396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811275, 33.013435, 44.038223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087960, -0.011783, -0.996054,
		0.942867, 0.323561, 0.079435,
		0.321348, -0.946134, 0.039570,
		36.907681, 32.729595, 44.050095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213982, 33.273594, 43.480000>,  <36.682735, 33.391888, 44.022396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213982, 33.273594, 43.480000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105576, 32.895275, 43.551575>,  <37.040531, 32.668285, 43.594521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105576, 32.895275, 43.551575>,  <37.213982, 33.273594, 43.480000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105576, 32.895275, 43.551575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204708, -0.238276, -0.949379,
		0.940556, -0.220667, 0.258189,
		-0.271017, -0.945796, 0.178939,
		37.024269, 32.611538, 43.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786514, 32.930347, 43.138809>,  <37.213982, 33.273594, 43.480000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786514, 32.930347, 43.138809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488274, 32.670750, 43.199318>,  <37.309330, 32.514992, 43.235622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488274, 32.670750, 43.199318>,  <37.786514, 32.930347, 43.138809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488274, 32.670750, 43.199318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063484, -0.295143, -0.953342,
		0.663359, -0.701211, 0.261260,
		-0.745603, -0.648994, 0.151270,
		37.264591, 32.476051, 43.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953857, 32.314259, 42.852528>,  <37.786514, 32.930347, 43.138809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953857, 32.314259, 42.852528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557407, 32.269329, 42.880943>,  <37.319538, 32.242371, 42.897991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557407, 32.269329, 42.880943>,  <37.953857, 32.314259, 42.852528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557407, 32.269329, 42.880943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022753, -0.383207, -0.923383,
		0.130944, -0.916807, 0.377251,
		-0.991129, -0.112328, 0.071038,
		37.260067, 32.235630, 42.902256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814087, 31.650688, 42.656818>,  <37.953857, 32.314259, 42.852528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814087, 31.650688, 42.656818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469322, 31.839884, 42.583725>,  <37.262463, 31.953402, 42.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469322, 31.839884, 42.583725>,  <37.814087, 31.650688, 42.656818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469322, 31.839884, 42.583725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004724, -0.352880, -0.935657,
		-0.507041, -0.807314, 0.301916,
		-0.861909, 0.472990, -0.182738,
		37.210751, 31.981781, 42.528904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267807, 31.244715, 42.339687>,  <37.814087, 31.650688, 42.656818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267807, 31.244715, 42.339687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136269, 31.606934, 42.232471>,  <37.057346, 31.824265, 42.168140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136269, 31.606934, 42.232471>,  <37.267807, 31.244715, 42.339687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136269, 31.606934, 42.232471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041473, -0.269707, -0.962049,
		-0.943473, -0.327481, 0.051136,
		-0.328844, 0.905546, -0.268043,
		37.037617, 31.878597, 42.152058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698143, 31.135056, 41.793003>,  <37.267807, 31.244715, 42.339687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698143, 31.135056, 41.793003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815952, 31.515831, 41.759377>,  <36.886639, 31.744297, 41.739201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815952, 31.515831, 41.759377>,  <36.698143, 31.135056, 41.793003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815952, 31.515831, 41.759377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088237, -0.060508, -0.994260,
		-0.951561, 0.300255, 0.066175,
		0.294527, 0.951938, -0.084070,
		36.904312, 31.801413, 41.734154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291058, 31.278782, 41.304874>,  <36.698143, 31.135056, 41.793003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291058, 31.278782, 41.304874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579594, 31.555368, 41.289188>,  <36.752716, 31.721321, 41.279778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579594, 31.555368, 41.289188>,  <36.291058, 31.278782, 41.304874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579594, 31.555368, 41.289188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140573, 0.090735, -0.985904,
		-0.678162, 0.716687, 0.162653,
		0.721343, 0.691467, -0.039214,
		36.795998, 31.762808, 41.277424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043434, 31.857683, 40.877953>,  <36.291058, 31.278782, 41.304874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043434, 31.857683, 40.877953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441811, 31.891714, 40.866188>,  <36.680836, 31.912132, 40.859127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441811, 31.891714, 40.866188>,  <36.043434, 31.857683, 40.877953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441811, 31.891714, 40.866188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039679, 0.121575, -0.991789,
		-0.080804, 0.988930, 0.124457,
		0.995940, 0.085078, -0.029416,
		36.740593, 31.917238, 40.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190136, 32.482048, 40.479340>,  <36.043434, 31.857683, 40.877953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190136, 32.482048, 40.479340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506870, 32.238026, 40.467865>,  <36.696911, 32.091614, 40.460979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506870, 32.238026, 40.467865>,  <36.190136, 32.482048, 40.479340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506870, 32.238026, 40.467865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031888, 0.005601, -0.999476,
		0.609897, 0.792338, -0.015018,
		0.791839, -0.610056, -0.028683,
		36.744423, 32.055008, 40.459259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611660, 32.696217, 40.009129>,  <36.190136, 32.482048, 40.479340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611660, 32.696217, 40.009129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771736, 32.333889, 40.064751>,  <36.867783, 32.116493, 40.098125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771736, 32.333889, 40.064751>,  <36.611660, 32.696217, 40.009129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771736, 32.333889, 40.064751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258712, -0.033899, -0.965359,
		0.879155, 0.422306, 0.220780,
		0.400193, -0.905819, 0.139058,
		36.891792, 32.062141, 40.106468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393162, 32.647785, 39.820782>,  <36.611660, 32.696217, 40.009129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393162, 32.647785, 39.820782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172714, 32.324081, 39.739418>,  <37.040447, 32.129860, 39.690601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172714, 32.324081, 39.739418>,  <37.393162, 32.647785, 39.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172714, 32.324081, 39.739418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239609, 0.080024, -0.967566,
		0.799285, -0.581981, 0.149803,
		-0.551117, -0.809255, -0.203410,
		37.007378, 32.081306, 39.678394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850883, 32.140511, 39.591816>,  <37.393162, 32.647785, 39.820782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850883, 32.140511, 39.591816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493530, 32.049397, 39.436909>,  <37.279118, 31.994728, 39.343964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493530, 32.049397, 39.436909>,  <37.850883, 32.140511, 39.591816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493530, 32.049397, 39.436909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368953, 0.119920, -0.921679,
		0.256388, -0.966298, -0.023092,
		-0.893386, -0.227787, -0.387265,
		37.225513, 31.981060, 39.320728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913422, 31.803619, 38.926105>,  <37.850883, 32.140511, 39.591816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913422, 31.803619, 38.926105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534454, 31.907185, 38.850891>,  <37.307072, 31.969324, 38.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534454, 31.907185, 38.850891>,  <37.913422, 31.803619, 38.926105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534454, 31.907185, 38.850891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234984, 0.164083, -0.958050,
		-0.217198, -0.951862, -0.216296,
		-0.947422, 0.258912, -0.188033,
		37.250229, 31.984858, 38.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761234, 31.312874, 38.336914>,  <37.913422, 31.803619, 38.926105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761234, 31.312874, 38.336914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529591, 31.638548, 38.353596>,  <37.390606, 31.833952, 38.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529591, 31.638548, 38.353596>,  <37.761234, 31.312874, 38.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529591, 31.638548, 38.353596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204119, 0.194332, -0.959464,
		-0.789286, -0.547117, -0.278729,
		-0.579105, 0.814185, 0.041707,
		37.355858, 31.882803, 38.366108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452187, 31.410114, 37.628372>,  <37.761234, 31.312874, 38.336914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452187, 31.410114, 37.628372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391151, 31.772781, 37.785683>,  <37.354530, 31.990381, 37.880070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391151, 31.772781, 37.785683>,  <37.452187, 31.410114, 37.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391151, 31.772781, 37.785683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119921, 0.411982, -0.903266,
		-0.980987, -0.090668, -0.171593,
		-0.152591, 0.906670, 0.393276,
		37.345375, 32.044781, 37.903664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964870, 31.738798, 37.143993>,  <37.452187, 31.410114, 37.628372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964870, 31.738798, 37.143993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103306, 32.036762, 37.372147>,  <37.186367, 32.215542, 37.509037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103306, 32.036762, 37.372147>,  <36.964870, 31.738798, 37.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103306, 32.036762, 37.372147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256041, 0.509881, -0.821258,
		-0.902588, 0.430268, -0.014263,
		0.346089, 0.744910, 0.570379,
		37.207134, 32.260235, 37.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704090, 32.371933, 36.828716>,  <36.964870, 31.738798, 37.143993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704090, 32.371933, 36.828716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038555, 32.451618, 37.033127>,  <37.239235, 32.499432, 37.155773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038555, 32.451618, 37.033127>,  <36.704090, 32.371933, 36.828716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038555, 32.451618, 37.033127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335927, 0.550498, -0.764268,
		-0.433572, 0.810719, 0.393384,
		0.836163, 0.199216, 0.511023,
		37.289406, 32.511383, 37.186432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890739, 33.032936, 36.670849>,  <36.704090, 32.371933, 36.828716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890739, 33.032936, 36.670849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236717, 32.920235, 36.836975>,  <37.444305, 32.852615, 36.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236717, 32.920235, 36.836975>,  <36.890739, 33.032936, 36.670849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236717, 32.920235, 36.836975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463879, 0.764665, -0.447329,
		-0.191539, 0.579570, 0.792093,
		0.864944, -0.281755, 0.415313,
		37.496201, 32.835709, 36.961571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329197, 33.611126, 36.753796>,  <36.890739, 33.032936, 36.670849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329197, 33.611126, 36.753796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592274, 33.310104, 36.767067>,  <37.750118, 33.129490, 36.775028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592274, 33.310104, 36.767067>,  <37.329197, 33.611126, 36.753796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592274, 33.310104, 36.767067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652833, 0.547454, -0.523548,
		0.375837, 0.365992, 0.851350,
		0.657689, -0.752558, 0.033178,
		37.789581, 33.084335, 36.777020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013210, 33.907413, 37.057384>,  <37.329197, 33.611126, 36.753796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013210, 33.907413, 37.057384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080959, 33.578190, 36.840538>,  <38.121609, 33.380657, 36.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080959, 33.578190, 36.840538>,  <38.013210, 33.907413, 37.057384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080959, 33.578190, 36.840538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514699, 0.542962, -0.663534,
		0.840475, -0.166640, 0.515591,
		0.169375, -0.823057, -0.542115,
		38.131771, 33.331272, 36.677902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752987, 33.856400, 36.987518>,  <38.013210, 33.907413, 37.057384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752987, 33.856400, 36.987518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616470, 33.645943, 36.675957>,  <38.534561, 33.519669, 36.489021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616470, 33.645943, 36.675957>,  <38.752987, 33.856400, 36.987518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616470, 33.645943, 36.675957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543202, 0.565873, -0.620258,
		0.767106, -0.634791, 0.092675,
		-0.341292, -0.526145, -0.778904,
		38.514084, 33.488098, 36.442284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385212, 33.721172, 36.605515>,  <38.752987, 33.856400, 36.987518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385212, 33.721172, 36.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077045, 33.695126, 36.351830>,  <38.892147, 33.679497, 36.199619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077045, 33.695126, 36.351830>,  <39.385212, 33.721172, 36.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077045, 33.695126, 36.351830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499062, 0.557436, -0.663477,
		0.396737, -0.827662, -0.396958,
		-0.770414, -0.065120, -0.634211,
		38.845921, 33.675591, 36.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597538, 33.624458, 35.891937>,  <39.385212, 33.721172, 36.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597538, 33.624458, 35.891937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223114, 33.738071, 35.808880>,  <38.998459, 33.806240, 35.759045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223114, 33.738071, 35.808880>,  <39.597538, 33.624458, 35.891937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223114, 33.738071, 35.808880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342196, 0.597752, -0.724979,
		-0.081797, -0.749679, -0.656727,
		-0.936062, 0.284031, -0.207643,
		38.942295, 33.823280, 35.746586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571617, 33.758503, 35.177280>,  <39.597538, 33.624458, 35.891937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571617, 33.758503, 35.177280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246506, 33.944923, 35.317101>,  <39.051437, 34.056774, 35.400993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246506, 33.944923, 35.317101>,  <39.571617, 33.758503, 35.177280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246506, 33.944923, 35.317101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151216, 0.748223, -0.645984,
		-0.562600, -0.472188, -0.678617,
		-0.812782, 0.466048, 0.349548,
		39.002670, 34.084740, 35.421967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036179, 33.887245, 34.711155>,  <39.571617, 33.758503, 35.177280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036179, 33.887245, 34.711155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048180, 34.163364, 35.000317>,  <39.055378, 34.329037, 35.173813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048180, 34.163364, 35.000317>,  <39.036179, 33.887245, 34.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048180, 34.163364, 35.000317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367769, 0.664876, -0.650143,
		-0.929433, 0.285366, -0.233923,
		0.029999, 0.690294, 0.722907,
		39.057178, 34.370453, 35.217190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524281, 34.543861, 34.670055>,  <39.036179, 33.887245, 34.711155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524281, 34.543861, 34.670055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875580, 34.591213, 34.855385>,  <39.086361, 34.619625, 34.966583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875580, 34.591213, 34.855385>,  <38.524281, 34.543861, 34.670055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875580, 34.591213, 34.855385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320660, 0.572989, -0.754228,
		-0.354765, 0.810968, 0.465266,
		0.878248, 0.118381, 0.463322,
		39.139053, 34.626728, 34.994381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658710, 35.216927, 34.601273>,  <38.524281, 34.543861, 34.670055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658710, 35.216927, 34.601273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025368, 35.057159, 34.607399>,  <39.245361, 34.961300, 34.611076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025368, 35.057159, 34.607399>,  <38.658710, 35.216927, 34.601273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025368, 35.057159, 34.607399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193781, 0.410547, -0.891011,
		0.349601, 0.819703, 0.453724,
		0.916639, -0.399422, 0.015315,
		39.300358, 34.937332, 34.611992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039398, 35.768597, 34.172745>,  <38.658710, 35.216927, 34.601273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039398, 35.768597, 34.172745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211369, 35.407627, 34.184025>,  <39.314552, 35.191044, 34.190792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211369, 35.407627, 34.184025>,  <39.039398, 35.768597, 34.172745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211369, 35.407627, 34.184025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330480, 0.128223, -0.935062,
		0.840207, 0.411328, 0.353360,
		0.429926, -0.902424, 0.028201,
		39.340347, 35.136902, 34.192486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817543, 35.801571, 33.986954>,  <39.039398, 35.768597, 34.172745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817543, 35.801571, 33.986954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630665, 35.467358, 33.871292>,  <39.518536, 35.266830, 33.801895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630665, 35.467358, 33.871292>,  <39.817543, 35.801571, 33.986954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630665, 35.467358, 33.871292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297420, 0.159466, -0.941335,
		0.832627, -0.525791, 0.174001,
		-0.467198, -0.835532, -0.289156,
		39.490505, 35.216698, 33.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391109, 35.614578, 33.525398>,  <39.817543, 35.801571, 33.986954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391109, 35.614578, 33.525398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024815, 35.466053, 33.464020>,  <39.805038, 35.376938, 33.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024815, 35.466053, 33.464020>,  <40.391109, 35.614578, 33.525398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024815, 35.466053, 33.464020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131900, 0.082899, -0.987791,
		0.379504, -0.924798, -0.026937,
		-0.915739, -0.371318, -0.153442,
		39.750092, 35.354656, 33.417988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990940, 35.136452, 33.500668>,  <40.391109, 35.614578, 33.525398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990940, 35.136452, 33.500668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252880, 35.435894, 33.459167>,  <41.410042, 35.615559, 33.434269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252880, 35.435894, 33.459167>,  <40.990940, 35.136452, 33.500668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252880, 35.435894, 33.459167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080807, 0.205843, 0.975243,
		0.751428, -0.630252, 0.195288,
		0.654848, 0.748606, -0.103747,
		41.449333, 35.660477, 33.428043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605316, 35.077682, 33.919247>,  <40.990940, 35.136452, 33.500668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605316, 35.077682, 33.919247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496925, 35.456070, 33.848007>,  <41.431892, 35.683102, 33.805264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496925, 35.456070, 33.848007>,  <41.605316, 35.077682, 33.919247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496925, 35.456070, 33.848007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050910, 0.198848, 0.978707,
		0.961240, 0.256136, -0.102041,
		-0.270972, 0.945967, -0.178101,
		41.415634, 35.739861, 33.794579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524361, 35.577576, 34.530701>,  <41.605316, 35.077682, 33.919247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524361, 35.577576, 34.530701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833858, 35.753712, 34.712875>,  <42.019558, 35.859394, 34.822178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833858, 35.753712, 34.712875>,  <41.524361, 35.577576, 34.530701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833858, 35.753712, 34.712875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414293, 0.895597, -0.162070,
		-0.479252, -0.063282, 0.875393,
		0.773744, 0.440342, 0.455434,
		42.065983, 35.885815, 34.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271435, 36.103539, 35.024590>,  <41.524361, 35.577576, 34.530701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271435, 36.103539, 35.024590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648846, 36.204594, 34.938866>,  <41.875294, 36.265228, 34.887432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648846, 36.204594, 34.938866>,  <41.271435, 36.103539, 35.024590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648846, 36.204594, 34.938866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284441, 0.949413, -0.133072,
		0.169848, 0.186515, 0.967659,
		0.943528, 0.252640, -0.214308,
		41.931904, 36.280384, 34.874573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416855, 36.628269, 35.433617>,  <41.271435, 36.103539, 35.024590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416855, 36.628269, 35.433617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666233, 36.659801, 35.122463>,  <41.815861, 36.678722, 34.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666233, 36.659801, 35.122463>,  <41.416855, 36.628269, 35.433617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666233, 36.659801, 35.122463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108027, 0.994047, 0.014162,
		0.774365, 0.075203, 0.628254,
		0.623449, 0.078835, -0.777879,
		41.853268, 36.683453, 34.889099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842514, 37.218349, 35.562908>,  <41.416855, 36.628269, 35.433617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842514, 37.218349, 35.562908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926270, 37.166195, 35.175266>,  <41.976524, 37.134903, 34.942680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926270, 37.166195, 35.175266>,  <41.842514, 37.218349, 35.562908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926270, 37.166195, 35.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053718, 0.988040, -0.144537,
		0.976355, 0.082323, 0.199883,
		0.209391, -0.130382, -0.969101,
		41.989086, 37.127079, 34.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478931, 37.533783, 35.380955>,  <41.842514, 37.218349, 35.562908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478931, 37.533783, 35.380955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263386, 37.501949, 35.045506>,  <42.134060, 37.482849, 34.844234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263386, 37.501949, 35.045506>,  <42.478931, 37.533783, 35.380955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263386, 37.501949, 35.045506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063139, 0.996543, -0.053998,
		0.840025, 0.023852, -0.542023,
		-0.538862, -0.079582, -0.838627,
		42.101727, 37.478073, 34.793919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718044, 38.063023, 34.973938>,  <42.478931, 37.533783, 35.380955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718044, 38.063023, 34.973938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363068, 37.983631, 34.807541>,  <42.150082, 37.935997, 34.707703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363068, 37.983631, 34.807541>,  <42.718044, 38.063023, 34.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363068, 37.983631, 34.807541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176716, 0.980081, -0.090621,
		0.425693, -0.006908, -0.904841,
		-0.887444, -0.198477, -0.415993,
		42.096836, 37.924088, 34.682743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873150, 38.320171, 34.380486>,  <42.718044, 38.063023, 34.973938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873150, 38.320171, 34.380486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475517, 38.314087, 34.423512>,  <42.236938, 38.310436, 34.449329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475517, 38.314087, 34.423512>,  <42.873150, 38.320171, 34.380486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475517, 38.314087, 34.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046130, 0.955548, -0.291204,
		-0.098356, -0.294443, -0.950594,
		-0.994082, -0.015210, 0.107567,
		42.177292, 38.309525, 34.455780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660141, 38.661663, 33.810917>,  <42.873150, 38.320171, 34.380486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660141, 38.661663, 33.810917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343445, 38.654346, 34.055149>,  <42.153427, 38.649956, 34.201691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343445, 38.654346, 34.055149>,  <42.660141, 38.661663, 33.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343445, 38.654346, 34.055149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241369, 0.927581, -0.285191,
		-0.561148, -0.373173, -0.738820,
		-0.791741, -0.018294, 0.610582,
		42.105923, 38.648857, 34.238323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994259, 38.879505, 33.357368>,  <42.660141, 38.661663, 33.810917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994259, 38.879505, 33.357368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900993, 38.949730, 33.739952>,  <41.845036, 38.991867, 33.969501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900993, 38.949730, 33.739952>,  <41.994259, 38.879505, 33.357368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900993, 38.949730, 33.739952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419717, 0.869068, -0.261839,
		-0.877197, -0.462492, -0.128945,
		-0.233160, 0.175564, 0.956459,
		41.831047, 39.002399, 34.026890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411747, 39.250156, 33.366642>,  <41.994259, 38.879505, 33.357368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411747, 39.250156, 33.366642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534119, 39.330597, 33.738873>,  <41.607544, 39.378860, 33.962212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534119, 39.330597, 33.738873>,  <41.411747, 39.250156, 33.366642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534119, 39.330597, 33.738873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333914, 0.938011, -0.092931,
		-0.891576, -0.282301, 0.354117,
		0.305932, 0.201100, 0.930572,
		41.625896, 39.390926, 34.018044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856350, 39.611607, 33.760437>,  <41.411747, 39.250156, 33.366642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856350, 39.611607, 33.760437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172932, 39.694664, 33.990387>,  <41.362881, 39.744499, 34.128357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172932, 39.694664, 33.990387>,  <40.856350, 39.611607, 33.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172932, 39.694664, 33.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272576, 0.961730, 0.027891,
		-0.547080, -0.178771, 0.817768,
		0.791458, 0.207645, 0.574872,
		41.410370, 39.756958, 34.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640881, 40.063602, 34.155788>,  <40.856350, 39.611607, 33.760437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640881, 40.063602, 34.155788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031059, 40.130920, 34.212616>,  <41.265167, 40.171310, 34.246712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031059, 40.130920, 34.212616>,  <40.640881, 40.063602, 34.155788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031059, 40.130920, 34.212616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161899, 0.985243, -0.055536,
		-0.149316, 0.031172, 0.988298,
		0.975445, 0.168297, 0.142066,
		41.323692, 40.181408, 34.255234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805740, 40.632771, 34.733868>,  <40.640881, 40.063602, 34.155788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805740, 40.632771, 34.733868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097885, 40.638611, 34.460705>,  <41.273170, 40.642117, 34.296806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097885, 40.638611, 34.460705>,  <40.805740, 40.632771, 34.733868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097885, 40.638611, 34.460705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192606, 0.963605, -0.185386,
		0.655347, 0.266930, 0.706589,
		0.730358, 0.014601, -0.682908,
		41.316994, 40.642990, 34.255833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951698, 41.306187, 34.692310>,  <40.805740, 40.632771, 34.733868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951698, 41.306187, 34.692310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173191, 41.184196, 34.382378>,  <41.306087, 41.111004, 34.196419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173191, 41.184196, 34.382378>,  <40.951698, 41.306187, 34.692310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173191, 41.184196, 34.382378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075113, 0.945016, -0.318281,
		0.829299, 0.118042, 0.546194,
		0.553733, -0.304977, -0.774835,
		41.339310, 41.092705, 34.149929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541107, 41.778263, 34.652466>,  <40.951698, 41.306187, 34.692310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541107, 41.778263, 34.652466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493652, 41.626564, 34.285400>,  <41.465179, 41.535545, 34.065163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493652, 41.626564, 34.285400>,  <41.541107, 41.778263, 34.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493652, 41.626564, 34.285400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079780, 0.917557, -0.389518,
		0.989728, -0.119422, -0.078599,
		-0.118636, -0.379246, -0.917659,
		41.458061, 41.512791, 34.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110409, 42.073349, 34.295105>,  <41.541107, 41.778263, 34.652466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110409, 42.073349, 34.295105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833305, 41.948944, 34.034840>,  <41.667042, 41.874302, 33.878681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833305, 41.948944, 34.034840>,  <42.110409, 42.073349, 34.295105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833305, 41.948944, 34.034840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171569, 0.805246, -0.567576,
		0.700464, -0.504826, -0.504481,
		-0.692759, -0.311014, -0.650658,
		41.625477, 41.855640, 33.839642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345043, 42.228195, 33.600590>,  <42.110409, 42.073349, 34.295105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345043, 42.228195, 33.600590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947811, 42.191582, 33.571182>,  <41.709473, 42.169613, 33.553539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947811, 42.191582, 33.571182>,  <42.345043, 42.228195, 33.600590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947811, 42.191582, 33.571182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033763, 0.822412, -0.567889,
		0.112446, -0.561479, -0.819815,
		-0.993084, -0.091536, -0.073520,
		41.649887, 42.164120, 33.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262688, 42.312813, 32.854275>,  <42.345043, 42.228195, 33.600590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262688, 42.312813, 32.854275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911144, 42.376476, 33.034180>,  <41.700218, 42.414673, 33.142120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911144, 42.376476, 33.034180>,  <42.262688, 42.312813, 32.854275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911144, 42.376476, 33.034180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063188, 0.895580, -0.440391,
		-0.472888, -0.415458, -0.777027,
		-0.878854, 0.159157, 0.449761,
		41.647488, 42.424225, 33.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034317, 42.740913, 32.336945>,  <42.262688, 42.312813, 32.854275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034317, 42.740913, 32.336945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768208, 42.796734, 32.630322>,  <41.608543, 42.830227, 32.806347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768208, 42.796734, 32.630322>,  <42.034317, 42.740913, 32.336945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768208, 42.796734, 32.630322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165714, 0.930272, -0.327311,
		-0.727976, -0.339293, -0.595761,
		-0.665274, 0.139548, 0.733442,
		41.568626, 42.838600, 32.850353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496586, 43.098976, 31.939854>,  <42.034317, 42.740913, 32.336945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496586, 43.098976, 31.939854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388744, 43.147785, 32.321938>,  <41.324039, 43.177071, 32.551189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388744, 43.147785, 32.321938>,  <41.496586, 43.098976, 31.939854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388744, 43.147785, 32.321938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315688, 0.925924, -0.207380,
		-0.909756, -0.357458, -0.211111,
		-0.269602, 0.122020, 0.955210,
		41.307865, 43.184391, 32.608501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819958, 43.422043, 31.905203>,  <41.496586, 43.098976, 31.939854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819958, 43.422043, 31.905203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988701, 43.479889, 32.263226>,  <41.089947, 43.514595, 32.478039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988701, 43.479889, 32.263226>,  <40.819958, 43.422043, 31.905203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988701, 43.479889, 32.263226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163383, 0.983162, -0.081845,
		-0.891821, -0.111711, 0.438379,
		0.421854, 0.144615, 0.895056,
		41.115257, 43.523273, 32.531742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472431, 43.693127, 32.500877>,  <40.819958, 43.422043, 31.905203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472431, 43.693127, 32.500877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853615, 43.798218, 32.561340>,  <41.082325, 43.861275, 32.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853615, 43.798218, 32.561340>,  <40.472431, 43.693127, 32.500877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853615, 43.798218, 32.561340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269224, 0.962782, 0.023854,
		-0.139261, -0.063426, 0.988222,
		0.952956, 0.262731, 0.151154,
		41.139503, 43.877037, 32.606686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637268, 44.128700, 33.119499>,  <40.472431, 43.693127, 32.500877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637268, 44.128700, 33.119499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925594, 44.211643, 32.854946>,  <41.098591, 44.261410, 32.696217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925594, 44.211643, 32.854946>,  <40.637268, 44.128700, 33.119499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925594, 44.211643, 32.854946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278778, 0.960352, -0.002740,
		0.634588, 0.186352, 0.750047,
		0.720820, 0.207358, -0.661379,
		41.141842, 44.273849, 32.656532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794815, 44.722374, 33.327766>,  <40.637268, 44.128700, 33.119499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794815, 44.722374, 33.327766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942867, 44.694309, 32.957233>,  <41.031696, 44.677471, 32.734913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942867, 44.694309, 32.957233>,  <40.794815, 44.722374, 33.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942867, 44.694309, 32.957233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229778, 0.959246, -0.164466,
		0.900115, 0.273723, 0.338922,
		0.370127, -0.070161, -0.926328,
		41.053905, 44.673260, 32.679337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406178, 44.828003, 33.986729>,  <40.794815, 44.722374, 33.327766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406178, 44.828003, 33.986729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625740, 45.130108, 34.129997>,  <40.757477, 45.311371, 34.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625740, 45.130108, 34.129997>,  <40.406178, 44.828003, 33.986729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625740, 45.130108, 34.129997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037155, -0.450115, 0.892197,
		0.835058, -0.476425, -0.275133,
		0.548906, 0.755259, 0.358170,
		40.790413, 45.356686, 34.237450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008392, 44.497963, 34.249985>,  <40.406178, 44.828003, 33.986729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008392, 44.497963, 34.249985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923847, 44.850777, 34.418430>,  <40.873119, 45.062466, 34.519497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923847, 44.850777, 34.418430>,  <41.008392, 44.497963, 34.249985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923847, 44.850777, 34.418430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183663, -0.387336, 0.903459,
		0.959997, 0.268300, -0.080129,
		-0.211361, 0.882035, 0.421118,
		40.860439, 45.115387, 34.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592110, 44.789707, 34.677315>,  <41.008392, 44.497963, 34.249985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592110, 44.789707, 34.677315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239304, 44.915638, 34.817566>,  <41.027622, 44.991196, 34.901718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239304, 44.915638, 34.817566>,  <41.592110, 44.789707, 34.677315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239304, 44.915638, 34.817566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283863, -0.238958, 0.928612,
		0.376137, 0.918577, 0.121396,
		-0.882011, 0.314825, 0.350631,
		40.974701, 45.010086, 34.922756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659679, 45.222446, 35.341713>,  <41.592110, 44.789707, 34.677315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659679, 45.222446, 35.341713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290722, 45.068001, 35.337692>,  <41.069347, 44.975334, 35.335278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290722, 45.068001, 35.337692>,  <41.659679, 45.222446, 35.341713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290722, 45.068001, 35.337692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148960, -0.379626, 0.913069,
		-0.356368, 0.840712, 0.407682,
		-0.922395, -0.386117, -0.010054,
		41.014004, 44.952168, 35.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406548, 44.939659, 35.467476>,  <41.659679, 45.222446, 35.341713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406548, 44.939659, 35.467476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205055, 44.640205, 35.639896>,  <42.084160, 44.460533, 35.743351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205055, 44.640205, 35.639896>,  <42.406548, 44.939659, 35.467476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205055, 44.640205, 35.639896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085284, 0.453452, 0.887191,
		-0.859643, 0.483664, -0.164569,
		-0.503726, -0.748633, 0.431056,
		42.053936, 44.415615, 35.769215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045139, 44.557880, 35.423439>,  <42.406548, 44.939659, 35.467476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045139, 44.557880, 35.423439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090504, 44.729507, 35.781891>,  <43.117722, 44.832481, 35.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090504, 44.729507, 35.781891>,  <43.045139, 44.557880, 35.423439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090504, 44.729507, 35.781891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529600, -0.789234, 0.310860,
		0.840631, 0.439333, -0.316742,
		0.113412, 0.429065, 0.896125,
		43.124527, 44.858227, 36.050728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740913, 44.711849, 35.499401>,  <43.045139, 44.557880, 35.423439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740913, 44.711849, 35.499401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545513, 44.630482, 35.838810>,  <43.428272, 44.581661, 36.042454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545513, 44.630482, 35.838810>,  <43.740913, 44.711849, 35.499401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545513, 44.630482, 35.838810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532233, -0.840060, 0.105016,
		0.691446, 0.502911, 0.518636,
		-0.488499, -0.203422, 0.848521,
		43.398964, 44.569454, 36.093365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253456, 44.345573, 35.893959>,  <43.740913, 44.711849, 35.499401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253456, 44.345573, 35.893959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890842, 44.228027, 36.015171>,  <43.673275, 44.157497, 36.087898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890842, 44.228027, 36.015171>,  <44.253456, 44.345573, 35.893959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890842, 44.228027, 36.015171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326344, -0.943245, 0.061551,
		0.267746, 0.154691, 0.950991,
		-0.906538, -0.293870, 0.303033,
		43.618881, 44.139866, 36.106079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389694, 43.855049, 36.441948>,  <44.253456, 44.345573, 35.893959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389694, 43.855049, 36.441948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018963, 43.789764, 36.306683>,  <43.796524, 43.750595, 36.225521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018963, 43.789764, 36.306683>,  <44.389694, 43.855049, 36.441948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018963, 43.789764, 36.306683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185298, -0.982099, -0.033867,
		-0.326585, -0.094050, 0.940477,
		-0.926826, -0.163208, -0.338166,
		43.740913, 43.740803, 36.205235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012089, 43.273384, 36.883915>,  <44.389694, 43.855049, 36.441948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012089, 43.273384, 36.883915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848377, 43.262417, 36.519115>,  <43.750153, 43.255836, 36.300236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848377, 43.262417, 36.519115>,  <44.012089, 43.273384, 36.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848377, 43.262417, 36.519115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303170, -0.946844, -0.107582,
		-0.860571, -0.320521, 0.395833,
		-0.409274, -0.027422, -0.911999,
		43.725594, 43.254189, 36.245514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521034, 42.812397, 36.916561>,  <44.012089, 43.273384, 36.883915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521034, 42.812397, 36.916561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592476, 42.836796, 36.523750>,  <43.635342, 42.851433, 36.288063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592476, 42.836796, 36.523750>,  <43.521034, 42.812397, 36.916561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592476, 42.836796, 36.523750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069746, -0.996351, -0.049200,
		-0.981446, -0.059706, -0.182203,
		0.178601, 0.060995, -0.982029,
		43.646057, 42.855095, 36.229141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010765, 42.254177, 36.551060>,  <43.521034, 42.812397, 36.916561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010765, 42.254177, 36.551060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324974, 42.327686, 36.314693>,  <43.513500, 42.371792, 36.172874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324974, 42.327686, 36.314693>,  <43.010765, 42.254177, 36.551060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324974, 42.327686, 36.314693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181375, -0.981324, -0.064077,
		-0.591656, -0.056844, -0.804184,
		0.785523, 0.183770, -0.590917,
		43.560631, 42.382816, 36.137417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923649, 41.731785, 35.938198>,  <43.010765, 42.254177, 36.551060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923649, 41.731785, 35.938198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291706, 41.887924, 35.925808>,  <43.512543, 41.981609, 35.918373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291706, 41.887924, 35.925808>,  <42.923649, 41.731785, 35.938198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291706, 41.887924, 35.925808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390640, -0.920536, 0.003753,
		-0.027048, -0.015553, -0.999513,
		0.920146, 0.390348, -0.030974,
		43.567749, 42.005028, 35.916515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056664, 41.508091, 35.290089>,  <42.923649, 41.731785, 35.938198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056664, 41.508091, 35.290089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413967, 41.592159, 35.449043>,  <43.628349, 41.642601, 35.544415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413967, 41.592159, 35.449043>,  <43.056664, 41.508091, 35.290089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413967, 41.592159, 35.449043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294111, -0.941763, -0.163038,
		0.339979, 0.262511, -0.903052,
		0.893260, 0.210168, 0.397387,
		43.681946, 41.655209, 35.568260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559097, 41.323227, 34.795021>,  <43.056664, 41.508091, 35.290089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559097, 41.323227, 34.795021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736374, 41.305183, 35.153137>,  <43.842739, 41.294357, 35.368008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736374, 41.305183, 35.153137>,  <43.559097, 41.323227, 34.795021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736374, 41.305183, 35.153137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322007, -0.924062, -0.205963,
		0.836595, 0.379571, -0.395012,
		0.443193, -0.045111, 0.895290,
		43.869331, 41.291649, 35.421722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052326, 40.901562, 34.660160>,  <43.559097, 41.323227, 34.795021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052326, 40.901562, 34.660160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078396, 40.898605, 35.059299>,  <44.094036, 40.896832, 35.298782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078396, 40.898605, 35.059299>,  <44.052326, 40.901562, 34.660160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078396, 40.898605, 35.059299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302584, -0.952745, -0.026820,
		0.950892, 0.303681, -0.059853,
		0.065169, -0.007393, 0.997847,
		44.097946, 40.896389, 35.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663891, 40.667782, 34.821400>,  <44.052326, 40.901562, 34.660160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663891, 40.667782, 34.821400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461990, 40.568779, 35.152206>,  <44.340851, 40.509377, 35.350693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461990, 40.568779, 35.152206>,  <44.663891, 40.667782, 34.821400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461990, 40.568779, 35.152206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222969, -0.962888, -0.152087,
		0.833971, 0.107633, 0.541210,
		-0.504755, -0.247510, 0.827019,
		44.310562, 40.494526, 35.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148037, 40.306393, 35.205952>,  <44.663891, 40.667782, 34.821400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148037, 40.306393, 35.205952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769417, 40.208305, 35.289776>,  <44.542244, 40.149452, 35.340069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769417, 40.208305, 35.289776>,  <45.148037, 40.306393, 35.205952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769417, 40.208305, 35.289776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226007, -0.967720, -0.111530,
		0.230146, -0.058206, 0.971414,
		-0.946548, -0.245214, 0.209562,
		44.485451, 40.134743, 35.352646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250748, 39.733398, 35.600437>,  <45.148037, 40.306393, 35.205952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250748, 39.733398, 35.600437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856693, 39.695286, 35.543274>,  <44.620258, 39.672417, 35.508976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856693, 39.695286, 35.543274>,  <45.250748, 39.733398, 35.600437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856693, 39.695286, 35.543274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120794, -0.975845, -0.182033,
		-0.122114, -0.196591, 0.972852,
		-0.985138, -0.095285, -0.142911,
		44.561153, 39.666698, 35.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978584, 39.180916, 35.990772>,  <45.250748, 39.733398, 35.600437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978584, 39.180916, 35.990772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689777, 39.230614, 35.718521>,  <44.516495, 39.260433, 35.555168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689777, 39.230614, 35.718521>,  <44.978584, 39.180916, 35.990772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689777, 39.230614, 35.718521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237755, -0.968392, 0.075432,
		-0.649744, 0.216287, 0.728733,
		-0.722014, 0.124249, -0.680630,
		44.473171, 39.267887, 35.514332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305862, 38.862495, 36.240284>,  <44.978584, 39.180916, 35.990772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305862, 38.862495, 36.240284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286903, 38.874691, 35.840919>,  <44.275528, 38.882008, 35.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286903, 38.874691, 35.840919>,  <44.305862, 38.862495, 36.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286903, 38.874691, 35.840919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225938, -0.973956, -0.019017,
		-0.972988, 0.224678, 0.053050,
		-0.047395, 0.030489, -0.998411,
		44.272686, 38.883839, 35.541397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679367, 38.485905, 36.084522>,  <44.305862, 38.862495, 36.240284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679367, 38.485905, 36.084522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895447, 38.485470, 35.747906>,  <44.025093, 38.485207, 35.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895447, 38.485470, 35.747906>,  <43.679367, 38.485905, 36.084522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895447, 38.485470, 35.747906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189399, -0.974501, -0.120315,
		-0.819948, 0.224380, -0.526631,
		0.540199, -0.001091, -0.841537,
		44.057507, 38.485142, 35.495445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323544, 38.002251, 35.706238>,  <43.679367, 38.485905, 36.084522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323544, 38.002251, 35.706238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689960, 38.039696, 35.550240>,  <43.909813, 38.062164, 35.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689960, 38.039696, 35.550240>,  <43.323544, 38.002251, 35.706238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689960, 38.039696, 35.550240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075064, -0.995214, -0.062572,
		-0.393986, 0.028044, -0.918688,
		0.916046, 0.093613, -0.389995,
		43.964775, 38.067780, 35.433243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347393, 37.432842, 35.075104>,  <43.323544, 38.002251, 35.706238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347393, 37.432842, 35.075104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723213, 37.530499, 35.171135>,  <43.948708, 37.589092, 35.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723213, 37.530499, 35.171135>,  <43.347393, 37.432842, 35.075104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723213, 37.530499, 35.171135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284065, -0.947247, -0.148424,
		0.191174, 0.207649, -0.959341,
		0.939553, 0.244141, 0.240075,
		44.005077, 37.603741, 35.243156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740269, 37.103676, 34.543423>,  <43.347393, 37.432842, 35.075104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740269, 37.103676, 34.543423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991398, 37.175674, 34.846325>,  <44.142075, 37.218872, 35.028069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991398, 37.175674, 34.846325>,  <43.740269, 37.103676, 34.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991398, 37.175674, 34.846325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284325, -0.958696, -0.007852,
		0.724569, 0.220238, -0.653066,
		0.627821, 0.179993, 0.757260,
		44.179745, 37.229671, 35.073502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342255, 36.815575, 34.330070>,  <43.740269, 37.103676, 34.543423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342255, 36.815575, 34.330070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332672, 36.841991, 34.729084>,  <44.326923, 36.857841, 34.968491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332672, 36.841991, 34.729084>,  <44.342255, 36.815575, 34.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332672, 36.841991, 34.729084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321316, -0.944364, 0.070236,
		0.946669, 0.322205, 0.001402,
		-0.023954, 0.066039, 0.997530,
		44.325485, 36.861805, 35.028343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881527, 36.406769, 34.512367>,  <44.342255, 36.815575, 34.330070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881527, 36.406769, 34.512367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664116, 36.459724, 34.843922>,  <44.533669, 36.491497, 35.042854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664116, 36.459724, 34.843922>,  <44.881527, 36.406769, 34.512367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664116, 36.459724, 34.843922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102898, -0.969526, 0.222331,
		0.833058, 0.206134, 0.513344,
		-0.543531, 0.132392, 0.828883,
		44.501057, 36.499443, 35.092587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110352, 35.785870, 34.884083>,  <44.881527, 36.406769, 34.512367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110352, 35.785870, 34.884083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774635, 35.900620, 35.068817>,  <44.573204, 35.969471, 35.179657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774635, 35.900620, 35.068817>,  <45.110352, 35.785870, 34.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774635, 35.900620, 35.068817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163691, -0.943377, 0.288522,
		0.518454, 0.166556, 0.838728,
		-0.839292, 0.286877, 0.461834,
		44.522846, 35.986683, 35.207367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739258, 35.837959, 34.644772>,  <45.110352, 35.785870, 34.884083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739258, 35.837959, 34.644772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542454, 35.723206, 34.315987>,  <45.424374, 35.654354, 34.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542454, 35.723206, 34.315987>,  <45.739258, 35.837959, 34.644772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542454, 35.723206, 34.315987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697019, 0.435890, -0.569354,
		0.521625, -0.853052, -0.014498,
		-0.492008, -0.286884, -0.821965,
		45.394852, 35.637142, 34.069397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282261, 35.584938, 34.088192>,  <45.739258, 35.837959, 34.644772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282261, 35.584938, 34.088192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937103, 35.732689, 33.950218>,  <45.730011, 35.821339, 33.867435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937103, 35.732689, 33.950218>,  <46.282261, 35.584938, 34.088192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937103, 35.732689, 33.950218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505223, 0.612870, -0.607569,
		-0.013024, -0.698533, -0.715459,
		-0.862891, 0.369379, -0.344933,
		45.678238, 35.843502, 33.846737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574196, 34.881443, 34.360947>,  <46.282261, 35.584938, 34.088192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574196, 34.881443, 34.360947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881245, 34.631248, 34.416828>,  <47.065475, 34.481133, 34.450356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881245, 34.631248, 34.416828>,  <46.574196, 34.881443, 34.360947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.881245, 34.631248, 34.416828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462031, 0.389011, -0.796993,
		0.444165, 0.676338, 0.587609,
		0.767623, -0.625490, 0.139704,
		47.111530, 34.443600, 34.458740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184776, 35.312965, 34.473900>,  <46.574196, 34.881443, 34.360947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184776, 35.312965, 34.473900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520439, 35.194473, 34.656357>,  <47.721836, 35.123379, 34.765831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520439, 35.194473, 34.656357>,  <47.184776, 35.312965, 34.473900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520439, 35.194473, 34.656357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005776, 0.843468, 0.537148,
		-0.543857, -0.448118, 0.709514,
		0.839158, -0.296229, 0.456138,
		47.772186, 35.105606, 34.793198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.106354, 35.928272, 44.886429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843716, 35.633133, 44.823853>,  <34.686134, 35.456051, 44.786308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843716, 35.633133, 44.823853>,  <35.106354, 35.928272, 44.886429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843716, 35.633133, 44.823853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105240, 0.115756, -0.987687,
		0.746867, -0.664971, 0.001646,
		-0.656593, -0.737844, -0.156437,
		34.646736, 35.411781, 44.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443539, 35.560036, 44.368851>,  <35.106354, 35.928272, 44.886429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443539, 35.560036, 44.368851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054256, 35.468079, 44.371033>,  <34.820686, 35.412907, 44.372341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054256, 35.468079, 44.371033>,  <35.443539, 35.560036, 44.368851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054256, 35.468079, 44.371033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017631, 0.050933, -0.998546,
		0.229280, -0.971882, -0.053621,
		-0.973201, -0.229892, 0.005457,
		34.762295, 35.399113, 44.372669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399658, 35.003410, 43.865643>,  <35.443539, 35.560036, 44.368851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399658, 35.003410, 43.865643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054947, 35.201916, 43.907707>,  <34.848118, 35.321018, 43.932945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054947, 35.201916, 43.907707>,  <35.399658, 35.003410, 43.865643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054947, 35.201916, 43.907707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088498, 0.057041, -0.994442,
		-0.499503, -0.866296, -0.005238,
		-0.861780, 0.496263, 0.105158,
		34.796413, 35.350796, 43.939255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954914, 34.651569, 43.526909>,  <35.399658, 35.003410, 43.865643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954914, 34.651569, 43.526909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798130, 35.019417, 43.537258>,  <34.704060, 35.240124, 43.543468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798130, 35.019417, 43.537258>,  <34.954914, 34.651569, 43.526909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798130, 35.019417, 43.537258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239782, -0.074963, -0.967928,
		-0.888185, -0.385594, 0.249890,
		-0.391959, 0.919618, 0.025878,
		34.680542, 35.295303, 43.545021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399429, 34.542179, 43.075893>,  <34.954914, 34.651569, 43.526909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399429, 34.542179, 43.075893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412891, 34.941776, 43.087772>,  <34.420967, 35.181534, 43.094898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412891, 34.941776, 43.087772>,  <34.399429, 34.542179, 43.075893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412891, 34.941776, 43.087772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319145, 0.038896, -0.946908,
		-0.947108, 0.022390, 0.320132,
		0.033653, 0.998993, 0.029693,
		34.422989, 35.241474, 43.096680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780849, 34.791214, 42.771851>,  <34.399429, 34.542179, 43.075893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780849, 34.791214, 42.771851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021961, 35.110237, 42.762371>,  <34.166630, 35.301651, 42.756683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021961, 35.110237, 42.762371>,  <33.780849, 34.791214, 42.771851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021961, 35.110237, 42.762371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363012, 0.247666, -0.898267,
		-0.710546, 0.550063, 0.438811,
		0.602782, 0.797554, -0.023702,
		34.202797, 35.349503, 42.755260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389576, 35.346836, 42.516659>,  <33.780849, 34.791214, 42.771851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389576, 35.346836, 42.516659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775658, 35.421505, 42.443417>,  <34.007309, 35.466309, 42.399471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775658, 35.421505, 42.443417>,  <33.389576, 35.346836, 42.516659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775658, 35.421505, 42.443417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197506, 0.061521, -0.978369,
		-0.171372, 0.980494, 0.096250,
		0.965206, 0.186675, -0.183110,
		34.065220, 35.477509, 42.388485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376503, 35.931511, 42.000175>,  <33.389576, 35.346836, 42.516659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376503, 35.931511, 42.000175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741695, 35.768345, 41.996857>,  <33.960812, 35.670444, 41.994865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741695, 35.768345, 41.996857>,  <33.376503, 35.931511, 42.000175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741695, 35.768345, 41.996857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009387, 0.041335, -0.999101,
		0.407894, 0.912083, 0.041567,
		0.912981, -0.407918, -0.008298,
		34.015591, 35.645969, 41.994366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732716, 36.316097, 41.517319>,  <33.376503, 35.931511, 42.000175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732716, 36.316097, 41.517319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909798, 35.957684, 41.530785>,  <34.016048, 35.742634, 41.538864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909798, 35.957684, 41.530785>,  <33.732716, 36.316097, 41.517319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909798, 35.957684, 41.530785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137004, 0.030494, -0.990101,
		0.886138, 0.442937, 0.136260,
		0.442708, -0.896034, 0.033663,
		34.042610, 35.688873, 41.540882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529884, 36.515682, 41.311115>,  <33.732716, 36.316097, 41.517319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529884, 36.515682, 41.311115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345966, 36.164906, 41.255169>,  <34.235615, 35.954441, 41.221603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345966, 36.164906, 41.255169>,  <34.529884, 36.515682, 41.311115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345966, 36.164906, 41.255169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544140, -0.153759, -0.824785,
		0.701782, -0.455338, 0.547877,
		-0.459797, -0.876941, -0.139862,
		34.208027, 35.901825, 41.213211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069050, 35.971268, 41.395706>,  <34.529884, 36.515682, 41.311115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069050, 35.971268, 41.395706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 35.874828, 41.144825>,  <34.595062, 35.816967, 40.994297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 35.874828, 41.144825>,  <35.069050, 35.971268, 41.395706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772808, 35.874828, 41.144825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660546, -0.090038, -0.745367,
		0.123233, -0.966315, 0.225938,
		-0.740602, -0.241096, -0.627200,
		34.550629, 35.802498, 40.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362507, 35.459446, 40.981972>,  <35.069050, 35.971268, 41.395706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362507, 35.459446, 40.981972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034569, 35.533939, 40.765388>,  <34.837807, 35.578636, 40.635437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034569, 35.533939, 40.765388>,  <35.362507, 35.459446, 40.981972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034569, 35.533939, 40.765388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479394, -0.293862, -0.826938,
		-0.313125, -0.937528, 0.151636,
		-0.819838, 0.186241, -0.541461,
		34.788616, 35.589809, 40.602951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373951, 34.788921, 40.720478>,  <35.362507, 35.459446, 40.981972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373951, 34.788921, 40.720478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146397, 35.035496, 40.502716>,  <35.009865, 35.183441, 40.372059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146397, 35.035496, 40.502716>,  <35.373951, 34.788921, 40.720478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146397, 35.035496, 40.502716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354990, -0.413066, -0.838665,
		-0.741859, -0.670361, 0.016158,
		-0.568883, 0.616435, -0.544408,
		34.975731, 35.220425, 40.339394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086967, 34.301132, 40.145164>,  <35.373951, 34.788921, 40.720478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086967, 34.301132, 40.145164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 34.679539, 40.017849>,  <35.047794, 34.906582, 39.941460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 34.679539, 40.017849>,  <35.086967, 34.301132, 40.145164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062485, 34.679539, 40.017849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354024, -0.277583, -0.893093,
		-0.933231, -0.167345, -0.317923,
		-0.061205, 0.946015, -0.318293,
		35.044125, 34.963345, 39.922359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016720, 34.241604, 39.473438>,  <35.086967, 34.301132, 40.145164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016720, 34.241604, 39.473438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134846, 34.620434, 39.523781>,  <35.205723, 34.847733, 39.553986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134846, 34.620434, 39.523781>,  <35.016720, 34.241604, 39.473438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134846, 34.620434, 39.523781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517464, -0.047818, -0.854368,
		-0.803131, 0.317437, -0.504197,
		0.295318, 0.947073, 0.125858,
		35.223442, 34.904556, 39.561539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695431, 34.691498, 39.001587>,  <35.016720, 34.241604, 39.473438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695431, 34.691498, 39.001587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034340, 34.881241, 39.097179>,  <35.237686, 34.995087, 39.154533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034340, 34.881241, 39.097179>,  <34.695431, 34.691498, 39.001587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034340, 34.881241, 39.097179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205278, 0.122535, -0.971003,
		-0.489884, 0.871764, 0.006446,
		0.847275, 0.474355, 0.238982,
		35.288521, 35.023548, 39.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764477, 35.255463, 38.487125>,  <34.695431, 34.691498, 39.001587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764477, 35.255463, 38.487125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132988, 35.190701, 38.628567>,  <35.354095, 35.151844, 38.713432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132988, 35.190701, 38.628567>,  <34.764477, 35.255463, 38.487125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132988, 35.190701, 38.628567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350678, -0.047294, -0.935301,
		0.168151, 0.985673, 0.013205,
		0.921277, -0.161902, 0.353606,
		35.409370, 35.142132, 38.734650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157925, 35.794231, 38.086044>,  <34.764477, 35.255463, 38.487125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157925, 35.794231, 38.086044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421043, 35.527542, 38.226208>,  <35.578915, 35.367527, 38.310307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421043, 35.527542, 38.226208>,  <35.157925, 35.794231, 38.086044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421043, 35.527542, 38.226208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468796, -0.001721, -0.883305,
		0.589524, 0.745302, 0.311426,
		0.657793, -0.666724, 0.350410,
		35.618382, 35.327526, 38.331329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739227, 35.960598, 37.734783>,  <35.157925, 35.794231, 38.086044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739227, 35.960598, 37.734783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854710, 35.607349, 37.882702>,  <35.924000, 35.395401, 37.971451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854710, 35.607349, 37.882702>,  <35.739227, 35.960598, 37.734783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854710, 35.607349, 37.882702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453947, -0.213803, -0.864998,
		0.842961, 0.417594, 0.339165,
		0.288703, -0.883122, 0.369792,
		35.941322, 35.342411, 37.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398777, 35.802204, 37.477612>,  <35.739227, 35.960598, 37.734783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398777, 35.802204, 37.477612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249687, 35.442429, 37.568897>,  <36.160233, 35.226562, 37.623669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249687, 35.442429, 37.568897>,  <36.398777, 35.802204, 37.477612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249687, 35.442429, 37.568897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318315, -0.354941, -0.879029,
		0.871638, -0.254990, 0.418601,
		-0.372723, -0.899442, 0.228213,
		36.137871, 35.172596, 37.637360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942825, 35.340408, 37.309296>,  <36.398777, 35.802204, 37.477612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942825, 35.340408, 37.309296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584476, 35.162926, 37.318642>,  <36.369469, 35.056438, 37.324249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584476, 35.162926, 37.318642>,  <36.942825, 35.340408, 37.309296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584476, 35.162926, 37.318642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134491, -0.320915, -0.937511,
		0.423475, -0.836744, 0.347172,
		-0.895869, -0.443704, 0.023365,
		36.315716, 35.029816, 37.325649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000546, 34.495892, 37.135296>,  <36.942825, 35.340408, 37.309296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000546, 34.495892, 37.135296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636345, 34.641953, 37.057678>,  <36.417824, 34.729588, 37.011108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636345, 34.641953, 37.057678>,  <37.000546, 34.495892, 37.135296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636345, 34.641953, 37.057678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056875, -0.354212, -0.933434,
		-0.409582, -0.860927, 0.301741,
		-0.910499, 0.365156, -0.194044,
		36.363194, 34.751499, 36.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777824, 34.690731, 36.888927>,  <37.000546, 34.495892, 37.135296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777824, 34.690731, 36.888927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903481, 35.070210, 36.903282>,  <37.978874, 35.297897, 36.911896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903481, 35.070210, 36.903282>,  <37.777824, 34.690731, 36.888927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903481, 35.070210, 36.903282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010872, -0.034200, 0.999356,
		0.949314, -0.314328, -0.000429,
		0.314140, 0.948698, 0.035884,
		37.997723, 35.354820, 36.914047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458138, 34.714924, 37.218170>,  <37.777824, 34.690731, 36.888927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458138, 34.714924, 37.218170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275505, 35.067524, 37.266312>,  <38.165924, 35.279083, 37.295197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275505, 35.067524, 37.266312>,  <38.458138, 34.714924, 37.218170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275505, 35.067524, 37.266312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224268, -0.016870, 0.974381,
		0.860951, 0.471875, -0.189991,
		-0.456581, 0.881504, 0.120351,
		38.138531, 35.331974, 37.302418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826153, 34.998844, 37.774612>,  <38.458138, 34.714924, 37.218170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826153, 34.998844, 37.774612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525013, 35.261734, 37.760330>,  <38.344330, 35.419468, 37.751762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525013, 35.261734, 37.760330>,  <38.826153, 34.998844, 37.774612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525013, 35.261734, 37.760330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170642, 0.247284, 0.953799,
		0.635686, 0.711976, -0.298318,
		-0.752851, 0.657222, -0.035702,
		38.299156, 35.458900, 37.749619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076347, 35.558258, 38.138477>,  <38.826153, 34.998844, 37.774612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076347, 35.558258, 38.138477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676754, 35.564205, 38.155487>,  <38.436996, 35.567772, 38.165695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676754, 35.564205, 38.155487>,  <39.076347, 35.558258, 38.138477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676754, 35.564205, 38.155487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045049, 0.320797, 0.946076,
		0.000422, 0.947031, -0.321141,
		-0.998985, 0.014866, 0.042527,
		38.377060, 35.568665, 38.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940155, 36.153042, 38.307781>,  <39.076347, 35.558258, 38.138477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940155, 36.153042, 38.307781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611359, 35.956188, 38.422417>,  <38.414082, 35.838074, 38.491199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611359, 35.956188, 38.422417>,  <38.940155, 36.153042, 38.307781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611359, 35.956188, 38.422417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054275, 0.433242, 0.899642,
		-0.566911, 0.755051, -0.329409,
		-0.821989, -0.492138, 0.286590,
		38.364761, 35.808548, 38.508392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692013, 36.581364, 38.859432>,  <38.940155, 36.153042, 38.307781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692013, 36.581364, 38.859432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460506, 36.257019, 38.894161>,  <38.321602, 36.062412, 38.914997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460506, 36.257019, 38.894161>,  <38.692013, 36.581364, 38.859432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460506, 36.257019, 38.894161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235280, 0.267963, 0.934259,
		-0.780819, 0.520286, -0.345866,
		-0.578762, -0.810862, 0.086818,
		38.286877, 36.013760, 38.920208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127224, 36.832298, 39.213345>,  <38.692013, 36.581364, 38.859432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127224, 36.832298, 39.213345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174030, 36.436871, 39.251389>,  <38.202114, 36.199615, 39.274216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174030, 36.436871, 39.251389>,  <38.127224, 36.832298, 39.213345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174030, 36.436871, 39.251389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202123, 0.070062, 0.976851,
		-0.972345, -0.133527, -0.191614,
		0.117012, -0.988566, 0.095113,
		38.209133, 36.140301, 39.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570110, 36.588161, 39.589703>,  <38.127224, 36.832298, 39.213345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570110, 36.588161, 39.589703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866352, 36.322067, 39.627563>,  <38.044098, 36.162411, 39.650280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866352, 36.322067, 39.627563>,  <37.570110, 36.588161, 39.589703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866352, 36.322067, 39.627563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205886, -0.090578, 0.974375,
		-0.639616, -0.741118, -0.204046,
		0.740609, -0.665236, 0.094651,
		38.088535, 36.122498, 39.655960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312649, 36.030495, 39.994106>,  <37.570110, 36.588161, 39.589703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312649, 36.030495, 39.994106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707497, 35.996887, 40.048553>,  <37.944405, 35.976723, 40.081223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707497, 35.996887, 40.048553>,  <37.312649, 36.030495, 39.994106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707497, 35.996887, 40.048553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151010, -0.208874, 0.966213,
		-0.052751, -0.974326, -0.218872,
		0.987124, -0.084020, 0.136115,
		38.003635, 35.971680, 40.089386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281956, 35.723999, 40.553410>,  <37.312649, 36.030495, 39.994106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281956, 35.723999, 40.553410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676025, 35.784733, 40.521465>,  <37.912468, 35.821171, 40.502300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676025, 35.784733, 40.521465>,  <37.281956, 35.723999, 40.553410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676025, 35.784733, 40.521465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105776, -0.171138, 0.979552,
		0.135062, -0.973477, -0.184661,
		0.985174, 0.151833, -0.079857,
		37.971577, 35.830284, 40.497509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527706, 35.270683, 40.933353>,  <37.281956, 35.723999, 40.553410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527706, 35.270683, 40.933353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844215, 35.513531, 40.904243>,  <38.034119, 35.659241, 40.886776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844215, 35.513531, 40.904243>,  <37.527706, 35.270683, 40.933353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844215, 35.513531, 40.904243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148972, -0.075976, 0.985918,
		0.593043, -0.790968, -0.150562,
		0.791269, 0.607122, -0.072775,
		38.081596, 35.695667, 40.882412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947281, 35.022469, 41.350143>,  <37.527706, 35.270683, 40.933353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947281, 35.022469, 41.350143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077328, 35.399975, 41.326145>,  <38.155357, 35.626480, 41.311749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077328, 35.399975, 41.326145>,  <37.947281, 35.022469, 41.350143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077328, 35.399975, 41.326145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181709, -0.000090, 0.983353,
		0.928051, -0.330608, -0.171520,
		0.325120, 0.943768, -0.059991,
		38.174862, 35.683105, 41.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542328, 34.934891, 41.663353>,  <37.947281, 35.022469, 41.350143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542328, 34.934891, 41.663353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418018, 35.315037, 41.669258>,  <38.343433, 35.543125, 41.672802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418018, 35.315037, 41.669258>,  <38.542328, 34.934891, 41.663353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418018, 35.315037, 41.669258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103787, 0.018489, 0.994428,
		0.944800, 0.310577, -0.104382,
		-0.310777, 0.950368, 0.014765,
		38.324787, 35.600147, 41.673687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909573, 35.277493, 42.273560>,  <38.542328, 34.934891, 41.663353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909573, 35.277493, 42.273560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590797, 35.506477, 42.196430>,  <38.399532, 35.643867, 42.150154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590797, 35.506477, 42.196430>,  <38.909573, 35.277493, 42.273560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590797, 35.506477, 42.196430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160766, 0.106691, 0.981209,
		0.582275, 0.812962, 0.007005,
		-0.796938, 0.572459, -0.192820,
		38.351715, 35.678215, 42.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896793, 35.740414, 42.830700>,  <38.909573, 35.277493, 42.273560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896793, 35.740414, 42.830700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536953, 35.793766, 42.664364>,  <38.321049, 35.825775, 42.564564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536953, 35.793766, 42.664364>,  <38.896793, 35.740414, 42.830700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536953, 35.793766, 42.664364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358174, 0.319427, 0.877313,
		0.249845, 0.938177, -0.239585,
		-0.899605, 0.133379, -0.415838,
		38.267071, 35.833778, 42.539612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660542, 36.495949, 42.890663>,  <38.896793, 35.740414, 42.830700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660542, 36.495949, 42.890663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333828, 36.267765, 42.856148>,  <38.137798, 36.130856, 42.835438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333828, 36.267765, 42.856148>,  <38.660542, 36.495949, 42.890663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333828, 36.267765, 42.856148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385292, 0.428008, 0.817532,
		-0.429436, 0.700991, -0.569382,
		-0.816783, -0.570456, -0.086284,
		38.088795, 36.096630, 42.830261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273785, 36.832756, 43.274773>,  <38.660542, 36.495949, 42.890663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273785, 36.832756, 43.274773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079914, 36.484699, 43.239117>,  <37.963593, 36.275864, 43.217724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079914, 36.484699, 43.239117>,  <38.273785, 36.832756, 43.274773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079914, 36.484699, 43.239117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402714, 0.131515, 0.905828,
		-0.776474, 0.474931, -0.414160,
		-0.484674, -0.870140, -0.089143,
		37.934513, 36.223656, 43.212376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597034, 36.933636, 43.551926>,  <38.273785, 36.832756, 43.274773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597034, 36.933636, 43.551926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626354, 36.534733, 43.555992>,  <37.643948, 36.295391, 43.558434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626354, 36.534733, 43.555992>,  <37.597034, 36.933636, 43.551926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626354, 36.534733, 43.555992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527014, -0.030078, 0.849324,
		-0.846690, -0.067613, -0.527774,
		0.073300, -0.997258, 0.010166,
		37.648346, 36.235554, 43.559044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.003777, 36.535477, 43.850777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280621, 36.247322, 43.868778>,  <37.446728, 36.074429, 43.879581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280621, 36.247322, 43.868778>,  <37.003777, 36.535477, 43.850777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280621, 36.247322, 43.868778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321561, -0.251911, 0.912765,
		-0.646208, -0.646205, -0.405998,
		0.692109, -0.720389, 0.045007,
		37.488255, 36.031204, 43.882282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713394, 35.827366, 44.093643>,  <37.003777, 36.535477, 43.850777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713394, 35.827366, 44.093643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103909, 35.808128, 44.178066>,  <37.338219, 35.796585, 44.228722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103909, 35.808128, 44.178066>,  <36.713394, 35.827366, 44.093643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103909, 35.808128, 44.178066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210072, -0.445721, 0.870174,
		0.052226, -0.893879, -0.445255,
		0.976290, -0.048090, 0.211057,
		37.396797, 35.793701, 44.241383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729095, 35.196804, 44.409031>,  <36.713394, 35.827366, 44.093643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729095, 35.196804, 44.409031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044655, 35.410622, 44.530293>,  <37.233990, 35.538914, 44.603050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044655, 35.410622, 44.530293>,  <36.729095, 35.196804, 44.409031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044655, 35.410622, 44.530293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165227, -0.290643, 0.942458,
		0.591896, -0.793592, -0.140966,
		0.788897, 0.534545, 0.303153,
		37.281322, 35.570984, 44.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998119, 34.791634, 44.997616>,  <36.729095, 35.196804, 44.409031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998119, 34.791634, 44.997616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165226, 35.148865, 45.064407>,  <37.265488, 35.363205, 45.104481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165226, 35.148865, 45.064407>,  <36.998119, 34.791634, 44.997616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165226, 35.148865, 45.064407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156746, -0.110184, 0.981474,
		0.894932, -0.436198, 0.093955,
		0.417764, 0.893080, 0.166979,
		37.290554, 35.416790, 45.114502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151440, 34.720150, 45.630688>,  <36.998119, 34.791634, 44.997616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151440, 34.720150, 45.630688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215782, 35.110229, 45.569878>,  <37.254387, 35.344276, 45.533394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215782, 35.110229, 45.569878>,  <37.151440, 34.720150, 45.630688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215782, 35.110229, 45.569878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106605, 0.170294, 0.979610,
		0.981204, -0.141370, 0.131355,
		0.160856, 0.975200, -0.152022,
		37.264038, 35.402790, 45.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690052, 34.913193, 46.082314>,  <37.151440, 34.720150, 45.630688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690052, 34.913193, 46.082314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503513, 35.254135, 45.987644>,  <37.391590, 35.458698, 45.930843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503513, 35.254135, 45.987644>,  <37.690052, 34.913193, 46.082314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503513, 35.254135, 45.987644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148916, 0.188086, 0.970797,
		0.871979, 0.487971, 0.039216,
		-0.466345, 0.852354, -0.236674,
		37.363609, 35.509842, 45.916641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894886, 35.286598, 46.534538>,  <37.690052, 34.913193, 46.082314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894886, 35.286598, 46.534538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576061, 35.493855, 46.410458>,  <37.384766, 35.618210, 46.336010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576061, 35.493855, 46.410458>,  <37.894886, 35.286598, 46.534538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576061, 35.493855, 46.410458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186007, 0.278054, 0.942384,
		0.574542, 0.808835, -0.125247,
		-0.797059, 0.518143, -0.310203,
		37.336945, 35.649296, 46.317398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950569, 35.915737, 46.804329>,  <37.894886, 35.286598, 46.534538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950569, 35.915737, 46.804329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563282, 35.860470, 46.720943>,  <37.330910, 35.827309, 46.670910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563282, 35.860470, 46.720943>,  <37.950569, 35.915737, 46.804329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563282, 35.860470, 46.720943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213992, 0.026252, 0.976483,
		-0.129451, 0.990060, -0.054985,
		-0.968220, -0.138173, -0.208466,
		37.272816, 35.819019, 46.658405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531059, 36.532490, 46.991283>,  <37.950569, 35.915737, 46.804329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531059, 36.532490, 46.991283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305294, 36.202328, 46.996212>,  <37.169834, 36.004230, 46.999168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305294, 36.202328, 46.996212>,  <37.531059, 36.532490, 46.991283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305294, 36.202328, 46.996212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251289, 0.186007, 0.949871,
		-0.786316, 0.533023, -0.312399,
		-0.564411, -0.825402, 0.012317,
		37.135971, 35.954708, 46.999908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137577, 36.723667, 47.477234>,  <37.531059, 36.532490, 46.991283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137577, 36.723667, 47.477234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039330, 36.336201, 47.462517>,  <36.980381, 36.103722, 47.453686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039330, 36.336201, 47.462517>,  <37.137577, 36.723667, 47.477234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039330, 36.336201, 47.462517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278652, 0.034197, 0.959783,
		-0.928453, 0.245993, -0.278321,
		-0.245618, -0.968668, -0.036796,
		36.965645, 36.045601, 47.451477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459377, 36.691944, 47.874111>,  <37.137577, 36.723667, 47.477234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459377, 36.691944, 47.874111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618687, 36.325127, 47.866070>,  <36.714272, 36.105034, 47.861244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618687, 36.325127, 47.866070>,  <36.459377, 36.691944, 47.874111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618687, 36.325127, 47.866070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038237, -0.038492, 0.998527,
		-0.916470, -0.396918, -0.050395,
		0.398273, -0.917047, -0.020099,
		36.738167, 36.050011, 47.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991528, 36.254314, 48.204723>,  <36.459377, 36.691944, 47.874111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991528, 36.254314, 48.204723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318062, 36.023323, 48.209175>,  <36.513981, 35.884727, 48.211845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318062, 36.023323, 48.209175>,  <35.991528, 36.254314, 48.204723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318062, 36.023323, 48.209175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140262, -0.179508, 0.973706,
		-0.560293, -0.796429, -0.227535,
		0.816332, -0.577476, 0.011132,
		36.562962, 35.850082, 48.212513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690781, 35.672523, 48.522221>,  <35.991528, 36.254314, 48.204723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690781, 35.672523, 48.522221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088074, 35.696899, 48.561768>,  <36.326450, 35.711525, 48.585495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088074, 35.696899, 48.561768>,  <35.690781, 35.672523, 48.522221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088074, 35.696899, 48.561768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073998, -0.324014, 0.943154,
		0.089514, -0.944087, -0.317311,
		0.993233, 0.060945, 0.098864,
		36.386044, 35.715183, 48.591427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945698, 35.045242, 48.629032>,  <35.690781, 35.672523, 48.522221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945698, 35.045242, 48.629032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238960, 35.270847, 48.781013>,  <36.414917, 35.406212, 48.872204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238960, 35.270847, 48.781013>,  <35.945698, 35.045242, 48.629032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238960, 35.270847, 48.781013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045434, -0.516843, 0.854874,
		0.678538, -0.644021, -0.353303,
		0.733159, 0.564012, 0.379958,
		36.458908, 35.440052, 48.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496578, 34.562511, 48.861137>,  <35.945698, 35.045242, 48.629032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496578, 34.562511, 48.861137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557255, 34.900013, 49.067074>,  <36.593662, 35.102516, 49.190636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557255, 34.900013, 49.067074>,  <36.496578, 34.562511, 48.861137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557255, 34.900013, 49.067074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224065, -0.477956, 0.849325,
		0.962696, -0.244195, 0.116553,
		0.151694, 0.843757, 0.514842,
		36.602764, 35.153141, 49.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962608, 34.339699, 49.484932>,  <36.496578, 34.562511, 48.861137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962608, 34.339699, 49.484932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782314, 34.690083, 49.553661>,  <36.674137, 34.900314, 49.594898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782314, 34.690083, 49.553661>,  <36.962608, 34.339699, 49.484932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782314, 34.690083, 49.553661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255189, -0.310902, 0.915543,
		0.855403, 0.368821, 0.363671,
		-0.450737, 0.875963, 0.171827,
		36.647095, 34.952873, 49.605209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329723, 34.558949, 50.034328>,  <36.962608, 34.339699, 49.484932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329723, 34.558949, 50.034328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971138, 34.736149, 50.030159>,  <36.755985, 34.842468, 50.027657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971138, 34.736149, 50.030159>,  <37.329723, 34.558949, 50.034328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971138, 34.736149, 50.030159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169636, -0.321362, 0.931638,
		0.409364, 0.836947, 0.363237,
		-0.896462, 0.442998, -0.010423,
		36.702198, 34.869049, 50.027031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196270, 35.017445, 50.691093>,  <37.329723, 34.558949, 50.034328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196270, 35.017445, 50.691093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827541, 34.912109, 50.577328>,  <36.606304, 34.848907, 50.509068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827541, 34.912109, 50.577328>,  <37.196270, 35.017445, 50.691093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827541, 34.912109, 50.577328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192271, -0.326467, 0.925447,
		-0.336557, 0.907784, 0.250313,
		-0.921825, -0.263338, -0.284415,
		36.550995, 34.833107, 50.492004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728687, 35.236771, 51.184189>,  <37.196270, 35.017445, 50.691093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728687, 35.236771, 51.184189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484032, 34.980804, 50.998112>,  <36.337238, 34.827225, 50.886463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484032, 34.980804, 50.998112>,  <36.728687, 35.236771, 51.184189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484032, 34.980804, 50.998112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550259, -0.078390, 0.831306,
		-0.568433, 0.764436, -0.304173,
		-0.611636, -0.639916, -0.465197,
		36.300541, 34.788830, 50.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234367, 35.334236, 51.662121>,  <36.728687, 35.236771, 51.184189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234367, 35.334236, 51.662121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136787, 35.022484, 51.431274>,  <36.078239, 34.835434, 51.292767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136787, 35.022484, 51.431274>,  <36.234367, 35.334236, 51.662121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136787, 35.022484, 51.431274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433999, -0.444436, 0.783659,
		-0.867255, 0.441643, -0.229827,
		-0.243954, -0.779377, -0.577112,
		36.063602, 34.788670, 51.258141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523613, 35.294487, 51.663101>,  <36.234367, 35.334236, 51.662121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523613, 35.294487, 51.663101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684128, 34.935162, 51.591553>,  <35.780437, 34.719566, 51.548622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684128, 34.935162, 51.591553>,  <35.523613, 35.294487, 51.663101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684128, 34.935162, 51.591553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306504, -0.315722, 0.897984,
		-0.863149, -0.305523, -0.402032,
		0.401286, -0.898318, -0.178871,
		35.804512, 34.665665, 51.537891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011585, 34.690872, 51.649685>,  <35.523613, 35.294487, 51.663101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011585, 34.690872, 51.649685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369663, 34.552792, 51.762436>,  <35.584511, 34.469944, 51.830086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369663, 34.552792, 51.762436>,  <35.011585, 34.690872, 51.649685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369663, 34.552792, 51.762436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382111, -0.268982, 0.884104,
		-0.229365, -0.899161, -0.372694,
		0.895200, -0.345193, 0.281884,
		35.638222, 34.449230, 51.847000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281136, 34.371246, 51.919125>,  <35.011585, 34.690872, 51.649685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281136, 34.371246, 51.919125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375660, 34.478012, 51.545406>,  <34.432373, 34.542072, 51.321175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375660, 34.478012, 51.545406>,  <34.281136, 34.371246, 51.919125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375660, 34.478012, 51.545406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314303, -0.930837, -0.186430,
		-0.919441, -0.249598, -0.303856,
		0.236308, 0.266914, -0.934299,
		34.446552, 34.558086, 51.265118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945026, 33.819313, 52.391811>,  <34.281136, 34.371246, 51.919125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945026, 33.819313, 52.391811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859745, 33.432808, 52.449615>,  <33.808575, 33.200905, 52.484299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859745, 33.432808, 52.449615>,  <33.945026, 33.819313, 52.391811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859745, 33.432808, 52.449615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125333, -0.119638, -0.984875,
		0.968935, -0.228090, -0.095598,
		-0.213204, -0.966262, 0.144509,
		33.795784, 33.142929, 52.492970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442505, 33.413280, 51.989075>,  <33.945026, 33.819313, 52.391811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442505, 33.413280, 51.989075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100506, 33.213478, 52.044903>,  <33.895306, 33.093597, 52.078400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100506, 33.213478, 52.044903>,  <34.442505, 33.413280, 51.989075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100506, 33.213478, 52.044903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052963, -0.183621, -0.981569,
		0.515926, -0.846629, 0.130540,
		-0.854995, -0.499503, 0.139575,
		33.844006, 33.063629, 52.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540222, 32.859291, 51.539032>,  <34.442505, 33.413280, 51.989075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540222, 32.859291, 51.539032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147816, 32.914120, 51.593906>,  <33.912373, 32.947018, 51.626831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147816, 32.914120, 51.593906>,  <34.540222, 32.859291, 51.539032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147816, 32.914120, 51.593906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166550, -0.233090, -0.958087,
		-0.099344, -0.962747, 0.251493,
		-0.981016, 0.137066, 0.137189,
		33.853512, 32.955238, 51.635063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212650, 32.260536, 51.240158>,  <34.540222, 32.859291, 51.539032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212650, 32.260536, 51.240158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970745, 32.578705, 51.256020>,  <33.825603, 32.769608, 51.265537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970745, 32.578705, 51.256020>,  <34.212650, 32.260536, 51.240158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970745, 32.578705, 51.256020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138622, -0.056101, -0.988755,
		-0.784252, -0.603455, 0.144190,
		-0.604758, 0.795421, 0.039655,
		33.789318, 32.817329, 51.267918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732887, 32.067120, 50.722878>,  <34.212650, 32.260536, 51.240158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732887, 32.067120, 50.722878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663643, 32.458759, 50.765575>,  <33.622097, 32.693745, 50.791195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663643, 32.458759, 50.765575>,  <33.732887, 32.067120, 50.722878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663643, 32.458759, 50.765575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084628, 0.122767, -0.988821,
		-0.981259, -0.162144, -0.104112,
		-0.173113, 0.979100, 0.106745,
		33.611710, 32.752491, 50.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279125, 32.206440, 50.241127>,  <33.732887, 32.067120, 50.722878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279125, 32.206440, 50.241127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443256, 32.563389, 50.316280>,  <33.541733, 32.777557, 50.361374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443256, 32.563389, 50.316280>,  <33.279125, 32.206440, 50.241127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443256, 32.563389, 50.316280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247001, 0.089576, -0.964866,
		-0.877851, 0.442318, -0.183662,
		0.410326, 0.892374, 0.187887,
		33.566353, 32.831100, 50.372646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915394, 32.723122, 49.826332>,  <33.279125, 32.206440, 50.241127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915394, 32.723122, 49.826332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263756, 32.904724, 49.901592>,  <33.472775, 33.013683, 49.946751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263756, 32.904724, 49.901592>,  <32.915394, 32.723122, 49.826332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263756, 32.904724, 49.901592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081492, 0.244143, -0.966309,
		-0.484643, 0.856899, 0.175628,
		0.870908, 0.454003, 0.188152,
		33.525028, 33.040924, 49.958038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970932, 33.381790, 49.348553>,  <32.915394, 32.723122, 49.826332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970932, 33.381790, 49.348553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354172, 33.327415, 49.449406>,  <33.584114, 33.294792, 49.509918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354172, 33.327415, 49.449406>,  <32.970932, 33.381790, 49.348553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354172, 33.327415, 49.449406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271188, 0.147069, -0.951224,
		0.092225, 0.979741, 0.177771,
		0.958098, -0.135936, 0.252131,
		33.641602, 33.286636, 49.525043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329983, 33.859371, 48.950253>,  <32.970932, 33.381790, 49.348553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329983, 33.859371, 48.950253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657150, 33.663151, 49.070499>,  <33.853451, 33.545418, 49.142647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657150, 33.663151, 49.070499>,  <33.329983, 33.859371, 48.950253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657150, 33.663151, 49.070499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455934, 0.233969, -0.858710,
		0.350906, 0.839416, 0.415026,
		0.817918, -0.490551, 0.300617,
		33.902527, 33.515984, 49.160683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979515, 34.280659, 49.018448>,  <33.329983, 33.859371, 48.950253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979515, 34.280659, 49.018448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102753, 33.906204, 48.950653>,  <34.176693, 33.681530, 48.909977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102753, 33.906204, 48.950653>,  <33.979515, 34.280659, 49.018448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102753, 33.906204, 48.950653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505543, 0.312015, -0.804409,
		0.805920, 0.162148, 0.569386,
		0.308090, -0.936138, -0.169486,
		34.195179, 33.625362, 48.899807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743629, 34.222961, 49.041721>,  <33.979515, 34.280659, 49.018448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743629, 34.222961, 49.041721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647209, 33.902088, 48.823219>,  <34.589359, 33.709564, 48.692116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647209, 33.902088, 48.823219>,  <34.743629, 34.222961, 49.041721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647209, 33.902088, 48.823219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562311, 0.343315, -0.752290,
		0.791013, -0.488506, 0.368320,
		-0.241049, -0.802182, -0.546259,
		34.574894, 33.661434, 48.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382126, 34.019119, 48.772415>,  <34.743629, 34.222961, 49.041721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382126, 34.019119, 48.772415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097046, 33.872540, 48.533157>,  <34.925999, 33.784592, 48.389603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097046, 33.872540, 48.533157>,  <35.382126, 34.019119, 48.772415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097046, 33.872540, 48.533157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517495, 0.300985, -0.801004,
		0.473556, -0.880412, -0.024879,
		-0.712701, -0.366446, -0.598142,
		34.883236, 33.762608, 48.353714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804462, 33.814796, 48.226059>,  <35.382126, 34.019119, 48.772415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804462, 33.814796, 48.226059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423992, 33.843124, 48.105892>,  <35.195709, 33.860123, 48.033794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423992, 33.843124, 48.105892>,  <35.804462, 33.814796, 48.226059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423992, 33.843124, 48.105892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308616, 0.232282, -0.922389,
		0.004457, -0.970067, -0.242797,
		-0.951177, 0.070820, -0.300413,
		35.138638, 33.864368, 48.015770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765293, 33.573902, 47.481346>,  <35.804462, 33.814796, 48.226059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765293, 33.573902, 47.481346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420677, 33.767620, 47.542278>,  <35.213905, 33.883850, 47.578838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420677, 33.767620, 47.542278>,  <35.765293, 33.573902, 47.481346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420677, 33.767620, 47.542278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144804, 0.053179, -0.988030,
		-0.486597, -0.873288, 0.024311,
		-0.861543, 0.484293, 0.152332,
		35.162216, 33.912907, 47.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336006, 33.353516, 46.954437>,  <35.765293, 33.573902, 47.481346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336006, 33.353516, 46.954437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133926, 33.680984, 47.063648>,  <35.012680, 33.877468, 47.129177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133926, 33.680984, 47.063648>,  <35.336006, 33.353516, 46.954437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133926, 33.680984, 47.063648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155478, 0.224856, -0.961908,
		-0.848883, -0.528404, 0.013689,
		-0.505198, 0.818675, 0.273031,
		34.982368, 33.926586, 47.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936359, 33.551697, 46.439892>,  <35.336006, 33.353516, 46.954437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936359, 33.551697, 46.439892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912045, 33.903137, 46.629360>,  <34.897453, 34.114002, 46.743042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912045, 33.903137, 46.629360>,  <34.936359, 33.551697, 46.439892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912045, 33.903137, 46.629360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245598, 0.446790, -0.860268,
		-0.967464, -0.168626, 0.188623,
		-0.060789, 0.878604, 0.473667,
		34.893806, 34.166718, 46.771461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276245, 33.852116, 46.169979>,  <34.936359, 33.551697, 46.439892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276245, 33.852116, 46.169979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497223, 34.140453, 46.337402>,  <34.629810, 34.313457, 46.437855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497223, 34.140453, 46.337402>,  <34.276245, 33.852116, 46.169979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497223, 34.140453, 46.337402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057549, 0.533919, -0.843575,
		-0.831563, 0.441938, 0.336443,
		0.552441, 0.720848, 0.418554,
		34.662956, 34.356709, 46.462967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804512, 34.405964, 46.152248>,  <34.276245, 33.852116, 46.169979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804512, 34.405964, 46.152248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180031, 34.543064, 46.166031>,  <34.405342, 34.625324, 46.174301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180031, 34.543064, 46.166031>,  <33.804512, 34.405964, 46.152248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180031, 34.543064, 46.166031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201991, 0.628726, -0.750935,
		-0.279046, 0.698013, 0.659477,
		0.938793, 0.342754, 0.034452,
		34.461670, 34.645889, 46.176365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677700, 35.109741, 46.131680>,  <33.804512, 34.405964, 46.152248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677700, 35.109741, 46.131680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049927, 35.025654, 46.011772>,  <34.273262, 34.975201, 45.939827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049927, 35.025654, 46.011772>,  <33.677700, 35.109741, 46.131680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049927, 35.025654, 46.011772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145208, 0.539689, -0.829247,
		0.336107, 0.815195, 0.471688,
		0.930562, -0.210223, -0.299766,
		34.329094, 34.962585, 45.921841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860252, 35.762482, 45.874020>,  <33.677700, 35.109741, 46.131680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860252, 35.762482, 45.874020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105549, 35.475296, 45.742287>,  <34.252728, 35.302986, 45.663246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105549, 35.475296, 45.742287>,  <33.860252, 35.762482, 45.874020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105549, 35.475296, 45.742287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136349, 0.506890, -0.851159,
		0.778036, 0.477065, 0.408741,
		0.613245, -0.717963, -0.329332,
		34.289524, 35.259907, 45.643486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396606, 36.070770, 45.414692>,  <33.860252, 35.762482, 45.874020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396606, 36.070770, 45.414692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421936, 35.693417, 45.284454>,  <34.437134, 35.467003, 45.206310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421936, 35.693417, 45.284454>,  <34.396606, 36.070770, 45.414692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421936, 35.693417, 45.284454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200815, 0.331622, -0.921792,
		0.977580, -0.007012, 0.210446,
		0.063325, -0.943386, -0.325595,
		34.440933, 35.410400, 45.186775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.887051, 43.825722, 33.609257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647228, 43.748936, 33.298470>,  <41.503334, 43.702866, 33.111996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647228, 43.748936, 33.298470>,  <41.887051, 43.825722, 33.609257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647228, 43.748936, 33.298470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016834, -0.967569, 0.252044,
		-0.800153, 0.164195, 0.576885,
		-0.599560, -0.191962, -0.776967,
		41.467361, 43.691345, 33.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253487, 43.604439, 33.851250>,  <41.887051, 43.825722, 33.609257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253487, 43.604439, 33.851250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264248, 43.462757, 33.477337>,  <41.270706, 43.377747, 33.252991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264248, 43.462757, 33.477337>,  <41.253487, 43.604439, 33.851250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264248, 43.462757, 33.477337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156319, -0.925106, 0.346041,
		-0.987340, 0.136814, -0.080258,
		0.026904, -0.354206, -0.934781,
		41.272320, 43.356495, 33.196903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816517, 43.087784, 33.891712>,  <41.253487, 43.604439, 33.851250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816517, 43.087784, 33.891712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049202, 43.004902, 33.577087>,  <41.188812, 42.955173, 33.388313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049202, 43.004902, 33.577087>,  <40.816517, 43.087784, 33.891712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049202, 43.004902, 33.577087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082112, -0.977030, 0.196649,
		-0.809238, -0.049808, -0.585366,
		0.581715, -0.207201, -0.786560,
		41.223717, 42.942741, 33.341118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466461, 42.514431, 33.637039>,  <40.816517, 43.087784, 33.891712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466461, 42.514431, 33.637039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836170, 42.499641, 33.485065>,  <41.057995, 42.490768, 33.393883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836170, 42.499641, 33.485065>,  <40.466461, 42.514431, 33.637039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836170, 42.499641, 33.485065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001116, -0.995555, 0.094179,
		-0.381728, -0.086623, -0.920207,
		0.924274, -0.036978, -0.379935,
		41.113453, 42.488548, 33.371086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383202, 41.997345, 33.282825>,  <40.466461, 42.514431, 33.637039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383202, 41.997345, 33.282825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773693, 42.035263, 33.360786>,  <41.007988, 42.058014, 33.407562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773693, 42.035263, 33.360786>,  <40.383202, 41.997345, 33.282825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773693, 42.035263, 33.360786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059873, -0.982236, 0.177841,
		0.208298, -0.161945, -0.964565,
		0.976231, 0.094795, 0.194902,
		41.066563, 42.063702, 33.419258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737045, 41.476925, 32.954243>,  <40.383202, 41.997345, 33.282825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737045, 41.476925, 32.954243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.024784, 41.587250, 33.209263>,  <41.197426, 41.653446, 33.362274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.024784, 41.587250, 33.209263>,  <40.737045, 41.476925, 32.954243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024784, 41.587250, 33.209263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311766, -0.948356, 0.058512,
		0.620763, 0.156677, -0.768183,
		0.719343, 0.275815, 0.637551,
		41.240585, 41.669994, 33.400528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220253, 40.930115, 32.850567>,  <40.737045, 41.476925, 32.954243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220253, 40.930115, 32.850567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329048, 41.123505, 33.183380>,  <41.394325, 41.239540, 33.383068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329048, 41.123505, 33.183380>,  <41.220253, 40.930115, 32.850567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329048, 41.123505, 33.183380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433531, -0.833475, 0.342592,
		0.859111, 0.267529, -0.436299,
		0.271991, 0.483474, 0.832030,
		41.410645, 41.268547, 33.432987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858677, 40.649746, 33.043762>,  <41.220253, 40.930115, 32.850567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858677, 40.649746, 33.043762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702450, 40.789986, 33.384239>,  <41.608711, 40.874130, 33.588528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702450, 40.789986, 33.384239>,  <41.858677, 40.649746, 33.043762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702450, 40.789986, 33.384239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337545, -0.805696, 0.486742,
		0.856457, 0.477424, 0.196337,
		-0.390570, 0.350601, 0.851196,
		41.585278, 40.895164, 33.639599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414204, 40.564312, 33.562130>,  <41.858677, 40.649746, 33.043762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414204, 40.564312, 33.562130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073357, 40.604282, 33.767620>,  <41.868847, 40.628265, 33.890915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073357, 40.604282, 33.767620>,  <42.414204, 40.564312, 33.562130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073357, 40.604282, 33.767620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262798, -0.767178, 0.585128,
		0.452583, 0.633603, 0.627468,
		-0.852118, 0.099921, 0.513722,
		41.817722, 40.634258, 33.921738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570663, 40.537033, 34.284882>,  <42.414204, 40.564312, 33.562130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570663, 40.537033, 34.284882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193230, 40.405441, 34.269810>,  <41.966770, 40.326488, 34.260765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193230, 40.405441, 34.269810>,  <42.570663, 40.537033, 34.284882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193230, 40.405441, 34.269810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274941, -0.841811, 0.464501,
		-0.184531, 0.427937, 0.884770,
		-0.943586, -0.328975, -0.037683,
		41.910152, 40.306747, 34.258503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423161, 40.161808, 34.822739>,  <42.570663, 40.537033, 34.284882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423161, 40.161808, 34.822739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124016, 40.022476, 34.596687>,  <41.944530, 39.938877, 34.461056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124016, 40.022476, 34.596687>,  <42.423161, 40.161808, 34.822739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124016, 40.022476, 34.596687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133001, -0.912642, 0.386517,
		-0.650394, 0.213899, 0.728858,
		-0.747862, -0.348328, -0.565128,
		41.899658, 39.917976, 34.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130001, 39.499561, 35.181515>,  <42.423161, 40.161808, 34.822739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130001, 39.499561, 35.181515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952225, 39.489574, 34.823330>,  <41.845558, 39.483582, 34.608421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952225, 39.489574, 34.823330>,  <42.130001, 39.499561, 35.181515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952225, 39.489574, 34.823330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017774, -0.999169, 0.036678,
		-0.895631, 0.032217, 0.443630,
		-0.444443, -0.024965, -0.895459,
		41.818893, 39.482086, 34.554691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506180, 39.214466, 35.247501>,  <42.130001, 39.499561, 35.181515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506180, 39.214466, 35.247501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.607319, 39.128731, 34.870113>,  <41.668003, 39.077290, 34.643681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.607319, 39.128731, 34.870113>,  <41.506180, 39.214466, 35.247501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607319, 39.128731, 34.870113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047575, -0.976728, 0.209141,
		-0.966335, -0.007996, -0.257162,
		0.252849, -0.214335, -0.943466,
		41.683174, 39.064430, 34.587074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984760, 38.694698, 34.970894>,  <41.506180, 39.214466, 35.247501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984760, 38.694698, 34.970894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308250, 38.670849, 34.736832>,  <41.502346, 38.656540, 34.596394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308250, 38.670849, 34.736832>,  <40.984760, 38.694698, 34.970894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308250, 38.670849, 34.736832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020946, -0.991298, 0.129956,
		-0.587811, -0.117356, -0.800441,
		0.808727, -0.059623, -0.585154,
		41.550869, 38.652962, 34.561287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863361, 38.223911, 34.454700>,  <40.984760, 38.694698, 34.970894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863361, 38.223911, 34.454700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.261238, 38.260983, 34.472546>,  <41.499966, 38.283226, 34.483253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.261238, 38.260983, 34.472546>,  <40.863361, 38.223911, 34.454700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261238, 38.260983, 34.472546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086832, -0.989113, 0.118811,
		0.055134, -0.114308, -0.991914,
		0.994696, 0.092680, 0.044608,
		41.559647, 38.288788, 34.485928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015949, 37.681850, 34.096058>,  <40.863361, 38.223911, 34.454700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015949, 37.681850, 34.096058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364315, 37.764114, 34.274590>,  <41.573334, 37.813473, 34.381710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364315, 37.764114, 34.274590>,  <41.015949, 37.681850, 34.096058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364315, 37.764114, 34.274590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257218, -0.964647, -0.057408,
		0.418747, 0.164802, -0.893023,
		0.870913, 0.205662, 0.446333,
		41.625587, 37.825813, 34.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441605, 37.319653, 33.671783>,  <41.015949, 37.681850, 34.096058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441605, 37.319653, 33.671783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644306, 37.374058, 34.012302>,  <41.765926, 37.406700, 34.216614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644306, 37.374058, 34.012302>,  <41.441605, 37.319653, 33.671783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644306, 37.374058, 34.012302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317202, -0.947619, -0.037417,
		0.801614, 0.288994, -0.523352,
		0.506752, 0.136014, 0.851295,
		41.796333, 37.414864, 34.267693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047680, 36.952358, 33.604839>,  <41.441605, 37.319653, 33.671783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047680, 36.952358, 33.604839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033710, 37.005863, 34.000999>,  <42.025330, 37.037968, 34.238693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033710, 37.005863, 34.000999>,  <42.047680, 36.952358, 33.604839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033710, 37.005863, 34.000999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318678, -0.937780, 0.137891,
		0.947220, 0.320433, -0.009879,
		-0.034921, 0.133762, 0.990398,
		42.023235, 37.045990, 34.298119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688919, 36.699768, 33.918243>,  <42.047680, 36.952358, 33.604839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688919, 36.699768, 33.918243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.412739, 36.706131, 34.207527>,  <42.247032, 36.709949, 34.381096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.412739, 36.706131, 34.207527>,  <42.688919, 36.699768, 33.918243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412739, 36.706131, 34.207527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373226, -0.848583, 0.374979,
		0.619665, 0.528823, 0.579966,
		-0.690447, 0.015904, 0.723208,
		42.205605, 36.710903, 34.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161179, 36.584885, 34.629204>,  <42.688919, 36.699768, 33.918243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161179, 36.584885, 34.629204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779259, 36.477512, 34.680279>,  <42.550106, 36.413090, 34.710926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779259, 36.477512, 34.680279>,  <43.161179, 36.584885, 34.629204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779259, 36.477512, 34.680279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297150, -0.873329, 0.386002,
		0.007901, 0.406497, 0.913618,
		-0.954798, -0.268431, 0.127691,
		42.492821, 36.396984, 34.718586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171127, 36.330589, 35.293621>,  <43.161179, 36.584885, 34.629204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171127, 36.330589, 35.293621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832336, 36.179855, 35.143616>,  <42.629063, 36.089417, 35.053612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832336, 36.179855, 35.143616>,  <43.171127, 36.330589, 35.293621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832336, 36.179855, 35.143616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186937, -0.871445, 0.453474,
		-0.497685, 0.313976, 0.808534,
		-0.846973, -0.376832, -0.375011,
		42.578243, 36.066807, 35.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497326, 36.204350, 35.941803>,  <43.171127, 36.330589, 35.293621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497326, 36.204350, 35.941803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809586, 36.203747, 35.691818>,  <43.996941, 36.203384, 35.541828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809586, 36.203747, 35.691818>,  <43.497326, 36.204350, 35.941803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809586, 36.203747, 35.691818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124543, 0.980314, 0.153208,
		0.612431, -0.197437, 0.765472,
		0.780652, -0.001505, -0.624964,
		44.043781, 36.203297, 35.504330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028454, 36.592247, 36.319500>,  <43.497326, 36.204350, 35.941803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028454, 36.592247, 36.319500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136726, 36.568737, 35.935150>,  <44.201691, 36.554630, 35.704540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136726, 36.568737, 35.935150>,  <44.028454, 36.592247, 36.319500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136726, 36.568737, 35.935150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264163, 0.964355, 0.015424,
		0.925714, -0.258001, 0.276564,
		0.270685, -0.058780, -0.960872,
		44.217934, 36.551102, 35.646889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509579, 37.034077, 36.273724>,  <44.028454, 36.592247, 36.319500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509579, 37.034077, 36.273724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453972, 36.986973, 35.880417>,  <44.420609, 36.958710, 35.644432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453972, 36.986973, 35.880417>,  <44.509579, 37.034077, 36.273724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453972, 36.986973, 35.880417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215110, 0.965605, -0.146061,
		0.966646, -0.231814, -0.108895,
		-0.139009, -0.117765, -0.983264,
		44.412266, 36.951645, 35.585438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952827, 37.504257, 36.083481>,  <44.509579, 37.034077, 36.273724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952827, 37.504257, 36.083481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728420, 37.416027, 35.764332>,  <44.593777, 37.363091, 35.572842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728420, 37.416027, 35.764332>,  <44.952827, 37.504257, 36.083481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728420, 37.416027, 35.764332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064559, 0.949252, -0.307818,
		0.825281, -0.224203, -0.518310,
		-0.561020, -0.220575, -0.797874,
		44.560116, 37.349854, 35.524971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262531, 37.806129, 35.433620>,  <44.952827, 37.504257, 36.083481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262531, 37.806129, 35.433620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866749, 37.759872, 35.398727>,  <44.629280, 37.732117, 35.377792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866749, 37.759872, 35.398727>,  <45.262531, 37.806129, 35.433620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866749, 37.759872, 35.398727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090177, 0.963038, -0.253821,
		0.113362, -0.243278, -0.963310,
		-0.989453, -0.115642, -0.087234,
		44.569912, 37.725182, 35.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116108, 38.081100, 34.810074>,  <45.262531, 37.806129, 35.433620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116108, 38.081100, 34.810074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762207, 38.085091, 34.996456>,  <44.549866, 38.087486, 35.108284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762207, 38.085091, 34.996456>,  <45.116108, 38.081100, 34.810074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762207, 38.085091, 34.996456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091820, 0.976444, -0.195258,
		-0.456926, -0.215539, -0.862995,
		-0.884753, 0.009978, 0.465954,
		44.496780, 38.088085, 35.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800045, 38.511330, 34.399014>,  <45.116108, 38.081100, 34.810074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800045, 38.511330, 34.399014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578629, 38.503880, 34.732059>,  <44.445778, 38.499409, 34.931889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578629, 38.503880, 34.732059>,  <44.800045, 38.511330, 34.399014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578629, 38.503880, 34.732059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198641, 0.973849, -0.110273,
		-0.808789, -0.226432, -0.542761,
		-0.553536, -0.018627, 0.832617,
		44.412567, 38.498291, 34.981846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151543, 39.007957, 34.213173>,  <44.800045, 38.511330, 34.399014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151543, 39.007957, 34.213173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191349, 38.972435, 34.609600>,  <44.215233, 38.951122, 34.847454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191349, 38.972435, 34.609600>,  <44.151543, 39.007957, 34.213173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191349, 38.972435, 34.609600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144345, 0.984185, 0.102684,
		-0.984510, -0.153274, 0.085125,
		0.099517, -0.088806, 0.991065,
		44.221203, 38.945793, 34.906921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595409, 39.304169, 34.538307>,  <44.151543, 39.007957, 34.213173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595409, 39.304169, 34.538307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867504, 39.294064, 34.831329>,  <44.030762, 39.287998, 35.007141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867504, 39.294064, 34.831329>,  <43.595409, 39.304169, 34.538307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867504, 39.294064, 34.831329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174651, 0.965034, 0.195465,
		-0.711877, -0.260904, 0.652043,
		0.680241, -0.025267, 0.732553,
		44.071575, 39.286484, 35.051094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297226, 39.675789, 35.201168>,  <43.595409, 39.304169, 34.538307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297226, 39.675789, 35.201168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689228, 39.689030, 35.279655>,  <43.924427, 39.696976, 35.326748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689228, 39.689030, 35.279655>,  <43.297226, 39.675789, 35.201168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689228, 39.689030, 35.279655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093429, 0.947170, 0.306822,
		-0.175696, -0.319018, 0.931321,
		0.980001, 0.033105, 0.196219,
		43.983227, 39.698959, 35.338520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311340, 40.087238, 35.827126>,  <43.297226, 39.675789, 35.201168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311340, 40.087238, 35.827126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694050, 40.078716, 35.711109>,  <43.923676, 40.073605, 35.641499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694050, 40.078716, 35.711109>,  <43.311340, 40.087238, 35.827126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694050, 40.078716, 35.711109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128620, 0.925476, 0.356302,
		0.260838, -0.378207, 0.888214,
		0.956776, -0.021305, -0.290044,
		43.981083, 40.072327, 35.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683079, 40.230473, 36.454227>,  <43.311340, 40.087238, 35.827126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683079, 40.230473, 36.454227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901299, 40.315762, 36.130028>,  <44.032230, 40.366936, 35.935509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901299, 40.315762, 36.130028>,  <43.683079, 40.230473, 36.454227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901299, 40.315762, 36.130028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063413, 0.953820, 0.293609,
		0.835676, -0.211574, 0.506835,
		0.545550, 0.213222, -0.810501,
		44.064964, 40.379726, 35.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147125, 40.707226, 36.650902>,  <43.683079, 40.230473, 36.454227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147125, 40.707226, 36.650902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098793, 40.759834, 36.257332>,  <44.069794, 40.791401, 36.021191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098793, 40.759834, 36.257332>,  <44.147125, 40.707226, 36.650902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098793, 40.759834, 36.257332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170584, 0.973688, 0.151106,
		0.977907, 0.186099, -0.095211,
		-0.120826, 0.131526, -0.983922,
		44.062546, 40.799294, 35.962154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497509, 41.319710, 36.546951>,  <44.147125, 40.707226, 36.650902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497509, 41.319710, 36.546951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283649, 41.326855, 36.208996>,  <44.155334, 41.331142, 36.006222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283649, 41.326855, 36.208996>,  <44.497509, 41.319710, 36.546951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283649, 41.326855, 36.208996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144771, 0.983061, 0.112397,
		0.832581, 0.182408, -0.523007,
		-0.534650, 0.017863, -0.844885,
		44.123253, 41.332214, 35.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756630, 41.924515, 36.295277>,  <44.497509, 41.319710, 36.546951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756630, 41.924515, 36.295277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.431271, 41.854355, 36.073425>,  <44.236053, 41.812260, 35.940315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.431271, 41.854355, 36.073425>,  <44.756630, 41.924515, 36.295277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431271, 41.854355, 36.073425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109778, 0.982612, -0.149743,
		0.571249, -0.060915, -0.818513,
		-0.813403, -0.175395, -0.554629,
		44.187248, 41.801735, 35.907036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768051, 42.447746, 35.693401>,  <44.756630, 41.924515, 36.295277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768051, 42.447746, 35.693401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405602, 42.303864, 35.782444>,  <44.188133, 42.217533, 35.835869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405602, 42.303864, 35.782444>,  <44.768051, 42.447746, 35.693401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405602, 42.303864, 35.782444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393506, 0.909867, -0.131514,
		-0.155236, -0.206765, -0.965997,
		-0.906121, -0.359710, 0.222607,
		44.133766, 42.195950, 35.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367722, 42.715824, 35.166229>,  <44.768051, 42.447746, 35.693401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367722, 42.715824, 35.166229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119045, 42.625355, 35.466190>,  <43.969841, 42.571075, 35.646168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119045, 42.625355, 35.466190>,  <44.367722, 42.715824, 35.166229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119045, 42.625355, 35.466190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456423, 0.882664, -0.112174,
		-0.636541, -0.412010, -0.651969,
		-0.621686, -0.226170, 0.749902,
		43.932541, 42.557503, 35.691162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665859, 42.941887, 34.950119>,  <44.367722, 42.715824, 35.166229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665859, 42.941887, 34.950119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671764, 42.914215, 35.349117>,  <43.675308, 42.897614, 35.588516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671764, 42.914215, 35.349117>,  <43.665859, 42.941887, 34.950119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671764, 42.914215, 35.349117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432020, 0.899239, 0.068758,
		-0.901743, -0.431953, -0.016612,
		0.014762, -0.069179, 0.997495,
		43.676193, 42.893463, 35.648365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178425, 43.352276, 35.072491>,  <43.665859, 42.941887, 34.950119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178425, 43.352276, 35.072491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335003, 43.313339, 35.438507>,  <43.428951, 43.289978, 35.658115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335003, 43.313339, 35.438507>,  <43.178425, 43.352276, 35.072491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335003, 43.313339, 35.438507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425728, 0.862411, 0.273867,
		-0.815799, -0.496761, 0.296143,
		0.391443, -0.097344, 0.915039,
		43.452435, 43.284138, 35.713020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598301, 43.500992, 35.566761>,  <43.178425, 43.352276, 35.072491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598301, 43.500992, 35.566761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945793, 43.566086, 35.753880>,  <43.154289, 43.605141, 35.866150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945793, 43.566086, 35.753880>,  <42.598301, 43.500992, 35.566761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945793, 43.566086, 35.753880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349983, 0.870002, 0.347288,
		-0.350463, -0.465418, 0.812749,
		0.868728, 0.162736, 0.467792,
		43.206413, 43.614906, 35.894218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360035, 43.646744, 36.192280>,  <42.598301, 43.500992, 35.566761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360035, 43.646744, 36.192280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729580, 43.798870, 36.175144>,  <42.951305, 43.890148, 36.164864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729580, 43.798870, 36.175144>,  <42.360035, 43.646744, 36.192280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729580, 43.798870, 36.175144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322460, 0.833786, 0.448130,
		0.206151, -0.400197, 0.892941,
		0.923862, 0.380320, -0.042838,
		43.006737, 43.912968, 36.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.440624, 36.970837, 41.256302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383224, 36.575619, 41.278858>,  <38.348785, 36.338490, 41.292393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383224, 36.575619, 41.278858>,  <38.440624, 36.970837, 41.256302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383224, 36.575619, 41.278858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043295, -0.063198, -0.997061,
		0.988703, -0.140633, 0.051846,
		-0.143496, -0.988043, 0.056395,
		38.340176, 36.279205, 41.295776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933945, 36.751938, 40.727901>,  <38.440624, 36.970837, 41.256302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933945, 36.751938, 40.727901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692276, 36.439606, 40.791508>,  <38.547276, 36.252205, 40.829670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692276, 36.439606, 40.791508>,  <38.933945, 36.751938, 40.727901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692276, 36.439606, 40.791508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094872, -0.268614, -0.958564,
		0.791189, -0.564049, 0.236367,
		-0.604169, -0.780830, 0.159012,
		38.511024, 36.205357, 40.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207600, 36.199570, 40.458450>,  <38.933945, 36.751938, 40.727901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207600, 36.199570, 40.458450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820648, 36.098877, 40.469841>,  <38.588478, 36.038464, 40.476677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820648, 36.098877, 40.469841>,  <39.207600, 36.199570, 40.458450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820648, 36.098877, 40.469841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068468, -0.368029, -0.927290,
		0.243909, -0.895090, 0.373259,
		-0.967378, -0.251731, 0.028480,
		38.530434, 36.023357, 40.478386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210468, 35.606052, 40.180031>,  <39.207600, 36.199570, 40.458450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210468, 35.606052, 40.180031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835957, 35.739124, 40.134933>,  <38.611252, 35.818966, 40.107876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835957, 35.739124, 40.134933>,  <39.210468, 35.606052, 40.180031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835957, 35.739124, 40.134933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045959, -0.202178, -0.978270,
		-0.348247, -0.921112, 0.174004,
		-0.936276, 0.332682, -0.112741,
		38.555073, 35.838928, 40.101112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967884, 35.213024, 39.524693>,  <39.210468, 35.606052, 40.180031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967884, 35.213024, 39.524693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688889, 35.489731, 39.599491>,  <38.521492, 35.655754, 39.644371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688889, 35.489731, 39.599491>,  <38.967884, 35.213024, 39.524693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688889, 35.489731, 39.599491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238696, 0.021762, -0.970850,
		-0.675673, -0.721791, 0.149944,
		-0.697488, 0.691769, 0.186993,
		38.479641, 35.697262, 39.655590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360363, 34.903362, 39.321480>,  <38.967884, 35.213024, 39.524693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360363, 34.903362, 39.321480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273285, 35.293747, 39.317390>,  <38.221039, 35.527977, 39.314938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273285, 35.293747, 39.317390>,  <38.360363, 34.903362, 39.321480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273285, 35.293747, 39.317390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380565, -0.094521, -0.919911,
		-0.898766, -0.196369, 0.391994,
		-0.217694, 0.975963, -0.010221,
		38.207977, 35.586536, 39.314323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601742, 34.990303, 39.216602>,  <38.360363, 34.903362, 39.321480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601742, 34.990303, 39.216602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818871, 35.308285, 39.108234>,  <37.949146, 35.499073, 39.043213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818871, 35.308285, 39.108234>,  <37.601742, 34.990303, 39.216602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818871, 35.308285, 39.108234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278026, -0.134299, -0.951139,
		-0.792494, 0.591620, 0.148117,
		0.542821, 0.794952, -0.270917,
		37.981716, 35.546772, 39.026958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164890, 35.383774, 38.754883>,  <37.601742, 34.990303, 39.216602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164890, 35.383774, 38.754883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534279, 35.514595, 38.674648>,  <37.755913, 35.593086, 38.626507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534279, 35.514595, 38.674648>,  <37.164890, 35.383774, 38.754883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534279, 35.514595, 38.674648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157519, -0.153534, -0.975508,
		-0.349840, 0.932451, -0.090267,
		0.923472, 0.327053, -0.200591,
		37.811321, 35.612709, 38.614471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046814, 35.606022, 38.140663>,  <37.164890, 35.383774, 38.754883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046814, 35.606022, 38.140663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445820, 35.606441, 38.168854>,  <37.685223, 35.606693, 38.185768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445820, 35.606441, 38.168854>,  <37.046814, 35.606022, 38.140663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445820, 35.606441, 38.168854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070477, -0.032517, -0.996983,
		0.001242, 0.999471, -0.032511,
		0.997513, 0.001053, 0.070480,
		37.745075, 35.606758, 38.189999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225506, 36.160076, 37.726059>,  <37.046814, 35.606022, 38.140663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225506, 36.160076, 37.726059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556206, 35.935078, 37.729877>,  <37.754623, 35.800079, 37.732170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556206, 35.935078, 37.729877>,  <37.225506, 36.160076, 37.726059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556206, 35.935078, 37.729877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102494, 0.133910, -0.985679,
		0.553161, 0.815884, 0.168362,
		0.826745, -0.562496, 0.009549,
		37.804230, 35.766331, 37.732742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754459, 36.562244, 37.430401>,  <37.225506, 36.160076, 37.726059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754459, 36.562244, 37.430401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858276, 36.178322, 37.387680>,  <37.920567, 35.947968, 37.362049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858276, 36.178322, 37.387680>,  <37.754459, 36.562244, 37.430401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858276, 36.178322, 37.387680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002859, 0.109823, -0.993947,
		0.965728, 0.258273, 0.025759,
		0.259539, -0.959809, -0.106798,
		37.936138, 35.890381, 37.355640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352303, 36.614582, 36.939011>,  <37.754459, 36.562244, 37.430401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352303, 36.614582, 36.939011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218445, 36.237644, 36.939922>,  <38.138130, 36.011482, 36.940468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218445, 36.237644, 36.939922>,  <38.352303, 36.614582, 36.939011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218445, 36.237644, 36.939922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023407, -0.010727, -0.999669,
		0.942055, -0.334476, 0.025648,
		-0.334640, -0.942343, 0.002276,
		38.118053, 35.954941, 36.940605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643330, 36.434906, 36.317795>,  <38.352303, 36.614582, 36.939011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643330, 36.434906, 36.317795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384575, 36.143658, 36.408463>,  <38.229324, 35.968906, 36.462864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384575, 36.143658, 36.408463>,  <38.643330, 36.434906, 36.317795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384575, 36.143658, 36.408463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057522, -0.249799, -0.966588,
		0.760418, -0.638307, 0.119707,
		-0.646882, -0.728125, 0.226668,
		38.190510, 35.925220, 36.476463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804470, 35.706184, 36.030022>,  <38.643330, 36.434906, 36.317795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804470, 35.706184, 36.030022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409126, 35.741234, 36.079758>,  <38.171921, 35.762264, 36.109600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409126, 35.741234, 36.079758>,  <38.804470, 35.706184, 36.030022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409126, 35.741234, 36.079758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140345, -0.210017, -0.967572,
		-0.058670, -0.973763, 0.219871,
		-0.988362, 0.087625, 0.124341,
		38.112617, 35.767521, 36.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612293, 35.002388, 36.068256>,  <38.804470, 35.706184, 36.030022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612293, 35.002388, 36.068256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691044, 34.847668, 35.707893>,  <38.738293, 34.754837, 35.491676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691044, 34.847668, 35.707893>,  <38.612293, 35.002388, 36.068256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691044, 34.847668, 35.707893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275996, -0.903592, 0.327639,
		-0.940780, 0.184143, -0.284647,
		0.196873, -0.386797, -0.900904,
		38.750107, 34.731628, 35.437622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048119, 34.779705, 35.887867>,  <38.612293, 35.002388, 36.068256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048119, 34.779705, 35.887867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324005, 34.540989, 35.723858>,  <38.489536, 34.397758, 35.625450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324005, 34.540989, 35.723858>,  <38.048119, 34.779705, 35.887867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324005, 34.540989, 35.723858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379028, -0.780072, 0.497820,
		-0.616947, -0.187945, -0.764234,
		0.689720, -0.596795, -0.410027,
		38.530922, 34.361950, 35.600849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741982, 34.173313, 35.538074>,  <38.048119, 34.779705, 35.887867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741982, 34.173313, 35.538074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118793, 34.062054, 35.613132>,  <38.344879, 33.995296, 35.658169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118793, 34.062054, 35.613132>,  <37.741982, 34.173313, 35.538074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118793, 34.062054, 35.613132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331467, -0.858221, 0.391902,
		0.052035, -0.431382, -0.900667,
		0.942031, -0.278149, 0.187646,
		38.401402, 33.978607, 35.669426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808441, 33.416481, 35.394794>,  <37.741982, 34.173313, 35.538074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808441, 33.416481, 35.394794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118034, 33.503090, 35.632809>,  <38.303791, 33.555054, 35.775616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118034, 33.503090, 35.632809>,  <37.808441, 33.416481, 35.394794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118034, 33.503090, 35.632809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103606, -0.883753, 0.456340,
		0.624671, -0.414849, -0.661578,
		0.773984, 0.216519, 0.595036,
		38.350231, 33.568047, 35.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189487, 32.786922, 35.467651>,  <37.808441, 33.416481, 35.394794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189487, 32.786922, 35.467651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252136, 33.019009, 35.787357>,  <38.289726, 33.158260, 35.979179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252136, 33.019009, 35.787357>,  <38.189487, 32.786922, 35.467651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252136, 33.019009, 35.787357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310479, -0.739299, 0.597529,
		0.937589, -0.341738, 0.064357,
		0.156619, 0.580218, 0.799261,
		38.299122, 33.193073, 36.027134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464550, 32.321632, 36.001060>,  <38.189487, 32.786922, 35.467651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464550, 32.321632, 36.001060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342854, 32.642750, 36.206181>,  <38.269836, 32.835419, 36.329250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342854, 32.642750, 36.206181>,  <38.464550, 32.321632, 36.001060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342854, 32.642750, 36.206181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310754, -0.592507, 0.743214,
		0.900483, 0.066762, 0.429736,
		-0.304240, 0.802794, 0.512796,
		38.251583, 32.883587, 36.360020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568005, 32.100845, 36.675846>,  <38.464550, 32.321632, 36.001060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568005, 32.100845, 36.675846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334682, 32.423523, 36.713779>,  <38.194691, 32.617130, 36.736542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334682, 32.423523, 36.713779>,  <38.568005, 32.100845, 36.675846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334682, 32.423523, 36.713779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387654, -0.379086, 0.840249,
		0.713779, 0.453357, 0.533842,
		-0.583304, 0.806698, 0.094838,
		38.159691, 32.665531, 36.742229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627068, 32.374653, 37.381317>,  <38.568005, 32.100845, 36.675846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627068, 32.374653, 37.381317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282196, 32.537067, 37.260136>,  <38.075272, 32.634514, 37.187428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282196, 32.537067, 37.260136>,  <38.627068, 32.374653, 37.381317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282196, 32.537067, 37.260136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436567, -0.292102, 0.850932,
		0.257013, 0.865917, 0.429105,
		-0.862180, 0.406034, -0.302957,
		38.023540, 32.658878, 37.169247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351589, 32.762245, 37.894409>,  <38.627068, 32.374653, 37.381317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351589, 32.762245, 37.894409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031185, 32.701294, 37.662838>,  <37.838943, 32.664722, 37.523895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031185, 32.701294, 37.662838>,  <38.351589, 32.762245, 37.894409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031185, 32.701294, 37.662838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547439, -0.204899, 0.811373,
		-0.242257, 0.966849, 0.080709,
		-0.801013, -0.152378, -0.578930,
		37.790882, 32.655582, 37.489159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874405, 33.161896, 38.237141>,  <38.351589, 32.762245, 37.894409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874405, 33.161896, 38.237141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678963, 32.889774, 38.018620>,  <37.561699, 32.726501, 37.887508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678963, 32.889774, 38.018620>,  <37.874405, 33.161896, 38.237141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678963, 32.889774, 38.018620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455203, -0.335399, 0.824801,
		-0.744348, 0.651681, -0.145800,
		-0.488606, -0.680308, -0.546301,
		37.532379, 32.685680, 37.854729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189957, 33.227276, 38.316914>,  <37.874405, 33.161896, 38.237141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189957, 33.227276, 38.316914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226894, 32.846443, 38.200291>,  <37.249058, 32.617943, 38.130318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226894, 32.846443, 38.200291>,  <37.189957, 33.227276, 38.316914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226894, 32.846443, 38.200291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577295, -0.289768, 0.763390,
		-0.811297, 0.097824, -0.576392,
		0.092342, -0.952084, -0.291562,
		37.254597, 32.560818, 38.112823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592129, 32.953671, 38.466194>,  <37.189957, 33.227276, 38.316914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592129, 32.953671, 38.466194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821224, 32.626411, 38.445789>,  <36.958683, 32.430058, 38.433548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821224, 32.626411, 38.445789>,  <36.592129, 32.953671, 38.466194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821224, 32.626411, 38.445789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530916, -0.417641, 0.737363,
		-0.624577, -0.395234, -0.673568,
		0.572740, -0.818148, -0.051013,
		36.993046, 32.380966, 38.430485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047630, 32.385632, 38.702984>,  <36.592129, 32.953671, 38.466194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047630, 32.385632, 38.702984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420948, 32.245300, 38.733688>,  <36.644939, 32.161102, 38.752110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420948, 32.245300, 38.733688>,  <36.047630, 32.385632, 38.702984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420948, 32.245300, 38.733688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245739, -0.468007, 0.848871,
		-0.261879, -0.811106, -0.522997,
		0.933290, -0.350823, 0.076759,
		36.700935, 32.140053, 38.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075661, 31.628769, 38.819611>,  <36.047630, 32.385632, 38.702984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075661, 31.628769, 38.819611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413105, 31.772739, 38.978996>,  <36.615570, 31.859121, 39.074627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413105, 31.772739, 38.978996>,  <36.075661, 31.628769, 38.819611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413105, 31.772739, 38.978996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112942, -0.606533, 0.786996,
		0.524941, -0.708922, -0.471027,
		0.843612, 0.359927, 0.398461,
		36.666187, 31.880718, 39.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355721, 31.022470, 39.010891>,  <36.075661, 31.628769, 38.819611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355721, 31.022470, 39.010891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098953, 30.721651, 38.951073>,  <35.944893, 30.541159, 38.915180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098953, 30.721651, 38.951073>,  <36.355721, 31.022470, 39.010891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098953, 30.721651, 38.951073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272303, 0.405908, -0.872405,
		0.716793, -0.519290, -0.465344,
		-0.641918, -0.752048, -0.149548,
		35.906376, 30.496037, 38.906208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333801, 30.843046, 38.386623>,  <36.355721, 31.022470, 39.010891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333801, 30.843046, 38.386623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990871, 30.658693, 38.478348>,  <35.785114, 30.548080, 38.533382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990871, 30.658693, 38.478348>,  <36.333801, 30.843046, 38.386623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990871, 30.658693, 38.478348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354249, 0.205009, -0.912403,
		0.373503, -0.863456, -0.339027,
		-0.857323, -0.460885, 0.229307,
		35.733673, 30.520428, 38.547138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211704, 30.423880, 37.778278>,  <36.333801, 30.843046, 38.386623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211704, 30.423880, 37.778278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862740, 30.447083, 37.972401>,  <35.653358, 30.461004, 38.088875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862740, 30.447083, 37.972401>,  <36.211704, 30.423880, 37.778278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862740, 30.447083, 37.972401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471055, 0.165070, -0.866521,
		-0.130375, -0.984575, -0.116685,
		-0.872416, 0.058007, 0.485310,
		35.601013, 30.464485, 38.117992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693634, 29.917200, 37.434143>,  <36.211704, 30.423880, 37.778278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693634, 29.917200, 37.434143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477348, 30.189722, 37.631508>,  <35.347576, 30.353235, 37.749928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477348, 30.189722, 37.631508>,  <35.693634, 29.917200, 37.434143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477348, 30.189722, 37.631508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440617, 0.270265, -0.856046,
		-0.716579, -0.680279, 0.154059,
		-0.540714, 0.681306, 0.493408,
		35.315136, 30.394114, 37.779530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005585, 29.830524, 37.226601>,  <35.693634, 29.917200, 37.434143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005585, 29.830524, 37.226601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017986, 30.206646, 37.362167>,  <35.025425, 30.432320, 37.443508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017986, 30.206646, 37.362167>,  <35.005585, 29.830524, 37.226601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017986, 30.206646, 37.362167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527179, 0.303466, -0.793720,
		-0.849189, -0.154065, 0.505116,
		0.031001, 0.940304, 0.338919,
		35.027287, 30.488737, 37.463844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353691, 30.071690, 37.262665>,  <35.005585, 29.830524, 37.226601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353691, 30.071690, 37.262665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517632, 30.435516, 37.290127>,  <34.615993, 30.653812, 37.306606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517632, 30.435516, 37.290127>,  <34.353691, 30.071690, 37.262665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517632, 30.435516, 37.290127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623886, 0.334439, -0.706340,
		-0.665425, 0.246657, 0.704535,
		0.409848, 0.909566, 0.068658,
		34.640587, 30.708385, 37.310722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794533, 30.531878, 37.276493>,  <34.353691, 30.071690, 37.262665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794533, 30.531878, 37.276493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095810, 30.781958, 37.194683>,  <34.276577, 30.932005, 37.145599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095810, 30.781958, 37.194683>,  <33.794533, 30.531878, 37.276493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095810, 30.781958, 37.194683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574659, 0.474074, -0.667100,
		-0.320112, 0.619984, 0.716344,
		0.753191, 0.625200, -0.204523,
		34.321766, 30.969517, 37.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684784, 31.265862, 37.538277>,  <33.794533, 30.531878, 37.276493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684784, 31.265862, 37.538277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934376, 31.291401, 37.226746>,  <34.084129, 31.306725, 37.039825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934376, 31.291401, 37.226746>,  <33.684784, 31.265862, 37.538277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934376, 31.291401, 37.226746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649446, 0.596654, -0.471406,
		0.434594, 0.799954, 0.413765,
		0.623978, 0.063848, -0.778829,
		34.121571, 31.310555, 36.993095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747463, 31.919731, 37.266338>,  <33.684784, 31.265862, 37.538277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747463, 31.919731, 37.266338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900555, 31.752684, 36.936707>,  <33.992409, 31.652454, 36.738926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900555, 31.752684, 36.936707>,  <33.747463, 31.919731, 37.266338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900555, 31.752684, 36.936707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693905, 0.458948, -0.554854,
		0.609928, 0.784195, -0.114133,
		0.382733, -0.417619, -0.824082,
		34.015373, 31.627398, 36.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721146, 32.443348, 36.845070>,  <33.747463, 31.919731, 37.266338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721146, 32.443348, 36.845070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783379, 32.132080, 36.601677>,  <33.820721, 31.945320, 36.455643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783379, 32.132080, 36.601677>,  <33.721146, 32.443348, 36.845070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783379, 32.132080, 36.601677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465693, 0.485455, -0.739908,
		0.871162, 0.398485, -0.286856,
		0.155586, -0.778166, -0.608482,
		33.830055, 31.898630, 36.419132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046089, 32.632008, 36.204174>,  <33.721146, 32.443348, 36.845070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046089, 32.632008, 36.204174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843124, 32.294189, 36.135731>,  <33.721344, 32.091499, 36.094666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843124, 32.294189, 36.135731>,  <34.046089, 32.632008, 36.204174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843124, 32.294189, 36.135731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422395, 0.416855, -0.804869,
		0.751074, -0.336127, -0.568249,
		-0.507415, -0.844542, -0.171110,
		33.690899, 32.040829, 36.084396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207901, 32.328690, 35.485806>,  <34.046089, 32.632008, 36.204174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207901, 32.328690, 35.485806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836529, 32.274052, 35.624001>,  <33.613705, 32.241268, 35.706917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836529, 32.274052, 35.624001>,  <34.207901, 32.328690, 35.485806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836529, 32.274052, 35.624001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367471, 0.474401, -0.799943,
		-0.054634, -0.869647, -0.490641,
		-0.928429, -0.136593, 0.345489,
		33.557999, 32.233074, 35.727646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.265747, 29.390469, 42.093052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889000, 29.298456, 42.191010>,  <36.662952, 29.243250, 42.249786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889000, 29.298456, 42.191010>,  <37.265747, 29.390469, 42.093052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889000, 29.298456, 42.191010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236979, -0.061884, -0.969542,
		0.238180, -0.971214, 0.003774,
		-0.941866, -0.230031, 0.244897,
		36.606441, 29.229446, 42.264481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116882, 28.921926, 41.594513>,  <37.265747, 29.390469, 42.093052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116882, 28.921926, 41.594513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750076, 29.013628, 41.725071>,  <36.529995, 29.068649, 41.803406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750076, 29.013628, 41.725071>,  <37.116882, 28.921926, 41.594513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750076, 29.013628, 41.725071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350204, -0.071076, -0.933973,
		-0.190917, -0.970769, 0.145462,
		-0.917010, 0.229253, 0.326397,
		36.474972, 29.082403, 41.822990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600452, 28.582129, 41.123089>,  <37.116882, 28.921926, 41.594513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600452, 28.582129, 41.123089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379974, 28.865232, 41.299839>,  <36.247688, 29.035095, 41.405888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379974, 28.865232, 41.299839>,  <36.600452, 28.582129, 41.123089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379974, 28.865232, 41.299839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393424, 0.246559, -0.885678,
		-0.735798, -0.662028, 0.142548,
		-0.551197, 0.707762, 0.441876,
		36.214615, 29.077560, 41.432404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919121, 28.517084, 40.850128>,  <36.600452, 28.582129, 41.123089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919121, 28.517084, 40.850128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971920, 28.883913, 41.000622>,  <36.003601, 29.104010, 41.090919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971920, 28.883913, 41.000622>,  <35.919121, 28.517084, 40.850128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971920, 28.883913, 41.000622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249047, 0.398066, -0.882904,
		-0.959454, 0.022839, 0.280938,
		0.131997, 0.917072, 0.376238,
		36.011520, 29.159035, 41.113495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263187, 28.913042, 40.634750>,  <35.919121, 28.517084, 40.850128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263187, 28.913042, 40.634750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.514767, 29.211313, 40.722744>,  <35.665714, 29.390276, 40.775539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.514767, 29.211313, 40.722744>,  <35.263187, 28.913042, 40.634750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514767, 29.211313, 40.722744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134298, 0.382910, -0.913971,
		-0.765762, 0.545294, 0.340973,
		0.628945, 0.745677, 0.219987,
		35.703449, 29.435017, 40.788738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929924, 29.486040, 40.409641>,  <35.263187, 28.913042, 40.634750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929924, 29.486040, 40.409641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.309887, 29.605089, 40.447796>,  <35.537865, 29.676519, 40.470688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.309887, 29.605089, 40.447796>,  <34.929924, 29.486040, 40.409641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309887, 29.605089, 40.447796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020733, 0.364536, -0.930959,
		-0.311846, 0.882346, 0.352445,
		0.949906, 0.297623, 0.095385,
		35.594860, 29.694376, 40.476410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020195, 30.234528, 40.299400>,  <34.929924, 29.486040, 40.409641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020195, 30.234528, 40.299400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.390076, 30.100437, 40.227242>,  <35.612003, 30.019983, 40.183945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.390076, 30.100437, 40.227242>,  <35.020195, 30.234528, 40.299400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390076, 30.100437, 40.227242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012724, 0.500825, -0.865455,
		0.380471, 0.797995, 0.467381,
		0.924705, -0.335227, -0.180395,
		35.667488, 29.999868, 40.173122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507069, 30.800144, 40.081150>,  <35.020195, 30.234528, 40.299400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507069, 30.800144, 40.081150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677425, 30.477495, 39.917210>,  <35.779640, 30.283907, 39.818844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677425, 30.477495, 39.917210>,  <35.507069, 30.800144, 40.081150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677425, 30.477495, 39.917210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190318, 0.362990, -0.912150,
		0.884533, 0.466477, 0.001079,
		0.425888, -0.806621, -0.409855,
		35.805191, 30.235508, 39.794254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048157, 30.981115, 39.711136>,  <35.507069, 30.800144, 40.081150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048157, 30.981115, 39.711136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920475, 30.648478, 39.529343>,  <35.843864, 30.448895, 39.420265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920475, 30.648478, 39.529343>,  <36.048157, 30.981115, 39.711136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920475, 30.648478, 39.529343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070045, 0.498965, -0.863787,
		0.945094, -0.243891, -0.217521,
		-0.319205, -0.831596, -0.454485,
		35.824715, 30.398998, 39.392998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856182, 30.929438, 39.647026>,  <36.048157, 30.981115, 39.711136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856182, 30.929438, 39.647026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982708, 31.305557, 39.697285>,  <37.058624, 31.531229, 39.727440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982708, 31.305557, 39.697285>,  <36.856182, 30.929438, 39.647026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982708, 31.305557, 39.697285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096445, -0.099889, 0.990313,
		0.943740, -0.325364, 0.059092,
		0.316310, 0.940298, 0.125649,
		37.077602, 31.587646, 39.734978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466099, 30.906832, 40.095657>,  <36.856182, 30.929438, 39.647026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466099, 30.906832, 40.095657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289127, 31.265188, 40.111858>,  <37.182945, 31.480202, 40.121578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289127, 31.265188, 40.111858>,  <37.466099, 30.906832, 40.095657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289127, 31.265188, 40.111858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103313, 0.006055, 0.994631,
		0.890834, 0.444236, -0.095235,
		-0.442427, 0.895889, 0.040501,
		37.156399, 31.533955, 40.124008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880489, 31.409111, 40.565353>,  <37.466099, 30.906832, 40.095657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880489, 31.409111, 40.565353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556782, 31.633440, 40.495426>,  <37.362556, 31.768038, 40.453472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556782, 31.633440, 40.495426>,  <37.880489, 31.409111, 40.565353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556782, 31.633440, 40.495426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012628, 0.314130, 0.949296,
		0.587302, 0.766028, -0.261298,
		-0.809269, 0.560824, -0.174816,
		37.313999, 31.801687, 40.442982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000576, 32.135662, 40.723873>,  <37.880489, 31.409111, 40.565353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000576, 32.135662, 40.723873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608875, 32.065186, 40.763905>,  <37.373856, 32.022900, 40.787922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608875, 32.065186, 40.763905>,  <38.000576, 32.135662, 40.723873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608875, 32.065186, 40.763905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073689, 0.150432, 0.985870,
		-0.188761, 0.972793, -0.134328,
		-0.979254, -0.176195, 0.100079,
		37.315098, 32.012325, 40.793930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675110, 32.704601, 41.155949>,  <38.000576, 32.135662, 40.723873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675110, 32.704601, 41.155949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418438, 32.398376, 41.174591>,  <37.264435, 32.214642, 41.185776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418438, 32.398376, 41.174591>,  <37.675110, 32.704601, 41.155949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418438, 32.398376, 41.174591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171740, 0.202638, 0.964076,
		-0.747500, 0.610621, -0.261506,
		-0.641676, -0.765559, 0.046604,
		37.225937, 32.168709, 41.188572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139030, 33.073330, 41.422863>,  <37.675110, 32.704601, 41.155949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139030, 33.073330, 41.422863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070557, 32.693752, 41.528839>,  <37.029472, 32.466003, 41.592422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070557, 32.693752, 41.528839>,  <37.139030, 33.073330, 41.422863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070557, 32.693752, 41.528839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183540, 0.294916, 0.937730,
		-0.967992, 0.111901, -0.224656,
		-0.171188, -0.948948, 0.264938,
		37.019199, 32.409069, 41.608322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589085, 33.048298, 41.861816>,  <37.139030, 33.073330, 41.422863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589085, 33.048298, 41.861816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729248, 32.680866, 41.934956>,  <36.813347, 32.460407, 41.978840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729248, 32.680866, 41.934956>,  <36.589085, 33.048298, 41.861816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729248, 32.680866, 41.934956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315867, 0.067883, 0.946372,
		-0.881727, -0.389370, -0.266362,
		0.350407, -0.918576, 0.182843,
		36.834370, 32.405293, 41.989807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162132, 32.646301, 42.314484>,  <36.589085, 33.048298, 41.861816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162132, 32.646301, 42.314484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502605, 32.446640, 42.379398>,  <36.706890, 32.326843, 42.418346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502605, 32.446640, 42.379398>,  <36.162132, 32.646301, 42.314484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502605, 32.446640, 42.379398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151303, 0.062733, 0.986495,
		-0.502592, -0.864240, -0.022126,
		0.851181, -0.499152, 0.162291,
		36.757961, 32.296894, 42.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945045, 32.261269, 42.866344>,  <36.162132, 32.646301, 42.314484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945045, 32.261269, 42.866344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341373, 32.213348, 42.891399>,  <36.579170, 32.184597, 42.906433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341373, 32.213348, 42.891399>,  <35.945045, 32.261269, 42.866344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341373, 32.213348, 42.891399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046712, 0.131377, 0.990231,
		-0.126856, -0.984067, 0.124575,
		0.990821, -0.119798, 0.062633,
		36.638618, 32.177410, 42.910191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205807, 31.657095, 43.380013>,  <35.945045, 32.261269, 42.866344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205807, 31.657095, 43.380013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516899, 31.903912, 43.332020>,  <36.703556, 32.052002, 43.303223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516899, 31.903912, 43.332020>,  <36.205807, 31.657095, 43.380013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516899, 31.903912, 43.332020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175708, -0.030127, 0.983981,
		0.603541, -0.786355, -0.131850,
		0.777731, 0.617040, -0.119985,
		36.750217, 32.089024, 43.296024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781631, 31.388409, 43.763058>,  <36.205807, 31.657095, 43.380013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781631, 31.388409, 43.763058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851776, 31.781099, 43.733498>,  <36.893864, 32.016712, 43.715763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851776, 31.781099, 43.733498>,  <36.781631, 31.388409, 43.763058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851776, 31.781099, 43.733498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195330, 0.038873, 0.979967,
		0.964932, -0.186284, -0.184943,
		0.175362, 0.981727, -0.073897,
		36.904385, 32.075619, 43.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434711, 31.496063, 44.064632>,  <36.781631, 31.388409, 43.763058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434711, 31.496063, 44.064632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271370, 31.860947, 44.078033>,  <37.173367, 32.079876, 44.086075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271370, 31.860947, 44.078033>,  <37.434711, 31.496063, 44.064632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271370, 31.860947, 44.078033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364295, 0.129210, 0.922277,
		0.836981, 0.388818, -0.385077,
		-0.408353, 0.912209, 0.033498,
		37.148865, 32.134609, 44.088081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912022, 31.944172, 44.391331>,  <37.434711, 31.496063, 44.064632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912022, 31.944172, 44.391331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574631, 32.155388, 44.430748>,  <37.372196, 32.282120, 44.454399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574631, 32.155388, 44.430748>,  <37.912022, 31.944172, 44.391331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574631, 32.155388, 44.430748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270472, 0.258999, 0.927235,
		0.464095, 0.808759, -0.361282,
		-0.843481, 0.528042, 0.098546,
		37.321587, 32.313801, 44.460312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084301, 32.560303, 44.842220>,  <37.912022, 31.944172, 44.391331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084301, 32.560303, 44.842220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688992, 32.505524, 44.869209>,  <37.451805, 32.472656, 44.885403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688992, 32.505524, 44.869209>,  <38.084301, 32.560303, 44.842220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688992, 32.505524, 44.869209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029360, 0.263242, 0.964283,
		-0.149818, 0.954960, -0.256135,
		-0.988278, -0.136946, 0.067476,
		37.392509, 32.464439, 44.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.632446, 32.376835, 45.221340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021069, 32.284542, 45.242626>,  <33.254242, 32.229164, 45.255398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021069, 32.284542, 45.242626>,  <32.632446, 32.376835, 45.221340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021069, 32.284542, 45.242626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163971, 0.493426, -0.854192,
		0.170834, 0.838625, 0.517227,
		0.971560, -0.230735, 0.053217,
		33.312538, 32.215321, 45.258591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966637, 32.966892, 45.119350>,  <32.632446, 32.376835, 45.221340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966637, 32.966892, 45.119350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253334, 32.702023, 45.031891>,  <33.425354, 32.543102, 44.979416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253334, 32.702023, 45.031891>,  <32.966637, 32.966892, 45.119350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253334, 32.702023, 45.031891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205224, 0.499964, -0.841380,
		0.666454, 0.558182, 0.494239,
		0.716745, -0.662170, -0.218650,
		33.468357, 32.503372, 44.966297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491756, 33.325405, 44.823727>,  <32.966637, 32.966892, 45.119350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491756, 33.325405, 44.823727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556160, 32.947418, 44.709812>,  <33.594803, 32.720627, 44.641464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556160, 32.947418, 44.709812>,  <33.491756, 33.325405, 44.823727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556160, 32.947418, 44.709812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288211, 0.320995, -0.902162,
		0.943933, 0.063178, 0.324035,
		0.161011, -0.944971, -0.284789,
		33.604462, 32.663925, 44.624374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101765, 33.256489, 44.508762>,  <33.491756, 33.325405, 44.823727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101765, 33.256489, 44.508762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925087, 32.929432, 44.361050>,  <33.819080, 32.733196, 44.272423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925087, 32.929432, 44.361050>,  <34.101765, 33.256489, 44.508762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925087, 32.929432, 44.361050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350768, 0.221462, -0.909899,
		0.825755, -0.531426, 0.188985,
		-0.441691, -0.817643, -0.369281,
		33.792580, 32.684139, 44.250267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567822, 33.026699, 44.045120>,  <34.101765, 33.256489, 44.508762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567822, 33.026699, 44.045120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213490, 32.864349, 43.955170>,  <34.000889, 32.766937, 43.901199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213490, 32.864349, 43.955170>,  <34.567822, 33.026699, 44.045120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213490, 32.864349, 43.955170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123687, 0.260552, -0.957504,
		0.447222, -0.876000, -0.180603,
		-0.885830, -0.405878, -0.224874,
		33.947739, 32.742584, 43.887707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713985, 32.736164, 43.450832>,  <34.567822, 33.026699, 44.045120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713985, 32.736164, 43.450832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314163, 32.747997, 43.449242>,  <34.074268, 32.755096, 43.448288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314163, 32.747997, 43.449242>,  <34.713985, 32.736164, 43.450832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314163, 32.747997, 43.449242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010297, 0.216584, -0.976210,
		-0.028021, -0.975816, -0.216793,
		-0.999555, 0.029587, -0.003979,
		34.014297, 32.756874, 43.448048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603291, 32.383373, 42.815720>,  <34.713985, 32.736164, 43.450832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603291, 32.383373, 42.815720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249897, 32.550217, 42.901020>,  <34.037861, 32.650322, 42.952202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249897, 32.550217, 42.901020>,  <34.603291, 32.383373, 42.815720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249897, 32.550217, 42.901020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194118, 0.088339, -0.976992,
		-0.426351, -0.904553, 0.002923,
		-0.883483, 0.417109, 0.213254,
		33.984852, 32.675350, 42.964996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190914, 32.128113, 42.379807>,  <34.603291, 32.383373, 42.815720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190914, 32.128113, 42.379807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014290, 32.465977, 42.500843>,  <33.908314, 32.668697, 42.573467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014290, 32.465977, 42.500843>,  <34.190914, 32.128113, 42.379807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014290, 32.465977, 42.500843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188231, 0.242540, -0.951706,
		-0.877263, -0.477197, 0.051895,
		-0.441564, 0.844664, 0.302595,
		33.881821, 32.719376, 42.591621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546597, 32.153824, 42.036537>,  <34.190914, 32.128113, 42.379807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546597, 32.153824, 42.036537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628376, 32.535507, 42.123894>,  <33.677444, 32.764515, 42.176308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628376, 32.535507, 42.123894>,  <33.546597, 32.153824, 42.036537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628376, 32.535507, 42.123894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267683, 0.269097, -0.925166,
		-0.941565, 0.130693, 0.310441,
		0.204452, 0.954204, 0.218388,
		33.689713, 32.821770, 42.189411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053608, 32.452305, 41.651272>,  <33.546597, 32.153824, 42.036537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053608, 32.452305, 41.651272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303459, 32.751991, 41.739372>,  <33.453369, 32.931805, 41.792233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303459, 32.751991, 41.739372>,  <33.053608, 32.452305, 41.651272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303459, 32.751991, 41.739372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341816, 0.515895, -0.785502,
		-0.702137, 0.415365, 0.578339,
		0.624633, 0.749216, 0.220250,
		33.490849, 32.976757, 41.805447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688366, 33.118378, 41.540943>,  <33.053608, 32.452305, 41.651272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688366, 33.118378, 41.540943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077744, 33.209480, 41.531681>,  <33.311371, 33.264141, 41.526123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077744, 33.209480, 41.531681>,  <32.688366, 33.118378, 41.540943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077744, 33.209480, 41.531681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154611, 0.579447, -0.800211,
		-0.168834, 0.782540, 0.599272,
		0.973443, 0.227757, -0.023159,
		33.369778, 33.277809, 41.524734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806995, 33.808952, 41.502235>,  <32.688366, 33.118378, 41.540943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806995, 33.808952, 41.502235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135185, 33.646770, 41.341022>,  <33.332100, 33.549461, 41.244297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135185, 33.646770, 41.341022>,  <32.806995, 33.808952, 41.502235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135185, 33.646770, 41.341022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087442, 0.607681, -0.789353,
		0.564963, 0.682882, 0.463130,
		0.820470, -0.405458, -0.403029,
		33.381325, 33.525131, 41.220112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998734, 34.280365, 41.086193>,  <32.806995, 33.808952, 41.502235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998734, 34.280365, 41.086193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239677, 33.981705, 40.973278>,  <33.384243, 33.802509, 40.905529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239677, 33.981705, 40.973278>,  <32.998734, 34.280365, 41.086193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239677, 33.981705, 40.973278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166652, 0.463480, -0.870295,
		0.780638, 0.477183, 0.403610,
		0.602355, -0.746647, -0.282287,
		33.420383, 33.757710, 40.888592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563175, 34.560345, 40.785049>,  <32.998734, 34.280365, 41.086193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563175, 34.560345, 40.785049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550610, 34.188515, 40.638138>,  <33.543072, 33.965416, 40.549992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550610, 34.188515, 40.638138>,  <33.563175, 34.560345, 40.785049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550610, 34.188515, 40.638138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146571, 0.359208, -0.921676,
		0.988701, -0.082784, 0.124966,
		-0.031411, -0.929579, -0.367283,
		33.541187, 33.909641, 40.527954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215355, 34.668564, 41.194820>,  <33.563175, 34.560345, 40.785049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215355, 34.668564, 41.194820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300598, 35.058098, 41.163235>,  <34.351742, 35.291817, 41.144283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300598, 35.058098, 41.163235>,  <34.215355, 34.668564, 41.194820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300598, 35.058098, 41.163235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077715, 0.063674, 0.994940,
		0.973934, -0.218164, -0.062112,
		0.213105, 0.973833, -0.078969,
		34.364529, 35.350246, 41.139545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736237, 34.704288, 41.657410>,  <34.215355, 34.668564, 41.194820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736237, 34.704288, 41.657410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604061, 35.078953, 41.610970>,  <34.524757, 35.303749, 41.583103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604061, 35.078953, 41.610970>,  <34.736237, 34.704288, 41.657410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604061, 35.078953, 41.610970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077677, 0.149585, 0.985693,
		0.940626, 0.316692, -0.122185,
		-0.330438, 0.936659, -0.116104,
		34.504929, 35.359951, 41.576138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206314, 35.133549, 41.946999>,  <34.736237, 34.704288, 41.657410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206314, 35.133549, 41.946999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836315, 35.284657, 41.963341>,  <34.614315, 35.375320, 41.973148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836315, 35.284657, 41.963341>,  <35.206314, 35.133549, 41.946999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836315, 35.284657, 41.963341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103652, 0.147413, 0.983629,
		0.365559, 0.914091, -0.175513,
		-0.924999, 0.377767, 0.040859,
		34.558815, 35.397987, 41.975597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329445, 35.802704, 42.177959>,  <35.206314, 35.133549, 41.946999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329445, 35.802704, 42.177959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944328, 35.714645, 42.240669>,  <34.713261, 35.661812, 42.278294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944328, 35.714645, 42.240669>,  <35.329445, 35.802704, 42.177959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944328, 35.714645, 42.240669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091446, 0.280507, 0.955486,
		-0.254321, 0.934265, -0.249937,
		-0.962787, -0.220145, 0.156773,
		34.655491, 35.648602, 42.287701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094112, 36.359848, 42.639568>,  <35.329445, 35.802704, 42.177959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094112, 36.359848, 42.639568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815205, 36.076138, 42.681046>,  <34.647861, 35.905910, 42.705933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815205, 36.076138, 42.681046>,  <35.094112, 36.359848, 42.639568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815205, 36.076138, 42.681046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041993, 0.103988, 0.993692,
		-0.715581, 0.697222, -0.042722,
		-0.697266, -0.709273, 0.103691,
		34.606026, 35.863354, 42.712154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546738, 36.546597, 43.111523>,  <35.094112, 36.359848, 42.639568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546738, 36.546597, 43.111523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490700, 36.151169, 43.133781>,  <34.457077, 35.913910, 43.147137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490700, 36.151169, 43.133781>,  <34.546738, 36.546597, 43.111523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490700, 36.151169, 43.133781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087106, 0.043676, 0.995241,
		-0.986300, 0.144273, 0.079991,
		-0.140093, -0.988574, 0.055645,
		34.448673, 35.854595, 43.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040054, 36.423054, 43.685390>,  <34.546738, 36.546597, 43.111523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040054, 36.423054, 43.685390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243671, 36.084248, 43.624146>,  <34.365841, 35.880962, 43.587399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243671, 36.084248, 43.624146>,  <34.040054, 36.423054, 43.685390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243671, 36.084248, 43.624146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019974, -0.166216, 0.985887,
		-0.860512, -0.504913, -0.067692,
		0.509039, -0.847015, -0.153116,
		34.396381, 35.830143, 43.578209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560692, 35.901722, 44.059120>,  <34.040054, 36.423054, 43.685390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560692, 35.901722, 44.059120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924126, 35.738792, 44.022114>,  <34.142185, 35.641033, 43.999912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924126, 35.738792, 44.022114>,  <33.560692, 35.901722, 44.059120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924126, 35.738792, 44.022114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040716, -0.306792, 0.950905,
		-0.415713, -0.860210, -0.295331,
		0.908584, -0.407329, -0.092513,
		34.196701, 35.616592, 43.994358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542519, 35.184204, 44.199081>,  <33.560692, 35.901722, 44.059120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542519, 35.184204, 44.199081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929577, 35.260212, 44.265472>,  <34.161812, 35.305817, 44.305309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929577, 35.260212, 44.265472>,  <33.542519, 35.184204, 44.199081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929577, 35.260212, 44.265472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047398, -0.509242, 0.859317,
		0.247809, -0.839384, -0.483761,
		0.967649, 0.190018, 0.165980,
		34.219872, 35.317219, 44.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748875, 34.548180, 44.482018>,  <33.542519, 35.184204, 44.199081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748875, 34.548180, 44.482018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.036449, 34.804512, 44.589703>,  <34.208996, 34.958309, 44.654312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.036449, 34.804512, 44.589703>,  <33.748875, 34.548180, 44.482018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036449, 34.804512, 44.589703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012446, -0.399114, 0.916817,
		0.694966, -0.655782, -0.294913,
		0.718935, 0.640826, 0.269209,
		34.252129, 34.996761, 44.670464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347797, 34.137314, 44.827755>,  <33.748875, 34.548180, 44.482018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347797, 34.137314, 44.827755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370098, 34.523087, 44.931110>,  <34.383480, 34.754551, 44.993122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370098, 34.523087, 44.931110>,  <34.347797, 34.137314, 44.827755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370098, 34.523087, 44.931110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266669, -0.263770, 0.926991,
		0.962174, 0.017219, -0.271891,
		0.055755, 0.964432, 0.258385,
		34.386826, 34.812416, 45.008625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053493, 34.410446, 44.953674>,  <34.347797, 34.137314, 44.827755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053493, 34.410446, 44.953674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811119, 34.641621, 45.172333>,  <34.665695, 34.780327, 45.303528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811119, 34.641621, 45.172333>,  <35.053493, 34.410446, 44.953674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811119, 34.641621, 45.172333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410790, -0.361142, 0.837155,
		0.681243, 0.731822, -0.018582,
		-0.605938, 0.577939, 0.546650,
		34.629337, 34.815002, 45.336327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502899, 34.714951, 45.488224>,  <35.053493, 34.410446, 44.953674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502899, 34.714951, 45.488224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130646, 34.782761, 45.617954>,  <34.907295, 34.823444, 45.695793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130646, 34.782761, 45.617954>,  <35.502899, 34.714951, 45.488224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130646, 34.782761, 45.617954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289636, -0.200502, 0.935901,
		0.223684, 0.964915, 0.137494,
		-0.930632, 0.169523, 0.324324,
		34.851456, 34.833618, 45.715252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698078, 35.041378, 46.099129>,  <35.502899, 34.714951, 45.488224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698078, 35.041378, 46.099129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323410, 34.901638, 46.108906>,  <35.098610, 34.817795, 46.114773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323410, 34.901638, 46.108906>,  <35.698078, 35.041378, 46.099129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323410, 34.901638, 46.108906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107251, -0.219708, 0.969652,
		-0.333380, 0.910868, 0.243263,
		-0.936672, -0.349353, 0.024445,
		35.042408, 34.796833, 46.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018101, 35.716038, 46.408764>,  <35.698078, 35.041378, 46.099129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018101, 35.716038, 46.408764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407146, 35.736923, 46.499359>,  <36.640575, 35.749454, 46.553715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407146, 35.736923, 46.499359>,  <36.018101, 35.716038, 46.408764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407146, 35.736923, 46.499359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214610, 0.172428, -0.961359,
		-0.089252, 0.983637, 0.156500,
		0.972613, 0.052217, 0.226488,
		36.698929, 35.752586, 46.567307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191845, 36.164799, 45.933025>,  <36.018101, 35.716038, 46.408764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191845, 36.164799, 45.933025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534935, 35.998005, 46.053310>,  <36.740788, 35.897926, 46.125481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534935, 35.998005, 46.053310>,  <36.191845, 36.164799, 45.933025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534935, 35.998005, 46.053310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340186, 0.021791, -0.940106,
		0.385460, 0.908650, 0.160545,
		0.857726, -0.416989, 0.300711,
		36.792252, 35.872910, 46.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645321, 36.475018, 45.559559>,  <36.191845, 36.164799, 45.933025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645321, 36.475018, 45.559559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.893848, 36.187790, 45.685001>,  <37.042965, 36.015453, 45.760269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.893848, 36.187790, 45.685001>,  <36.645321, 36.475018, 45.559559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893848, 36.187790, 45.685001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342521, -0.111075, -0.932921,
		0.704732, 0.687056, 0.176939,
		0.621315, -0.718065, 0.313609,
		37.080242, 35.972370, 45.779083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296864, 36.748718, 45.457336>,  <36.645321, 36.475018, 45.559559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296864, 36.748718, 45.457336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.316467, 36.349586, 45.474972>,  <37.328228, 36.110107, 45.485554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.316467, 36.349586, 45.474972>,  <37.296864, 36.748718, 45.457336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316467, 36.349586, 45.474972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437828, -0.018214, -0.898874,
		0.897722, 0.063355, 0.435983,
		0.049007, -0.997825, 0.044089,
		37.331169, 36.050240, 45.488197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959526, 36.468525, 45.309589>,  <37.296864, 36.748718, 45.457336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959526, 36.468525, 45.309589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746937, 36.134712, 45.251503>,  <37.619385, 35.934425, 45.216652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746937, 36.134712, 45.251503>,  <37.959526, 36.468525, 45.309589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746937, 36.134712, 45.251503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471720, -0.149196, -0.869035,
		0.703573, -0.530371, 0.472960,
		-0.531475, -0.834534, -0.145216,
		37.587494, 35.884354, 45.207939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385525, 36.027264, 45.011047>,  <37.959526, 36.468525, 45.309589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385525, 36.027264, 45.011047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022682, 35.898235, 44.902893>,  <37.804977, 35.820820, 44.838001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022682, 35.898235, 44.902893>,  <38.385525, 36.027264, 45.011047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022682, 35.898235, 44.902893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350208, -0.222092, -0.909961,
		0.233474, -0.920123, 0.314427,
		-0.907108, -0.322567, -0.270382,
		37.750549, 35.801464, 44.821777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496342, 35.376842, 44.692516>,  <38.385525, 36.027264, 45.011047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496342, 35.376842, 44.692516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172791, 35.562351, 44.547947>,  <37.978661, 35.673656, 44.461205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172791, 35.562351, 44.547947>,  <38.496342, 35.376842, 44.692516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172791, 35.562351, 44.547947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362253, -0.091089, -0.927618,
		-0.463129, -0.881257, -0.094324,
		-0.808879, 0.463776, -0.361424,
		37.930126, 35.701485, 44.439518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312817, 35.064583, 44.005070>,  <38.496342, 35.376842, 44.692516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312817, 35.064583, 44.005070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063988, 35.376450, 43.976391>,  <37.914688, 35.563572, 43.959183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063988, 35.376450, 43.976391>,  <38.312817, 35.064583, 44.005070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063988, 35.376450, 43.976391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112412, -0.001683, -0.993660,
		-0.774847, -0.626190, -0.086597,
		-0.622074, 0.779669, -0.071695,
		37.877365, 35.610352, 43.954884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886677, 34.917511, 43.535366>,  <38.312817, 35.064583, 44.005070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886677, 34.917511, 43.535366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817822, 35.311520, 43.531353>,  <37.776508, 35.547924, 43.528946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817822, 35.311520, 43.531353>,  <37.886677, 34.917511, 43.535366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817822, 35.311520, 43.531353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098090, -0.027274, -0.994804,
		-0.980177, -0.170257, 0.101316,
		-0.172135, 0.985022, -0.010033,
		37.766182, 35.607025, 43.528343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375771, 35.068619, 43.000340>,  <37.886677, 34.917511, 43.535366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375771, 35.068619, 43.000340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.549973, 35.425316, 43.049530>,  <37.654495, 35.639336, 43.079044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.549973, 35.425316, 43.049530>,  <37.375771, 35.068619, 43.000340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549973, 35.425316, 43.049530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049312, 0.160045, -0.985877,
		-0.898835, 0.423289, 0.113674,
		0.435504, 0.891747, 0.122981,
		37.680622, 35.692841, 43.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962063, 35.563869, 42.572033>,  <37.375771, 35.068619, 43.000340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962063, 35.563869, 42.572033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326767, 35.703522, 42.658569>,  <37.545589, 35.787312, 42.710491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326767, 35.703522, 42.658569>,  <36.962063, 35.563869, 42.572033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326767, 35.703522, 42.658569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216389, 0.039391, -0.975512,
		-0.349102, 0.936246, -0.039633,
		0.911759, 0.349129, 0.216345,
		37.600296, 35.808262, 42.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060337, 35.903267, 42.035385>,  <36.962063, 35.563869, 42.572033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060337, 35.903267, 42.035385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431896, 35.905586, 42.183506>,  <37.654831, 35.906979, 42.272377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431896, 35.905586, 42.183506>,  <37.060337, 35.903267, 42.035385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431896, 35.905586, 42.183506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366989, -0.148735, -0.918258,
		0.049750, 0.988860, -0.140288,
		0.928894, 0.005801, 0.370300,
		37.710564, 35.907326, 42.294598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368492, 36.449635, 41.751389>,  <37.060337, 35.903267, 42.035385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368492, 36.449635, 41.751389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674255, 36.220284, 41.869316>,  <37.857716, 36.082672, 41.940071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674255, 36.220284, 41.869316>,  <37.368492, 36.449635, 41.751389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674255, 36.220284, 41.869316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344714, -0.022949, -0.938427,
		0.544837, 0.818971, 0.180108,
		0.764411, -0.573376, 0.294814,
		37.903580, 36.048271, 41.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951458, 36.861668, 41.833290>,  <37.368492, 36.449635, 41.751389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951458, 36.861668, 41.833290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072861, 36.486897, 41.763939>,  <38.145702, 36.262035, 41.722328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072861, 36.486897, 41.763939>,  <37.951458, 36.861668, 41.833290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072861, 36.486897, 41.763939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099084, 0.212009, -0.972232,
		0.947664, 0.277897, 0.157179,
		0.303504, -0.936923, -0.173379,
		38.163914, 36.205818, 41.711926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.200535, 37.434578, 26.094376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227816, 37.037754, 26.052114>,  <26.244184, 36.799660, 26.026758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227816, 37.037754, 26.052114>,  <26.200535, 37.434578, 26.094376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227816, 37.037754, 26.052114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142665, -0.095113, 0.985191,
		-0.987419, -0.082264, 0.135045,
		0.068202, -0.992061, -0.105652,
		26.248276, 36.740135, 26.020418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674820, 37.272816, 26.521284>,  <26.200535, 37.434578, 26.094376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674820, 37.272816, 26.521284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936062, 36.971863, 26.486933>,  <26.092808, 36.791290, 26.466322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936062, 36.971863, 26.486933>,  <25.674820, 37.272816, 26.521284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936062, 36.971863, 26.486933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088889, -0.188789, 0.977986,
		-0.752033, -0.631093, -0.190177,
		0.653104, -0.752383, -0.085879,
		26.131992, 36.746147, 26.461168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455280, 36.811863, 27.038012>,  <25.674820, 37.272816, 26.521284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455280, 36.811863, 27.038012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811190, 36.646965, 26.959675>,  <26.024736, 36.548027, 26.912674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811190, 36.646965, 26.959675>,  <25.455280, 36.811863, 27.038012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811190, 36.646965, 26.959675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017521, -0.397927, 0.917250,
		-0.456064, -0.819577, -0.346842,
		0.889774, -0.412248, -0.195840,
		26.078123, 36.523293, 26.900923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390997, 36.124962, 27.043270>,  <25.455280, 36.811863, 27.038012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390997, 36.124962, 27.043270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.772127, 36.204029, 27.135397>,  <26.000805, 36.251469, 27.190674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.772127, 36.204029, 27.135397>,  <25.390997, 36.124962, 27.043270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772127, 36.204029, 27.135397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195276, -0.181666, 0.963776,
		0.232351, -0.963288, -0.134496,
		0.952828, 0.197671, 0.230317,
		26.057976, 36.263329, 27.204493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583689, 35.574917, 27.542416>,  <25.390997, 36.124962, 27.043270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583689, 35.574917, 27.542416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850370, 35.869572, 27.587790>,  <26.010380, 36.046364, 27.615015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850370, 35.869572, 27.587790>,  <25.583689, 35.574917, 27.542416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850370, 35.869572, 27.587790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104600, -0.058214, 0.992809,
		0.737946, -0.673776, 0.038241,
		0.666705, 0.736639, 0.113436,
		26.050383, 36.090565, 27.621820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034178, 35.348560, 28.077946>,  <25.583689, 35.574917, 27.542416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034178, 35.348560, 28.077946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104364, 35.741982, 28.060843>,  <26.146477, 35.978035, 28.050581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104364, 35.741982, 28.060843>,  <26.034178, 35.348560, 28.077946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104364, 35.741982, 28.060843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056098, 0.053348, 0.996999,
		0.982886, -0.172543, 0.064537,
		0.175468, 0.983556, -0.042756,
		26.157005, 36.037048, 28.048016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483660, 35.453228, 28.614420>,  <26.034178, 35.348560, 28.077946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483660, 35.453228, 28.614420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.310705, 35.806313, 28.540808>,  <26.206932, 36.018162, 28.496641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.310705, 35.806313, 28.540808>,  <26.483660, 35.453228, 28.614420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310705, 35.806313, 28.540808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197565, 0.106391, 0.974499,
		0.879778, 0.457719, 0.128390,
		-0.432387, 0.882708, -0.184030,
		26.180988, 36.071125, 28.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735897, 35.902969, 29.207722>,  <26.483660, 35.453228, 28.614420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735897, 35.902969, 29.207722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427383, 36.096119, 29.041853>,  <26.242275, 36.212009, 28.942331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427383, 36.096119, 29.041853>,  <26.735897, 35.902969, 29.207722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427383, 36.096119, 29.041853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347857, 0.225804, 0.909949,
		0.533027, 0.846076, -0.006187,
		-0.771283, 0.482875, -0.414673,
		26.195999, 36.240982, 28.917452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849199, 36.496735, 29.491253>,  <26.735897, 35.902969, 29.207722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849199, 36.496735, 29.491253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470022, 36.484173, 29.364500>,  <26.242516, 36.476635, 29.288448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470022, 36.484173, 29.364500>,  <26.849199, 36.496735, 29.491253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470022, 36.484173, 29.364500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300240, 0.419707, 0.856564,
		0.106100, 0.907116, -0.407287,
		-0.947944, -0.031402, -0.316884,
		26.185638, 36.474751, 29.269436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520632, 37.106182, 29.724018>,  <26.849199, 36.496735, 29.491253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520632, 37.106182, 29.724018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.218880, 36.855385, 29.646257>,  <26.037828, 36.704906, 29.599602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.218880, 36.855385, 29.646257>,  <26.520632, 37.106182, 29.724018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218880, 36.855385, 29.646257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409513, 0.218050, 0.885863,
		-0.513042, 0.747886, -0.421254,
		-0.754379, -0.626994, -0.194400,
		25.992565, 36.667286, 29.587938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893530, 37.412464, 29.869093>,  <26.520632, 37.106182, 29.724018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893530, 37.412464, 29.869093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.790762, 37.026680, 29.893780>,  <25.729101, 36.795208, 29.908592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.790762, 37.026680, 29.893780>,  <25.893530, 37.412464, 29.869093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790762, 37.026680, 29.893780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341578, 0.150359, 0.927748,
		-0.904055, 0.217278, -0.368069,
		-0.256922, -0.964460, 0.061715,
		25.713686, 36.737343, 29.912294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214176, 37.394726, 30.248878>,  <25.893530, 37.412464, 29.869093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214176, 37.394726, 30.248878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.341713, 37.017292, 30.284651>,  <25.418234, 36.790833, 30.306114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.341713, 37.017292, 30.284651>,  <25.214176, 37.394726, 30.248878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341713, 37.017292, 30.284651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410402, -0.052393, 0.910398,
		-0.854348, -0.326974, -0.403952,
		0.318841, -0.943580, 0.089429,
		25.437365, 36.734219, 30.311480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684048, 37.024727, 30.609545>,  <25.214176, 37.394726, 30.248878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684048, 37.024727, 30.609545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.018492, 36.807983, 30.643763>,  <25.219158, 36.677937, 30.664293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.018492, 36.807983, 30.643763>,  <24.684048, 37.024727, 30.609545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018492, 36.807983, 30.643763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246506, -0.231809, 0.941010,
		-0.490060, -0.807873, -0.327388,
		0.836108, -0.541855, 0.085545,
		25.269323, 36.645428, 30.669426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495867, 36.299847, 30.895479>,  <24.684048, 37.024727, 30.609545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495867, 36.299847, 30.895479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.887058, 36.351883, 30.960762>,  <25.121773, 36.383106, 30.999931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.887058, 36.351883, 30.960762>,  <24.495867, 36.299847, 30.895479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887058, 36.351883, 30.960762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100617, -0.391224, 0.914779,
		0.182858, -0.911054, -0.369518,
		0.977977, 0.130095, 0.163206,
		25.180452, 36.390911, 31.009724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742769, 35.662018, 31.139477>,  <24.495867, 36.299847, 30.895479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742769, 35.662018, 31.139477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.011646, 35.933933, 31.256815>,  <25.172972, 36.097080, 31.327217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.011646, 35.933933, 31.256815>,  <24.742769, 35.662018, 31.139477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011646, 35.933933, 31.256815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014028, -0.384446, 0.923041,
		0.740245, -0.624574, -0.248886,
		0.672191, 0.679785, 0.293346,
		25.213303, 36.137867, 31.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337828, 35.280758, 31.425009>,  <24.742769, 35.662018, 31.139477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337828, 35.280758, 31.425009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339966, 35.649925, 31.578991>,  <25.341249, 35.871426, 31.671381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339966, 35.649925, 31.578991>,  <25.337828, 35.280758, 31.425009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339966, 35.649925, 31.578991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073650, -0.383552, 0.920578,
		0.997270, -0.033275, 0.065922,
		0.005347, 0.922920, 0.384956,
		25.341570, 35.926800, 31.694477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835474, 35.227371, 31.905743>,  <25.337828, 35.280758, 31.425009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835474, 35.227371, 31.905743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621023, 35.554523, 31.989298>,  <25.492353, 35.750816, 32.039429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621023, 35.554523, 31.989298>,  <25.835474, 35.227371, 31.905743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621023, 35.554523, 31.989298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053877, -0.280104, 0.958457,
		0.842417, 0.502599, 0.194236,
		-0.536125, 0.817885, 0.208886,
		25.460186, 35.799889, 32.051964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146475, 35.517998, 32.492661>,  <25.835474, 35.227371, 31.905743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146475, 35.517998, 32.492661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.766544, 35.641888, 32.475224>,  <25.538586, 35.716221, 32.464764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.766544, 35.641888, 32.475224>,  <26.146475, 35.517998, 32.492661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766544, 35.641888, 32.475224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117575, -0.224418, 0.967374,
		0.289842, 0.923961, 0.249574,
		-0.949825, 0.309729, -0.043589,
		25.481596, 35.734806, 32.462147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977259, 35.803368, 33.111244>,  <26.146475, 35.517998, 32.492661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977259, 35.803368, 33.111244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632286, 35.694160, 32.940750>,  <25.425303, 35.628635, 32.838455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632286, 35.694160, 32.940750>,  <25.977259, 35.803368, 33.111244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632286, 35.694160, 32.940750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340616, -0.309873, 0.887671,
		-0.374428, 0.910736, 0.174250,
		-0.862429, -0.273017, -0.426237,
		25.373558, 35.612255, 32.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777925, 35.844810, 33.228008>,  <25.977259, 35.803368, 33.111244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777925, 35.844810, 33.228008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138994, 35.750656, 33.372108>,  <27.355635, 35.694164, 33.458569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138994, 35.750656, 33.372108>,  <26.777925, 35.844810, 33.228008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138994, 35.750656, 33.372108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294875, -0.271383, -0.916188,
		0.313425, 0.933244, -0.175559,
		0.902670, -0.235388, 0.360248,
		27.409796, 35.680038, 33.480183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269276, 36.214870, 32.790810>,  <26.777925, 35.844810, 33.228008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269276, 36.214870, 32.790810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451225, 35.906811, 32.969677>,  <27.560396, 35.721977, 33.077000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451225, 35.906811, 32.969677>,  <27.269276, 36.214870, 32.790810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451225, 35.906811, 32.969677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275992, -0.355495, -0.893001,
		0.846710, 0.529620, 0.050849,
		0.454875, -0.770147, 0.447172,
		27.587688, 35.675766, 33.103828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882298, 36.115803, 32.403301>,  <27.269276, 36.214870, 32.790810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882298, 36.115803, 32.403301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881701, 35.776127, 32.614536>,  <27.881342, 35.572323, 32.741276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881701, 35.776127, 32.614536>,  <27.882298, 36.115803, 32.403301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881701, 35.776127, 32.614536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302927, -0.503657, -0.809052,
		0.953013, 0.158763, 0.257995,
		-0.001494, -0.849190, 0.528085,
		27.881252, 35.521370, 32.772961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548721, 35.798149, 32.253544>,  <27.882298, 36.115803, 32.403301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548721, 35.798149, 32.253544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273523, 35.530258, 32.365353>,  <28.108404, 35.369526, 32.432438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273523, 35.530258, 32.365353>,  <28.548721, 35.798149, 32.253544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273523, 35.530258, 32.365353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074972, -0.448696, -0.890534,
		0.721833, -0.591726, 0.358911,
		-0.687994, -0.669725, 0.279521,
		28.067125, 35.329342, 32.449207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850903, 35.280106, 32.132027>,  <28.548721, 35.798149, 32.253544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850903, 35.280106, 32.132027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463543, 35.181011, 32.120495>,  <28.231127, 35.121555, 32.113575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463543, 35.181011, 32.120495>,  <28.850903, 35.280106, 32.132027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463543, 35.181011, 32.120495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163300, -0.542423, -0.824082,
		0.188520, -0.802746, 0.565737,
		-0.968397, -0.247741, -0.028830,
		28.173023, 35.106689, 32.111847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741104, 34.540154, 31.943129>,  <28.850903, 35.280106, 32.132027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741104, 34.540154, 31.943129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364460, 34.665417, 31.893650>,  <28.138474, 34.740574, 31.863964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364460, 34.665417, 31.893650>,  <28.741104, 34.540154, 31.943129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364460, 34.665417, 31.893650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126634, -0.669774, -0.731688,
		-0.311983, -0.673301, 0.670323,
		-0.941611, 0.313160, -0.123695,
		28.081976, 34.759365, 31.856541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358906, 33.915924, 31.914392>,  <28.741104, 34.540154, 31.943129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358906, 33.915924, 31.914392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137909, 34.186447, 31.719517>,  <28.005310, 34.348763, 31.602591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137909, 34.186447, 31.719517>,  <28.358906, 33.915924, 31.914392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137909, 34.186447, 31.719517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081066, -0.625326, -0.776142,
		-0.829566, -0.389319, 0.400314,
		-0.552494, 0.676312, -0.487188,
		27.972160, 34.389339, 31.573360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662378, 33.597790, 31.805120>,  <28.358906, 33.915924, 31.914392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662378, 33.597790, 31.805120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745535, 33.888058, 31.542765>,  <27.795429, 34.062218, 31.385351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745535, 33.888058, 31.542765>,  <27.662378, 33.597790, 31.805120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745535, 33.888058, 31.542765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157918, -0.636841, -0.754649,
		-0.965320, 0.260460, -0.017797,
		0.207890, 0.725668, -0.655887,
		27.807901, 34.105759, 31.345999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254240, 33.245926, 31.165720>,  <27.662378, 33.597790, 31.805120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254240, 33.245926, 31.165720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481890, 33.547504, 31.034473>,  <27.618481, 33.728451, 30.955727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481890, 33.547504, 31.034473>,  <27.254240, 33.245926, 31.165720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481890, 33.547504, 31.034473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120526, -0.471228, -0.873738,
		-0.813369, 0.457720, -0.359058,
		0.569126, 0.753947, -0.328115,
		27.652628, 33.773689, 30.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834290, 33.572357, 30.690079>,  <27.254240, 33.245926, 31.165720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834290, 33.572357, 30.690079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222788, 33.607918, 30.601732>,  <27.455887, 33.629253, 30.548725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222788, 33.607918, 30.601732>,  <26.834290, 33.572357, 30.690079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222788, 33.607918, 30.601732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172098, -0.378885, -0.909301,
		-0.164519, 0.921164, -0.352690,
		0.971244, 0.088900, -0.220864,
		27.514162, 33.634586, 30.535473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830303, 33.641941, 30.004171>,  <26.834290, 33.572357, 30.690079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830303, 33.641941, 30.004171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218910, 33.568878, 30.064556>,  <27.452074, 33.525040, 30.100788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218910, 33.568878, 30.064556>,  <26.830303, 33.641941, 30.004171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218910, 33.568878, 30.064556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068450, -0.393586, -0.916736,
		0.226868, 0.900958, -0.369873,
		0.971517, -0.182660, 0.150963,
		27.510365, 33.514080, 30.109844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197319, 33.948898, 29.380283>,  <26.830303, 33.641941, 30.004171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197319, 33.948898, 29.380283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437250, 33.676678, 29.548599>,  <27.581209, 33.513348, 29.649588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437250, 33.676678, 29.548599>,  <27.197319, 33.948898, 29.380283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437250, 33.676678, 29.548599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160575, -0.412813, -0.896549,
		0.783851, 0.605343, -0.138338,
		0.599827, -0.680548, 0.420787,
		27.617199, 33.472515, 29.674835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776405, 33.916210, 28.944490>,  <27.197319, 33.948898, 29.380283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776405, 33.916210, 28.944490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784609, 33.588966, 29.174370>,  <27.789532, 33.392620, 29.312298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784609, 33.588966, 29.174370>,  <27.776405, 33.916210, 28.944490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784609, 33.588966, 29.174370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120683, -0.568593, -0.813719,
		0.992479, 0.086046, 0.087071,
		0.020509, -0.818107, 0.574701,
		27.790762, 33.343533, 29.346781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425348, 33.537453, 28.746061>,  <27.776405, 33.916210, 28.944490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425348, 33.537453, 28.746061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174583, 33.270199, 28.906351>,  <28.024124, 33.109848, 29.002525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174583, 33.270199, 28.906351>,  <28.425348, 33.537453, 28.746061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174583, 33.270199, 28.906351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043346, -0.543462, -0.838313,
		0.777882, -0.508180, 0.369665,
		-0.626913, -0.668133, 0.400722,
		27.986509, 33.069759, 29.026567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742161, 32.989208, 28.567545>,  <28.425348, 33.537453, 28.746061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742161, 32.989208, 28.567545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368851, 32.863338, 28.636797>,  <28.144865, 32.787815, 28.678349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368851, 32.863338, 28.636797>,  <28.742161, 32.989208, 28.567545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368851, 32.863338, 28.636797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053533, -0.598532, -0.799308,
		0.355148, -0.736707, 0.575441,
		-0.933276, -0.314678, 0.173129,
		28.088867, 32.768936, 28.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792566, 32.294640, 28.445663>,  <28.742161, 32.989208, 28.567545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792566, 32.294640, 28.445663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408081, 32.398506, 28.408470>,  <28.177389, 32.460827, 28.386154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408081, 32.398506, 28.408470>,  <28.792566, 32.294640, 28.445663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408081, 32.398506, 28.408470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086070, -0.602687, -0.793322,
		-0.262035, -0.754548, 0.601660,
		-0.961213, 0.259663, -0.092981,
		28.119717, 32.476406, 28.380575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503199, 31.709734, 28.138062>,  <28.792566, 32.294640, 28.445663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503199, 31.709734, 28.138062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220877, 31.986042, 28.075224>,  <28.051483, 32.151829, 28.037521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220877, 31.986042, 28.075224>,  <28.503199, 31.709734, 28.138062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220877, 31.986042, 28.075224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186664, -0.395266, -0.899400,
		-0.683374, -0.605475, 0.407922,
		-0.705803, 0.690771, -0.157094,
		28.009136, 32.193272, 28.028095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977180, 31.304535, 27.858128>,  <28.503199, 31.709734, 28.138062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977180, 31.304535, 27.858128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871275, 31.678576, 27.763905>,  <27.807732, 31.903000, 27.707371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871275, 31.678576, 27.763905>,  <27.977180, 31.304535, 27.858128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871275, 31.678576, 27.763905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262811, -0.304998, -0.915372,
		-0.927810, -0.180451, 0.326507,
		-0.264764, 0.935101, -0.235556,
		27.791845, 31.959106, 27.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298813, 31.197914, 27.551537>,  <27.977180, 31.304535, 27.858128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298813, 31.197914, 27.551537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477646, 31.535423, 27.432770>,  <27.584946, 31.737930, 27.361509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477646, 31.535423, 27.432770>,  <27.298813, 31.197914, 27.551537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477646, 31.535423, 27.432770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333072, -0.151031, -0.930727,
		-0.830168, 0.515008, 0.213514,
		0.447084, 0.843775, -0.296916,
		27.611771, 31.788555, 27.343695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782345, 31.683926, 27.224936>,  <27.298813, 31.197914, 27.551537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782345, 31.683926, 27.224936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132952, 31.814262, 27.083208>,  <27.343317, 31.892466, 26.998173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132952, 31.814262, 27.083208>,  <26.782345, 31.683926, 27.224936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132952, 31.814262, 27.083208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346354, -0.084263, -0.934312,
		-0.334295, 0.941661, 0.039000,
		0.876519, 0.325843, -0.354317,
		27.395908, 31.912016, 26.976913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712683, 32.283276, 26.780088>,  <26.782345, 31.683926, 27.224936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712683, 32.283276, 26.780088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068277, 32.137016, 26.669813>,  <27.281633, 32.049259, 26.603647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068277, 32.137016, 26.669813>,  <26.712683, 32.283276, 26.780088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068277, 32.137016, 26.669813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259737, 0.093213, -0.961170,
		0.377152, 0.926072, -0.012109,
		0.888984, -0.365652, -0.275690,
		27.334972, 32.027321, 26.587107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794178, 32.601452, 26.149691>,  <26.712683, 32.283276, 26.780088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794178, 32.601452, 26.149691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101831, 32.347618, 26.119415>,  <27.286425, 32.195316, 26.101250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101831, 32.347618, 26.119415>,  <26.794178, 32.601452, 26.149691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101831, 32.347618, 26.119415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062432, 0.043259, -0.997111,
		0.636030, 0.771639, -0.006347,
		0.769135, -0.634589, -0.075689,
		27.332571, 32.157242, 26.096708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234306, 32.851810, 25.600603>,  <26.794178, 32.601452, 26.149691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234306, 32.851810, 25.600603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326094, 32.463799, 25.632557>,  <27.381166, 32.230991, 25.651730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326094, 32.463799, 25.632557>,  <27.234306, 32.851810, 25.600603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326094, 32.463799, 25.632557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087922, -0.061079, -0.994253,
		0.969336, 0.235175, 0.071271,
		0.229470, -0.970032, 0.079884,
		27.394936, 32.172791, 25.656523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.637424, 33.379108, 45.015877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381733, 33.088684, 45.117245>,  <37.228317, 32.914429, 45.178066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381733, 33.088684, 45.117245>,  <37.637424, 33.379108, 45.015877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381733, 33.088684, 45.117245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015333, 0.341501, 0.939756,
		-0.768864, 0.596833, -0.229430,
		-0.639229, -0.726063, 0.253417,
		37.189964, 32.870865, 45.193268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121754, 33.707661, 45.389896>,  <37.637424, 33.379108, 45.015877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121754, 33.707661, 45.389896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077770, 33.322231, 45.487411>,  <37.051380, 33.090973, 45.545921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077770, 33.322231, 45.487411>,  <37.121754, 33.707661, 45.389896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077770, 33.322231, 45.487411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035621, 0.241297, 0.969797,
		-0.993297, 0.115326, 0.007789,
		-0.109963, -0.963574, 0.243788,
		37.044781, 33.033157, 45.560547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706779, 33.690952, 46.067616>,  <37.121754, 33.707661, 45.389896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706779, 33.690952, 46.067616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843330, 33.315571, 46.046570>,  <36.925259, 33.090343, 46.033943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843330, 33.315571, 46.046570>,  <36.706779, 33.690952, 46.067616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843330, 33.315571, 46.046570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131156, -0.007871, 0.991331,
		-0.930731, -0.345317, 0.120397,
		0.341375, -0.938453, -0.052616,
		36.945744, 33.034035, 46.030785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287956, 33.176754, 46.476082>,  <36.706779, 33.690952, 46.067616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287956, 33.176754, 46.476082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651695, 33.012825, 46.447422>,  <36.869938, 32.914467, 46.430225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651695, 33.012825, 46.447422>,  <36.287956, 33.176754, 46.476082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651695, 33.012825, 46.447422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056357, -0.049297, 0.997193,
		-0.412201, -0.910834, -0.021732,
		0.909348, -0.409819, -0.071652,
		36.924500, 32.889877, 46.425926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191074, 32.852455, 46.951557>,  <36.287956, 33.176754, 46.476082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191074, 32.852455, 46.951557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584843, 32.821003, 46.888657>,  <36.821106, 32.802132, 46.850914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584843, 32.821003, 46.888657>,  <36.191074, 32.852455, 46.951557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584843, 32.821003, 46.888657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145814, -0.134596, 0.980113,
		-0.098229, -0.987776, -0.121034,
		0.984424, -0.078627, -0.157253,
		36.880169, 32.797413, 46.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444237, 32.146526, 47.325581>,  <36.191074, 32.852455, 46.951557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444237, 32.146526, 47.325581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739296, 32.415630, 47.302711>,  <36.916332, 32.577091, 47.288990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739296, 32.415630, 47.302711>,  <36.444237, 32.146526, 47.325581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739296, 32.415630, 47.302711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301129, -0.252019, 0.919678,
		0.604313, -0.695616, -0.388489,
		0.737649, 0.672759, -0.057172,
		36.960590, 32.617458, 47.285561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974251, 31.835880, 47.763634>,  <36.444237, 32.146526, 47.325581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974251, 31.835880, 47.763634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119087, 32.201061, 47.688370>,  <37.205990, 32.420170, 47.643211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119087, 32.201061, 47.688370>,  <36.974251, 31.835880, 47.763634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119087, 32.201061, 47.688370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391703, 0.034145, 0.919458,
		0.845846, -0.406634, -0.345243,
		0.362095, 0.912953, -0.188161,
		37.227715, 32.474949, 47.631920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620193, 31.910656, 47.995853>,  <36.974251, 31.835880, 47.763634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620193, 31.910656, 47.995853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503391, 32.293186, 47.990627>,  <37.433308, 32.522705, 47.987492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503391, 32.293186, 47.990627>,  <37.620193, 31.910656, 47.995853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503391, 32.293186, 47.990627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197113, 0.073548, 0.977618,
		0.935883, 0.282898, -0.209981,
		-0.292010, 0.956326, -0.013069,
		37.415787, 32.580086, 47.986706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199154, 32.299068, 48.168812>,  <37.620193, 31.910656, 47.995853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199154, 32.299068, 48.168812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859470, 32.496147, 48.244816>,  <37.655663, 32.614395, 48.290421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859470, 32.496147, 48.244816>,  <38.199154, 32.299068, 48.168812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859470, 32.496147, 48.244816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135955, -0.143711, 0.980236,
		0.510262, 0.858255, 0.055056,
		-0.849205, 0.492692, 0.190014,
		37.604710, 32.643955, 48.301819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323826, 32.611153, 48.864441>,  <38.199154, 32.299068, 48.168812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323826, 32.611153, 48.864441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931625, 32.678200, 48.823421>,  <37.696304, 32.718430, 48.798809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931625, 32.678200, 48.823421>,  <38.323826, 32.611153, 48.864441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931625, 32.678200, 48.823421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113449, -0.056762, 0.991921,
		0.160444, 0.984216, 0.074671,
		-0.980503, 0.167620, -0.102551,
		37.637474, 32.728485, 48.792656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205826, 33.076405, 49.463833>,  <38.323826, 32.611153, 48.864441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205826, 33.076405, 49.463833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847683, 32.942028, 49.346886>,  <37.632797, 32.861401, 49.276718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847683, 32.942028, 49.346886>,  <38.205826, 33.076405, 49.463833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847683, 32.942028, 49.346886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286426, -0.068332, 0.955662,
		-0.341026, 0.939401, -0.035042,
		-0.895356, -0.335942, -0.292372,
		37.579075, 32.841244, 49.259174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629555, 33.485176, 49.677719>,  <38.205826, 33.076405, 49.463833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629555, 33.485176, 49.677719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456902, 33.131699, 49.605301>,  <37.353310, 32.919613, 49.561848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456902, 33.131699, 49.605301>,  <37.629555, 33.485176, 49.677719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456902, 33.131699, 49.605301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539284, 0.091910, 0.837093,
		-0.723092, 0.458958, -0.516232,
		-0.431638, -0.883691, -0.181049,
		37.327412, 32.866592, 49.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888046, 33.555737, 49.632187>,  <37.629555, 33.485176, 49.677719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888046, 33.555737, 49.632187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997433, 33.195187, 49.766499>,  <37.063065, 32.978859, 49.847084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997433, 33.195187, 49.766499>,  <36.888046, 33.555737, 49.632187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997433, 33.195187, 49.766499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326084, 0.241536, 0.913964,
		-0.904924, -0.359426, -0.227872,
		0.273464, -0.901373, 0.335775,
		37.079472, 32.924774, 49.867229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304813, 33.218384, 50.060310>,  <36.888046, 33.555737, 49.632187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304813, 33.218384, 50.060310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665134, 33.087822, 50.174866>,  <36.881329, 33.009483, 50.243599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665134, 33.087822, 50.174866>,  <36.304813, 33.218384, 50.060310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665134, 33.087822, 50.174866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254559, 0.137363, 0.957252,
		-0.351790, -0.935196, 0.040648,
		0.900802, -0.326404, 0.286386,
		36.935375, 32.989902, 50.260780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164997, 32.963314, 50.683384>,  <36.304813, 33.218384, 50.060310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164997, 32.963314, 50.683384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559109, 33.031509, 50.678276>,  <36.795574, 33.072426, 50.675213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559109, 33.031509, 50.678276>,  <36.164997, 32.963314, 50.683384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559109, 33.031509, 50.678276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044730, 0.329142, 0.943220,
		0.165011, -0.928762, 0.331922,
		0.985277, 0.170488, -0.012768,
		36.854691, 33.082657, 50.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268845, 33.451832, 51.299461>,  <36.164997, 32.963314, 50.683384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268845, 33.451832, 51.299461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105839, 33.813084, 51.353561>,  <36.008034, 34.029835, 51.386021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105839, 33.813084, 51.353561>,  <36.268845, 33.451832, 51.299461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105839, 33.813084, 51.353561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197207, 0.231646, -0.952601,
		-0.891651, -0.361526, -0.272502,
		-0.407514, 0.903128, 0.135252,
		35.983585, 34.084023, 51.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833965, 33.618725, 50.745319>,  <36.268845, 33.451832, 51.299461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833965, 33.618725, 50.745319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917828, 33.988541, 50.872612>,  <35.968143, 34.210430, 50.948990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917828, 33.988541, 50.872612>,  <35.833965, 33.618725, 50.745319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917828, 33.988541, 50.872612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088998, 0.342161, -0.935417,
		-0.973717, 0.167789, 0.154017,
		0.209651, 0.924539, 0.318235,
		35.980724, 34.265903, 50.968082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371429, 34.080128, 50.344891>,  <35.833965, 33.618725, 50.745319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371429, 34.080128, 50.344891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674374, 34.302830, 50.481377>,  <35.856140, 34.436451, 50.563267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674374, 34.302830, 50.481377>,  <35.371429, 34.080128, 50.344891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674374, 34.302830, 50.481377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107868, 0.408691, -0.906276,
		-0.644026, 0.723184, 0.249470,
		0.757361, 0.556755, 0.341216,
		35.901581, 34.469856, 50.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291981, 34.810745, 50.100227>,  <35.371429, 34.080128, 50.344891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291981, 34.810745, 50.100227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673634, 34.802921, 50.219719>,  <35.902626, 34.798225, 50.291416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673634, 34.802921, 50.219719>,  <35.291981, 34.810745, 50.100227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673634, 34.802921, 50.219719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260158, 0.547909, -0.795056,
		-0.148126, 0.836310, 0.527868,
		0.954137, -0.019560, 0.298732,
		35.959873, 34.797054, 50.309338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563328, 35.615799, 50.253227>,  <35.291981, 34.810745, 50.100227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563328, 35.615799, 50.253227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871540, 35.371391, 50.180630>,  <36.056465, 35.224747, 50.137074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871540, 35.371391, 50.180630>,  <35.563328, 35.615799, 50.253227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871540, 35.371391, 50.180630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282094, 0.582225, -0.762520,
		0.571584, 0.536346, 0.620987,
		0.770529, -0.611021, -0.181490,
		36.102699, 35.188084, 50.126183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154747, 36.100689, 49.881721>,  <35.563328, 35.615799, 50.253227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154747, 36.100689, 49.881721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293404, 35.735584, 49.795269>,  <36.376598, 35.516521, 49.743397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293404, 35.735584, 49.795269>,  <36.154747, 36.100689, 49.881721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293404, 35.735584, 49.795269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514333, 0.377652, -0.769961,
		0.784412, 0.155735, 0.600371,
		0.346641, -0.912757, -0.216136,
		36.397396, 35.461758, 49.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882786, 36.283043, 49.713013>,  <36.154747, 36.100689, 49.881721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882786, 36.283043, 49.713013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782200, 35.924873, 49.566051>,  <36.721848, 35.709972, 49.477875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782200, 35.924873, 49.566051>,  <36.882786, 36.283043, 49.713013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782200, 35.924873, 49.566051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425593, 0.238636, -0.872882,
		0.869272, -0.375869, 0.321075,
		-0.251469, -0.895419, -0.367407,
		36.706760, 35.656246, 49.455830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530781, 36.106499, 49.286716>,  <36.882786, 36.283043, 49.713013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530781, 36.106499, 49.286716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205124, 35.907246, 49.167366>,  <37.009727, 35.787693, 49.095757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205124, 35.907246, 49.167366>,  <37.530781, 36.106499, 49.286716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205124, 35.907246, 49.167366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311069, 0.059730, -0.948509,
		0.490310, -0.865038, 0.106326,
		-0.814145, -0.498138, -0.298372,
		36.960880, 35.757805, 49.077854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714558, 35.576241, 48.790634>,  <37.530781, 36.106499, 49.286716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714558, 35.576241, 48.790634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323200, 35.626614, 48.725040>,  <37.088387, 35.656837, 48.685684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323200, 35.626614, 48.725040>,  <37.714558, 35.576241, 48.790634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323200, 35.626614, 48.725040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124892, -0.272118, -0.954124,
		-0.164781, -0.953987, 0.250510,
		-0.978391, 0.125935, -0.163985,
		37.029682, 35.664394, 48.675846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638573, 35.137600, 48.271736>,  <37.714558, 35.576241, 48.790634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638573, 35.137600, 48.271736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299126, 35.348465, 48.254093>,  <37.095455, 35.474983, 48.243507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299126, 35.348465, 48.254093>,  <37.638573, 35.137600, 48.271736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299126, 35.348465, 48.254093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047494, -0.158962, -0.986142,
		-0.526866, -0.834765, 0.159935,
		-0.848620, 0.527160, -0.044105,
		37.044540, 35.506615, 48.240860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216949, 34.786140, 47.856647>,  <37.638573, 35.137600, 48.271736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216949, 34.786140, 47.856647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083260, 35.162052, 47.828037>,  <37.003044, 35.387600, 47.810871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083260, 35.162052, 47.828037>,  <37.216949, 34.786140, 47.856647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083260, 35.162052, 47.828037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152143, -0.128696, -0.979944,
		-0.930133, -0.316638, 0.185993,
		-0.334224, 0.939775, -0.071530,
		36.982994, 35.443985, 47.806580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633938, 34.788109, 47.455128>,  <37.216949, 34.786140, 47.856647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633938, 34.788109, 47.455128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728348, 35.176640, 47.443729>,  <36.784992, 35.409760, 47.436890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728348, 35.176640, 47.443729>,  <36.633938, 34.788109, 47.455128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728348, 35.176640, 47.443729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173777, 0.013339, -0.984694,
		-0.956083, 0.237362, 0.171943,
		0.236022, 0.971330, -0.028495,
		36.799156, 35.468037, 47.435181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136391, 35.119366, 47.028454>,  <36.633938, 34.788109, 47.455128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136391, 35.119366, 47.028454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462563, 35.350163, 47.047005>,  <36.658264, 35.488640, 47.058136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462563, 35.350163, 47.047005>,  <36.136391, 35.119366, 47.028454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462563, 35.350163, 47.047005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072177, 0.180835, -0.980861,
		-0.574338, 0.796477, 0.189104,
		0.815430, 0.576995, 0.046373,
		36.707191, 35.523262, 47.060917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448719, 35.338268, 46.698593>,  <36.136391, 35.119366, 47.028454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448719, 35.338268, 46.698593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211277, 35.020027, 46.650173>,  <35.068810, 34.829082, 46.621120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211277, 35.020027, 46.650173>,  <35.448719, 35.338268, 46.698593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211277, 35.020027, 46.650173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098901, -0.077153, 0.992102,
		-0.798654, 0.600891, -0.032887,
		-0.593608, -0.795599, -0.121047,
		35.033195, 34.781349, 46.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167557, 35.324810, 47.309353>,  <35.448719, 35.338268, 46.698593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167557, 35.324810, 47.309353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079411, 34.970718, 47.145496>,  <35.026524, 34.758263, 47.047180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079411, 34.970718, 47.145496>,  <35.167557, 35.324810, 47.309353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079411, 34.970718, 47.145496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182277, -0.375197, 0.908847,
		-0.958236, 0.274944, -0.078678,
		-0.220362, -0.885231, -0.409643,
		35.013302, 34.705151, 47.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600323, 35.059978, 47.679409>,  <35.167557, 35.324810, 47.309353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600323, 35.059978, 47.679409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730751, 34.723763, 47.506355>,  <34.809010, 34.522034, 47.402523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730751, 34.723763, 47.506355>,  <34.600323, 35.059978, 47.679409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730751, 34.723763, 47.506355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110653, -0.488437, 0.865555,
		-0.938847, -0.234360, -0.252273,
		0.326072, -0.840538, -0.432635,
		34.828571, 34.471600, 47.376564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081161, 34.582207, 47.715321>,  <34.600323, 35.059978, 47.679409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081161, 34.582207, 47.715321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422512, 34.377316, 47.676586>,  <34.627323, 34.254379, 47.653347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422512, 34.377316, 47.676586>,  <34.081161, 34.582207, 47.715321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422512, 34.377316, 47.676586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224952, -0.529410, 0.817999,
		-0.470264, -0.676277, -0.567011,
		0.853375, -0.512226, -0.096833,
		34.678524, 34.223648, 47.647537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839043, 33.901558, 47.590157>,  <34.081161, 34.582207, 47.715321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839043, 33.901558, 47.590157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217007, 33.880840, 47.719437>,  <34.443787, 33.868408, 47.797005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217007, 33.880840, 47.719437>,  <33.839043, 33.901558, 47.590157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217007, 33.880840, 47.719437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269027, -0.685355, 0.676692,
		0.186455, -0.726364, -0.661535,
		0.944912, -0.051798, 0.323200,
		34.500481, 33.865299, 47.816395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928825, 33.226364, 47.727234>,  <33.839043, 33.901558, 47.590157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928825, 33.226364, 47.727234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240036, 33.399345, 47.909512>,  <34.426762, 33.503136, 48.018879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240036, 33.399345, 47.909512>,  <33.928825, 33.226364, 47.727234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240036, 33.399345, 47.909512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126797, -0.602340, 0.788105,
		0.615303, -0.670947, -0.413802,
		0.778026, 0.432454, 0.455696,
		34.473442, 33.529083, 48.046219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211555, 32.624870, 48.010014>,  <33.928825, 33.226364, 47.727234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211555, 32.624870, 48.010014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326427, 32.954758, 48.204895>,  <34.395351, 33.152691, 48.321823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326427, 32.954758, 48.204895>,  <34.211555, 32.624870, 48.010014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326427, 32.954758, 48.204895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197193, -0.446828, 0.872617,
		0.937359, -0.346672, 0.034308,
		0.287182, 0.824720, 0.487199,
		34.412582, 33.202175, 48.351055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551746, 31.984484, 48.130810>,  <34.211555, 32.624870, 48.010014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551746, 31.984484, 48.130810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282803, 31.701410, 48.043983>,  <34.121437, 31.531567, 47.991890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282803, 31.701410, 48.043983>,  <34.551746, 31.984484, 48.130810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282803, 31.701410, 48.043983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107052, 0.197192, -0.974503,
		0.732444, -0.678451, -0.056825,
		-0.672358, -0.707686, -0.217061,
		34.081097, 31.489105, 47.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711571, 31.781548, 47.492153>,  <34.551746, 31.984484, 48.130810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711571, 31.781548, 47.492153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341644, 31.634760, 47.532249>,  <34.119690, 31.546688, 47.556309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341644, 31.634760, 47.532249>,  <34.711571, 31.781548, 47.492153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341644, 31.634760, 47.532249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172971, 0.170944, -0.969979,
		0.338818, -0.914391, -0.221567,
		-0.924815, -0.366971, 0.100244,
		34.064201, 31.524670, 47.562325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674606, 31.302818, 46.948292>,  <34.711571, 31.781548, 47.492153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674606, 31.302818, 46.948292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297604, 31.377876, 47.058910>,  <34.071404, 31.422911, 47.125282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297604, 31.377876, 47.058910>,  <34.674606, 31.302818, 46.948292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297604, 31.377876, 47.058910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248214, 0.161061, -0.955222,
		-0.223783, -0.968942, -0.105225,
		-0.942502, 0.187644, 0.276548,
		34.014854, 31.434170, 47.141876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194283, 30.946861, 46.462284>,  <34.674606, 31.302818, 46.948292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194283, 30.946861, 46.462284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985786, 31.249769, 46.619686>,  <33.860687, 31.431515, 46.714127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985786, 31.249769, 46.619686>,  <34.194283, 30.946861, 46.462284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985786, 31.249769, 46.619686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368859, 0.215897, -0.904064,
		-0.769578, -0.616384, 0.166792,
		-0.521241, 0.757271, 0.393509,
		33.829414, 31.476950, 46.737740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547924, 30.888948, 46.174984>,  <34.194283, 30.946861, 46.462284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547924, 30.888948, 46.174984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588036, 31.272701, 46.280457>,  <33.612103, 31.502953, 46.343739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588036, 31.272701, 46.280457>,  <33.547924, 30.888948, 46.174984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588036, 31.272701, 46.280457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344064, 0.282106, -0.895565,
		-0.933576, -0.000913, 0.358380,
		0.100284, 0.959383, 0.263681,
		33.618122, 31.560516, 46.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026379, 31.172909, 45.778412>,  <33.547924, 30.888948, 46.174984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026379, 31.172909, 45.778412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242214, 31.490665, 45.889977>,  <33.371716, 31.681318, 45.956917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242214, 31.490665, 45.889977>,  <33.026379, 31.172909, 45.778412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242214, 31.490665, 45.889977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061446, 0.367552, -0.927971,
		-0.839685, 0.483581, 0.247138,
		0.539585, 0.794389, 0.278914,
		33.404091, 31.728983, 45.973652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625900, 31.679466, 45.491684>,  <33.026379, 31.172909, 45.778412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625900, 31.679466, 45.491684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997269, 31.807178, 45.567673>,  <33.220089, 31.883806, 45.613266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997269, 31.807178, 45.567673>,  <32.625900, 31.679466, 45.491684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997269, 31.807178, 45.567673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036590, 0.587419, -0.808456,
		-0.369718, 0.743638, 0.557056,
		0.928423, 0.319283, 0.189970,
		33.275795, 31.902964, 45.624664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.850201, 29.747303, 48.722622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.605576, 30.054811, 48.647804>,  <36.458801, 30.239317, 48.602913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.605576, 30.054811, 48.647804>,  <36.850201, 29.747303, 48.722622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605576, 30.054811, 48.647804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359819, 0.059694, -0.931110,
		-0.704644, -0.636733, -0.313125,
		-0.611560, 0.768770, -0.187046,
		36.422108, 30.285442, 48.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341293, 29.634991, 48.283119>,  <36.850201, 29.747303, 48.722622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341293, 29.634991, 48.283119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465908, 30.014416, 48.260574>,  <36.540676, 30.242071, 48.247047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465908, 30.014416, 48.260574>,  <36.341293, 29.634991, 48.283119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465908, 30.014416, 48.260574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145042, -0.106086, -0.983722,
		-0.939101, 0.298287, -0.170631,
		0.311533, 0.948562, -0.056361,
		36.559368, 30.298985, 48.243668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172955, 30.057419, 47.659203>,  <36.341293, 29.634991, 48.283119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172955, 30.057419, 47.659203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.524494, 30.168972, 47.814045>,  <36.735416, 30.235905, 47.906952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.524494, 30.168972, 47.814045>,  <36.172955, 30.057419, 47.659203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524494, 30.168972, 47.814045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415904, -0.050242, -0.908020,
		-0.233783, 0.959010, -0.160143,
		0.878846, 0.278883, 0.387110,
		36.788147, 30.252638, 47.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357037, 30.706186, 47.349026>,  <36.172955, 30.057419, 47.659203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357037, 30.706186, 47.349026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687584, 30.528057, 47.486893>,  <36.885914, 30.421179, 47.569614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687584, 30.528057, 47.486893>,  <36.357037, 30.706186, 47.349026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687584, 30.528057, 47.486893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403290, 0.040835, -0.914160,
		0.393022, 0.894438, 0.213339,
		0.826372, -0.445323, 0.344669,
		36.935497, 30.394461, 47.590294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861160, 31.075085, 47.056496>,  <36.357037, 30.706186, 47.349026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861160, 31.075085, 47.056496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.007500, 30.713692, 47.145821>,  <37.095303, 30.496855, 47.199417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.007500, 30.713692, 47.145821>,  <36.861160, 31.075085, 47.056496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007500, 30.713692, 47.145821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385458, -0.071305, -0.919966,
		0.847098, 0.422651, 0.322168,
		0.365852, -0.903483, 0.223316,
		37.117256, 30.442646, 47.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544632, 30.999243, 46.662590>,  <36.861160, 31.075085, 47.056496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544632, 30.999243, 46.662590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.476540, 30.629105, 46.798096>,  <37.435684, 30.407022, 46.879398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.476540, 30.629105, 46.798096>,  <37.544632, 30.999243, 46.662590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476540, 30.629105, 46.798096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146657, -0.363746, -0.919881,
		0.974430, -0.106908, 0.197629,
		-0.170229, -0.925343, 0.338766,
		37.425472, 30.351501, 46.899727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087322, 30.533413, 46.463299>,  <37.544632, 30.999243, 46.662590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087322, 30.533413, 46.463299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751511, 30.320377, 46.506264>,  <37.550022, 30.192556, 46.532043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751511, 30.320377, 46.506264>,  <38.087322, 30.533413, 46.463299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751511, 30.320377, 46.506264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132081, -0.391826, -0.910509,
		0.527014, -0.750213, 0.399295,
		-0.839530, -0.532591, 0.107409,
		37.499653, 30.160601, 46.538486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217899, 29.872660, 45.963837>,  <38.087322, 30.533413, 46.463299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217899, 29.872660, 45.963837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827709, 29.862122, 46.051243>,  <37.593594, 29.855799, 46.103687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827709, 29.862122, 46.051243>,  <38.217899, 29.872660, 45.963837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827709, 29.862122, 46.051243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168547, -0.549062, -0.818610,
		0.141544, -0.835367, 0.531158,
		-0.975478, -0.026344, 0.218515,
		37.535065, 29.854218, 46.116798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973404, 29.111483, 45.946796>,  <38.217899, 29.872660, 45.963837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973404, 29.111483, 45.946796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658855, 29.353394, 45.896423>,  <37.470127, 29.498541, 45.866199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658855, 29.353394, 45.896423>,  <37.973404, 29.111483, 45.946796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658855, 29.353394, 45.896423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319984, -0.573151, -0.754393,
		-0.528414, -0.552942, 0.644231,
		-0.786377, 0.604776, -0.125928,
		37.422943, 29.534828, 45.858643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357571, 28.681684, 45.762280>,  <37.973404, 29.111483, 45.946796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357571, 28.681684, 45.762280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.233761, 29.039103, 45.632191>,  <37.159477, 29.253553, 45.554138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.233761, 29.039103, 45.632191>,  <37.357571, 28.681684, 45.762280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233761, 29.039103, 45.632191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308662, -0.417912, -0.854446,
		-0.899403, -0.164083, 0.405156,
		-0.309520, 0.893547, -0.325224,
		37.140903, 29.307167, 45.534622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668282, 28.629503, 45.600681>,  <37.357571, 28.681684, 45.762280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668282, 28.629503, 45.600681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782108, 28.950138, 45.390358>,  <36.850403, 29.142519, 45.264164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782108, 28.950138, 45.390358>,  <36.668282, 28.629503, 45.600681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782108, 28.950138, 45.390358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481909, -0.354535, -0.801291,
		-0.828725, 0.481414, 0.285404,
		0.284567, 0.801589, -0.525810,
		36.867477, 29.190615, 45.232616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223068, 28.694662, 45.056229>,  <36.668282, 28.629503, 45.600681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223068, 28.694662, 45.056229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495380, 28.944361, 44.902946>,  <36.658768, 29.094179, 44.810978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495380, 28.944361, 44.902946>,  <36.223068, 28.694662, 45.056229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495380, 28.944361, 44.902946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275722, -0.266290, -0.923617,
		-0.678609, 0.734443, -0.009168,
		0.680785, 0.624247, -0.383208,
		36.699615, 29.131634, 44.787983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552841, 28.717741, 45.192936>,  <36.223068, 28.694662, 45.056229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552841, 28.717741, 45.192936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311119, 29.036133, 45.206997>,  <35.166088, 29.227167, 45.215435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311119, 29.036133, 45.206997>,  <35.552841, 28.717741, 45.192936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311119, 29.036133, 45.206997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450324, -0.377618, 0.809082,
		0.657287, 0.473100, 0.586644,
		-0.604303, 0.795978, 0.035155,
		35.129829, 29.274927, 45.217545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703709, 29.220139, 45.738243>,  <35.552841, 28.717741, 45.192936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703709, 29.220139, 45.738243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324329, 29.168180, 45.622608>,  <35.096703, 29.137007, 45.553226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324329, 29.168180, 45.622608>,  <35.703709, 29.220139, 45.738243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324329, 29.168180, 45.622608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233155, -0.331877, 0.914055,
		-0.214671, 0.934337, 0.284483,
		-0.948449, -0.129893, -0.289089,
		35.039795, 29.129213, 45.535881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270622, 29.677284, 46.181004>,  <35.703709, 29.220139, 45.738243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270622, 29.677284, 46.181004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.094093, 29.352453, 46.028286>,  <34.988174, 29.157555, 45.936657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.094093, 29.352453, 46.028286>,  <35.270622, 29.677284, 46.181004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094093, 29.352453, 46.028286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233496, -0.306892, 0.922658,
		-0.866438, 0.496336, -0.054179,
		-0.441321, -0.812077, -0.381795,
		34.961697, 29.108829, 45.913746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741425, 29.480017, 46.592579>,  <35.270622, 29.677284, 46.181004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741425, 29.480017, 46.592579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773773, 29.142843, 46.379818>,  <34.793182, 28.940538, 46.252159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773773, 29.142843, 46.379818>,  <34.741425, 29.480017, 46.592579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773773, 29.142843, 46.379818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226983, -0.535206, 0.813654,
		-0.970536, 0.054935, -0.234612,
		0.080868, -0.842933, -0.531906,
		34.798035, 28.889963, 46.220245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028095, 29.079969, 46.538769>,  <34.741425, 29.480017, 46.592579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028095, 29.079969, 46.538769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352360, 28.851591, 46.486855>,  <34.546921, 28.714563, 46.455708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352360, 28.851591, 46.486855>,  <34.028095, 29.079969, 46.538769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352360, 28.851591, 46.486855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244814, -0.531875, 0.810663,
		-0.531875, -0.625402, -0.570948,
		-0.810663, 0.570948, 0.129784,
		34.595558, 28.680307, 46.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664383, 28.571728, 46.599777>,  <34.028095, 29.079969, 46.538769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664383, 28.571728, 46.599777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051407, 28.494967, 46.665516>,  <34.283619, 28.448910, 46.704960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051407, 28.494967, 46.665516>,  <33.664383, 28.571728, 46.599777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051407, 28.494967, 46.665516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237784, -0.471743, 0.849068,
		-0.085409, -0.860600, -0.502069,
		0.967555, -0.191903, 0.164346,
		34.341675, 28.437395, 46.714821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595787, 27.861818, 46.885345>,  <33.664383, 28.571728, 46.599777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595787, 27.861818, 46.885345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957687, 28.008451, 46.972111>,  <34.174828, 28.096432, 47.024170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957687, 28.008451, 46.972111>,  <33.595787, 27.861818, 46.885345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957687, 28.008451, 46.972111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029267, -0.454533, 0.890249,
		0.424945, -0.811797, -0.400508,
		0.904746, 0.366585, 0.216911,
		34.229111, 28.118427, 47.037186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929909, 27.344378, 47.014339>,  <33.595787, 27.861818, 46.885345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929909, 27.344378, 47.014339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.139980, 27.631487, 47.197201>,  <34.266026, 27.803753, 47.306915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.139980, 27.631487, 47.197201>,  <33.929909, 27.344378, 47.014339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139980, 27.631487, 47.197201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080020, -0.576471, 0.813190,
		0.847219, -0.390492, -0.360189,
		0.525183, 0.717773, 0.457150,
		34.297535, 27.846819, 47.334347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458389, 26.987337, 47.533031>,  <33.929909, 27.344378, 47.014339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458389, 26.987337, 47.533031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461243, 27.358082, 47.683163>,  <34.462955, 27.580528, 47.773243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461243, 27.358082, 47.683163>,  <34.458389, 26.987337, 47.533031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461243, 27.358082, 47.683163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146578, -0.372255, 0.916483,
		0.989173, 0.048480, -0.138512,
		0.007130, 0.926864, 0.375330,
		34.463383, 27.636141, 47.795761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032265, 27.002800, 47.979362>,  <34.458389, 26.987337, 47.533031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032265, 27.002800, 47.979362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789108, 27.300074, 48.091179>,  <34.643215, 27.478437, 48.158268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789108, 27.300074, 48.091179>,  <35.032265, 27.002800, 47.979362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789108, 27.300074, 48.091179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136034, -0.249380, 0.958804,
		0.782280, 0.620877, 0.050498,
		-0.607892, 0.743183, 0.279545,
		34.606739, 27.523029, 48.175041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492611, 27.316742, 48.416092>,  <35.032265, 27.002800, 47.979362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492611, 27.316742, 48.416092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119694, 27.443560, 48.485725>,  <34.895943, 27.519650, 48.527508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119694, 27.443560, 48.485725>,  <35.492611, 27.316742, 48.416092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119694, 27.443560, 48.485725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135938, -0.138884, 0.980934,
		0.335176, 0.938187, 0.086383,
		-0.932297, 0.317043, 0.174086,
		34.840004, 27.538673, 48.537952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563103, 27.862156, 48.974178>,  <35.492611, 27.316742, 48.416092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563103, 27.862156, 48.974178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185036, 27.733004, 48.993771>,  <34.958195, 27.655512, 49.005527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185036, 27.733004, 48.993771>,  <35.563103, 27.862156, 48.974178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185036, 27.733004, 48.993771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010547, 0.119735, 0.992750,
		-0.326407, 0.938834, -0.109765,
		-0.945170, -0.322883, 0.048984,
		34.901485, 27.636139, 49.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165924, 28.319326, 49.429646>,  <35.563103, 27.862156, 48.974178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165924, 28.319326, 49.429646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.005936, 27.952789, 49.437019>,  <34.909943, 27.732868, 49.441444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.005936, 27.952789, 49.437019>,  <35.165924, 28.319326, 49.429646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005936, 27.952789, 49.437019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023125, 0.030200, 0.999276,
		-0.916235, 0.399257, -0.033269,
		-0.399972, -0.916342, 0.018437,
		34.885944, 27.677887, 49.442551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956291, 28.783762, 50.015320>,  <35.165924, 28.319326, 49.429646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956291, 28.783762, 50.015320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.625446, 28.928492, 50.187351>,  <34.426937, 29.015329, 50.290569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.625446, 28.928492, 50.187351>,  <34.956291, 28.783762, 50.015320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625446, 28.928492, 50.187351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039042, 0.726372, -0.686192,
		-0.560676, -0.584350, -0.586666,
		-0.827114, 0.361827, 0.430074,
		34.377312, 29.037039, 50.316372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409008, 28.756788, 49.452152>,  <34.956291, 28.783762, 50.015320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409008, 28.756788, 49.452152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359165, 29.039921, 49.730274>,  <34.329258, 29.209801, 49.897148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359165, 29.039921, 49.730274>,  <34.409008, 28.756788, 49.452152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359165, 29.039921, 49.730274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064177, 0.693548, -0.717546,
		-0.990129, -0.134034, -0.040995,
		-0.124607, 0.707832, 0.695304,
		34.321781, 29.252270, 49.938866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835796, 29.130348, 49.256649>,  <34.409008, 28.756788, 49.452152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835796, 29.130348, 49.256649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035030, 29.370007, 49.507389>,  <34.154572, 29.513802, 49.657833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035030, 29.370007, 49.507389>,  <33.835796, 29.130348, 49.256649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035030, 29.370007, 49.507389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291885, 0.796559, -0.529431,
		-0.816527, 0.080734, 0.571635,
		0.498084, 0.599146, 0.626846,
		34.184456, 29.549751, 49.695442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379108, 29.600853, 49.342281>,  <33.835796, 29.130348, 49.256649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379108, 29.600853, 49.342281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738293, 29.746298, 49.441437>,  <33.953804, 29.833565, 49.500931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738293, 29.746298, 49.441437>,  <33.379108, 29.600853, 49.342281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738293, 29.746298, 49.441437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152365, 0.785337, -0.600026,
		-0.412852, 0.501032, 0.760605,
		0.897963, 0.363611, 0.247889,
		34.007683, 29.855381, 49.515804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246029, 30.258945, 49.463650>,  <33.379108, 29.600853, 49.342281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246029, 30.258945, 49.463650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642159, 30.257895, 49.408142>,  <33.879837, 30.257263, 49.374840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642159, 30.257895, 49.408142>,  <33.246029, 30.258945, 49.463650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642159, 30.257895, 49.408142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074530, 0.833363, -0.547679,
		0.117081, 0.552720, 0.825101,
		0.990322, -0.002627, -0.138765,
		33.939255, 30.257107, 49.366512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382511, 31.023880, 49.368752>,  <33.246029, 30.258945, 49.463650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382511, 31.023880, 49.368752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695869, 30.817694, 49.229851>,  <33.883884, 30.693981, 49.146511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695869, 30.817694, 49.229851>,  <33.382511, 31.023880, 49.368752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695869, 30.817694, 49.229851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167933, 0.713480, -0.680253,
		0.598403, 0.474594, 0.645503,
		0.783398, -0.515467, -0.347249,
		33.930889, 30.663054, 49.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836708, 31.483023, 49.298328>,  <33.382511, 31.023880, 49.368752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836708, 31.483023, 49.298328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.927872, 31.190872, 49.040768>,  <33.982571, 31.015581, 48.886230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.927872, 31.190872, 49.040768>,  <33.836708, 31.483023, 49.298328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927872, 31.190872, 49.040768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073509, 0.646511, -0.759355,
		0.970905, 0.220393, 0.093654,
		0.227905, -0.730377, -0.643902,
		33.996243, 30.971760, 48.847599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108463, 31.921673, 48.792721>,  <33.836708, 31.483023, 49.298328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108463, 31.921673, 48.792721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039566, 31.579800, 48.596821>,  <33.998230, 31.374676, 48.479282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039566, 31.579800, 48.596821>,  <34.108463, 31.921673, 48.792721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039566, 31.579800, 48.596821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091770, 0.481095, -0.871852,
		0.980771, -0.195112, -0.004430,
		-0.172240, -0.854681, -0.489749,
		33.987892, 31.323395, 48.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677147, 32.449749, 48.907692>,  <34.108463, 31.921673, 48.792721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677147, 32.449749, 48.907692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529202, 32.820244, 48.878616>,  <34.440434, 33.042542, 48.861172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529202, 32.820244, 48.878616>,  <34.677147, 32.449749, 48.907692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529202, 32.820244, 48.878616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294087, -0.042497, 0.954833,
		0.881314, 0.374535, 0.288113,
		-0.369862, 0.926238, -0.072693,
		34.418243, 33.098114, 48.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881516, 32.831371, 49.513039>,  <34.677147, 32.449749, 48.907692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881516, 32.831371, 49.513039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571812, 33.056370, 49.397030>,  <34.385990, 33.191368, 49.327423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571812, 33.056370, 49.397030>,  <34.881516, 32.831371, 49.513039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571812, 33.056370, 49.397030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242045, 0.160228, 0.956944,
		0.584750, 0.811123, 0.012091,
		-0.774262, 0.562500, -0.290021,
		34.339535, 33.225121, 49.310024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834911, 33.489037, 49.866043>,  <34.881516, 32.831371, 49.513039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834911, 33.489037, 49.866043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461174, 33.400871, 49.754025>,  <34.236931, 33.347973, 49.686813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461174, 33.400871, 49.754025>,  <34.834911, 33.489037, 49.866043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461174, 33.400871, 49.754025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305809, 0.092338, 0.947605,
		-0.183007, 0.971026, -0.153679,
		-0.934339, -0.220415, -0.280050,
		34.180874, 33.334747, 49.670010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568722, 33.649727, 50.422733>,  <34.834911, 33.489037, 49.866043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568722, 33.649727, 50.422733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243469, 33.478008, 50.265495>,  <34.048317, 33.374977, 50.171154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243469, 33.478008, 50.265495>,  <34.568722, 33.649727, 50.422733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243469, 33.478008, 50.265495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428131, -0.016453, 0.903567,
		-0.394369, 0.903012, -0.170419,
		-0.813128, -0.429301, -0.393096,
		33.999531, 33.349216, 50.147568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973549, 33.999878, 50.623211>,  <34.568722, 33.649727, 50.422733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973549, 33.999878, 50.623211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838295, 33.633167, 50.538185>,  <33.757141, 33.413139, 50.487167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838295, 33.633167, 50.538185>,  <33.973549, 33.999878, 50.623211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838295, 33.633167, 50.538185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390738, -0.068719, 0.917933,
		-0.856148, 0.393443, -0.334984,
		-0.338135, -0.916777, -0.212567,
		33.736855, 33.358135, 50.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289070, 33.968967, 50.932838>,  <33.973549, 33.999878, 50.623211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289070, 33.968967, 50.932838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.425659, 33.593632, 50.911217>,  <33.507614, 33.368431, 50.898243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.425659, 33.593632, 50.911217>,  <33.289070, 33.968967, 50.932838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425659, 33.593632, 50.911217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223099, -0.136790, 0.965150,
		-0.913030, -0.317512, -0.256052,
		0.341473, -0.938336, -0.054057,
		33.528099, 33.312130, 50.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758583, 33.634544, 51.344784>,  <33.289070, 33.968967, 50.932838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758583, 33.634544, 51.344784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077667, 33.395885, 51.309734>,  <33.269115, 33.252689, 51.288704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077667, 33.395885, 51.309734>,  <32.758583, 33.634544, 51.344784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077667, 33.395885, 51.309734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094486, -0.267160, 0.959009,
		-0.595597, -0.756729, -0.269490,
		0.797707, -0.596646, -0.087620,
		33.316978, 33.216892, 51.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566650, 33.082348, 51.603962>,  <32.758583, 33.634544, 51.344784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566650, 33.082348, 51.603962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965992, 33.068810, 51.622459>,  <33.205597, 33.060688, 51.633560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965992, 33.068810, 51.622459>,  <32.566650, 33.082348, 51.603962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965992, 33.068810, 51.622459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051129, -0.161583, 0.985534,
		-0.025877, -0.986279, -0.163048,
		0.998357, -0.033839, 0.046246,
		33.265499, 33.058659, 51.636333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725220, 32.518959, 51.947227>,  <32.566650, 33.082348, 51.603962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725220, 32.518959, 51.947227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073467, 32.706043, 52.008244>,  <33.282417, 32.818295, 52.044853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073467, 32.706043, 52.008244>,  <32.725220, 32.518959, 51.947227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073467, 32.706043, 52.008244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050580, -0.393521, 0.917923,
		0.489350, -0.791447, -0.366264,
		0.870620, 0.467711, 0.152538,
		33.334652, 32.846355, 52.054005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.089214, 34.910732, 36.853287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482815, 34.845154, 36.881203>,  <35.718975, 34.805805, 36.897953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482815, 34.845154, 36.881203>,  <35.089214, 34.910732, 36.853287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482815, 34.845154, 36.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089625, -0.116882, 0.989093,
		-0.154008, -0.979519, -0.129706,
		0.983997, -0.163954, 0.069789,
		35.778015, 34.795971, 36.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261948, 34.298378, 37.313782>,  <35.089214, 34.910732, 36.853287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261948, 34.298378, 37.313782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598381, 34.514309, 37.327461>,  <35.800240, 34.643867, 37.335667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598381, 34.514309, 37.327461>,  <35.261948, 34.298378, 37.313782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598381, 34.514309, 37.327461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011539, -0.045296, 0.998907,
		0.540787, -0.840556, -0.031868,
		0.841080, 0.539828, 0.034195,
		35.850704, 34.676258, 37.337719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637756, 34.012249, 37.944973>,  <35.261948, 34.298378, 37.313782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637756, 34.012249, 37.944973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798809, 34.363613, 37.841988>,  <35.895439, 34.574432, 37.780197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798809, 34.363613, 37.841988>,  <35.637756, 34.012249, 37.944973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798809, 34.363613, 37.841988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049729, 0.259860, 0.964365,
		0.914011, -0.401086, 0.060945,
		0.402630, 0.878409, -0.257461,
		35.919598, 34.627136, 37.764748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183514, 34.125469, 38.357052>,  <35.637756, 34.012249, 37.944973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183514, 34.125469, 38.357052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116856, 34.506611, 38.255623>,  <36.076859, 34.735294, 38.194763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116856, 34.506611, 38.255623>,  <36.183514, 34.125469, 38.357052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116856, 34.506611, 38.255623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169609, 0.225636, 0.959334,
		0.971319, 0.202881, 0.124010,
		-0.166650, 0.952852, -0.253575,
		36.066860, 34.792465, 38.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536682, 34.506344, 38.798229>,  <36.183514, 34.125469, 38.357052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536682, 34.506344, 38.798229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252010, 34.758667, 38.674561>,  <36.081207, 34.910061, 38.600357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252010, 34.758667, 38.674561>,  <36.536682, 34.506344, 38.798229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252010, 34.758667, 38.674561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177495, 0.264363, 0.947949,
		0.679710, 0.729515, -0.076176,
		-0.711681, 0.630809, -0.309175,
		36.038506, 34.947910, 38.581806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548367, 35.012619, 39.224159>,  <36.536682, 34.506344, 38.798229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548367, 35.012619, 39.224159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190163, 35.084076, 39.061115>,  <35.975239, 35.126949, 38.963287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190163, 35.084076, 39.061115>,  <36.548367, 35.012619, 39.224159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190163, 35.084076, 39.061115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338935, 0.319798, 0.884789,
		0.288413, 0.930493, -0.225836,
		-0.895512, 0.178641, -0.407610,
		35.921509, 35.137669, 38.938831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325809, 35.696701, 39.392582>,  <36.548367, 35.012619, 39.224159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325809, 35.696701, 39.392582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996223, 35.479576, 39.327538>,  <35.798473, 35.349300, 39.288509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996223, 35.479576, 39.327538>,  <36.325809, 35.696701, 39.392582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996223, 35.479576, 39.327538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364419, 0.287859, 0.885627,
		-0.433916, 0.788984, -0.434995,
		-0.823963, -0.542808, -0.162614,
		35.749035, 35.316734, 39.278751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732006, 36.041351, 39.834690>,  <36.325809, 35.696701, 39.392582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732006, 36.041351, 39.834690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571781, 35.696384, 39.710896>,  <35.475647, 35.489403, 39.636620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571781, 35.696384, 39.710896>,  <35.732006, 36.041351, 39.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571781, 35.696384, 39.710896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753240, 0.117612, 0.647145,
		-0.521711, 0.492340, -0.696720,
		-0.400558, -0.862420, -0.309490,
		35.451614, 35.437656, 39.618050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130543, 36.249901, 39.604671>,  <35.732006, 36.041351, 39.834690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130543, 36.249901, 39.604671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093723, 35.861889, 39.694622>,  <35.071632, 35.629082, 39.748592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093723, 35.861889, 39.694622>,  <35.130543, 36.249901, 39.604671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093723, 35.861889, 39.694622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718916, 0.220996, 0.659030,
		-0.688976, -0.101006, -0.717711,
		-0.092046, -0.970030, 0.224876,
		35.066109, 35.570881, 39.762085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429203, 36.098282, 39.445347>,  <35.130543, 36.249901, 39.604671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429203, 36.098282, 39.445347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586964, 35.855923, 39.721703>,  <34.681622, 35.710506, 39.887516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586964, 35.855923, 39.721703>,  <34.429203, 36.098282, 39.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586964, 35.855923, 39.721703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575404, 0.423366, 0.699765,
		-0.716489, -0.673530, -0.181662,
		0.394403, -0.605902, 0.690889,
		34.705284, 35.674152, 39.928970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830055, 35.776119, 39.806774>,  <34.429203, 36.098282, 39.445347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830055, 35.776119, 39.806774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 35.742355, 40.061462>,  <34.320591, 35.722095, 40.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 35.742355, 40.061462>,  <33.830055, 35.776119, 39.806774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136639, 35.742355, 40.061462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632204, 0.075847, 0.771080,
		-0.113380, -0.993540, 0.004769,
		0.766461, -0.084410, 0.636720,
		34.366577, 35.717033, 40.252480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766945, 35.204170, 40.213749>,  <33.830055, 35.776119, 39.806774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766945, 35.204170, 40.213749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999355, 35.431904, 40.446392>,  <34.138802, 35.568542, 40.585979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999355, 35.431904, 40.446392>,  <33.766945, 35.204170, 40.213749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999355, 35.431904, 40.446392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631168, -0.135972, 0.763635,
		0.513846, -0.810784, 0.280342,
		0.581025, 0.569334, 0.581609,
		34.173664, 35.602703, 40.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070190, 34.596035, 40.075726>,  <33.766945, 35.204170, 40.213749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070190, 34.596035, 40.075726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825947, 34.279266, 40.077606>,  <33.679401, 34.089207, 40.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825947, 34.279266, 40.077606>,  <34.070190, 34.596035, 40.075726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825947, 34.279266, 40.077606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155238, 0.113870, -0.981292,
		0.776571, -0.599912, -0.192466,
		-0.610605, -0.791921, 0.004701,
		33.642765, 34.041691, 40.079018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091438, 34.201984, 39.354630>,  <34.070190, 34.596035, 40.075726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091438, 34.201984, 39.354630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748501, 34.079540, 39.520161>,  <33.542736, 34.006073, 39.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748501, 34.079540, 39.520161>,  <34.091438, 34.201984, 39.354630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748501, 34.079540, 39.520161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417740, -0.055940, -0.906843,
		0.300745, -0.950350, -0.079916,
		-0.857348, -0.306113, 0.413823,
		33.491295, 33.987705, 39.644306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935398, 33.651134, 38.854019>,  <34.091438, 34.201984, 39.354630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935398, 33.651134, 38.854019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607944, 33.753517, 39.059666>,  <33.411472, 33.814949, 39.183052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607944, 33.753517, 39.059666>,  <33.935398, 33.651134, 38.854019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607944, 33.753517, 39.059666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509343, 0.090001, -0.855844,
		-0.265334, -0.962488, 0.056694,
		-0.818638, 0.255961, 0.514117,
		33.362354, 33.830307, 39.213902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419476, 33.186737, 38.630791>,  <33.935398, 33.651134, 38.854019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419476, 33.186737, 38.630791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242260, 33.514977, 38.775200>,  <33.135933, 33.711922, 38.861843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242260, 33.514977, 38.775200>,  <33.419476, 33.186737, 38.630791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242260, 33.514977, 38.775200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520389, 0.092518, -0.848903,
		-0.730009, -0.563967, 0.386042,
		-0.443037, 0.820599, 0.361021,
		33.109348, 33.761158, 38.883507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754917, 33.129604, 38.407200>,  <33.419476, 33.186737, 38.630791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754917, 33.129604, 38.407200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760647, 33.517960, 38.502834>,  <32.764084, 33.750973, 38.560215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760647, 33.517960, 38.502834>,  <32.754917, 33.129604, 38.407200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760647, 33.517960, 38.502834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578001, 0.203153, -0.790344,
		-0.815911, -0.126874, 0.564086,
		0.014322, 0.970892, 0.239088,
		32.764942, 33.809227, 38.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033443, 33.264381, 38.517075>,  <32.754917, 33.129604, 38.407200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033443, 33.264381, 38.517075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211967, 33.610641, 38.426334>,  <32.319084, 33.818398, 38.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211967, 33.610641, 38.426334>,  <32.033443, 33.264381, 38.517075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211967, 33.610641, 38.426334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641249, 0.132554, -0.755797,
		-0.624184, 0.482788, 0.614256,
		0.446312, 0.865647, -0.226850,
		32.345860, 33.870335, 38.358280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510014, 33.785610, 38.492687>,  <32.033443, 33.264381, 38.517075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510014, 33.785610, 38.492687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819101, 33.958591, 38.306831>,  <32.004555, 34.062382, 38.195316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819101, 33.958591, 38.306831>,  <31.510014, 33.785610, 38.492687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819101, 33.958591, 38.306831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592074, 0.227186, -0.773198,
		-0.228815, 0.872564, 0.431597,
		0.772717, 0.432457, -0.464639,
		32.050915, 34.088329, 38.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245258, 34.375389, 38.227798>,  <31.510014, 33.785610, 38.492687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245258, 34.375389, 38.227798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573181, 34.350697, 38.000076>,  <31.769934, 34.335880, 37.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573181, 34.350697, 38.000076>,  <31.245258, 34.375389, 38.227798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573181, 34.350697, 38.000076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544788, 0.222213, -0.808596,
		0.176424, 0.973042, 0.148540,
		0.819806, -0.061733, -0.569305,
		31.819122, 34.332176, 37.829285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397949, 35.005276, 37.852406>,  <31.245258, 34.375389, 38.227798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397949, 35.005276, 37.852406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590767, 34.733269, 37.631424>,  <31.706457, 34.570065, 37.498837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590767, 34.733269, 37.631424>,  <31.397949, 35.005276, 37.852406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590767, 34.733269, 37.631424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608777, 0.193508, -0.769380,
		0.630096, 0.707199, -0.320700,
		0.482046, -0.680018, -0.552455,
		31.735380, 34.529263, 37.465687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453394, 35.337524, 37.175285>,  <31.397949, 35.005276, 37.852406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453394, 35.337524, 37.175285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488159, 34.942883, 37.120068>,  <31.509018, 34.706097, 37.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488159, 34.942883, 37.120068>,  <31.453394, 35.337524, 37.175285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488159, 34.942883, 37.120068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521999, 0.072918, -0.849823,
		0.848507, 0.145916, -0.508670,
		0.086912, -0.986606, -0.138040,
		31.514233, 34.646900, 37.078655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666016, 35.293495, 36.458187>,  <31.453394, 35.337524, 37.175285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666016, 35.293495, 36.458187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537237, 34.929569, 36.562946>,  <31.459970, 34.711212, 36.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537237, 34.929569, 36.562946>,  <31.666016, 35.293495, 36.458187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537237, 34.929569, 36.562946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537250, -0.052211, -0.841806,
		0.779560, -0.411720, -0.471988,
		-0.321945, -0.909814, 0.261898,
		31.440653, 34.656624, 36.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635071, 34.938240, 35.884579>,  <31.666016, 35.293495, 36.458187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635071, 34.938240, 35.884579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399364, 34.709988, 36.113365>,  <31.257940, 34.573036, 36.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399364, 34.709988, 36.113365>,  <31.635071, 34.938240, 35.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399364, 34.709988, 36.113365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648583, -0.088040, -0.756035,
		0.481772, -0.816474, -0.318223,
		-0.589266, -0.570631, 0.571966,
		31.222584, 34.538799, 36.284954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524000, 34.247669, 35.551670>,  <31.635071, 34.938240, 35.884579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524000, 34.247669, 35.551670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205431, 34.317142, 35.783375>,  <31.014290, 34.358826, 35.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205431, 34.317142, 35.783375>,  <31.524000, 34.247669, 35.551670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205431, 34.317142, 35.783375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603674, -0.285206, -0.744470,
		0.035912, -0.942599, 0.331989,
		-0.796422, 0.173678, 0.579265,
		30.966505, 34.369247, 35.957153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053082, 33.756031, 35.351437>,  <31.524000, 34.247669, 35.551670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053082, 33.756031, 35.351437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806091, 34.011547, 35.535030>,  <30.657898, 34.164856, 35.645187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806091, 34.011547, 35.535030>,  <31.053082, 33.756031, 35.351437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806091, 34.011547, 35.535030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760194, -0.334733, -0.556829,
		-0.202060, -0.692748, 0.692295,
		-0.617476, 0.638792, 0.458987,
		30.620848, 34.203186, 35.672726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490913, 33.364483, 35.483273>,  <31.053082, 33.756031, 35.351437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490913, 33.364483, 35.483273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409538, 33.752045, 35.426926>,  <30.360712, 33.984581, 35.393116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409538, 33.752045, 35.426926>,  <30.490913, 33.364483, 35.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409538, 33.752045, 35.426926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611307, -0.238088, -0.754731,
		-0.764799, -0.067427, 0.640732,
		-0.203440, 0.968900, -0.140871,
		30.348507, 34.042713, 35.384663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812138, 33.343384, 36.148216>,  <30.490913, 33.364483, 35.483273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812138, 33.343384, 36.148216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007250, 33.011585, 36.039406>,  <31.124317, 32.812504, 35.974121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007250, 33.011585, 36.039406>,  <30.812138, 33.343384, 36.148216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007250, 33.011585, 36.039406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701131, -0.557907, 0.444021,
		-0.520079, -0.025862, -0.853726,
		0.487783, -0.829501, -0.272023,
		31.153584, 32.762733, 35.957798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294289, 32.946209, 36.339828>,  <30.812138, 33.343384, 36.148216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294289, 32.946209, 36.339828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621439, 32.728451, 36.265305>,  <30.817730, 32.597797, 36.220589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621439, 32.728451, 36.265305>,  <30.294289, 32.946209, 36.339828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621439, 32.728451, 36.265305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250296, -0.628167, 0.736721,
		-0.518101, -0.555915, -0.650023,
		0.817877, -0.544394, -0.186310,
		30.866802, 32.565132, 36.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020876, 32.298969, 36.450966>,  <30.294289, 32.946209, 36.339828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020876, 32.298969, 36.450966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420326, 32.280441, 36.460777>,  <30.659996, 32.269325, 36.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420326, 32.280441, 36.460777>,  <30.020876, 32.298969, 36.450966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420326, 32.280441, 36.460777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044353, -0.497595, 0.866275,
		-0.027920, -0.866172, -0.498965,
		0.998626, -0.046317, 0.024524,
		30.719913, 32.266544, 36.468136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085415, 31.607155, 36.761707>,  <30.020876, 32.298969, 36.450966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085415, 31.607155, 36.761707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446417, 31.770061, 36.817730>,  <30.663019, 31.867805, 36.851341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446417, 31.770061, 36.817730>,  <30.085415, 31.607155, 36.761707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446417, 31.770061, 36.817730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082208, -0.482126, 0.872236,
		0.422758, -0.775685, -0.468603,
		0.902506, 0.407268, 0.140055,
		30.717169, 31.892242, 36.859745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443602, 31.090475, 36.813274>,  <30.085415, 31.607155, 36.761707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443602, 31.090475, 36.813274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650280, 31.384996, 36.988037>,  <30.774288, 31.561708, 37.092896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650280, 31.384996, 36.988037>,  <30.443602, 31.090475, 36.813274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650280, 31.384996, 36.988037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232342, -0.611739, 0.756169,
		0.824040, -0.289199, -0.487158,
		0.516697, 0.736301, 0.436904,
		30.805288, 31.605886, 37.119110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138765, 30.838028, 37.072762>,  <30.443602, 31.090475, 36.813274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138765, 30.838028, 37.072762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102095, 31.171457, 37.290661>,  <31.080093, 31.371515, 37.421402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102095, 31.171457, 37.290661>,  <31.138765, 30.838028, 37.072762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102095, 31.171457, 37.290661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469473, -0.446262, 0.761870,
		0.878175, 0.325591, -0.350428,
		-0.091675, 0.833571, 0.544752,
		31.074593, 31.421528, 37.454086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700626, 30.903137, 37.396351>,  <31.138765, 30.838028, 37.072762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700626, 30.903137, 37.396351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476597, 31.153866, 37.613022>,  <31.342180, 31.304302, 37.743023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476597, 31.153866, 37.613022>,  <31.700626, 30.903137, 37.396351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476597, 31.153866, 37.613022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539069, -0.220746, 0.812819,
		0.629066, 0.747239, -0.214266,
		-0.560072, 0.626821, 0.541678,
		31.308575, 31.341911, 37.775524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172249, 31.184805, 37.863121>,  <31.700626, 30.903137, 37.396351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172249, 31.184805, 37.863121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813929, 31.247511, 38.029476>,  <31.598936, 31.285133, 38.129288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813929, 31.247511, 38.029476>,  <32.172249, 31.184805, 37.863121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813929, 31.247511, 38.029476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386142, -0.188828, 0.902906,
		0.220074, 0.969417, 0.108619,
		-0.895802, 0.156763, 0.415889,
		31.545187, 31.294540, 38.154243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303715, 31.575794, 38.345165>,  <32.172249, 31.184805, 37.863121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303715, 31.575794, 38.345165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943100, 31.444601, 38.458057>,  <31.726730, 31.365885, 38.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943100, 31.444601, 38.458057>,  <32.303715, 31.575794, 38.345165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943100, 31.444601, 38.458057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336803, -0.122434, 0.933581,
		-0.271646, 0.936715, 0.220845,
		-0.901539, -0.327985, 0.282230,
		31.672638, 31.346205, 38.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156029, 31.904503, 39.041527>,  <32.303715, 31.575794, 38.345165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156029, 31.904503, 39.041527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932730, 31.573189, 39.022339>,  <31.798750, 31.374401, 39.010826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932730, 31.573189, 39.022339>,  <32.156029, 31.904503, 39.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932730, 31.573189, 39.022339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341404, -0.282027, 0.896607,
		-0.756174, 0.484155, 0.440222,
		-0.558251, -0.828284, -0.047969,
		31.765255, 31.324703, 39.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712145, 31.870144, 39.641483>,  <32.156029, 31.904503, 39.041527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712145, 31.870144, 39.641483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734224, 31.489405, 39.520859>,  <31.747473, 31.260962, 39.448483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734224, 31.489405, 39.520859>,  <31.712145, 31.870144, 39.641483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734224, 31.489405, 39.520859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203867, -0.284916, 0.936622,
		-0.977441, -0.113179, 0.178324,
		0.055199, -0.951847, -0.301563,
		31.750784, 31.203850, 39.430389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233088, 31.494249, 40.044914>,  <31.712145, 31.870144, 39.641483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233088, 31.494249, 40.044914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503145, 31.232016, 39.909626>,  <31.665180, 31.074677, 39.828453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503145, 31.232016, 39.909626>,  <31.233088, 31.494249, 40.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503145, 31.232016, 39.909626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205035, -0.273655, 0.939720,
		-0.708619, -0.703793, -0.050339,
		0.675144, -0.655583, -0.338220,
		31.705688, 31.035341, 39.808159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158308, 30.846533, 40.551689>,  <31.233088, 31.494249, 40.044914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158308, 30.846533, 40.551689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509523, 30.851965, 40.360332>,  <31.720253, 30.855225, 40.245518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509523, 30.851965, 40.360332>,  <31.158308, 30.846533, 40.551689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509523, 30.851965, 40.360332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447197, -0.379334, 0.810013,
		-0.170471, -0.925160, -0.339143,
		0.878040, 0.013580, -0.478395,
		31.772936, 30.856039, 40.216816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449615, 30.221479, 40.759533>,  <31.158308, 30.846533, 40.551689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449615, 30.221479, 40.759533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772064, 30.403570, 40.608307>,  <31.965534, 30.512825, 40.517570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772064, 30.403570, 40.608307>,  <31.449615, 30.221479, 40.759533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772064, 30.403570, 40.608307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583618, -0.506091, 0.635029,
		0.097747, -0.732558, -0.673650,
		0.806124, 0.455227, -0.378065,
		32.013901, 30.540138, 40.494888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978682, 29.670265, 40.704933>,  <31.449615, 30.221479, 40.759533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978682, 29.670265, 40.704933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207333, 29.998411, 40.698685>,  <32.344524, 30.195299, 40.694935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207333, 29.998411, 40.698685>,  <31.978682, 29.670265, 40.704933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207333, 29.998411, 40.698685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555054, -0.372596, 0.743698,
		0.604282, -0.433791, -0.668333,
		0.571627, 0.820365, -0.015624,
		32.378822, 30.244520, 40.693996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689552, 29.484221, 40.865421>,  <31.978682, 29.670265, 40.704933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689552, 29.484221, 40.865421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673008, 29.875626, 40.946217>,  <32.663082, 30.110470, 40.994694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673008, 29.875626, 40.946217>,  <32.689552, 29.484221, 40.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673008, 29.875626, 40.946217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704023, -0.114907, 0.700820,
		0.708972, 0.171194, -0.684143,
		-0.041363, 0.978514, 0.201990,
		32.660599, 30.169180, 41.006813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398537, 29.794964, 40.996834>,  <32.689552, 29.484221, 40.865421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398537, 29.794964, 40.996834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141750, 30.037098, 41.185066>,  <32.987679, 30.182379, 41.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141750, 30.037098, 41.185066>,  <33.398537, 29.794964, 40.996834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141750, 30.037098, 41.185066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612833, 0.036264, 0.789380,
		0.460775, 0.795143, -0.394251,
		-0.641967, 0.605337, 0.470581,
		32.949162, 30.218699, 41.326241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881378, 30.318176, 41.194347>,  <33.398537, 29.794964, 40.996834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881378, 30.318176, 41.194347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538345, 30.330549, 41.399712>,  <33.332527, 30.337973, 41.522930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538345, 30.330549, 41.399712>,  <33.881378, 30.318176, 41.194347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538345, 30.330549, 41.399712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510970, -0.062946, 0.857291,
		0.058837, 0.997537, 0.038175,
		-0.857583, 0.030934, 0.513415,
		33.281071, 30.339828, 41.553738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046406, 30.760317, 41.736351>,  <33.881378, 30.318176, 41.194347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046406, 30.760317, 41.736351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713547, 30.580206, 41.865833>,  <33.513832, 30.472139, 41.943523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713547, 30.580206, 41.865833>,  <34.046406, 30.760317, 41.736351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713547, 30.580206, 41.865833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419219, -0.128664, 0.898722,
		-0.363025, 0.883570, 0.295832,
		-0.832147, -0.450277, 0.323701,
		33.463902, 30.445124, 41.962944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813831, 31.073030, 42.367672>,  <34.046406, 30.760317, 41.736351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813831, 31.073030, 42.367672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637508, 30.714062, 42.360451>,  <33.531715, 30.498680, 42.356117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637508, 30.714062, 42.360451>,  <33.813831, 31.073030, 42.367672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637508, 30.714062, 42.360451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349918, -0.190332, 0.917241,
		-0.826588, 0.398007, 0.397924,
		-0.440806, -0.897421, -0.018056,
		33.505268, 30.444836, 42.355034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557785, 31.053436, 42.987400>,  <33.813831, 31.073030, 42.367672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557785, 31.053436, 42.987400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555874, 30.671444, 42.868748>,  <33.554726, 30.442249, 42.797558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555874, 30.671444, 42.868748>,  <33.557785, 31.053436, 42.987400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555874, 30.671444, 42.868748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128099, -0.294771, 0.946943,
		-0.991750, -0.033474, 0.123740,
		-0.004777, -0.954981, -0.296627,
		33.554440, 30.384949, 42.779758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146191, 30.604662, 43.536934>,  <33.557785, 31.053436, 42.987400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146191, 30.604662, 43.536934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374916, 30.344921, 43.336388>,  <33.512150, 30.189075, 43.216061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374916, 30.344921, 43.336388>,  <33.146191, 30.604662, 43.536934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374916, 30.344921, 43.336388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171720, -0.502865, 0.847136,
		-0.802212, -0.570497, -0.176037,
		0.571811, -0.649353, -0.501370,
		33.546459, 30.150116, 43.185978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920868, 29.924059, 43.772995>,  <33.146191, 30.604662, 43.536934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920868, 29.924059, 43.772995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298553, 29.940067, 43.642242>,  <33.525166, 29.949673, 43.563789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298553, 29.940067, 43.642242>,  <32.920868, 29.924059, 43.772995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298553, 29.940067, 43.642242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315127, -0.398115, 0.861510,
		-0.095657, -0.916462, -0.388519,
		0.944216, 0.040023, -0.326884,
		33.581818, 29.952074, 43.544178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264942, 29.286644, 43.994370>,  <32.920868, 29.924059, 43.772995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264942, 29.286644, 43.994370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589371, 29.497259, 43.892452>,  <33.784027, 29.623629, 43.831303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589371, 29.497259, 43.892452>,  <33.264942, 29.286644, 43.994370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589371, 29.497259, 43.892452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490747, -0.375481, 0.786245,
		0.318319, -0.762740, -0.562940,
		0.811074, 0.526538, -0.254789,
		33.832691, 29.655220, 43.816017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799637, 28.716703, 43.965782>,  <33.264942, 29.286644, 43.994370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799637, 28.716703, 43.965782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005108, 29.055861, 44.018253>,  <34.128391, 29.259356, 44.049736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005108, 29.055861, 44.018253>,  <33.799637, 28.716703, 43.965782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005108, 29.055861, 44.018253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544164, -0.440176, 0.714234,
		0.663337, -0.295504, -0.687504,
		0.513682, 0.847893, 0.131182,
		34.159214, 29.310228, 44.057610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483742, 28.547396, 44.025757>,  <33.799637, 28.716703, 43.965782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483742, 28.547396, 44.025757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484398, 28.918274, 44.175587>,  <34.484791, 29.140800, 44.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484398, 28.918274, 44.175587>,  <34.483742, 28.547396, 44.025757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484398, 28.918274, 44.175587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637139, -0.289674, 0.714243,
		0.770747, 0.237485, -0.591227,
		0.001641, 0.927195, 0.374576,
		34.484890, 29.196432, 44.287960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221855, 28.696419, 44.079552>,  <34.483742, 28.547396, 44.025757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221855, 28.696419, 44.079552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002804, 28.914553, 44.333389>,  <34.871372, 29.045433, 44.485691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002804, 28.914553, 44.333389>,  <35.221855, 28.696419, 44.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002804, 28.914553, 44.333389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700345, -0.116251, 0.704274,
		0.457838, 0.830117, -0.318260,
		-0.547632, 0.545336, 0.634593,
		34.838512, 29.078154, 44.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872288, 28.908552, 44.430576>,  <35.221855, 28.696419, 44.079552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872288, 28.908552, 44.430576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245846, 29.032530, 44.359280>,  <36.469982, 29.106916, 44.316502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245846, 29.032530, 44.359280>,  <35.872288, 28.908552, 44.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245846, 29.032530, 44.359280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206116, 0.059364, -0.976725,
		-0.292151, 0.948899, 0.119325,
		0.933897, 0.309946, -0.178240,
		36.526016, 29.125513, 44.305809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895119, 29.684156, 44.156307>,  <35.872288, 28.908552, 44.430576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895119, 29.684156, 44.156307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186707, 29.442476, 44.027596>,  <36.361660, 29.297468, 43.950367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186707, 29.442476, 44.027596>,  <35.895119, 29.684156, 44.156307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186707, 29.442476, 44.027596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390280, 0.019359, -0.920493,
		0.562392, 0.796597, -0.221695,
		0.728970, -0.604200, -0.321784,
		36.405399, 29.261215, 43.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167965, 30.109030, 43.566540>,  <35.895119, 29.684156, 44.156307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167965, 30.109030, 43.566540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297283, 29.732121, 43.531658>,  <36.374874, 29.505976, 43.510731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297283, 29.732121, 43.531658>,  <36.167965, 30.109030, 43.566540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297283, 29.732121, 43.531658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013971, 0.096892, -0.995197,
		0.946195, 0.320524, 0.044489,
		0.323295, -0.942272, -0.087200,
		36.394272, 29.449438, 43.505497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624825, 30.200491, 43.053650>,  <36.167965, 30.109030, 43.566540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624825, 30.200491, 43.053650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591576, 29.801945, 43.046192>,  <36.571629, 29.562817, 43.041718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591576, 29.801945, 43.046192>,  <36.624825, 30.200491, 43.053650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591576, 29.801945, 43.046192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053500, 0.014225, -0.998466,
		0.995103, -0.083988, 0.052123,
		-0.083118, -0.996365, -0.018649,
		36.566639, 29.503035, 43.040596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017174, 30.023666, 42.517639>,  <36.624825, 30.200491, 43.053650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017174, 30.023666, 42.517639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789165, 29.700634, 42.578167>,  <36.652363, 29.506815, 42.614483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789165, 29.700634, 42.578167>,  <37.017174, 30.023666, 42.517639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789165, 29.700634, 42.578167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006250, -0.188423, -0.982068,
		0.821609, -0.558850, 0.112451,
		-0.570017, -0.807579, 0.151318,
		36.618160, 29.458361, 42.623562>
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
