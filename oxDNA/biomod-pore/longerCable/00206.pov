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
	<24.268463, 35.075188, 35.429604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391750, 35.206470, 35.072441>,  <24.465723, 35.285240, 34.858143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391750, 35.206470, 35.072441>,  <24.268463, 35.075188, 35.429604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391750, 35.206470, 35.072441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851638, 0.323069, 0.412723,
		0.423929, -0.887641, -0.179938,
		0.308218, 0.328207, -0.892907,
		24.484215, 35.304932, 34.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918087, 34.740993, 35.079227>,  <24.268463, 35.075188, 35.429604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918087, 34.740993, 35.079227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868906, 35.127872, 34.990318>,  <24.839397, 35.360001, 34.936974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868906, 35.127872, 34.990318>,  <24.918087, 34.740993, 35.079227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.868906, 35.127872, 34.990318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976938, 0.157357, 0.144329,
		0.174571, -0.199398, -0.964243,
		-0.122952, 0.967202, -0.222270,
		24.832020, 35.418034, 34.923637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365334, 34.911953, 34.535156>,  <24.918087, 34.740993, 35.079227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365334, 34.911953, 34.535156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321251, 35.271305, 34.705223>,  <25.294802, 35.486916, 34.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321251, 35.271305, 34.705223>,  <25.365334, 34.911953, 34.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321251, 35.271305, 34.705223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984919, 0.156117, -0.074578,
		-0.133374, 0.410533, -0.902039,
		-0.110207, 0.898382, 0.425163,
		25.288189, 35.540821, 34.832771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600483, 35.437939, 34.080330>,  <25.365334, 34.911953, 34.535156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600483, 35.437939, 34.080330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630823, 35.531620, 34.468018>,  <25.649027, 35.587830, 34.700630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630823, 35.531620, 34.468018>,  <25.600483, 35.437939, 34.080330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630823, 35.531620, 34.468018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997119, -0.018413, -0.073585,
		0.000612, 0.972013, -0.234926,
		0.075851, 0.234204, 0.969224,
		25.653578, 35.601883, 34.758785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009140, 35.983509, 34.110985>,  <25.600483, 35.437939, 34.080330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009140, 35.983509, 34.110985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033779, 35.758430, 34.440731>,  <26.048563, 35.623383, 34.638580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033779, 35.758430, 34.440731>,  <26.009140, 35.983509, 34.110985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033779, 35.758430, 34.440731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979088, -0.126377, -0.159421,
		0.193887, 0.816947, 0.543145,
		0.061598, -0.562696, 0.824366,
		26.052259, 35.589622, 34.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636692, 36.185028, 34.545715>,  <26.009140, 35.983509, 34.110985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636692, 36.185028, 34.545715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534977, 35.820705, 34.675804>,  <26.473948, 35.602112, 34.753857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534977, 35.820705, 34.675804>,  <26.636692, 36.185028, 34.545715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534977, 35.820705, 34.675804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961930, -0.273011, -0.012468,
		0.100146, 0.309674, 0.945554,
		-0.254286, -0.910806, 0.325226,
		26.458691, 35.547462, 34.773373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938597, 35.990719, 35.150791>,  <26.636692, 36.185028, 34.545715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938597, 35.990719, 35.150791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901701, 35.631046, 34.979694>,  <26.879564, 35.415241, 34.877037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901701, 35.631046, 34.979694>,  <26.938597, 35.990719, 35.150791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901701, 35.631046, 34.979694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995416, -0.072364, -0.062529,
		0.025272, -0.431551, 0.901735,
		-0.092238, -0.899182, -0.427744,
		26.874029, 35.361290, 34.851372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378426, 35.523483, 35.570385>,  <26.938597, 35.990719, 35.150791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378426, 35.523483, 35.570385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554974, 35.346333, 35.882553>,  <27.660902, 35.240044, 36.069855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554974, 35.346333, 35.882553>,  <27.378426, 35.523483, 35.570385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554974, 35.346333, 35.882553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152388, 0.894080, 0.421188,
		-0.884291, -0.066972, 0.462108,
		0.441369, -0.442873, 0.780421,
		27.687384, 35.213470, 36.116680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208328, 35.973000, 36.156109>,  <27.378426, 35.523483, 35.570385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208328, 35.973000, 36.156109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514812, 35.755238, 36.292664>,  <27.698704, 35.624580, 36.374596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514812, 35.755238, 36.292664>,  <27.208328, 35.973000, 36.156109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514812, 35.755238, 36.292664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279400, 0.760664, 0.585940,
		-0.578666, -0.353573, 0.734937,
		0.766213, -0.544405, 0.341382,
		27.744677, 35.591915, 36.395077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194414, 36.025856, 36.958595>,  <27.208328, 35.973000, 36.156109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194414, 36.025856, 36.958595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565317, 35.931900, 36.841961>,  <27.787859, 35.875526, 36.771980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565317, 35.931900, 36.841961>,  <27.194414, 36.025856, 36.958595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565317, 35.931900, 36.841961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355638, 0.796103, 0.489634,
		0.117118, -0.557714, 0.821729,
		0.927256, -0.234893, -0.291583,
		27.843494, 35.861431, 36.754486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698267, 36.247829, 37.562965>,  <27.194414, 36.025856, 36.958595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698267, 36.247829, 37.562965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916721, 36.225262, 37.228649>,  <28.047794, 36.211720, 37.028057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916721, 36.225262, 37.228649>,  <27.698267, 36.247829, 37.562965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916721, 36.225262, 37.228649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513534, 0.810815, 0.280824,
		0.661828, -0.582576, 0.471792,
		0.546138, -0.056424, -0.835793,
		28.080563, 36.208336, 36.977913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354122, 36.493797, 37.788181>,  <27.698267, 36.247829, 37.562965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354122, 36.493797, 37.788181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336002, 36.533543, 37.390572>,  <28.325130, 36.557388, 37.152008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336002, 36.533543, 37.390572>,  <28.354122, 36.493797, 37.788181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336002, 36.533543, 37.390572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473194, 0.878464, 0.066245,
		0.879793, -0.467364, -0.086811,
		-0.045300, 0.099361, -0.994020,
		28.322412, 36.563351, 37.092365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046131, 36.396450, 37.532986>,  <28.354122, 36.493797, 37.788181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046131, 36.396450, 37.532986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823503, 36.658848, 37.329063>,  <28.689926, 36.816284, 37.206711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823503, 36.658848, 37.329063>,  <29.046131, 36.396450, 37.532986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823503, 36.658848, 37.329063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713093, 0.692064, 0.112005,
		0.426294, -0.301202, -0.852966,
		-0.556571, 0.655991, -0.509808,
		28.656532, 36.855644, 37.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414621, 36.639080, 36.970200>,  <29.046131, 36.396450, 37.532986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414621, 36.639080, 36.970200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167856, 36.920570, 37.111164>,  <29.019796, 37.089462, 37.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167856, 36.920570, 37.111164>,  <29.414621, 36.639080, 36.970200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167856, 36.920570, 37.111164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784774, 0.583913, 0.207785,
		-0.059553, 0.404747, -0.912487,
		-0.616914, 0.703723, 0.352409,
		28.982782, 37.131687, 37.216888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042372, 36.778198, 36.540092>,  <29.414621, 36.639080, 36.970200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042372, 36.778198, 36.540092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415947, 36.782398, 36.397182>,  <29.640093, 36.784920, 36.311436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415947, 36.782398, 36.397182>,  <29.042372, 36.778198, 36.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415947, 36.782398, 36.397182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327408, -0.426141, 0.843332,
		-0.143396, -0.904596, -0.401428,
		0.933939, 0.010500, -0.357279,
		29.696129, 36.785549, 36.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537298, 36.796841, 36.029644>,  <29.042372, 36.778198, 36.540092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537298, 36.796841, 36.029644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582813, 36.646355, 36.397453>,  <28.610123, 36.556065, 36.618137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582813, 36.646355, 36.397453>,  <28.537298, 36.796841, 36.029644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582813, 36.646355, 36.397453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356246, -0.879434, -0.315729,
		0.927438, -0.291649, -0.234094,
		0.113788, -0.376214, 0.919519,
		28.616949, 36.533489, 36.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900637, 36.234467, 35.923683>,  <28.537298, 36.796841, 36.029644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900637, 36.234467, 35.923683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651190, 36.213078, 36.235641>,  <28.501522, 36.200245, 36.422817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651190, 36.213078, 36.235641>,  <28.900637, 36.234467, 35.923683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651190, 36.213078, 36.235641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374206, -0.855509, -0.357875,
		0.686347, -0.515020, 0.513500,
		-0.623616, -0.053472, 0.779899,
		28.464106, 36.197037, 36.469612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006311, 35.625828, 36.136990>,  <28.900637, 36.234467, 35.923683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006311, 35.625828, 36.136990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657885, 35.716248, 36.311413>,  <28.448828, 35.770500, 36.416065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657885, 35.716248, 36.311413>,  <29.006311, 35.625828, 36.136990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657885, 35.716248, 36.311413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317188, -0.936742, -0.148008,
		0.375014, -0.267236, 0.887665,
		-0.871066, 0.226052, 0.436055,
		28.396564, 35.784061, 36.442230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894346, 35.087650, 36.661579>,  <29.006311, 35.625828, 36.136990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894346, 35.087650, 36.661579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531954, 35.237213, 36.582188>,  <28.314518, 35.326950, 36.534554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531954, 35.237213, 36.582188>,  <28.894346, 35.087650, 36.661579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531954, 35.237213, 36.582188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369485, -0.927277, -0.060321,
		-0.206597, 0.018684, 0.978248,
		-0.905979, 0.373910, -0.198476,
		28.260160, 35.349384, 36.522644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444979, 34.730247, 37.069740>,  <28.894346, 35.087650, 36.661579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444979, 34.730247, 37.069740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231745, 34.887718, 36.770184>,  <28.103806, 34.982201, 36.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231745, 34.887718, 36.770184>,  <28.444979, 34.730247, 37.069740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231745, 34.887718, 36.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462143, -0.876925, -0.132012,
		-0.708693, 0.275722, 0.649409,
		-0.533084, 0.393676, -0.748893,
		28.071819, 35.005821, 36.545517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753325, 34.608101, 37.193211>,  <28.444979, 34.730247, 37.069740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753325, 34.608101, 37.193211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833981, 34.591965, 36.801758>,  <27.882374, 34.582283, 36.566887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833981, 34.591965, 36.801758>,  <27.753325, 34.608101, 37.193211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833981, 34.591965, 36.801758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385072, -0.921960, -0.041335,
		-0.900590, 0.385178, -0.201436,
		0.201638, -0.040341, -0.978629,
		27.894472, 34.579861, 36.508167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122530, 34.400669, 36.716846>,  <27.753325, 34.608101, 37.193211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122530, 34.400669, 36.716846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454947, 34.269405, 36.537212>,  <27.654396, 34.190647, 36.429432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454947, 34.269405, 36.537212>,  <27.122530, 34.400669, 36.716846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454947, 34.269405, 36.537212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324144, -0.941867, 0.088413,
		-0.451995, 0.072094, -0.889102,
		0.831042, -0.328160, -0.449088,
		27.704260, 34.170956, 36.402485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024759, 33.904221, 36.128628>,  <27.122530, 34.400669, 36.716846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024759, 33.904221, 36.128628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386791, 33.818874, 36.275761>,  <27.604012, 33.767666, 36.364040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386791, 33.818874, 36.275761>,  <27.024759, 33.904221, 36.128628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386791, 33.818874, 36.275761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264574, -0.959744, 0.094298,
		0.332909, -0.182667, -0.925097,
		0.905081, -0.213363, 0.367837,
		27.658316, 33.754864, 36.386112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225760, 33.369808, 35.811554>,  <27.024759, 33.904221, 36.128628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225760, 33.369808, 35.811554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423916, 33.368587, 36.159019>,  <27.542810, 33.367855, 36.367500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423916, 33.368587, 36.159019>,  <27.225760, 33.369808, 35.811554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423916, 33.368587, 36.159019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160290, -0.983143, 0.087963,
		0.853754, -0.182814, -0.487528,
		0.495391, -0.003048, 0.868665,
		27.572533, 33.367672, 36.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850248, 32.954090, 35.700119>,  <27.225760, 33.369808, 35.811554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850248, 32.954090, 35.700119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718632, 32.961086, 36.077782>,  <27.639662, 32.965282, 36.304379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718632, 32.961086, 36.077782>,  <27.850248, 32.954090, 35.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718632, 32.961086, 36.077782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092459, -0.994428, 0.050644,
		0.939779, 0.103959, 0.325588,
		-0.329039, 0.017490, 0.944154,
		27.619921, 32.966331, 36.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270613, 32.653156, 36.339584>,  <27.850248, 32.954090, 35.700119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270613, 32.653156, 36.339584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871372, 32.629261, 36.333637>,  <27.631828, 32.614925, 36.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871372, 32.629261, 36.333637>,  <28.270613, 32.653156, 36.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871372, 32.629261, 36.333637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059228, -0.997711, 0.032640,
		-0.016782, 0.031698, 0.999357,
		-0.998103, -0.059738, -0.014866,
		27.571941, 32.611340, 36.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962055, 32.250607, 36.991028>,  <28.270613, 32.653156, 36.339584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962055, 32.250607, 36.991028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765369, 32.203487, 36.645927>,  <27.647358, 32.175217, 36.438866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765369, 32.203487, 36.645927>,  <27.962055, 32.250607, 36.991028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765369, 32.203487, 36.645927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050404, -0.992996, 0.106856,
		-0.869296, 0.009057, 0.494208,
		-0.491714, -0.117799, -0.862752,
		27.617855, 32.168148, 36.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324219, 31.766085, 37.016968>,  <27.962055, 32.250607, 36.991028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324219, 31.766085, 37.016968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450357, 31.745760, 36.637920>,  <27.526041, 31.733566, 36.410492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450357, 31.745760, 36.637920>,  <27.324219, 31.766085, 37.016968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450357, 31.745760, 36.637920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002692, -0.998514, 0.054436,
		-0.948973, -0.019717, -0.314741,
		0.315346, -0.050811, -0.947615,
		27.544962, 31.730516, 36.353634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828119, 31.322729, 36.547314>,  <27.324219, 31.766085, 37.016968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828119, 31.322729, 36.547314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225828, 31.333672, 36.505993>,  <27.464455, 31.340237, 36.481201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225828, 31.333672, 36.505993>,  <26.828119, 31.322729, 36.547314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225828, 31.333672, 36.505993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053282, -0.964860, 0.257305,
		-0.092631, -0.261336, -0.960793,
		0.994274, 0.027358, -0.103300,
		27.524111, 31.341879, 36.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074717, 30.721735, 36.069004>,  <26.828119, 31.322729, 36.547314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074717, 30.721735, 36.069004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353893, 30.849653, 36.325317>,  <27.521400, 30.926403, 36.479107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353893, 30.849653, 36.325317>,  <27.074717, 30.721735, 36.069004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353893, 30.849653, 36.325317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268357, -0.946354, 0.179997,
		0.663973, 0.046332, -0.746320,
		0.697943, 0.319793, 0.640787,
		27.563276, 30.945591, 36.517555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668179, 30.401922, 35.981888>,  <27.074717, 30.721735, 36.069004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668179, 30.401922, 35.981888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737320, 30.512037, 36.360165>,  <27.778805, 30.578106, 36.587132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737320, 30.512037, 36.360165>,  <27.668179, 30.401922, 35.981888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737320, 30.512037, 36.360165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467088, -0.868227, 0.167361,
		0.867151, 0.412794, -0.278660,
		0.172854, 0.275286, 0.945695,
		27.789177, 30.594624, 36.643871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292101, 30.115625, 36.142715>,  <27.668179, 30.401922, 35.981888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292101, 30.115625, 36.142715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117058, 30.142855, 36.501350>,  <28.012032, 30.159193, 36.716530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117058, 30.142855, 36.501350>,  <28.292101, 30.115625, 36.142715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117058, 30.142855, 36.501350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354537, -0.903283, 0.241627,
		0.826318, 0.423611, 0.371151,
		-0.437610, 0.068074, 0.896584,
		27.985775, 30.163277, 36.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816324, 29.842999, 36.689129>,  <28.292101, 30.115625, 36.142715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816324, 29.842999, 36.689129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460947, 29.853170, 36.872444>,  <28.247721, 29.859274, 36.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460947, 29.853170, 36.872444>,  <28.816324, 29.842999, 36.689129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460947, 29.853170, 36.872444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219522, -0.853321, 0.472919,
		0.403091, 0.520764, 0.752543,
		-0.888441, 0.025430, 0.458286,
		28.194414, 29.860800, 37.009930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029528, 29.501501, 37.173859>,  <28.816324, 29.842999, 36.689129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029528, 29.501501, 37.173859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629820, 29.504482, 37.188843>,  <28.389996, 29.506271, 37.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629820, 29.504482, 37.188843>,  <29.029528, 29.501501, 37.173859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629820, 29.504482, 37.188843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004090, -0.954267, 0.298928,
		0.037972, 0.298863, 0.953540,
		-0.999270, 0.007451, 0.037458,
		28.330038, 29.506718, 37.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755852, 29.238312, 37.796131>,  <29.029528, 29.501501, 37.173859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755852, 29.238312, 37.796131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486002, 29.153944, 37.513176>,  <28.324093, 29.103323, 37.343403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486002, 29.153944, 37.513176>,  <28.755852, 29.238312, 37.796131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486002, 29.153944, 37.513176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120127, -0.914164, 0.387135,
		-0.728323, 0.346147, 0.591378,
		-0.674622, -0.210918, -0.707388,
		28.283615, 29.090668, 37.300961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344172, 28.647434, 37.713646>,  <28.755852, 29.238312, 37.796131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344172, 28.647434, 37.713646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138552, 28.869896, 37.974857>,  <28.015181, 29.003372, 38.131584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138552, 28.869896, 37.974857>,  <28.344172, 28.647434, 37.713646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138552, 28.869896, 37.974857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091255, 0.721538, -0.686335,
		-0.852893, -0.412402, -0.320154,
		-0.514049, 0.556154, 0.653028,
		27.984337, 29.036741, 38.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597292, 28.791595, 37.484169>,  <28.344172, 28.647434, 37.713646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597292, 28.791595, 37.484169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802916, 29.072927, 37.680565>,  <27.926291, 29.241726, 37.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802916, 29.072927, 37.680565>,  <27.597292, 28.791595, 37.484169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802916, 29.072927, 37.680565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167010, 0.643527, -0.746981,
		-0.841339, 0.301992, 0.448274,
		0.514059, 0.703331, 0.490989,
		27.957132, 29.283926, 37.827862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137545, 29.396076, 37.293171>,  <27.597292, 28.791595, 37.484169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137545, 29.396076, 37.293171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488888, 29.516792, 37.441444>,  <27.699694, 29.589222, 37.530407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488888, 29.516792, 37.441444>,  <27.137545, 29.396076, 37.293171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488888, 29.516792, 37.441444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047053, 0.826309, -0.561247,
		-0.475678, 0.475536, 0.739997,
		0.878360, 0.301792, 0.370682,
		27.752396, 29.607330, 37.552650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078802, 30.068710, 37.501926>,  <27.137545, 29.396076, 37.293171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078802, 30.068710, 37.501926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463320, 30.009468, 37.408997>,  <27.694031, 29.973923, 37.353237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463320, 30.009468, 37.408997>,  <27.078802, 30.068710, 37.501926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463320, 30.009468, 37.408997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024686, 0.886141, -0.462758,
		0.274410, 0.439112, 0.855500,
		0.961296, -0.148104, -0.232326,
		27.751709, 29.965036, 37.339298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374907, 30.652197, 37.775597>,  <27.078802, 30.068710, 37.501926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374907, 30.652197, 37.775597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601229, 30.500669, 37.482651>,  <27.737022, 30.409754, 37.306881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601229, 30.500669, 37.482651>,  <27.374907, 30.652197, 37.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601229, 30.500669, 37.482651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091514, 0.911578, -0.400813,
		0.819445, 0.159761, 0.550443,
		0.565805, -0.378818, -0.732367,
		27.770969, 30.387024, 37.262939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993126, 30.984276, 37.860519>,  <27.374907, 30.652197, 37.775597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993126, 30.984276, 37.860519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909792, 30.852877, 37.492023>,  <27.859793, 30.774036, 37.270924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909792, 30.852877, 37.492023>,  <27.993126, 30.984276, 37.860519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909792, 30.852877, 37.492023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096675, 0.930380, -0.353620,
		0.973269, -0.162732, -0.162071,
		-0.208333, -0.328499, -0.921242,
		27.847292, 30.754328, 37.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446308, 31.483429, 37.435532>,  <27.993126, 30.984276, 37.860519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446308, 31.483429, 37.435532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153593, 31.335766, 37.206375>,  <27.977964, 31.247168, 37.068882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153593, 31.335766, 37.206375>,  <28.446308, 31.483429, 37.435532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153593, 31.335766, 37.206375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042567, 0.863713, -0.502183,
		0.680202, -0.343105, -0.647769,
		-0.731788, -0.369160, -0.572894,
		27.934057, 31.225018, 37.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628750, 31.023521, 36.780697>,  <28.446308, 31.483429, 37.435532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628750, 31.023521, 36.780697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920549, 31.194164, 36.994553>,  <29.095629, 31.296551, 37.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920549, 31.194164, 36.994553>,  <28.628750, 31.023521, 36.780697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920549, 31.194164, 36.994553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654313, -0.207541, -0.727187,
		-0.199265, 0.880302, -0.430536,
		0.729499, 0.426608, 0.534638,
		29.139399, 31.322147, 37.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032694, 31.450741, 36.262222>,  <28.628750, 31.023521, 36.780697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032694, 31.450741, 36.262222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283962, 31.371489, 36.563194>,  <29.434723, 31.323938, 36.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283962, 31.371489, 36.563194>,  <29.032694, 31.450741, 36.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283962, 31.371489, 36.563194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722650, -0.209889, -0.658577,
		0.288409, 0.957440, 0.011331,
		0.628170, -0.198128, 0.752428,
		29.472414, 31.312050, 36.788921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712107, 31.883949, 36.130558>,  <29.032694, 31.450741, 36.262222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712107, 31.883949, 36.130558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741453, 31.529572, 36.313740>,  <29.759062, 31.316944, 36.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741453, 31.529572, 36.313740>,  <29.712107, 31.883949, 36.130558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741453, 31.529572, 36.313740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626669, -0.316260, -0.712226,
		0.775824, 0.339238, 0.531991,
		0.073367, -0.885944, 0.457952,
		29.763464, 31.263788, 36.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420195, 31.798412, 36.254501>,  <29.712107, 31.883949, 36.130558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420195, 31.798412, 36.254501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248655, 31.437958, 36.229057>,  <30.145731, 31.221685, 36.213791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248655, 31.437958, 36.229057>,  <30.420195, 31.798412, 36.254501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248655, 31.437958, 36.229057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671517, -0.270887, -0.689699,
		0.604280, -0.338493, 0.721297,
		-0.428847, -0.901134, -0.063612,
		30.120001, 31.167618, 36.209972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849327, 31.263527, 36.502316>,  <30.420195, 31.798412, 36.254501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849327, 31.263527, 36.502316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614004, 31.149807, 36.199509>,  <30.472811, 31.081575, 36.017826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614004, 31.149807, 36.199509>,  <30.849327, 31.263527, 36.502316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614004, 31.149807, 36.199509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804747, -0.114108, -0.582548,
		0.079236, -0.951921, 0.295920,
		-0.588306, -0.284299, -0.757014,
		30.437511, 31.064518, 35.972404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087362, 30.623472, 36.231136>,  <30.849327, 31.263527, 36.502316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087362, 30.623472, 36.231136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922073, 30.822317, 35.925949>,  <30.822901, 30.941624, 35.742836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922073, 30.822317, 35.925949>,  <31.087362, 30.623472, 36.231136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922073, 30.822317, 35.925949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790819, -0.219516, -0.571330,
		-0.451500, -0.839459, -0.302417,
		-0.413223, 0.497112, -0.762972,
		30.798107, 30.971451, 35.697056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961466, 30.279970, 35.477097>,  <31.087362, 30.623472, 36.231136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961466, 30.279970, 35.477097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049324, 30.670193, 35.474388>,  <31.102039, 30.904325, 35.472763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049324, 30.670193, 35.474388>,  <30.961466, 30.279970, 35.477097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049324, 30.670193, 35.474388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864397, -0.197824, -0.462259,
		-0.452299, 0.095683, -0.886719,
		0.219645, 0.975557, -0.006767,
		31.115217, 30.962860, 35.472359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308262, 30.654097, 34.817413>,  <30.961466, 30.279970, 35.477097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308262, 30.654097, 34.817413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421741, 30.896360, 35.114788>,  <31.489828, 31.041719, 35.293213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421741, 30.896360, 35.114788>,  <31.308262, 30.654097, 34.817413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421741, 30.896360, 35.114788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932523, 0.006382, -0.361054,
		-0.223420, 0.795698, -0.562981,
		0.283698, 0.605659, 0.743433,
		31.506851, 31.078058, 35.337818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713743, 31.333256, 34.582565>,  <31.308262, 30.654097, 34.817413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713743, 31.333256, 34.582565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812445, 31.189894, 34.942711>,  <31.871666, 31.103876, 35.158798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812445, 31.189894, 34.942711>,  <31.713743, 31.333256, 34.582565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812445, 31.189894, 34.942711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946001, -0.112461, -0.304029,
		0.210222, 0.926768, 0.311299,
		0.246756, -0.358403, 0.900366,
		31.886471, 31.082373, 35.212822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110901, 31.837378, 35.072067>,  <31.713743, 31.333256, 34.582565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110901, 31.837378, 35.072067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199352, 31.449154, 35.110249>,  <32.252422, 31.216219, 35.133160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199352, 31.449154, 35.110249>,  <32.110901, 31.837378, 35.072067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199352, 31.449154, 35.110249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936615, 0.184079, -0.298107,
		0.271759, 0.155328, 0.949747,
		0.221133, -0.970561, 0.095457,
		32.265694, 31.157986, 35.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628983, 32.273811, 35.075180>,  <32.110901, 31.837378, 35.072067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628983, 32.273811, 35.075180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978268, 32.466156, 35.106846>,  <33.187840, 32.581562, 35.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978268, 32.466156, 35.106846>,  <32.628983, 32.273811, 35.075180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978268, 32.466156, 35.106846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444454, 0.852434, -0.275349,
		-0.199890, 0.205253, 0.958079,
		0.873215, 0.480862, 0.079168,
		33.240231, 32.610416, 35.130596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354198, 32.959232, 35.061363>,  <32.628983, 32.273811, 35.075180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354198, 32.959232, 35.061363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748863, 33.008545, 35.103870>,  <32.985664, 33.038132, 35.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748863, 33.008545, 35.103870>,  <32.354198, 32.959232, 35.061363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748863, 33.008545, 35.103870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099057, 0.972894, -0.208964,
		-0.129151, 0.195650, 0.972132,
		0.986665, 0.123284, 0.106270,
		33.044861, 33.045528, 35.135750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922014, 32.811848, 34.408985>,  <32.354198, 32.959232, 35.061363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922014, 32.811848, 34.408985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216942, 32.818901, 34.138859>,  <32.393898, 32.823132, 33.976784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216942, 32.818901, 34.138859>,  <31.922014, 32.811848, 34.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216942, 32.818901, 34.138859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489357, -0.675218, -0.551915,
		-0.465714, 0.737407, -0.489225,
		0.737319, 0.017629, -0.675314,
		32.438137, 32.824188, 33.936264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613668, 32.897892, 33.800385>,  <31.922014, 32.811848, 34.408985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613668, 32.897892, 33.800385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956272, 32.750072, 33.656261>,  <32.161835, 32.661381, 33.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956272, 32.750072, 33.656261>,  <31.613668, 32.897892, 33.800385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956272, 32.750072, 33.656261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509504, -0.716882, -0.475906,
		-0.082430, 0.591198, -0.802303,
		0.856511, -0.369547, -0.360310,
		32.213226, 32.639210, 33.548168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565016, 32.825867, 33.044758>,  <31.613668, 32.897892, 33.800385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565016, 32.825867, 33.044758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848013, 32.570274, 33.165531>,  <32.017811, 32.416920, 33.237995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848013, 32.570274, 33.165531>,  <31.565016, 32.825867, 33.044758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848013, 32.570274, 33.165531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603736, -0.768541, -0.211773,
		0.367368, -0.032463, -0.929509,
		0.707491, -0.638977, 0.301936,
		32.060261, 32.378582, 33.256111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551533, 32.348961, 32.500092>,  <31.565016, 32.825867, 33.044758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551533, 32.348961, 32.500092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658974, 32.178284, 32.845528>,  <31.723438, 32.075878, 33.052788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658974, 32.178284, 32.845528>,  <31.551533, 32.348961, 32.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658974, 32.178284, 32.845528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692673, -0.708570, -0.134658,
		0.669371, -0.562015, -0.485882,
		0.268601, -0.426693, 0.863589,
		31.739553, 32.050274, 33.104603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833338, 31.740227, 32.413105>,  <31.551533, 32.348961, 32.500092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833338, 31.740227, 32.413105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610607, 31.785494, 32.742260>,  <31.476969, 31.812654, 32.939751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610607, 31.785494, 32.742260>,  <31.833338, 31.740227, 32.413105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610607, 31.785494, 32.742260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619731, -0.716229, -0.320857,
		0.553062, -0.688628, 0.468949,
		-0.556826, 0.113169, 0.822884,
		31.443560, 31.819445, 32.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641928, 31.100893, 32.623459>,  <31.833338, 31.740227, 32.413105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641928, 31.100893, 32.623459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384836, 31.353205, 32.797367>,  <31.230581, 31.504591, 32.901711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384836, 31.353205, 32.797367>,  <31.641928, 31.100893, 32.623459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384836, 31.353205, 32.797367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687149, -0.725580, 0.036872,
		0.338716, -0.275052, 0.899788,
		-0.642727, 0.630777, 0.434768,
		31.192019, 31.542439, 32.927795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312878, 30.966858, 33.297226>,  <31.641928, 31.100893, 32.623459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312878, 30.966858, 33.297226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042574, 31.198195, 33.114418>,  <30.880392, 31.336996, 33.004734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042574, 31.198195, 33.114418>,  <31.312878, 30.966858, 33.297226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042574, 31.198195, 33.114418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673579, -0.736323, 0.064178,
		-0.299399, 0.351210, 0.887137,
		-0.675760, 0.578342, -0.457022,
		30.839846, 31.371696, 32.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978952, 31.122782, 33.283638>,  <31.312878, 30.966858, 33.297226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978952, 31.122782, 33.283638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237869, 31.326372, 33.056671>,  <32.393219, 31.448526, 32.920490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237869, 31.326372, 33.056671>,  <31.978952, 31.122782, 33.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237869, 31.326372, 33.056671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004138, 0.742042, 0.670340,
		0.762237, -0.436249, 0.478206,
		0.647285, 0.508980, -0.567417,
		32.432056, 31.479065, 32.886448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488941, 31.348488, 33.786674>,  <31.978952, 31.122782, 33.283638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488941, 31.348488, 33.786674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480183, 31.554127, 33.443695>,  <32.474926, 31.677509, 33.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480183, 31.554127, 33.443695>,  <32.488941, 31.348488, 33.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480183, 31.554127, 33.443695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282632, 0.825857, 0.487935,
		0.958978, -0.231658, -0.163386,
		-0.021899, 0.514097, -0.857453,
		32.473614, 31.708355, 33.186459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160854, 31.662291, 33.474140>,  <32.488941, 31.348488, 33.786674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160854, 31.662291, 33.474140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832527, 31.878490, 33.400257>,  <32.635532, 32.008209, 33.355927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832527, 31.878490, 33.400257>,  <33.160854, 31.662291, 33.474140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832527, 31.878490, 33.400257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420503, 0.790664, 0.445002,
		0.386567, 0.287594, -0.876274,
		-0.820818, 0.540499, -0.184711,
		32.586281, 32.040642, 33.344845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348507, 32.247959, 33.052200>,  <33.160854, 31.662291, 33.474140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348507, 32.247959, 33.052200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013298, 32.347279, 33.246544>,  <32.812172, 32.406872, 33.363152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013298, 32.347279, 33.246544>,  <33.348507, 32.247959, 33.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013298, 32.347279, 33.246544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464523, 0.791800, 0.396574,
		-0.286236, 0.558033, -0.778889,
		-0.838026, 0.248298, 0.485861,
		32.761890, 32.421768, 33.392303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216301, 32.933304, 32.926746>,  <33.348507, 32.247959, 33.052200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216301, 32.933304, 32.926746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018780, 32.862144, 33.267220>,  <32.900269, 32.819450, 33.471504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018780, 32.862144, 33.267220>,  <33.216301, 32.933304, 32.926746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018780, 32.862144, 33.267220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283684, 0.892339, 0.351076,
		-0.822001, 0.414829, -0.390169,
		-0.493799, -0.177900, 0.851184,
		32.870640, 32.808773, 33.522575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859634, 32.338638, 32.460293>,  <33.216301, 32.933304, 32.926746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859634, 32.338638, 32.460293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574921, 32.476837, 32.215672>,  <32.404091, 32.559757, 32.068901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574921, 32.476837, 32.215672>,  <32.859634, 32.338638, 32.460293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574921, 32.476837, 32.215672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353579, -0.576058, -0.736979,
		-0.606915, -0.740801, 0.287867,
		-0.711783, 0.345500, -0.611550,
		32.361385, 32.580486, 32.032207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612331, 31.768185, 32.064930>,  <32.859634, 32.338638, 32.460293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612331, 31.768185, 32.064930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518841, 32.091839, 31.849272>,  <32.462746, 32.286030, 31.719877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518841, 32.091839, 31.849272>,  <32.612331, 31.768185, 32.064930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518841, 32.091839, 31.849272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318362, -0.460247, -0.828745,
		-0.918704, -0.365342, -0.150025,
		-0.233727, 0.809134, -0.539142,
		32.448723, 32.334579, 31.687529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334877, 31.474430, 31.469698>,  <32.612331, 31.768185, 32.064930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334877, 31.474430, 31.469698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437431, 31.845730, 31.361908>,  <32.498966, 32.068508, 31.297234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437431, 31.845730, 31.361908>,  <32.334877, 31.474430, 31.469698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437431, 31.845730, 31.361908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176455, -0.319060, -0.931163,
		-0.950331, 0.191189, -0.245598,
		0.256389, 0.928249, -0.269477,
		32.514347, 32.124207, 31.281065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010174, 31.667334, 30.809134>,  <32.334877, 31.474430, 31.469698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010174, 31.667334, 30.809134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330894, 31.900585, 30.861408>,  <32.523327, 32.040535, 30.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330894, 31.900585, 30.861408>,  <32.010174, 31.667334, 30.809134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330894, 31.900585, 30.861408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225840, -0.093209, -0.969695,
		-0.553276, 0.807015, -0.206429,
		0.801799, 0.583129, 0.130686,
		32.571434, 32.075523, 30.900614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963457, 32.087627, 30.242828>,  <32.010174, 31.667334, 30.809134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963457, 32.087627, 30.242828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347458, 32.094070, 30.354641>,  <32.577858, 32.097939, 30.421728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347458, 32.094070, 30.354641>,  <31.963457, 32.087627, 30.242828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347458, 32.094070, 30.354641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279190, 0.020475, -0.960018,
		-0.021190, 0.999660, 0.015158,
		0.960002, 0.016111, 0.279529,
		32.635460, 32.098904, 30.438499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293236, 32.553726, 29.831863>,  <31.963457, 32.087627, 30.242828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293236, 32.553726, 29.831863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606731, 32.339046, 29.956892>,  <32.794830, 32.210239, 30.031910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606731, 32.339046, 29.956892>,  <32.293236, 32.553726, 29.831863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606731, 32.339046, 29.956892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436322, 0.117621, -0.892070,
		0.442008, 0.835535, 0.326358,
		0.783743, -0.536699, 0.312573,
		32.841854, 32.178036, 30.050663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882942, 32.858994, 29.482754>,  <32.293236, 32.553726, 29.831863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882942, 32.858994, 29.482754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046448, 32.508224, 29.583879>,  <33.144550, 32.297764, 29.644554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046448, 32.508224, 29.583879>,  <32.882942, 32.858994, 29.482754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046448, 32.508224, 29.583879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499800, -0.016685, -0.865980,
		0.763618, 0.480338, 0.431467,
		0.408764, -0.876925, 0.252814,
		33.169075, 32.245148, 29.659723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566319, 32.909794, 29.271679>,  <32.882942, 32.858994, 29.482754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566319, 32.909794, 29.271679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537239, 32.512196, 29.304386>,  <33.519791, 32.273636, 29.324011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537239, 32.512196, 29.304386>,  <33.566319, 32.909794, 29.271679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537239, 32.512196, 29.304386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582938, -0.108872, -0.805189,
		0.809257, -0.010869, 0.587353,
		-0.072698, -0.993996, 0.081770,
		33.515430, 32.213997, 29.328917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304939, 32.655582, 29.266060>,  <33.566319, 32.909794, 29.271679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304939, 32.655582, 29.266060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072098, 32.343678, 29.173864>,  <33.932392, 32.156536, 29.118547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072098, 32.343678, 29.173864>,  <34.304939, 32.655582, 29.266060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072098, 32.343678, 29.173864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673606, -0.303682, -0.673820,
		0.455424, -0.547492, 0.702027,
		-0.582104, -0.779763, -0.230490,
		33.897465, 32.109749, 29.104717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773582, 31.981125, 29.378557>,  <34.304939, 32.655582, 29.266060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773582, 31.981125, 29.378557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466427, 31.864456, 29.150425>,  <34.282135, 31.794455, 29.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466427, 31.864456, 29.150425>,  <34.773582, 31.981125, 29.378557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466427, 31.864456, 29.150425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635089, -0.463037, -0.618271,
		-0.083751, -0.836973, 0.540798,
		-0.767886, -0.291674, -0.570332,
		34.236061, 31.776955, 28.979326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875130, 31.252111, 29.275747>,  <34.773582, 31.981125, 29.378557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875130, 31.252111, 29.275747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637882, 31.378695, 28.979620>,  <34.495533, 31.454643, 28.801945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637882, 31.378695, 28.979620>,  <34.875130, 31.252111, 29.275747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637882, 31.378695, 28.979620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588400, -0.457253, -0.666862,
		-0.549545, -0.831128, 0.085001,
		-0.593115, 0.316457, -0.740317,
		34.459949, 31.473631, 28.757524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806427, 30.641428, 28.702709>,  <34.875130, 31.252111, 29.275747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806427, 30.641428, 28.702709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671509, 30.963316, 28.507299>,  <34.590557, 31.156448, 28.390055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671509, 30.963316, 28.507299>,  <34.806427, 30.641428, 28.702709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671509, 30.963316, 28.507299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400930, -0.346723, -0.847961,
		-0.851753, -0.481881, -0.205687,
		-0.337300, 0.804720, -0.488523,
		34.570320, 31.204731, 28.360743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360107, 30.416840, 28.025408>,  <34.806427, 30.641428, 28.702709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360107, 30.416840, 28.025408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480099, 30.793522, 27.964474>,  <34.552094, 31.019531, 27.927914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480099, 30.793522, 27.964474>,  <34.360107, 30.416840, 28.025408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480099, 30.793522, 27.964474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117501, -0.194950, -0.973750,
		-0.946681, 0.274206, -0.169132,
		0.299981, 0.941703, -0.152336,
		34.570091, 31.076033, 27.918774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075748, 30.654980, 27.301699>,  <34.360107, 30.416840, 28.025408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075748, 30.654980, 27.301699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371506, 30.907822, 27.394426>,  <34.548962, 31.059526, 27.450064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371506, 30.907822, 27.394426>,  <34.075748, 30.654980, 27.301699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371506, 30.907822, 27.394426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355541, -0.074186, -0.931712,
		-0.571743, 0.771322, -0.279592,
		0.739392, 0.632107, 0.231821,
		34.593323, 31.097454, 27.463972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042000, 31.254108, 26.925220>,  <34.075748, 30.654980, 27.301699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042000, 31.254108, 26.925220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428574, 31.266417, 27.027250>,  <34.660519, 31.273802, 27.088469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428574, 31.266417, 27.027250>,  <34.042000, 31.254108, 26.925220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428574, 31.266417, 27.027250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256919, -0.108715, -0.960299,
		-0.001817, 0.993597, -0.112971,
		0.966431, 0.030769, 0.255077,
		34.718502, 31.275648, 27.103773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362694, 31.778351, 26.503881>,  <34.042000, 31.254108, 26.925220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362694, 31.778351, 26.503881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660454, 31.546734, 26.636894>,  <34.839111, 31.407763, 26.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660454, 31.546734, 26.636894>,  <34.362694, 31.778351, 26.503881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660454, 31.546734, 26.636894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315849, -0.133423, -0.939382,
		0.588311, 0.804305, 0.083571,
		0.744399, -0.579044, 0.332533,
		34.883774, 31.373020, 26.736654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033401, 32.009995, 26.220047>,  <34.362694, 31.778351, 26.503881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033401, 32.009995, 26.220047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084068, 31.625378, 26.317522>,  <35.114468, 31.394606, 26.376007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084068, 31.625378, 26.317522>,  <35.033401, 32.009995, 26.220047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084068, 31.625378, 26.317522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309346, -0.195121, -0.930716,
		0.942475, 0.193276, 0.272735,
		0.126669, -0.961547, 0.243686,
		35.122070, 31.336914, 26.390627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456802, 31.857731, 25.724802>,  <35.033401, 32.009995, 26.220047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456802, 31.857731, 25.724802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379539, 31.500593, 25.887541>,  <35.333183, 31.286310, 25.985184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379539, 31.500593, 25.887541>,  <35.456802, 31.857731, 25.724802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379539, 31.500593, 25.887541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257829, -0.446269, -0.856953,
		0.946687, -0.060628, 0.316400,
		-0.193155, -0.892843, 0.406845,
		35.321594, 31.232740, 26.009594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035866, 31.448385, 25.618509>,  <35.456802, 31.857731, 25.724802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035866, 31.448385, 25.618509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742432, 31.184200, 25.682560>,  <35.566372, 31.025690, 25.720991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742432, 31.184200, 25.682560>,  <36.035866, 31.448385, 25.618509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742432, 31.184200, 25.682560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274386, -0.503410, -0.819323,
		0.621741, -0.557108, 0.550517,
		-0.733587, -0.660461, 0.160128,
		35.522354, 30.986061, 25.730598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239376, 30.761795, 25.437624>,  <36.035866, 31.448385, 25.618509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239376, 30.761795, 25.437624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842648, 30.760643, 25.386593>,  <35.604610, 30.759951, 25.355974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842648, 30.760643, 25.386593>,  <36.239376, 30.761795, 25.437624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842648, 30.760643, 25.386593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121798, -0.319651, -0.939675,
		-0.038071, -0.947531, 0.317389,
		-0.991825, -0.002883, -0.127577,
		35.545101, 30.759779, 25.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021606, 30.011610, 25.125219>,  <36.239376, 30.761795, 25.437624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021606, 30.011610, 25.125219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709385, 30.253616, 25.062359>,  <35.522053, 30.398821, 25.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709385, 30.253616, 25.062359>,  <36.021606, 30.011610, 25.125219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709385, 30.253616, 25.062359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096980, -0.365573, -0.925717,
		-0.617525, -0.707327, 0.344022,
		-0.780549, 0.605017, -0.157154,
		35.475220, 30.435122, 25.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573128, 29.636604, 24.580997>,  <36.021606, 30.011610, 25.125219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573128, 29.636604, 24.580997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476810, 30.024597, 24.567442>,  <35.419018, 30.257393, 24.559309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476810, 30.024597, 24.567442>,  <35.573128, 29.636604, 24.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476810, 30.024597, 24.567442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085286, -0.013634, -0.996263,
		-0.966821, -0.242788, -0.079443,
		-0.240797, 0.969984, -0.033888,
		35.404572, 30.315592, 24.557276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908554, 29.742426, 24.102026>,  <35.573128, 29.636604, 24.580997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908554, 29.742426, 24.102026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075367, 30.105345, 24.123543>,  <35.175457, 30.323095, 24.136454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075367, 30.105345, 24.123543>,  <34.908554, 29.742426, 24.102026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075367, 30.105345, 24.123543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170699, -0.020054, -0.985119,
		-0.892717, 0.420012, -0.163238,
		0.417036, 0.907297, 0.053793,
		35.200478, 30.377533, 24.139681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592243, 30.012062, 23.615786>,  <34.908554, 29.742426, 24.102026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592243, 30.012062, 23.615786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899181, 30.257608, 23.689928>,  <35.083344, 30.404936, 23.734413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899181, 30.257608, 23.689928>,  <34.592243, 30.012062, 23.615786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899181, 30.257608, 23.689928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154857, 0.103107, -0.982542,
		-0.622259, 0.782649, -0.015943,
		0.767342, 0.613864, 0.185358,
		35.129383, 30.441767, 23.745535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559509, 30.535007, 23.033569>,  <34.592243, 30.012062, 23.615786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559509, 30.535007, 23.033569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925770, 30.589487, 23.184845>,  <35.145527, 30.622175, 23.275610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925770, 30.589487, 23.184845>,  <34.559509, 30.535007, 23.033569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925770, 30.589487, 23.184845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341579, 0.232330, -0.910685,
		-0.211899, 0.963054, 0.166211,
		0.915654, 0.136199, 0.378190,
		35.200466, 30.630346, 23.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744770, 31.162403, 22.912554>,  <34.559509, 30.535007, 23.033569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744770, 31.162403, 22.912554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057247, 30.912786, 22.919588>,  <35.244736, 30.763018, 22.923809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057247, 30.912786, 22.919588>,  <34.744770, 31.162403, 22.912554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057247, 30.912786, 22.919588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226493, 0.257056, -0.939480,
		0.581752, 0.737900, 0.342151,
		0.781195, -0.624040, 0.017587,
		35.291607, 30.725574, 22.924864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069798, 31.328835, 22.384979>,  <34.744770, 31.162403, 22.912554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069798, 31.328835, 22.384979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346870, 31.079258, 22.529694>,  <35.513115, 30.929512, 22.616522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346870, 31.079258, 22.529694>,  <35.069798, 31.328835, 22.384979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346870, 31.079258, 22.529694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536741, 0.110882, -0.836429,
		0.481769, 0.773564, 0.411702,
		0.692681, -0.623943, 0.361784,
		35.554676, 30.892075, 22.638229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725006, 31.736883, 22.522570>,  <35.069798, 31.328835, 22.384979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725006, 31.736883, 22.522570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802963, 31.347788, 22.472288>,  <35.849735, 31.114330, 22.442120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802963, 31.347788, 22.472288>,  <35.725006, 31.736883, 22.522570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802963, 31.347788, 22.472288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473316, 0.205525, -0.856581,
		0.859063, 0.107440, 0.500466,
		0.194890, -0.972736, -0.125706,
		35.861431, 31.055967, 22.434576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395367, 31.621429, 22.348886>,  <35.725006, 31.736883, 22.522570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395367, 31.621429, 22.348886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235611, 31.276258, 22.225052>,  <36.139755, 31.069157, 22.150751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235611, 31.276258, 22.225052>,  <36.395367, 31.621429, 22.348886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235611, 31.276258, 22.225052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352154, 0.167382, -0.920853,
		0.846447, -0.476805, 0.237032,
		-0.399392, -0.862926, -0.309588,
		36.115795, 31.017382, 22.132175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847347, 31.317183, 21.899748>,  <36.395367, 31.621429, 22.348886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847347, 31.317183, 21.899748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504494, 31.145363, 21.786045>,  <36.298782, 31.042271, 21.717823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504494, 31.145363, 21.786045>,  <36.847347, 31.317183, 21.899748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504494, 31.145363, 21.786045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290487, 0.052610, -0.955432,
		0.425360, -0.901509, 0.079685,
		-0.857138, -0.429549, -0.284255,
		36.247353, 31.016499, 21.700769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007740, 30.711279, 21.339670>,  <36.847347, 31.317183, 21.899748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007740, 30.711279, 21.339670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668304, 30.922194, 21.322376>,  <36.464645, 31.048742, 21.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668304, 30.922194, 21.322376>,  <37.007740, 30.711279, 21.339670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668304, 30.922194, 21.322376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144036, 0.151627, -0.977887,
		-0.509072, -0.836049, -0.204617,
		-0.848586, 0.527287, -0.043233,
		36.413727, 31.080379, 21.309406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716667, 30.578262, 20.738695>,  <37.007740, 30.711279, 21.339670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716667, 30.578262, 20.738695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512859, 30.912077, 20.822542>,  <36.390575, 31.112366, 20.872850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512859, 30.912077, 20.822542>,  <36.716667, 30.578262, 20.738695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512859, 30.912077, 20.822542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020138, 0.255112, -0.966702,
		-0.860224, -0.488332, -0.146791,
		-0.509519, 0.834536, 0.209620,
		36.360004, 31.162437, 20.885427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362682, 30.655645, 20.153967>,  <36.716667, 30.578262, 20.738695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362682, 30.655645, 20.153967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341202, 31.020542, 20.316412>,  <36.328312, 31.239481, 20.413879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341202, 31.020542, 20.316412>,  <36.362682, 30.655645, 20.153967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341202, 31.020542, 20.316412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052711, 0.403545, -0.913440,
		-0.997165, -0.070459, 0.026415,
		-0.053700, 0.912243, 0.406115,
		36.325092, 31.294214, 20.438246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116531, 30.917885, 19.623619>,  <36.362682, 30.655645, 20.153967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116531, 30.917885, 19.623619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189770, 31.240694, 19.848185>,  <36.233711, 31.434380, 19.982924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189770, 31.240694, 19.848185>,  <36.116531, 30.917885, 19.623619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189770, 31.240694, 19.848185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195531, 0.529766, -0.825297,
		-0.963454, 0.260880, -0.060803,
		0.183092, 0.807025, 0.561415,
		36.244698, 31.482801, 20.016609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729374, 31.496967, 19.362976>,  <36.116531, 30.917885, 19.623619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729374, 31.496967, 19.362976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015270, 31.690842, 19.564661>,  <36.186806, 31.807165, 19.685673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015270, 31.690842, 19.564661>,  <35.729374, 31.496967, 19.362976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015270, 31.690842, 19.564661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148062, 0.599730, -0.786385,
		-0.683540, 0.636714, 0.356887,
		0.714739, 0.484684, 0.504212,
		36.229691, 31.836246, 19.715925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586166, 32.251785, 19.334930>,  <35.729374, 31.496967, 19.362976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586166, 32.251785, 19.334930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978401, 32.235008, 19.411543>,  <36.213741, 32.224941, 19.457510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978401, 32.235008, 19.411543>,  <35.586166, 32.251785, 19.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978401, 32.235008, 19.411543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173786, 0.638216, -0.749986,
		-0.090785, 0.768714, 0.633117,
		0.980590, -0.041940, 0.191533,
		36.272579, 32.222427, 19.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817486, 32.876274, 19.323357>,  <35.586166, 32.251785, 19.334930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817486, 32.876274, 19.323357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158062, 32.677738, 19.255596>,  <36.362408, 32.558617, 19.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158062, 32.677738, 19.255596>,  <35.817486, 32.876274, 19.323357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158062, 32.677738, 19.255596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056430, 0.407835, -0.911310,
		0.521407, 0.766367, 0.375255,
		0.851440, -0.496339, -0.169401,
		36.413494, 32.528835, 19.204775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250565, 33.353168, 18.952044>,  <35.817486, 32.876274, 19.323357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250565, 33.353168, 18.952044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408115, 32.998020, 18.856920>,  <36.502644, 32.784931, 18.799847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408115, 32.998020, 18.856920>,  <36.250565, 33.353168, 18.952044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408115, 32.998020, 18.856920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239371, 0.348876, -0.906083,
		0.887449, 0.299957, 0.349943,
		0.393873, -0.887869, -0.237809,
		36.526276, 32.731659, 18.785578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962986, 33.409176, 18.790037>,  <36.250565, 33.353168, 18.952044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962986, 33.409176, 18.790037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828434, 33.081573, 18.604103>,  <36.747704, 32.885010, 18.492542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828434, 33.081573, 18.604103>,  <36.962986, 33.409176, 18.790037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828434, 33.081573, 18.604103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151197, 0.440226, -0.885065,
		0.929509, -0.368000, -0.024251,
		-0.336380, -0.819010, -0.464835,
		36.727520, 32.835869, 18.464653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295910, 33.368774, 18.193964>,  <36.962986, 33.409176, 18.790037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295910, 33.368774, 18.193964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994045, 33.125259, 18.096090>,  <36.812927, 32.979153, 18.037367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994045, 33.125259, 18.096090>,  <37.295910, 33.368774, 18.193964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994045, 33.125259, 18.096090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007820, 0.364557, -0.931148,
		0.656070, -0.704613, -0.270356,
		-0.754659, -0.608784, -0.244685,
		36.767647, 32.942623, 18.022684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487450, 33.190659, 17.547573>,  <37.295910, 33.368774, 18.193964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487450, 33.190659, 17.547573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101215, 33.086796, 17.553612>,  <36.869476, 33.024479, 17.557236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101215, 33.086796, 17.553612>,  <37.487450, 33.190659, 17.547573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101215, 33.086796, 17.553612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086657, 0.266436, -0.959949,
		0.245216, -0.928224, -0.279766,
		-0.965588, -0.259639, 0.015103,
		36.811539, 33.008900, 17.558142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377537, 32.964661, 16.965378>,  <37.487450, 33.190659, 17.547573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377537, 32.964661, 16.965378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991135, 33.004730, 17.060707>,  <36.759293, 33.028770, 17.117905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991135, 33.004730, 17.060707>,  <37.377537, 32.964661, 16.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991135, 33.004730, 17.060707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228864, 0.097334, -0.968580,
		-0.120223, -0.990198, -0.071099,
		-0.966006, 0.100174, 0.238322,
		36.701332, 33.034782, 17.132204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000797, 32.626972, 16.480417>,  <37.377537, 32.964661, 16.965378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000797, 32.626972, 16.480417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735947, 32.886425, 16.630541>,  <36.577034, 33.042099, 16.720615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735947, 32.886425, 16.630541>,  <37.000797, 32.626972, 16.480417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735947, 32.886425, 16.630541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237677, 0.293197, -0.926038,
		-0.710699, -0.702360, -0.039969,
		-0.662131, 0.648634, 0.375309,
		36.537308, 33.081017, 16.743134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447338, 32.646175, 16.084375>,  <37.000797, 32.626972, 16.480417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447338, 32.646175, 16.084375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386261, 32.995300, 16.269798>,  <36.349613, 33.204777, 16.381052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386261, 32.995300, 16.269798>,  <36.447338, 32.646175, 16.084375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386261, 32.995300, 16.269798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217301, 0.427926, -0.877302,
		-0.964088, -0.234688, 0.124323,
		-0.152692, 0.872812, 0.463556,
		36.340454, 33.257145, 16.408865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756245, 32.904324, 16.023403>,  <36.447338, 32.646175, 16.084375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756245, 32.904324, 16.023403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008793, 33.214478, 16.028219>,  <36.160324, 33.400570, 16.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008793, 33.214478, 16.028219>,  <35.756245, 32.904324, 16.023403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008793, 33.214478, 16.028219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415224, 0.351139, -0.839220,
		-0.654947, 0.524862, 0.543659,
		0.631374, 0.775385, 0.012042,
		36.198204, 33.447094, 16.031832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373833, 33.377972, 15.736664>,  <35.756245, 32.904324, 16.023403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373833, 33.377972, 15.736664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726902, 33.563877, 15.764604>,  <35.938744, 33.675419, 15.781367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726902, 33.563877, 15.764604>,  <35.373833, 33.377972, 15.736664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726902, 33.563877, 15.764604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255808, 0.599782, -0.758171,
		-0.394262, 0.651352, 0.648303,
		0.882678, 0.464759, 0.069850,
		35.991707, 33.703304, 15.785559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094482, 34.088852, 15.790895>,  <35.373833, 33.377972, 15.736664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094482, 34.088852, 15.790895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431000, 34.051125, 15.577980>,  <35.632912, 34.028488, 15.450232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431000, 34.051125, 15.577980>,  <35.094482, 34.088852, 15.790895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431000, 34.051125, 15.577980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285465, 0.758658, -0.585617,
		0.459058, 0.644625, 0.611330,
		0.841294, -0.094319, -0.532286,
		35.683388, 34.022827, 15.418294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567108, 34.666988, 15.843658>,  <35.094482, 34.088852, 15.790895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567108, 34.666988, 15.843658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572708, 34.478168, 15.491074>,  <35.576069, 34.364876, 15.279523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572708, 34.478168, 15.491074>,  <35.567108, 34.666988, 15.843658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572708, 34.478168, 15.491074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334946, 0.828403, -0.448954,
		0.942133, 0.301527, -0.146513,
		0.014000, -0.472049, -0.881461,
		35.576908, 34.336555, 15.226635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899891, 34.999008, 15.451885>,  <35.567108, 34.666988, 15.843658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899891, 34.999008, 15.451885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627190, 34.807068, 15.230996>,  <35.463570, 34.691902, 15.098463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627190, 34.807068, 15.230996>,  <35.899891, 34.999008, 15.451885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627190, 34.807068, 15.230996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031741, 0.773525, -0.632970,
		0.730889, -0.414004, -0.542587,
		-0.681758, -0.479854, -0.552221,
		35.422665, 34.663113, 15.065330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207325, 34.348000, 15.076859>,  <35.899891, 34.999008, 15.451885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207325, 34.348000, 15.076859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381470, 34.672012, 14.919727>,  <36.485958, 34.866421, 14.825449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381470, 34.672012, 14.919727>,  <36.207325, 34.348000, 15.076859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381470, 34.672012, 14.919727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226909, 0.323529, 0.918608,
		0.871191, -0.489062, -0.042951,
		0.435360, 0.810029, -0.392828,
		36.512077, 34.915020, 14.801879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805347, 34.405582, 15.318629>,  <36.207325, 34.348000, 15.076859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805347, 34.405582, 15.318629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733200, 34.779686, 15.196805>,  <36.689911, 35.004147, 15.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733200, 34.779686, 15.196805>,  <36.805347, 34.405582, 15.318629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733200, 34.779686, 15.196805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177827, 0.335545, 0.925087,
		0.967390, 0.112700, -0.226837,
		-0.180371, 0.935258, -0.304562,
		36.679089, 35.060265, 15.105436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343060, 34.808067, 15.495960>,  <36.805347, 34.405582, 15.318629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343060, 34.808067, 15.495960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044670, 35.072304, 15.462149>,  <36.865635, 35.230846, 15.441862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044670, 35.072304, 15.462149>,  <37.343060, 34.808067, 15.495960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044670, 35.072304, 15.462149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200191, 0.343479, 0.917576,
		0.635175, 0.667565, -0.388470,
		-0.745973, 0.660589, -0.084529,
		36.820877, 35.270481, 15.436790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479507, 35.425869, 15.958813>,  <37.343060, 34.808067, 15.495960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479507, 35.425869, 15.958813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081249, 35.392616, 15.941937>,  <36.842293, 35.372665, 15.931812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081249, 35.392616, 15.941937>,  <37.479507, 35.425869, 15.958813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081249, 35.392616, 15.941937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060252, 0.228504, 0.971677,
		-0.071137, 0.969987, -0.232518,
		-0.995645, -0.083132, -0.042189,
		36.782555, 35.367676, 15.929281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227772, 36.002666, 16.249405>,  <37.479507, 35.425869, 15.958813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227772, 36.002666, 16.249405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936455, 35.728676, 16.257380>,  <36.761665, 35.564281, 16.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936455, 35.728676, 16.257380>,  <37.227772, 36.002666, 16.249405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936455, 35.728676, 16.257380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177455, 0.216619, 0.959993,
		-0.661892, 0.695617, -0.279314,
		-0.728292, -0.684977, 0.019938,
		36.717968, 35.523182, 16.263361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610790, 36.244442, 16.417225>,  <37.227772, 36.002666, 16.249405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610790, 36.244442, 16.417225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609787, 35.862690, 16.536663>,  <36.609184, 35.633640, 16.608326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609787, 35.862690, 16.536663>,  <36.610790, 36.244442, 16.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609787, 35.862690, 16.536663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129930, 0.296377, 0.946192,
		-0.991520, -0.036420, -0.124746,
		-0.002511, -0.954376, 0.298596,
		36.609035, 35.576378, 16.626242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021797, 36.104176, 16.903511>,  <36.610790, 36.244442, 16.417225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021797, 36.104176, 16.903511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285870, 35.814178, 16.982042>,  <36.444313, 35.640179, 17.029161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285870, 35.814178, 16.982042>,  <36.021797, 36.104176, 16.903511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285870, 35.814178, 16.982042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054838, 0.214167, 0.975257,
		-0.749100, -0.654614, 0.101632,
		0.660183, -0.724992, 0.196330,
		36.483925, 35.596680, 17.040941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747990, 35.613522, 17.402819>,  <36.021797, 36.104176, 16.903511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747990, 35.613522, 17.402819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146561, 35.621532, 17.435654>,  <36.385704, 35.626339, 17.455355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146561, 35.621532, 17.435654>,  <35.747990, 35.613522, 17.402819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146561, 35.621532, 17.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084445, 0.269878, 0.959184,
		-0.002946, -0.962686, 0.270604,
		0.996424, 0.020026, 0.082089,
		36.445488, 35.627541, 17.460279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870930, 35.083618, 17.913555>,  <35.747990, 35.613522, 17.402819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870930, 35.083618, 17.913555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195675, 35.315449, 17.885353>,  <36.390522, 35.454548, 17.868433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195675, 35.315449, 17.885353>,  <35.870930, 35.083618, 17.913555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195675, 35.315449, 17.885353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113641, -0.038416, 0.992779,
		0.572686, -0.814010, -0.097052,
		0.811860, 0.579580, -0.070504,
		36.439232, 35.489323, 17.864202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438744, 34.650574, 18.225416>,  <35.870930, 35.083618, 17.913555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438744, 34.650574, 18.225416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555626, 35.031853, 18.256462>,  <36.625755, 35.260620, 18.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555626, 35.031853, 18.256462>,  <36.438744, 34.650574, 18.225416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555626, 35.031853, 18.256462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135851, -0.121707, 0.983225,
		0.946658, -0.276757, -0.165056,
		0.292203, 0.953201, 0.077617,
		36.643288, 35.317814, 18.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105789, 34.716331, 18.559757>,  <36.438744, 34.650574, 18.225416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105789, 34.716331, 18.559757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962551, 35.087254, 18.603333>,  <36.876606, 35.309807, 18.629478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962551, 35.087254, 18.603333>,  <37.105789, 34.716331, 18.559757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962551, 35.087254, 18.603333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067341, -0.090721, 0.993597,
		0.931252, 0.363141, -0.029959,
		-0.358098, 0.927307, 0.108939,
		36.855122, 35.365444, 18.636015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510033, 34.845024, 19.154535>,  <37.105789, 34.716331, 18.559757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510033, 34.845024, 19.154535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224182, 35.121639, 19.112436>,  <37.052670, 35.287609, 19.087177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224182, 35.121639, 19.112436>,  <37.510033, 34.845024, 19.154535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224182, 35.121639, 19.112436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094846, 0.053275, 0.994065,
		0.693045, 0.720369, 0.027518,
		-0.714628, 0.691542, -0.105247,
		37.009792, 35.329102, 19.080862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674469, 35.456829, 19.664293>,  <37.510033, 34.845024, 19.154535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674469, 35.456829, 19.664293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283745, 35.424335, 19.585054>,  <37.049309, 35.404839, 19.537512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283745, 35.424335, 19.585054>,  <37.674469, 35.456829, 19.664293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283745, 35.424335, 19.585054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193468, -0.061437, 0.979181,
		-0.091717, 0.994799, 0.044295,
		-0.976810, -0.081238, -0.198096,
		36.990704, 35.399963, 19.525625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353008, 35.969307, 20.145502>,  <37.674469, 35.456829, 19.664293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353008, 35.969307, 20.145502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064037, 35.710522, 20.047895>,  <36.890656, 35.555252, 19.989332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064037, 35.710522, 20.047895>,  <37.353008, 35.969307, 20.145502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064037, 35.710522, 20.047895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400589, 0.103960, 0.910341,
		-0.563585, 0.755405, -0.334268,
		-0.722426, -0.646959, -0.244017,
		36.847309, 35.516434, 19.974689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828751, 36.325321, 20.403349>,  <37.353008, 35.969307, 20.145502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828751, 36.325321, 20.403349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733284, 35.939610, 20.357380>,  <36.676003, 35.708183, 20.329798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733284, 35.939610, 20.357380>,  <36.828751, 36.325321, 20.403349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733284, 35.939610, 20.357380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500238, 0.020647, 0.865642,
		-0.832345, 0.264091, -0.487296,
		-0.238669, -0.964277, -0.114923,
		36.661682, 35.650326, 20.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216961, 36.248150, 20.744017>,  <36.828751, 36.325321, 20.403349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216961, 36.248150, 20.744017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321362, 35.862755, 20.720116>,  <36.384003, 35.631519, 20.705774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321362, 35.862755, 20.720116>,  <36.216961, 36.248150, 20.744017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321362, 35.862755, 20.720116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468508, -0.180550, 0.864813,
		-0.844024, -0.197725, -0.498526,
		0.261005, -0.963487, -0.059753,
		36.399662, 35.573708, 20.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647312, 35.884975, 21.067379>,  <36.216961, 36.248150, 20.744017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647312, 35.884975, 21.067379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949974, 35.623451, 21.067047>,  <36.131573, 35.466537, 21.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949974, 35.623451, 21.067047>,  <35.647312, 35.884975, 21.067379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949974, 35.623451, 21.067047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332235, -0.385587, 0.860780,
		-0.563108, -0.651039, -0.508976,
		0.756657, -0.653812, -0.000829,
		36.176971, 35.427307, 21.066799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351376, 35.248920, 21.278006>,  <35.647312, 35.884975, 21.067379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351376, 35.248920, 21.278006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738651, 35.232548, 21.376745>,  <35.971016, 35.222725, 21.435989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738651, 35.232548, 21.376745>,  <35.351376, 35.248920, 21.278006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738651, 35.232548, 21.376745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227421, -0.555391, 0.799888,
		0.104359, -0.830581, -0.547032,
		0.968189, -0.040931, 0.246851,
		36.029106, 35.220268, 21.450800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582508, 34.510658, 21.399633>,  <35.351376, 35.248920, 21.278006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582508, 34.510658, 21.399633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842926, 34.751709, 21.584230>,  <35.999176, 34.896339, 21.694988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842926, 34.751709, 21.584230>,  <35.582508, 34.510658, 21.399633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842926, 34.751709, 21.584230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215165, -0.436532, 0.873581,
		0.727902, -0.668039, -0.154538,
		0.651047, 0.602630, 0.461491,
		36.038239, 34.932499, 21.722677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018349, 34.083298, 21.649931>,  <35.582508, 34.510658, 21.399633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018349, 34.083298, 21.649931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078781, 34.407753, 21.875931>,  <36.115040, 34.602428, 22.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078781, 34.407753, 21.875931>,  <36.018349, 34.083298, 21.649931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078781, 34.407753, 21.875931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021196, -0.568773, 0.822222,
		0.988294, -0.136196, -0.068737,
		0.151079, 0.811140, 0.565002,
		36.124104, 34.651096, 22.045431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354961, 33.940945, 22.254230>,  <36.018349, 34.083298, 21.649931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354961, 33.940945, 22.254230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220917, 34.294292, 22.385296>,  <36.140488, 34.506302, 22.463936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220917, 34.294292, 22.385296>,  <36.354961, 33.940945, 22.254230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220917, 34.294292, 22.385296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011985, -0.343748, 0.938985,
		0.942101, 0.318595, 0.104608,
		-0.335115, 0.883365, 0.327664,
		36.120384, 34.559303, 22.483595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715424, 34.007523, 22.995459>,  <36.354961, 33.940945, 22.254230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715424, 34.007523, 22.995459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419891, 34.276176, 22.973417>,  <36.242573, 34.437370, 22.960192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419891, 34.276176, 22.973417>,  <36.715424, 34.007523, 22.995459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419891, 34.276176, 22.973417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178274, -0.115941, 0.977126,
		0.649882, 0.731755, 0.205396,
		-0.738831, 0.671634, -0.055105,
		36.198242, 34.477665, 22.956886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878761, 34.515499, 23.558084>,  <36.715424, 34.007523, 22.995459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878761, 34.515499, 23.558084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486736, 34.503990, 23.479443>,  <36.251522, 34.497086, 23.432259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486736, 34.503990, 23.479443>,  <36.878761, 34.515499, 23.558084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486736, 34.503990, 23.479443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191415, -0.128717, 0.973032,
		-0.053305, 0.991264, 0.120643,
		-0.980061, -0.028774, -0.196604,
		36.192719, 34.495358, 23.420462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556187, 35.028538, 24.093082>,  <36.878761, 34.515499, 23.558084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556187, 35.028538, 24.093082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262089, 34.789360, 23.965408>,  <36.085629, 34.645855, 23.888803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262089, 34.789360, 23.965408>,  <36.556187, 35.028538, 24.093082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262089, 34.789360, 23.965408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385196, -0.018865, 0.922642,
		-0.557707, 0.801318, -0.216454,
		-0.735246, -0.597941, -0.319186,
		36.041515, 34.609978, 23.869652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885273, 35.294487, 24.349409>,  <36.556187, 35.028538, 24.093082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885273, 35.294487, 24.349409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805103, 34.910511, 24.271074>,  <35.757004, 34.680126, 24.224073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805103, 34.910511, 24.271074>,  <35.885273, 35.294487, 24.349409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805103, 34.910511, 24.271074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552851, -0.054210, 0.831515,
		-0.808819, 0.274921, -0.519837,
		-0.200420, -0.959937, -0.195836,
		35.744976, 34.622528, 24.212324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154774, 35.215565, 24.444366>,  <35.885273, 35.294487, 24.349409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154774, 35.215565, 24.444366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256756, 34.828785, 24.445253>,  <35.317947, 34.596718, 24.445786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256756, 34.828785, 24.445253>,  <35.154774, 35.215565, 24.444366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256756, 34.828785, 24.445253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597331, -0.155695, 0.786737,
		-0.760389, -0.201911, -0.617285,
		0.254958, -0.966949, 0.002219,
		35.333244, 34.538700, 24.445919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478729, 34.851677, 24.536327>,  <35.154774, 35.215565, 24.444366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478729, 34.851677, 24.536327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768990, 34.599010, 24.645456>,  <34.943146, 34.447411, 24.710934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768990, 34.599010, 24.645456>,  <34.478729, 34.851677, 24.536327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768990, 34.599010, 24.645456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567472, -0.325181, 0.756461,
		-0.389112, -0.703746, -0.594419,
		0.725650, -0.631664, 0.272824,
		34.986683, 34.409512, 24.727303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197113, 34.168037, 24.527838>,  <34.478729, 34.851677, 24.536327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197113, 34.168037, 24.527838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524483, 34.154419, 24.757278>,  <34.720905, 34.146248, 24.894943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524483, 34.154419, 24.757278>,  <34.197113, 34.168037, 24.527838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524483, 34.154419, 24.757278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526426, -0.444571, 0.724730,
		0.230335, -0.895097, -0.381769,
		0.818426, -0.034042, 0.573602,
		34.770012, 34.144207, 24.929359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158855, 33.583546, 24.893816>,  <34.197113, 34.168037, 24.527838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158855, 33.583546, 24.893816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409302, 33.799534, 25.118816>,  <34.559570, 33.929127, 25.253817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409302, 33.799534, 25.118816>,  <34.158855, 33.583546, 24.893816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409302, 33.799534, 25.118816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496496, -0.280160, 0.821585,
		0.601225, -0.793686, 0.092683,
		0.626115, 0.539975, 0.562501,
		34.597137, 33.961525, 25.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462368, 33.180534, 25.552629>,  <34.158855, 33.583546, 24.893816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462368, 33.180534, 25.552629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475883, 33.569252, 25.645994>,  <34.483994, 33.802483, 25.702013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475883, 33.569252, 25.645994>,  <34.462368, 33.180534, 25.552629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475883, 33.569252, 25.645994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526509, -0.181198, 0.830636,
		0.849498, -0.150961, 0.505534,
		0.033792, 0.971791, 0.233410,
		34.486019, 33.860790, 25.716017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590054, 33.254990, 26.259571>,  <34.462368, 33.180534, 25.552629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590054, 33.254990, 26.259571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437584, 33.616840, 26.183296>,  <34.346100, 33.833950, 26.137531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437584, 33.616840, 26.183296>,  <34.590054, 33.254990, 26.259571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437584, 33.616840, 26.183296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555519, -0.059250, 0.829390,
		0.738987, 0.422074, 0.525121,
		-0.381177, 0.904623, -0.190685,
		34.323231, 33.888226, 26.126091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630375, 33.711830, 26.894949>,  <34.590054, 33.254990, 26.259571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630375, 33.711830, 26.894949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344494, 33.868027, 26.662840>,  <34.172966, 33.961742, 26.523575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344494, 33.868027, 26.662840>,  <34.630375, 33.711830, 26.894949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344494, 33.868027, 26.662840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565596, 0.165391, 0.807928,
		0.411459, 0.905629, 0.102653,
		-0.714705, 0.390489, -0.580271,
		34.130081, 33.985172, 26.488758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407623, 34.376816, 27.220100>,  <34.630375, 33.711830, 26.894949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407623, 34.376816, 27.220100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106453, 34.257462, 26.985470>,  <33.925751, 34.185848, 26.844692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106453, 34.257462, 26.985470>,  <34.407623, 34.376816, 27.220100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106453, 34.257462, 26.985470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653496, 0.233657, 0.719964,
		-0.077771, 0.925402, -0.370921,
		-0.752925, -0.298388, -0.586574,
		33.880577, 34.167946, 26.809498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887917, 34.870106, 27.460943>,  <34.407623, 34.376816, 27.220100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887917, 34.870106, 27.460943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678707, 34.597366, 27.256386>,  <33.553181, 34.433723, 27.133652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678707, 34.597366, 27.256386>,  <33.887917, 34.870106, 27.460943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678707, 34.597366, 27.256386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754616, 0.091522, 0.649753,
		-0.396231, 0.725743, -0.562404,
		-0.523026, -0.681851, -0.511393,
		33.521801, 34.392811, 27.102968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195889, 35.130524, 27.331398>,  <33.887917, 34.870106, 27.460943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195889, 35.130524, 27.331398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120178, 34.739857, 27.290794>,  <33.074753, 34.505459, 27.266432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120178, 34.739857, 27.290794>,  <33.195889, 35.130524, 27.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120178, 34.739857, 27.290794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765720, 0.082091, 0.637914,
		-0.614694, 0.198468, -0.763388,
		-0.189273, -0.976663, -0.101510,
		33.063396, 34.446857, 27.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434769, 35.048519, 27.275194>,  <33.195889, 35.130524, 27.331398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434769, 35.048519, 27.275194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593262, 34.694988, 27.374668>,  <32.688358, 34.482868, 27.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593262, 34.694988, 27.374668>,  <32.434769, 35.048519, 27.275194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593262, 34.694988, 27.374668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725178, -0.135134, 0.675170,
		-0.563130, -0.447866, -0.694479,
		0.396234, -0.883829, 0.248685,
		32.712132, 34.429840, 27.449274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859632, 34.607822, 27.426096>,  <32.434769, 35.048519, 27.275194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859632, 34.607822, 27.426096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135189, 34.403122, 27.631439>,  <32.300522, 34.280300, 27.754644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135189, 34.403122, 27.631439>,  <31.859632, 34.607822, 27.426096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135189, 34.403122, 27.631439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628632, -0.069182, 0.774620,
		-0.360899, -0.856342, -0.369364,
		0.688893, -0.511754, 0.513356,
		32.341858, 34.249596, 27.785446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544508, 34.076397, 27.836691>,  <31.859632, 34.607822, 27.426096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544508, 34.076397, 27.836691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881470, 34.154060, 28.037750>,  <32.083649, 34.200657, 28.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881470, 34.154060, 28.037750>,  <31.544508, 34.076397, 27.836691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881470, 34.154060, 28.037750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521294, 0.057526, 0.851436,
		0.136398, -0.979282, 0.149674,
		0.842406, 0.194158, 0.502647,
		32.134193, 34.212307, 28.188545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301151, 33.857864, 28.503916>,  <31.544508, 34.076397, 27.836691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301151, 33.857864, 28.503916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647636, 34.037323, 28.591908>,  <31.855528, 34.144997, 28.644703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647636, 34.037323, 28.591908>,  <31.301151, 33.857864, 28.503916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647636, 34.037323, 28.591908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348312, 0.226503, 0.909601,
		0.358264, -0.864530, 0.352469,
		0.866214, 0.448646, 0.219978,
		31.907501, 34.171917, 28.657902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536119, 33.598186, 29.099730>,  <31.301151, 33.857864, 28.503916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536119, 33.598186, 29.099730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735540, 33.944836, 29.107840>,  <31.855194, 34.152824, 29.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735540, 33.944836, 29.107840>,  <31.536119, 33.598186, 29.099730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735540, 33.944836, 29.107840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317447, 0.160759, 0.934550,
		0.806642, -0.472360, 0.355254,
		0.498554, 0.866621, 0.020274,
		31.885107, 34.204823, 29.113922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910469, 33.621563, 29.802090>,  <31.536119, 33.598186, 29.099730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910469, 33.621563, 29.802090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899708, 33.996918, 29.664278>,  <31.893251, 34.222130, 29.581591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899708, 33.996918, 29.664278>,  <31.910469, 33.621563, 29.802090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899708, 33.996918, 29.664278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088323, 0.341075, 0.935878,
		0.995729, 0.055609, 0.073705,
		-0.026905, 0.938390, -0.344529,
		31.891636, 34.278435, 29.560919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439472, 33.996166, 30.172771>,  <31.910469, 33.621563, 29.802090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439472, 33.996166, 30.172771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142006, 34.236263, 30.055008>,  <31.963526, 34.380322, 29.984350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142006, 34.236263, 30.055008>,  <32.439472, 33.996166, 30.172771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142006, 34.236263, 30.055008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061779, 0.376786, 0.924238,
		0.665693, 0.705511, -0.243120,
		-0.743664, 0.600239, -0.294410,
		31.918907, 34.416336, 29.966684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764420, 34.652294, 30.301029>,  <32.439472, 33.996166, 30.172771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764420, 34.652294, 30.301029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364861, 34.633499, 30.301426>,  <32.125126, 34.622223, 30.301664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364861, 34.633499, 30.301426>,  <32.764420, 34.652294, 30.301029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364861, 34.633499, 30.301426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017079, 0.382540, 0.923781,
		-0.043786, 0.922744, -0.382920,
		-0.998895, -0.046989, 0.000991,
		32.065193, 34.619404, 30.301723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558067, 35.363186, 30.568409>,  <32.764420, 34.652294, 30.301029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558067, 35.363186, 30.568409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215958, 35.160412, 30.611340>,  <32.010693, 35.038746, 30.637098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215958, 35.160412, 30.611340>,  <32.558067, 35.363186, 30.568409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215958, 35.160412, 30.611340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083985, 0.340001, 0.936667,
		-0.511320, 0.792096, -0.333370,
		-0.855277, -0.506934, 0.107325,
		31.959375, 35.008331, 30.643538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258625, 35.204487, 30.345518>,  <32.558067, 35.363186, 30.568409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258625, 35.204487, 30.345518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590153, 35.225380, 30.568346>,  <33.789070, 35.237915, 30.702042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590153, 35.225380, 30.568346>,  <33.258625, 35.204487, 30.345518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590153, 35.225380, 30.568346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473990, 0.463489, -0.748673,
		-0.297297, 0.884562, 0.359394,
		0.828823, 0.052229, 0.557068,
		33.838799, 35.241047, 30.735466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438866, 35.850330, 30.316195>,  <33.258625, 35.204487, 30.345518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438866, 35.850330, 30.316195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777691, 35.656815, 30.404217>,  <33.980988, 35.540707, 30.457031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777691, 35.656815, 30.404217>,  <33.438866, 35.850330, 30.316195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777691, 35.656815, 30.404217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472369, 0.495506, -0.728932,
		0.243611, 0.721402, 0.648254,
		0.847066, -0.483791, 0.220058,
		34.031811, 35.511677, 30.470234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893364, 36.430676, 30.401573>,  <33.438866, 35.850330, 30.316195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893364, 36.430676, 30.401573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122108, 36.106209, 30.352598>,  <34.259354, 35.911530, 30.323214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122108, 36.106209, 30.352598>,  <33.893364, 36.430676, 30.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122108, 36.106209, 30.352598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607318, 0.518952, -0.601543,
		0.551489, 0.269639, 0.789401,
		0.571860, -0.811162, -0.122440,
		34.293667, 35.862862, 30.315866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582470, 36.611557, 30.521202>,  <33.893364, 36.430676, 30.401573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582470, 36.611557, 30.521202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594128, 36.282509, 30.294062>,  <34.601124, 36.085079, 30.157778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594128, 36.282509, 30.294062>,  <34.582470, 36.611557, 30.521202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594128, 36.282509, 30.294062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514753, 0.499325, -0.696924,
		0.856843, -0.271989, 0.437998,
		0.029148, -0.822616, -0.567850,
		34.602871, 36.035725, 30.123707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278149, 36.640232, 30.392372>,  <34.582470, 36.611557, 30.521202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278149, 36.640232, 30.392372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120865, 36.422680, 30.095839>,  <35.026493, 36.292149, 29.917917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120865, 36.422680, 30.095839>,  <35.278149, 36.640232, 30.392372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120865, 36.422680, 30.095839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451086, 0.588468, -0.670989,
		0.801192, -0.598245, 0.013947,
		-0.393209, -0.543882, -0.741336,
		35.002903, 36.259514, 29.873438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822334, 36.543507, 29.941282>,  <35.278149, 36.640232, 30.392372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822334, 36.543507, 29.941282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521015, 36.410816, 29.714127>,  <35.340225, 36.331203, 29.577833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521015, 36.410816, 29.714127>,  <35.822334, 36.543507, 29.941282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521015, 36.410816, 29.714127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540324, 0.180131, -0.821951,
		0.374959, -0.926018, 0.043549,
		-0.753297, -0.331729, -0.567891,
		35.295025, 36.311298, 29.543758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062878, 36.031769, 29.423254>,  <35.822334, 36.543507, 29.941282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062878, 36.031769, 29.423254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730831, 36.184170, 29.260405>,  <35.531605, 36.275612, 29.162695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730831, 36.184170, 29.260405>,  <36.062878, 36.031769, 29.423254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730831, 36.184170, 29.260405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475601, 0.102671, -0.873649,
		-0.291064, -0.918855, -0.266434,
		-0.830112, 0.381005, -0.407125,
		35.481796, 36.298470, 29.138268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028065, 35.689236, 28.760504>,  <36.062878, 36.031769, 29.423254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028065, 35.689236, 28.760504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801750, 36.018044, 28.734644>,  <35.665962, 36.215328, 28.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801750, 36.018044, 28.734644>,  <36.028065, 35.689236, 28.760504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801750, 36.018044, 28.734644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443578, 0.237337, -0.864240,
		-0.695075, -0.517649, -0.498909,
		-0.565782, 0.822016, -0.064650,
		35.632015, 36.264648, 28.715248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795971, 35.580578, 28.187567>,  <36.028065, 35.689236, 28.760504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795971, 35.580578, 28.187567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721531, 35.970520, 28.236582>,  <35.676865, 36.204487, 28.265991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721531, 35.970520, 28.236582>,  <35.795971, 35.580578, 28.187567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721531, 35.970520, 28.236582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359260, 0.183596, -0.915000,
		-0.914493, -0.126263, -0.384395,
		-0.186104, 0.974859, 0.122536,
		35.665699, 36.262978, 28.273342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503445, 35.874577, 27.546885>,  <35.795971, 35.580578, 28.187567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503445, 35.874577, 27.546885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612709, 36.223370, 27.709377>,  <35.678268, 36.432648, 27.806873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612709, 36.223370, 27.709377>,  <35.503445, 35.874577, 27.546885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612709, 36.223370, 27.709377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286808, 0.329263, -0.899626,
		-0.918218, 0.362255, -0.160150,
		0.273162, 0.871985, 0.406232,
		35.694656, 36.484966, 27.831247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188847, 36.448254, 27.201637>,  <35.503445, 35.874577, 27.546885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188847, 36.448254, 27.201637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506302, 36.607437, 27.385712>,  <35.696774, 36.702950, 27.496157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506302, 36.607437, 27.385712>,  <35.188847, 36.448254, 27.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506302, 36.607437, 27.385712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281340, 0.430597, -0.857574,
		-0.539437, 0.810069, 0.229774,
		0.793634, 0.397963, 0.460185,
		35.744392, 36.726826, 27.523767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090714, 37.198196, 27.007511>,  <35.188847, 36.448254, 27.201637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090714, 37.198196, 27.007511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471313, 37.143608, 27.117800>,  <35.699673, 37.110855, 27.183973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471313, 37.143608, 27.117800>,  <35.090714, 37.198196, 27.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471313, 37.143608, 27.117800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307237, 0.375223, -0.874536,
		0.015896, 0.916833, 0.398955,
		0.951500, -0.136475, 0.275721,
		35.756763, 37.102665, 27.200516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464260, 37.918751, 27.058273>,  <35.090714, 37.198196, 27.007511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464260, 37.918751, 27.058273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749638, 37.641731, 27.015619>,  <35.920864, 37.475521, 26.990026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749638, 37.641731, 27.015619>,  <35.464260, 37.918751, 27.058273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749638, 37.641731, 27.015619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235451, 0.380274, -0.894402,
		0.659966, 0.613001, 0.434366,
		0.713447, -0.692547, -0.106636,
		35.963673, 37.433968, 26.983629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975254, 38.289867, 26.806282>,  <35.464260, 37.918751, 27.058273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975254, 38.289867, 26.806282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089840, 37.921688, 26.699911>,  <36.158592, 37.700783, 26.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089840, 37.921688, 26.699911>,  <35.975254, 38.289867, 26.806282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089840, 37.921688, 26.699911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256337, 0.341073, -0.904412,
		0.923163, 0.190914, 0.333650,
		0.286464, -0.920446, -0.265927,
		36.175777, 37.645554, 26.620132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696133, 38.342640, 26.336803>,  <35.975254, 38.289867, 26.806282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696133, 38.342640, 26.336803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526779, 37.984535, 26.281305>,  <36.425167, 37.769672, 26.248007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526779, 37.984535, 26.281305>,  <36.696133, 38.342640, 26.336803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526779, 37.984535, 26.281305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386945, -0.040222, -0.921225,
		0.819160, -0.443715, 0.363448,
		-0.423380, -0.895265, -0.138745,
		36.399765, 37.715954, 26.239681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232044, 37.937908, 26.035004>,  <36.696133, 38.342640, 26.336803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232044, 37.937908, 26.035004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919678, 37.701073, 25.955406>,  <36.732258, 37.558971, 25.907648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919678, 37.701073, 25.955406>,  <37.232044, 37.937908, 26.035004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919678, 37.701073, 25.955406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429160, -0.277103, -0.859672,
		0.453863, -0.756731, 0.470496,
		-0.780916, -0.592091, -0.198992,
		36.685402, 37.523445, 25.895708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454628, 37.345619, 25.730007>,  <37.232044, 37.937908, 26.035004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454628, 37.345619, 25.730007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076023, 37.386353, 25.607538>,  <36.848858, 37.410793, 25.534058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076023, 37.386353, 25.607538>,  <37.454628, 37.345619, 25.730007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076023, 37.386353, 25.607538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294244, -0.116973, -0.948545,
		-0.132409, -0.987900, 0.080752,
		-0.946514, 0.101835, -0.306172,
		36.792068, 37.416901, 25.515686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271255, 36.798012, 25.420284>,  <37.454628, 37.345619, 25.730007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271255, 36.798012, 25.420284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988750, 37.045803, 25.283203>,  <36.819248, 37.194477, 25.200954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988750, 37.045803, 25.283203>,  <37.271255, 36.798012, 25.420284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988750, 37.045803, 25.283203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157487, -0.334472, -0.929154,
		-0.690215, -0.710194, 0.138663,
		-0.706258, 0.619478, -0.342704,
		36.776875, 37.231647, 25.180391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822639, 36.426018, 25.067055>,  <37.271255, 36.798012, 25.420284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822639, 36.426018, 25.067055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766243, 36.788380, 24.907324>,  <36.732407, 37.005795, 24.811485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766243, 36.788380, 24.907324>,  <36.822639, 36.426018, 25.067055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766243, 36.788380, 24.907324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251336, -0.357389, -0.899502,
		-0.957576, -0.227185, -0.177299,
		-0.140988, 0.905903, -0.399327,
		36.723946, 37.060150, 24.787525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313019, 36.425060, 24.517849>,  <36.822639, 36.426018, 25.067055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313019, 36.425060, 24.517849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524818, 36.756683, 24.445953>,  <36.651897, 36.955658, 24.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524818, 36.756683, 24.445953>,  <36.313019, 36.425060, 24.517849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524818, 36.756683, 24.445953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303697, -0.383089, -0.872360,
		-0.792088, 0.407324, -0.454624,
		0.529495, 0.829054, -0.179737,
		36.683666, 37.005398, 24.392033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300602, 36.395107, 23.889330>,  <36.313019, 36.425060, 24.517849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300602, 36.395107, 23.889330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603481, 36.648132, 23.954454>,  <36.785210, 36.799950, 23.993530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603481, 36.648132, 23.954454>,  <36.300602, 36.395107, 23.889330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603481, 36.648132, 23.954454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462331, -0.342961, -0.817697,
		-0.461408, 0.694435, -0.552144,
		0.757201, 0.632565, 0.162814,
		36.830643, 36.837902, 24.003298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463860, 36.592228, 23.284945>,  <36.300602, 36.395107, 23.889330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463860, 36.592228, 23.284945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792908, 36.691990, 23.489332>,  <36.990337, 36.751846, 23.611965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792908, 36.691990, 23.489332>,  <36.463860, 36.592228, 23.284945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792908, 36.691990, 23.489332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568587, -0.361292, -0.739037,
		0.000293, 0.898480, -0.439014,
		0.822623, 0.249401, 0.510970,
		37.039696, 36.766811, 23.642624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892097, 36.994835, 22.820343>,  <36.463860, 36.592228, 23.284945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892097, 36.994835, 22.820343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156487, 36.858082, 23.087547>,  <37.315121, 36.776031, 23.247869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156487, 36.858082, 23.087547>,  <36.892097, 36.994835, 22.820343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156487, 36.858082, 23.087547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635197, -0.219086, -0.740626,
		0.399556, 0.913849, 0.072351,
		0.660969, -0.341878, 0.668011,
		37.354778, 36.755520, 23.287951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608810, 37.254013, 22.601784>,  <36.892097, 36.994835, 22.820343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608810, 37.254013, 22.601784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679176, 36.933487, 22.830503>,  <37.721394, 36.741173, 22.967735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679176, 36.933487, 22.830503>,  <37.608810, 37.254013, 22.601784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679176, 36.933487, 22.830503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663219, -0.332770, -0.670376,
		0.727458, 0.497156, 0.472907,
		0.175913, -0.801312, 0.571799,
		37.731949, 36.693092, 23.002043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364845, 37.270679, 22.525721>,  <37.608810, 37.254013, 22.601784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364845, 37.270679, 22.525721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232552, 36.918423, 22.661419>,  <38.153175, 36.707069, 22.742838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232552, 36.918423, 22.661419>,  <38.364845, 37.270679, 22.525721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232552, 36.918423, 22.661419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727762, -0.466859, -0.502399,
		0.600812, 0.080729, 0.795303,
		-0.330737, -0.880639, 0.339246,
		38.133331, 36.654232, 22.763193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971817, 36.865314, 22.742628>,  <38.364845, 37.270679, 22.525721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971817, 36.865314, 22.742628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699936, 36.576813, 22.689276>,  <38.536808, 36.403713, 22.657265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699936, 36.576813, 22.689276>,  <38.971817, 36.865314, 22.742628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699936, 36.576813, 22.689276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679273, -0.550366, -0.485475,
		0.276744, -0.420581, 0.864017,
		-0.679706, -0.721256, -0.133379,
		38.496025, 36.360435, 22.649261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350754, 36.217598, 22.783720>,  <38.971817, 36.865314, 22.742628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350754, 36.217598, 22.783720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005226, 36.132435, 22.601074>,  <38.797909, 36.081337, 22.491488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005226, 36.132435, 22.601074>,  <39.350754, 36.217598, 22.783720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005226, 36.132435, 22.601074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481782, -0.614143, -0.625072,
		-0.147346, -0.759934, 0.633079,
		-0.863814, -0.212904, -0.456614,
		38.746082, 36.068565, 22.464090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395962, 35.439621, 22.610367>,  <39.350754, 36.217598, 22.783720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395962, 35.439621, 22.610367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134380, 35.637550, 22.381460>,  <38.977432, 35.756310, 22.244116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134380, 35.637550, 22.381460>,  <39.395962, 35.439621, 22.610367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134380, 35.637550, 22.381460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373101, -0.447102, -0.812955,
		-0.658134, -0.745149, 0.107763,
		-0.653954, 0.494826, -0.572269,
		38.938194, 35.785999, 22.209780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251255, 34.969391, 22.105801>,  <39.395962, 35.439621, 22.610367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251255, 34.969391, 22.105801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088360, 35.296280, 21.942675>,  <38.990623, 35.492413, 21.844799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088360, 35.296280, 21.942675>,  <39.251255, 34.969391, 22.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088360, 35.296280, 21.942675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402450, -0.240269, -0.883348,
		-0.819875, -0.523855, -0.231044,
		-0.407233, 0.817219, -0.407816,
		38.966190, 35.541447, 21.820330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938595, 34.746937, 21.435360>,  <39.251255, 34.969391, 22.105801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938595, 34.746937, 21.435360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997562, 35.141193, 21.402441>,  <39.032944, 35.377747, 21.382689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997562, 35.141193, 21.402441>,  <38.938595, 34.746937, 21.435360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997562, 35.141193, 21.402441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361369, -0.131129, -0.923156,
		-0.920695, 0.106350, -0.375512,
		0.147419, 0.985644, -0.082298,
		39.041786, 35.436886, 21.377752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681335, 34.920055, 20.831453>,  <38.938595, 34.746937, 21.435360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681335, 34.920055, 20.831453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945011, 35.210476, 20.909742>,  <39.103218, 35.384727, 20.956717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945011, 35.210476, 20.909742>,  <38.681335, 34.920055, 20.831453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945011, 35.210476, 20.909742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323275, -0.038621, -0.945517,
		-0.678939, 0.686550, -0.260175,
		0.659193, 0.726056, 0.195723,
		39.142769, 35.428291, 20.968460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594288, 35.410133, 20.151926>,  <38.681335, 34.920055, 20.831453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594288, 35.410133, 20.151926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943504, 35.483383, 20.332710>,  <39.153034, 35.527332, 20.441181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943504, 35.483383, 20.332710>,  <38.594288, 35.410133, 20.151926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943504, 35.483383, 20.332710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465529, -0.036985, -0.884260,
		-0.145216, 0.982393, -0.117540,
		0.873038, 0.183127, 0.451962,
		39.205414, 35.538322, 20.468298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930115, 35.845352, 19.682566>,  <38.594288, 35.410133, 20.151926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930115, 35.845352, 19.682566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224884, 35.704861, 19.913591>,  <39.401745, 35.620567, 20.052206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224884, 35.704861, 19.913591>,  <38.930115, 35.845352, 19.682566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224884, 35.704861, 19.913591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585129, -0.096384, -0.805192,
		0.338471, 0.931317, 0.134484,
		0.736927, -0.351225, 0.577564,
		39.445961, 35.599495, 20.086861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542683, 36.247334, 19.589169>,  <38.930115, 35.845352, 19.682566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542683, 36.247334, 19.589169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678013, 35.902966, 19.741146>,  <39.759209, 35.696346, 19.832333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678013, 35.902966, 19.741146>,  <39.542683, 36.247334, 19.589169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678013, 35.902966, 19.741146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646612, -0.080657, -0.758542,
		0.683688, 0.502309, 0.529392,
		0.338324, -0.860918, 0.379943,
		39.779510, 35.644691, 19.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232983, 36.337475, 19.649115>,  <39.542683, 36.247334, 19.589169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232983, 36.337475, 19.649115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172562, 35.942066, 19.648197>,  <40.136311, 35.704819, 19.647646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172562, 35.942066, 19.648197>,  <40.232983, 36.337475, 19.649115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172562, 35.942066, 19.648197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757377, -0.114237, -0.642908,
		0.635268, -0.098846, 0.765940,
		-0.151048, -0.988524, -0.002293,
		40.127247, 35.645508, 19.647509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902611, 36.070930, 19.659414>,  <40.232983, 36.337475, 19.649115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902611, 36.070930, 19.659414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680321, 35.769775, 19.518377>,  <40.546947, 35.589081, 19.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680321, 35.769775, 19.518377>,  <40.902611, 36.070930, 19.659414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680321, 35.769775, 19.518377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672098, -0.157224, -0.723577,
		0.489340, -0.639088, 0.593391,
		-0.555725, -0.752892, -0.352594,
		40.513603, 35.543907, 19.412600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415054, 35.622601, 19.430944>,  <40.902611, 36.070930, 19.659414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415054, 35.622601, 19.430944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084820, 35.486088, 19.251198>,  <40.886677, 35.404179, 19.143351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084820, 35.486088, 19.251198>,  <41.415054, 35.622601, 19.430944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084820, 35.486088, 19.251198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547201, -0.289821, -0.785223,
		0.137745, -0.894165, 0.426022,
		-0.825589, -0.341281, -0.449367,
		40.837143, 35.383705, 19.116388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725712, 35.163269, 19.055948>,  <41.415054, 35.622601, 19.430944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725712, 35.163269, 19.055948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357471, 35.189693, 18.902002>,  <41.136528, 35.205547, 18.809635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357471, 35.189693, 18.902002>,  <41.725712, 35.163269, 19.055948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357471, 35.189693, 18.902002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360970, -0.231985, -0.903263,
		-0.148950, -0.970474, 0.189722,
		-0.920606, 0.066057, -0.384866,
		41.081291, 35.209511, 18.786543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802422, 34.624645, 18.483656>,  <41.725712, 35.163269, 19.055948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802422, 34.624645, 18.483656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068459, 34.344761, 18.588011>,  <42.228081, 34.176830, 18.650623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068459, 34.344761, 18.588011>,  <41.802422, 34.624645, 18.483656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068459, 34.344761, 18.588011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339187, 0.028184, 0.940297,
		-0.665289, -0.713870, -0.218588,
		0.665089, -0.699711, 0.260886,
		42.267986, 34.134846, 18.666277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416340, 34.081738, 18.870804>,  <41.802422, 34.624645, 18.483656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416340, 34.081738, 18.870804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803463, 34.026642, 18.955061>,  <42.035736, 33.993584, 19.005615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803463, 34.026642, 18.955061>,  <41.416340, 34.081738, 18.870804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803463, 34.026642, 18.955061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229870, -0.142964, 0.962664,
		-0.102474, -0.980098, -0.170023,
		0.967812, -0.137731, 0.210645,
		42.093807, 33.985321, 19.018253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402554, 33.587612, 19.312611>,  <41.416340, 34.081738, 18.870804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402554, 33.587612, 19.312611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761024, 33.755283, 19.370800>,  <41.976105, 33.855888, 19.405714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761024, 33.755283, 19.370800>,  <41.402554, 33.587612, 19.312611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761024, 33.755283, 19.370800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093388, -0.142316, 0.985406,
		0.433765, -0.896680, -0.088394,
		0.896173, 0.419180, 0.145471,
		42.029877, 33.881039, 19.414442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791431, 33.129143, 19.807587>,  <41.402554, 33.587612, 19.312611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791431, 33.129143, 19.807587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949173, 33.496716, 19.810209>,  <42.043819, 33.717258, 19.811783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949173, 33.496716, 19.810209>,  <41.791431, 33.129143, 19.807587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949173, 33.496716, 19.810209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160467, 0.061836, 0.985102,
		0.904840, -0.389531, 0.171844,
		0.394354, 0.918935, 0.006555,
		42.067478, 33.772396, 19.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255688, 33.120148, 20.380892>,  <41.791431, 33.129143, 19.807587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255688, 33.120148, 20.380892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214275, 33.513577, 20.321739>,  <42.189426, 33.749634, 20.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214275, 33.513577, 20.321739>,  <42.255688, 33.120148, 20.380892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214275, 33.513577, 20.321739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249817, 0.118197, 0.961052,
		0.962742, 0.136443, 0.233476,
		-0.103532, 0.983571, -0.147879,
		42.183216, 33.808647, 20.277376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691074, 33.405918, 20.958839>,  <42.255688, 33.120148, 20.380892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691074, 33.405918, 20.958839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410812, 33.665928, 20.841158>,  <42.242657, 33.821934, 20.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410812, 33.665928, 20.841158>,  <42.691074, 33.405918, 20.958839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410812, 33.665928, 20.841158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202769, 0.213935, 0.955571,
		0.684083, 0.729180, -0.018090,
		-0.700653, 0.650022, -0.294204,
		42.200615, 33.860935, 20.752897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810661, 33.896221, 21.392805>,  <42.691074, 33.405918, 20.958839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810661, 33.896221, 21.392805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440628, 33.978832, 21.265324>,  <42.218609, 34.028400, 21.188835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440628, 33.978832, 21.265324>,  <42.810661, 33.896221, 21.392805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440628, 33.978832, 21.265324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224484, 0.379516, 0.897538,
		0.306323, 0.901838, -0.304720,
		-0.925080, 0.206531, -0.318703,
		42.163105, 34.040791, 21.169712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764385, 34.388721, 21.786697>,  <42.810661, 33.896221, 21.392805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764385, 34.388721, 21.786697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403442, 34.292839, 21.643429>,  <42.186874, 34.235310, 21.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403442, 34.292839, 21.643429>,  <42.764385, 34.388721, 21.786697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403442, 34.292839, 21.643429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406351, 0.196266, 0.892389,
		-0.143616, 0.950799, -0.274508,
		-0.902360, -0.239708, -0.358171,
		42.132736, 34.220928, 21.535978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310036, 35.022511, 21.926689>,  <42.764385, 34.388721, 21.786697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310036, 35.022511, 21.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069790, 34.703293, 21.907171>,  <41.925644, 34.511761, 21.895460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069790, 34.703293, 21.907171>,  <42.310036, 35.022511, 21.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069790, 34.703293, 21.907171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457388, 0.292893, 0.839649,
		-0.655788, 0.526624, -0.540933,
		-0.600615, -0.798048, -0.048796,
		41.889606, 34.463879, 21.892532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653111, 35.244396, 22.118904>,  <42.310036, 35.022511, 21.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653111, 35.244396, 22.118904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616001, 34.847660, 22.153860>,  <41.593735, 34.609619, 22.174833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616001, 34.847660, 22.153860>,  <41.653111, 35.244396, 22.118904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616001, 34.847660, 22.153860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528723, 0.123449, 0.839769,
		-0.843708, 0.031705, -0.535865,
		-0.092777, -0.991844, 0.087392,
		41.588169, 34.550106, 22.180079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959419, 35.234291, 22.456089>,  <41.653111, 35.244396, 22.118904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959419, 35.234291, 22.456089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111332, 34.871170, 22.527258>,  <41.202480, 34.653297, 22.569960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111332, 34.871170, 22.527258>,  <40.959419, 35.234291, 22.456089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111332, 34.871170, 22.527258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557810, -0.071298, 0.826901,
		-0.737978, -0.413291, -0.533459,
		0.379786, -0.907803, 0.177922,
		41.225269, 34.598827, 22.580635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334579, 34.798016, 22.550522>,  <40.959419, 35.234291, 22.456089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334579, 34.798016, 22.550522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657181, 34.642403, 22.728601>,  <40.850742, 34.549034, 22.835449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657181, 34.642403, 22.728601>,  <40.334579, 34.798016, 22.550522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657181, 34.642403, 22.728601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508864, -0.073390, 0.857713,
		-0.301006, -0.918296, -0.257154,
		0.806507, -0.389033, 0.445197,
		40.899132, 34.525692, 22.862162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101540, 34.176167, 22.860600>,  <40.334579, 34.798016, 22.550522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101540, 34.176167, 22.860600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431343, 34.314896, 23.039438>,  <40.629227, 34.398132, 23.146742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431343, 34.314896, 23.039438>,  <40.101540, 34.176167, 22.860600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431343, 34.314896, 23.039438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413325, -0.170482, 0.894482,
		0.386449, -0.922306, 0.002787,
		0.824512, 0.346824, 0.447095,
		40.678696, 34.418941, 23.173567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089645, 33.872555, 23.497869>,  <40.101540, 34.176167, 22.860600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089645, 33.872555, 23.497869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331451, 34.184959, 23.560587>,  <40.476536, 34.372402, 23.598217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331451, 34.184959, 23.560587>,  <40.089645, 33.872555, 23.497869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331451, 34.184959, 23.560587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371203, 0.102030, 0.922929,
		0.704821, -0.616125, 0.351593,
		0.604512, 0.781012, 0.156795,
		40.512806, 34.419262, 23.607626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188984, 33.861427, 24.133745>,  <40.089645, 33.872555, 23.497869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188984, 33.861427, 24.133745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288307, 34.242058, 24.061247>,  <40.347900, 34.470436, 24.017748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288307, 34.242058, 24.061247>,  <40.188984, 33.861427, 24.133745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288307, 34.242058, 24.061247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389763, 0.269437, 0.880618,
		0.886807, -0.148024, 0.437792,
		0.248310, 0.951574, -0.181244,
		40.362801, 34.527531, 24.006874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500866, 34.091446, 24.755207>,  <40.188984, 33.861427, 24.133745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500866, 34.091446, 24.755207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444447, 34.442703, 24.572351>,  <40.410595, 34.653458, 24.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444447, 34.442703, 24.572351>,  <40.500866, 34.091446, 24.755207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444447, 34.442703, 24.572351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472858, 0.345923, 0.810396,
		0.869777, 0.330465, 0.366444,
		-0.141046, 0.878140, -0.457139,
		40.402134, 34.706146, 24.435209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525467, 34.634911, 25.373596>,  <40.500866, 34.091446, 24.755207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525467, 34.634911, 25.373596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334000, 34.801609, 25.064482>,  <40.219120, 34.901627, 24.879013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334000, 34.801609, 25.064482>,  <40.525467, 34.634911, 25.373596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334000, 34.801609, 25.064482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637431, 0.440331, 0.632290,
		0.603784, 0.795257, 0.054871,
		-0.478672, 0.416743, -0.772786,
		40.190399, 34.926632, 24.832645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408695, 35.376045, 25.428701>,  <40.525467, 34.634911, 25.373596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408695, 35.376045, 25.428701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112720, 35.249382, 25.191309>,  <39.935135, 35.173382, 25.048874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112720, 35.249382, 25.191309>,  <40.408695, 35.376045, 25.428701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112720, 35.249382, 25.191309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630846, 0.632929, 0.448814,
		0.233507, 0.706488, -0.668093,
		-0.739937, -0.316663, -0.593479,
		39.890739, 35.154385, 25.013266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998138, 36.029373, 25.298416>,  <40.408695, 35.376045, 25.428701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998138, 36.029373, 25.298416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769230, 35.712814, 25.212444>,  <39.631886, 35.522881, 25.160862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769230, 35.712814, 25.212444>,  <39.998138, 36.029373, 25.298416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769230, 35.712814, 25.212444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728246, 0.369933, 0.576895,
		-0.377044, 0.486661, -0.788035,
		-0.572272, -0.791398, -0.214928,
		39.597549, 35.475395, 25.147966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286091, 36.256863, 25.225737>,  <39.998138, 36.029373, 25.298416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286091, 36.256863, 25.225737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236664, 35.864475, 25.285648>,  <39.207008, 35.629044, 25.321596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236664, 35.864475, 25.285648>,  <39.286091, 36.256863, 25.225737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236664, 35.864475, 25.285648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675437, 0.193717, 0.711518,
		-0.726991, -0.013249, -0.686519,
		-0.123563, -0.980968, 0.149779,
		39.199596, 35.570187, 25.330582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545315, 36.278923, 25.332361>,  <39.286091, 36.256863, 25.225737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545315, 36.278923, 25.332361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671440, 35.928852, 25.479136>,  <38.747116, 35.718811, 25.567200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671440, 35.928852, 25.479136>,  <38.545315, 36.278923, 25.332361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671440, 35.928852, 25.479136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663915, 0.072845, 0.744252,
		-0.678081, -0.478289, -0.558074,
		0.315314, -0.875176, 0.366938,
		38.766033, 35.666298, 25.589216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982162, 35.844364, 25.485195>,  <38.545315, 36.278923, 25.332361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982162, 35.844364, 25.485195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279205, 35.715771, 25.720203>,  <38.457432, 35.638615, 25.861208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279205, 35.715771, 25.720203>,  <37.982162, 35.844364, 25.485195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279205, 35.715771, 25.720203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616145, 0.015865, 0.787473,
		-0.262478, -0.946784, -0.186297,
		0.742611, -0.321480, 0.587520,
		38.501987, 35.619328, 25.896460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610085, 35.437786, 25.890829>,  <37.982162, 35.844364, 25.485195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610085, 35.437786, 25.890829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957565, 35.461788, 26.087502>,  <38.166054, 35.476189, 26.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957565, 35.461788, 26.087502>,  <37.610085, 35.437786, 25.890829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957565, 35.461788, 26.087502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487823, -0.068491, 0.870251,
		0.085896, -0.995845, -0.030227,
		0.868706, 0.060005, 0.491679,
		38.218178, 35.479790, 26.235004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541340, 34.927860, 26.394468>,  <37.610085, 35.437786, 25.890829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541340, 34.927860, 26.394468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821110, 35.183048, 26.523336>,  <37.988972, 35.336163, 26.600657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821110, 35.183048, 26.523336>,  <37.541340, 34.927860, 26.394468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821110, 35.183048, 26.523336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348412, -0.089223, 0.933085,
		0.624027, -0.764873, 0.159873,
		0.699427, 0.637972, 0.322168,
		38.030937, 35.374439, 26.619987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888912, 34.598934, 27.008671>,  <37.541340, 34.927860, 26.394468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888912, 34.598934, 27.008671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993744, 34.983982, 27.036016>,  <38.056644, 35.215012, 27.052423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993744, 34.983982, 27.036016>,  <37.888912, 34.598934, 27.008671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993744, 34.983982, 27.036016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201289, -0.014756, 0.979421,
		0.943820, -0.270447, 0.189898,
		0.262079, 0.962622, 0.068365,
		38.072369, 35.272770, 27.056526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296513, 34.678890, 27.633156>,  <37.888912, 34.598934, 27.008671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296513, 34.678890, 27.633156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192329, 35.058395, 27.561596>,  <38.129818, 35.286098, 27.518660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192329, 35.058395, 27.561596>,  <38.296513, 34.678890, 27.633156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192329, 35.058395, 27.561596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029262, 0.192968, 0.980769,
		0.965042, 0.250213, -0.078022,
		-0.260457, 0.948766, -0.178901,
		38.114193, 35.343025, 27.507925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858028, 35.251339, 27.927771>,  <38.296513, 34.678890, 27.633156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858028, 35.251339, 27.927771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490009, 35.404186, 27.893126>,  <38.269199, 35.495895, 27.872339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490009, 35.404186, 27.893126>,  <38.858028, 35.251339, 27.927771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490009, 35.404186, 27.893126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010250, 0.244449, 0.969608,
		0.391679, 0.891195, -0.228821,
		-0.920045, 0.382121, -0.086611,
		38.213997, 35.518822, 27.867142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977505, 35.766590, 28.326525>,  <38.858028, 35.251339, 27.927771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977505, 35.766590, 28.326525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578487, 35.783062, 28.303856>,  <38.339077, 35.792946, 28.290255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578487, 35.783062, 28.303856>,  <38.977505, 35.766590, 28.326525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578487, 35.783062, 28.303856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049827, 0.151553, 0.987193,
		0.049240, 0.987591, -0.149129,
		-0.997543, 0.041178, -0.056671,
		38.279224, 35.795414, 28.286854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690216, 36.411335, 28.723879>,  <38.977505, 35.766590, 28.326525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690216, 36.411335, 28.723879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415329, 36.122555, 28.691570>,  <38.250397, 35.949287, 28.672186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415329, 36.122555, 28.691570>,  <38.690216, 36.411335, 28.723879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415329, 36.122555, 28.691570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106494, -0.009865, 0.994264,
		-0.718606, 0.691875, -0.070104,
		-0.687215, -0.721950, -0.080770,
		38.209164, 35.905972, 28.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212242, 36.632397, 29.263046>,  <38.690216, 36.411335, 28.723879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212242, 36.632397, 29.263046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100014, 36.254276, 29.196491>,  <38.032677, 36.027405, 29.156559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100014, 36.254276, 29.196491>,  <38.212242, 36.632397, 29.263046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100014, 36.254276, 29.196491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254187, -0.093984, 0.962578,
		-0.925564, 0.312366, -0.213914,
		-0.280573, -0.945301, -0.166387,
		38.015842, 35.970684, 29.146576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684425, 36.557854, 29.639278>,  <38.212242, 36.632397, 29.263046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684425, 36.557854, 29.639278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772511, 36.171597, 29.584085>,  <37.825363, 35.939842, 29.550970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772511, 36.171597, 29.584085>,  <37.684425, 36.557854, 29.639278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772511, 36.171597, 29.584085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259694, -0.194385, 0.945924,
		-0.940248, -0.172471, -0.293578,
		0.220212, -0.965644, -0.137980,
		37.838573, 35.881905, 29.542692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129929, 36.251507, 29.947605>,  <37.684425, 36.557854, 29.639278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129929, 36.251507, 29.947605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445354, 36.005531, 29.945683>,  <37.634609, 35.857948, 29.944529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445354, 36.005531, 29.945683>,  <37.129929, 36.251507, 29.947605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445354, 36.005531, 29.945683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146844, -0.195885, 0.969570,
		-0.597164, -0.763861, -0.244767,
		0.788563, -0.614935, -0.004807,
		37.681923, 35.821053, 29.944241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911583, 35.733856, 30.248966>,  <37.129929, 36.251507, 29.947605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911583, 35.733856, 30.248966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299747, 35.646893, 30.290998>,  <37.532646, 35.594715, 30.316217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299747, 35.646893, 30.290998>,  <36.911583, 35.733856, 30.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299747, 35.646893, 30.290998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204266, -0.507020, 0.837381,
		-0.128774, -0.834066, -0.536425,
		0.970409, -0.217406, 0.105080,
		37.590870, 35.581669, 30.322523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010334, 35.037472, 30.487740>,  <36.911583, 35.733856, 30.248966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010334, 35.037472, 30.487740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370064, 35.181015, 30.587692>,  <37.585899, 35.267139, 30.647665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370064, 35.181015, 30.587692>,  <37.010334, 35.037472, 30.487740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370064, 35.181015, 30.587692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071519, -0.443041, 0.893644,
		0.431399, -0.821545, -0.372771,
		0.899322, 0.358857, 0.249883,
		37.639862, 35.288673, 30.662657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369301, 34.508495, 30.705763>,  <37.010334, 35.037472, 30.487740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369301, 34.508495, 30.705763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583637, 34.816013, 30.845377>,  <37.712238, 35.000526, 30.929146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583637, 34.816013, 30.845377>,  <37.369301, 34.508495, 30.705763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583637, 34.816013, 30.845377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020981, -0.401140, 0.915776,
		0.844060, -0.498031, -0.198816,
		0.535838, 0.768799, 0.349036,
		37.744389, 35.046654, 30.950089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828884, 34.159927, 31.106705>,  <37.369301, 34.508495, 30.705763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828884, 34.159927, 31.106705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851700, 34.537376, 31.237129>,  <37.865391, 34.763847, 31.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851700, 34.537376, 31.237129>,  <37.828884, 34.159927, 31.106705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851700, 34.537376, 31.237129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103599, -0.330424, 0.938130,
		0.992982, -0.019729, -0.116605,
		0.057038, 0.943626, 0.326061,
		37.868813, 34.820465, 31.334948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366550, 34.171486, 31.558102>,  <37.828884, 34.159927, 31.106705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366550, 34.171486, 31.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141109, 34.475483, 31.687569>,  <38.005844, 34.657883, 31.765249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141109, 34.475483, 31.687569>,  <38.366550, 34.171486, 31.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141109, 34.475483, 31.687569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244071, -0.221122, 0.944211,
		0.789162, 0.611162, -0.060866,
		-0.563607, 0.759991, 0.323668,
		37.972027, 34.703480, 31.784670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807236, 34.504128, 31.943150>,  <38.366550, 34.171486, 31.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807236, 34.504128, 31.943150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434769, 34.586506, 32.063488>,  <38.211288, 34.635933, 32.135693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434769, 34.586506, 32.063488>,  <38.807236, 34.504128, 31.943150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434769, 34.586506, 32.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249513, -0.241673, 0.937730,
		0.265830, 0.948251, 0.173651,
		-0.931170, 0.205949, 0.300845,
		38.155418, 34.648289, 32.153740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979843, 34.691715, 32.558990>,  <38.807236, 34.504128, 31.943150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979843, 34.691715, 32.558990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585114, 34.631493, 32.582680>,  <38.348274, 34.595360, 32.596893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585114, 34.631493, 32.582680>,  <38.979843, 34.691715, 32.558990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585114, 34.631493, 32.582680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113282, -0.381632, 0.917346,
		-0.115513, 0.911969, 0.393660,
		-0.986825, -0.150560, 0.059227,
		38.289066, 34.586323, 32.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679195, 34.892429, 33.278160>,  <38.979843, 34.691715, 32.558990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679195, 34.892429, 33.278160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443737, 34.615688, 33.110909>,  <38.302464, 34.449642, 33.010555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443737, 34.615688, 33.110909>,  <38.679195, 34.892429, 33.278160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443737, 34.615688, 33.110909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101455, -0.576374, 0.810863,
		-0.802001, 0.434888, 0.409471,
		-0.588644, -0.691856, -0.418131,
		38.267143, 34.408131, 32.985470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870880, 35.395248, 33.831650>,  <38.679195, 34.892429, 33.278160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870880, 35.395248, 33.831650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834549, 35.619972, 34.160557>,  <38.812752, 35.754807, 34.357899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834549, 35.619972, 34.160557>,  <38.870880, 35.395248, 33.831650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834549, 35.619972, 34.160557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707586, 0.544603, -0.450255,
		-0.700766, -0.622718, 0.348066,
		-0.090824, 0.561810, 0.822266,
		38.807301, 35.788517, 34.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233730, 35.441017, 34.052807>,  <38.870880, 35.395248, 33.831650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233730, 35.441017, 34.052807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293896, 35.768993, 34.273739>,  <38.329994, 35.965778, 34.406300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293896, 35.768993, 34.273739>,  <38.233730, 35.441017, 34.052807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293896, 35.768993, 34.273739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827984, 0.409758, -0.382807,
		-0.540201, -0.399739, 0.740535,
		0.150417, 0.819943, 0.552329,
		38.339020, 36.014977, 34.439438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672646, 35.558815, 34.386848>,  <38.233730, 35.441017, 34.052807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672646, 35.558815, 34.386848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820889, 35.929062, 34.417542>,  <37.909832, 36.151211, 34.435959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820889, 35.929062, 34.417542>,  <37.672646, 35.558815, 34.386848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820889, 35.929062, 34.417542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735396, 0.342897, -0.584478,
		-0.567313, 0.160180, 0.807773,
		0.370605, 0.925616, 0.076734,
		37.932072, 36.206745, 34.440563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127026, 35.912827, 34.554859>,  <37.672646, 35.558815, 34.386848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127026, 35.912827, 34.554859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377827, 36.204422, 34.444988>,  <37.528305, 36.379379, 34.379066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377827, 36.204422, 34.444988>,  <37.127026, 35.912827, 34.554859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377827, 36.204422, 34.444988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750141, 0.469870, -0.465306,
		-0.210139, 0.497795, 0.841452,
		0.627001, 0.728987, -0.274678,
		37.565926, 36.423119, 34.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884510, 36.442974, 34.830414>,  <37.127026, 35.912827, 34.554859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884510, 36.442974, 34.830414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108059, 36.569687, 34.523869>,  <37.242188, 36.645714, 34.339939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108059, 36.569687, 34.523869>,  <36.884510, 36.442974, 34.830414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108059, 36.569687, 34.523869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807792, 0.416870, -0.416763,
		0.187452, 0.851980, 0.488869,
		0.558868, 0.316781, -0.766366,
		37.275719, 36.664722, 34.293961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759098, 37.105049, 34.815720>,  <36.884510, 36.442974, 34.830414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759098, 37.105049, 34.815720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886227, 37.014889, 34.447334>,  <36.962505, 36.960793, 34.226303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886227, 37.014889, 34.447334>,  <36.759098, 37.105049, 34.815720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886227, 37.014889, 34.447334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860755, 0.338732, -0.379948,
		0.397603, 0.913484, -0.086359,
		0.317824, -0.225403, -0.920968,
		36.981575, 36.947269, 34.171043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607281, 37.602924, 34.439476>,  <36.759098, 37.105049, 34.815720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607281, 37.602924, 34.439476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670422, 37.345615, 34.139801>,  <36.708305, 37.191231, 33.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670422, 37.345615, 34.139801>,  <36.607281, 37.602924, 34.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670422, 37.345615, 34.139801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833132, 0.320515, -0.450735,
		0.530071, 0.695324, -0.485335,
		0.157850, -0.643269, -0.749192,
		36.717777, 37.152634, 33.915043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432774, 37.994247, 33.874451>,  <36.607281, 37.602924, 34.439476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432774, 37.994247, 33.874451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431465, 37.613670, 33.751320>,  <36.430679, 37.385326, 33.677441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431465, 37.613670, 33.751320>,  <36.432774, 37.994247, 33.874451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431465, 37.613670, 33.751320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851233, 0.164193, -0.498440,
		0.524777, 0.260397, -0.810434,
		-0.003275, -0.951438, -0.307823,
		36.430481, 37.328239, 33.658974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333344, 37.952980, 33.087154>,  <36.432774, 37.994247, 33.874451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333344, 37.952980, 33.087154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215588, 37.607655, 33.251118>,  <36.144936, 37.400459, 33.349495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215588, 37.607655, 33.251118>,  <36.333344, 37.952980, 33.087154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215588, 37.607655, 33.251118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805931, -0.006253, -0.591977,
		0.513625, -0.504628, -0.693931,
		-0.294389, -0.863314, 0.409907,
		36.127270, 37.348660, 33.374088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167835, 37.563313, 32.550411>,  <36.333344, 37.952980, 33.087154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167835, 37.563313, 32.550411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968212, 37.393295, 32.852482>,  <35.848438, 37.291286, 33.033722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968212, 37.393295, 32.852482>,  <36.167835, 37.563313, 32.550411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968212, 37.393295, 32.852482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841180, 0.028201, -0.540019,
		0.208234, -0.904734, -0.371611,
		-0.499054, -0.425042, 0.755172,
		35.818497, 37.265781, 33.079033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579033, 37.603912, 32.314240>,  <36.167835, 37.563313, 32.550411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579033, 37.603912, 32.314240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500935, 37.405003, 32.652374>,  <35.454075, 37.285656, 32.855255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500935, 37.405003, 32.652374>,  <35.579033, 37.603912, 32.314240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500935, 37.405003, 32.652374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962792, -0.067018, -0.261801,
		0.186841, -0.864999, -0.465690,
		-0.195248, -0.497278, 0.845336,
		35.442360, 37.255821, 32.905975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162098, 36.979282, 32.128941>,  <35.579033, 37.603912, 32.314240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162098, 36.979282, 32.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106453, 37.057781, 32.517193>,  <35.073067, 37.104881, 32.750145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106453, 37.057781, 32.517193>,  <35.162098, 36.979282, 32.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106453, 37.057781, 32.517193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989286, -0.071376, -0.127355,
		0.044287, -0.977952, 0.204079,
		-0.139114, 0.196253, 0.970635,
		35.064720, 37.116657, 32.808384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803001, 36.425232, 32.541832>,  <35.162098, 36.979282, 32.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803001, 36.425232, 32.541832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726315, 36.788048, 32.691776>,  <34.680302, 37.005737, 32.781742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726315, 36.788048, 32.691776>,  <34.803001, 36.425232, 32.541832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726315, 36.788048, 32.691776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980963, -0.165046, -0.102331,
		-0.030949, -0.387340, 0.921417,
		-0.191713, 0.907043, 0.374858,
		34.668800, 37.060162, 32.804234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418518, 36.264545, 33.099327>,  <34.803001, 36.425232, 32.541832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418518, 36.264545, 33.099327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352711, 36.639442, 32.976353>,  <34.313225, 36.864380, 32.902569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352711, 36.639442, 32.976353>,  <34.418518, 36.264545, 33.099327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352711, 36.639442, 32.976353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962463, -0.220747, -0.157909,
		-0.215863, 0.269908, 0.938378,
		-0.164523, 0.937241, -0.307427,
		34.303356, 36.920612, 32.884121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716473, 36.476723, 33.388012>,  <34.418518, 36.264545, 33.099327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716473, 36.476723, 33.388012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788818, 36.734142, 33.090523>,  <33.832226, 36.888596, 32.912029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788818, 36.734142, 33.090523>,  <33.716473, 36.476723, 33.388012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788818, 36.734142, 33.090523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968323, -0.015851, -0.249196,
		-0.172160, 0.765238, 0.620300,
		0.180862, 0.643552, -0.743727,
		33.843079, 36.927208, 32.867405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176445, 36.815186, 33.404846>,  <33.716473, 36.476723, 33.388012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176445, 36.815186, 33.404846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318924, 36.923080, 33.046993>,  <33.404411, 36.987816, 32.832283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318924, 36.923080, 33.046993>,  <33.176445, 36.815186, 33.404846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318924, 36.923080, 33.046993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933274, 0.149937, -0.326373,
		0.046103, 0.951189, 0.305145,
		0.356195, 0.269737, -0.894632,
		33.425781, 37.004002, 32.778603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821056, 37.371868, 33.222584>,  <33.176445, 36.815186, 33.404846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821056, 37.371868, 33.222584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979210, 37.241169, 32.879211>,  <33.074104, 37.162750, 32.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979210, 37.241169, 32.879211>,  <32.821056, 37.371868, 33.222584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979210, 37.241169, 32.879211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901245, 0.042370, -0.431233,
		0.177275, 0.944162, -0.277725,
		0.395387, -0.326745, -0.858433,
		33.097824, 37.143147, 32.621681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515778, 37.886932, 32.657345>,  <32.821056, 37.371868, 33.222584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515778, 37.886932, 32.657345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634090, 37.559628, 32.460182>,  <32.705078, 37.363243, 32.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634090, 37.559628, 32.460182>,  <32.515778, 37.886932, 32.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634090, 37.559628, 32.460182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868455, -0.015432, -0.495528,
		0.397868, 0.574632, -0.715192,
		0.295783, -0.818266, -0.492902,
		32.722824, 37.314148, 32.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426723, 38.027943, 31.825684>,  <32.515778, 37.886932, 32.657345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426723, 38.027943, 31.825684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442894, 37.634052, 31.893423>,  <32.452595, 37.397717, 31.934067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442894, 37.634052, 31.893423>,  <32.426723, 38.027943, 31.825684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442894, 37.634052, 31.893423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822378, -0.129056, -0.554112,
		0.567504, -0.116869, -0.815034,
		0.040426, -0.984726, 0.169351,
		32.455021, 37.338634, 31.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523228, 37.712349, 31.168703>,  <32.426723, 38.027943, 31.825684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523228, 37.712349, 31.168703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320343, 37.515091, 31.451418>,  <32.198612, 37.396736, 31.621046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320343, 37.515091, 31.451418>,  <32.523228, 37.712349, 31.168703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320343, 37.515091, 31.451418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844589, 0.121239, -0.521508,
		0.171493, -0.861454, -0.478003,
		-0.507208, -0.493151, 0.706783,
		32.168179, 37.367146, 31.663454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824171, 37.487762, 30.782719>,  <32.523228, 37.712349, 31.168703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824171, 37.487762, 30.782719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807560, 37.497066, 31.182264>,  <31.797592, 37.502647, 31.421993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807560, 37.497066, 31.182264>,  <31.824171, 37.487762, 30.782719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807560, 37.497066, 31.182264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948090, 0.314548, -0.046742,
		-0.315279, -0.948956, 0.008989,
		-0.041529, 0.023259, 0.998867,
		31.795101, 37.504044, 31.481924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300516, 37.035610, 31.049923>,  <31.824171, 37.487762, 30.782719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300516, 37.035610, 31.049923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356501, 37.382084, 31.241814>,  <31.390091, 37.589966, 31.356949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356501, 37.382084, 31.241814>,  <31.300516, 37.035610, 31.049923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356501, 37.382084, 31.241814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885248, 0.326506, -0.331256,
		-0.443562, -0.378314, 0.812485,
		0.139962, 0.866182, 0.479728,
		31.398489, 37.641937, 31.385733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684347, 36.755936, 31.380503>,  <31.300516, 37.035610, 31.049923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684347, 36.755936, 31.380503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885746, 36.411709, 31.411251>,  <31.006584, 36.205173, 31.429699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885746, 36.411709, 31.411251>,  <30.684347, 36.755936, 31.380503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885746, 36.411709, 31.411251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785601, 0.493026, 0.373841,
		-0.359615, -0.127838, 0.924302,
		0.503496, -0.860571, 0.076870,
		31.036795, 36.153538, 31.434313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913828, 36.871380, 32.122856>,  <30.684347, 36.755936, 31.380503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913828, 36.871380, 32.122856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135143, 36.606995, 31.920074>,  <31.267933, 36.448364, 31.798407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135143, 36.606995, 31.920074>,  <30.913828, 36.871380, 32.122856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135143, 36.606995, 31.920074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832123, 0.466335, 0.300173,
		0.038005, -0.587927, 0.808021,
		0.553288, -0.660964, -0.506951,
		31.301130, 36.408707, 31.767990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466082, 36.501648, 32.581463>,  <30.913828, 36.871380, 32.122856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466082, 36.501648, 32.581463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564693, 36.516476, 32.194092>,  <31.623861, 36.525372, 31.961670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564693, 36.516476, 32.194092>,  <31.466082, 36.501648, 32.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564693, 36.516476, 32.194092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832584, 0.503333, 0.231213,
		0.496011, -0.863297, 0.093227,
		0.246529, 0.037065, -0.968426,
		31.638653, 36.527596, 31.903564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105278, 36.499214, 32.688698>,  <31.466082, 36.501648, 32.581463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105278, 36.499214, 32.688698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086243, 36.622688, 32.308708>,  <32.074821, 36.696774, 32.080715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086243, 36.622688, 32.308708>,  <32.105278, 36.499214, 32.688698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086243, 36.622688, 32.308708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941321, 0.332005, 0.060726,
		0.334141, -0.891339, -0.306375,
		-0.047591, 0.308688, -0.949972,
		32.071964, 36.715294, 32.023716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569290, 36.107033, 32.180614>,  <32.105278, 36.499214, 32.688698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569290, 36.107033, 32.180614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537121, 36.489288, 32.067276>,  <32.517818, 36.718643, 31.999273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537121, 36.489288, 32.067276>,  <32.569290, 36.107033, 32.180614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537121, 36.489288, 32.067276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957837, 0.152758, 0.243339,
		0.275828, -0.251830, -0.927632,
		-0.080423, 0.955639, -0.283347,
		32.512993, 36.775982, 31.982271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045673, 36.234707, 31.668251>,  <32.569290, 36.107033, 32.180614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045673, 36.234707, 31.668251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960587, 36.571133, 31.867191>,  <32.909534, 36.772987, 31.986555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960587, 36.571133, 31.867191>,  <33.045673, 36.234707, 31.668251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960587, 36.571133, 31.867191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970969, 0.124957, 0.203971,
		0.109405, 0.526302, -0.843230,
		-0.212718, 0.841066, 0.497353,
		32.896770, 36.823452, 32.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572807, 36.750950, 31.492605>,  <33.045673, 36.234707, 31.668251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572807, 36.750950, 31.492605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428307, 36.889233, 31.839012>,  <33.341606, 36.972202, 32.046856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428307, 36.889233, 31.839012>,  <33.572807, 36.750950, 31.492605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428307, 36.889233, 31.839012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930826, 0.188781, 0.312929,
		-0.055306, 0.919157, -0.389990,
		-0.361253, 0.345706, 0.866016,
		33.319931, 36.992943, 32.098816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989674, 37.288052, 31.653543>,  <33.572807, 36.750950, 31.492605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989674, 37.288052, 31.653543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803658, 37.228806, 32.002666>,  <33.692047, 37.193256, 32.212139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803658, 37.228806, 32.002666>,  <33.989674, 37.288052, 31.653543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803658, 37.228806, 32.002666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805541, 0.338138, 0.486586,
		-0.367202, 0.929367, -0.037933,
		-0.465044, -0.148119, 0.872809,
		33.664143, 37.184368, 32.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026550, 37.900372, 32.041687>,  <33.989674, 37.288052, 31.653543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026550, 37.900372, 32.041687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977245, 37.608871, 32.311123>,  <33.947662, 37.433971, 32.472786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977245, 37.608871, 32.311123>,  <34.026550, 37.900372, 32.041687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977245, 37.608871, 32.311123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758390, 0.368599, 0.537568,
		-0.640039, 0.577108, 0.507243,
		-0.123266, -0.728753, 0.673591,
		33.940266, 37.390247, 32.513199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157917, 38.195274, 32.726105>,  <34.026550, 37.900372, 32.041687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157917, 38.195274, 32.726105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206001, 37.800037, 32.764519>,  <34.234852, 37.562897, 32.787567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206001, 37.800037, 32.764519>,  <34.157917, 38.195274, 32.726105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206001, 37.800037, 32.764519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794193, 0.153763, 0.587890,
		-0.595656, 0.005601, 0.803220,
		0.120212, -0.988092, 0.096038,
		34.242065, 37.503609, 32.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272209, 38.146694, 33.447018>,  <34.157917, 38.195274, 32.726105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272209, 38.146694, 33.447018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398880, 37.815742, 33.261478>,  <34.474880, 37.617172, 33.150154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398880, 37.815742, 33.261478>,  <34.272209, 38.146694, 33.447018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398880, 37.815742, 33.261478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854906, 0.037109, 0.517454,
		-0.410919, -0.560413, 0.719085,
		0.316672, -0.827381, -0.463852,
		34.493881, 37.567528, 33.122322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992531, 38.010300, 33.708969>,  <34.272209, 38.146694, 33.447018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992531, 38.010300, 33.708969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934292, 37.687397, 33.480183>,  <34.899349, 37.493656, 33.342911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934292, 37.687397, 33.480183>,  <34.992531, 38.010300, 33.708969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934292, 37.687397, 33.480183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884630, -0.365083, 0.290076,
		-0.442979, -0.463740, 0.767277,
		-0.145600, -0.807254, -0.571963,
		34.890614, 37.445221, 33.308594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190201, 37.421459, 34.113964>,  <34.992531, 38.010300, 33.708969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190201, 37.421459, 34.113964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213005, 37.313389, 33.729515>,  <35.226688, 37.248547, 33.498844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213005, 37.313389, 33.729515>,  <35.190201, 37.421459, 34.113964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213005, 37.313389, 33.729515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801876, -0.561114, 0.205296,
		-0.594765, -0.782404, 0.184659,
		0.057009, -0.270176, -0.961122,
		35.230106, 37.232334, 33.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184414, 36.785751, 34.122700>,  <35.190201, 37.421459, 34.113964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184414, 36.785751, 34.122700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379299, 36.918797, 33.799713>,  <35.496231, 36.998623, 33.605923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379299, 36.918797, 33.799713>,  <35.184414, 36.785751, 34.122700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379299, 36.918797, 33.799713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828842, -0.467335, 0.307602,
		-0.275042, -0.819125, -0.503375,
		0.487209, 0.332615, -0.807462,
		35.525463, 37.018581, 33.557476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688927, 36.252426, 33.955444>,  <35.184414, 36.785751, 34.122700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688927, 36.252426, 33.955444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825218, 36.583725, 33.777496>,  <35.906994, 36.782505, 33.670727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825218, 36.583725, 33.777496>,  <35.688927, 36.252426, 33.955444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825218, 36.583725, 33.777496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901107, -0.422667, -0.096741,
		-0.268159, -0.367917, -0.890353,
		0.340730, 0.828245, -0.444874,
		35.927437, 36.832199, 33.644035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883049, 35.550858, 33.760147>,  <35.688927, 36.252426, 33.955444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883049, 35.550858, 33.760147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632439, 35.363655, 34.009449>,  <35.482075, 35.251335, 34.159031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632439, 35.363655, 34.009449>,  <35.883049, 35.550858, 33.760147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632439, 35.363655, 34.009449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772051, -0.482238, 0.413986,
		0.106810, 0.740554, 0.663454,
		-0.626522, -0.468003, 0.623253,
		35.444481, 35.223255, 34.196426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291931, 36.048828, 33.375141>,  <35.883049, 35.550858, 33.760147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291931, 36.048828, 33.375141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343056, 36.440399, 33.438858>,  <36.373730, 36.675343, 33.477089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343056, 36.440399, 33.438858>,  <36.291931, 36.048828, 33.375141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343056, 36.440399, 33.438858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982799, -0.146594, 0.112319,
		0.133302, 0.142193, -0.980822,
		0.127811, 0.978924, 0.159288,
		36.381397, 36.734077, 33.486645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931133, 36.281479, 33.008415>,  <36.291931, 36.048828, 33.375141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931133, 36.281479, 33.008415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845497, 36.558289, 33.284176>,  <36.794117, 36.724373, 33.449631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845497, 36.558289, 33.284176>,  <36.931133, 36.281479, 33.008415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845497, 36.558289, 33.284176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955940, 0.003309, 0.293544,
		0.200858, 0.721869, -0.662240,
		-0.214092, 0.692022, 0.689398,
		36.781269, 36.765896, 33.490993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303574, 36.985260, 32.947140>,  <36.931133, 36.281479, 33.008415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303574, 36.985260, 32.947140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214214, 36.861374, 33.316826>,  <37.160599, 36.787045, 33.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214214, 36.861374, 33.316826>,  <37.303574, 36.985260, 32.947140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214214, 36.861374, 33.316826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972789, -0.011100, 0.231425,
		-0.061417, 0.950766, 0.303765,
		-0.223403, -0.309712, 0.924213,
		37.147194, 36.768459, 33.594090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864395, 36.992928, 33.181549>,  <37.303574, 36.985260, 32.947140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864395, 36.992928, 33.181549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683407, 36.876717, 33.518799>,  <37.574814, 36.806992, 33.721149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683407, 36.876717, 33.518799>,  <37.864395, 36.992928, 33.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683407, 36.876717, 33.518799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890833, -0.103751, 0.442325,
		-0.041030, 0.951227, 0.305752,
		-0.452474, -0.290523, 0.843128,
		37.547665, 36.789558, 33.771736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292774, 37.310764, 33.689224>,  <37.864395, 36.992928, 33.181549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292774, 37.310764, 33.689224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064369, 37.029877, 33.859318>,  <37.927326, 36.861343, 33.961376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064369, 37.029877, 33.859318>,  <38.292774, 37.310764, 33.689224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064369, 37.029877, 33.859318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684908, -0.121927, 0.718356,
		-0.452596, 0.701441, 0.550579,
		-0.571015, -0.702221, 0.425238,
		37.893066, 36.819210, 33.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517883, 37.357578, 34.418785>,  <38.292774, 37.310764, 33.689224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517883, 37.357578, 34.418785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336510, 37.002048, 34.392307>,  <38.227684, 36.788731, 34.376419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336510, 37.002048, 34.392307>,  <38.517883, 37.357578, 34.418785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336510, 37.002048, 34.392307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635158, -0.374339, 0.675607,
		-0.625278, 0.264298, 0.734284,
		-0.453433, -0.888829, -0.066195,
		38.200481, 36.735401, 34.372448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672821, 37.109531, 34.996670>,  <38.517883, 37.357578, 34.418785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672821, 37.109531, 34.996670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571461, 36.772297, 34.806938>,  <38.510643, 36.569954, 34.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571461, 36.772297, 34.806938>,  <38.672821, 37.109531, 34.996670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571461, 36.772297, 34.806938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628846, -0.516160, 0.581491,
		-0.735077, -0.150927, 0.660971,
		-0.253404, -0.843089, -0.474327,
		38.495438, 36.519371, 34.664639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523930, 36.513573, 35.505497>,  <38.672821, 37.109531, 34.996670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523930, 36.513573, 35.505497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634090, 36.300629, 35.185310>,  <38.700188, 36.172863, 34.993198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634090, 36.300629, 35.185310>,  <38.523930, 36.513573, 35.505497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634090, 36.300629, 35.185310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629164, -0.529755, 0.568781,
		-0.726847, -0.660270, 0.189044,
		0.275402, -0.532356, -0.800469,
		38.716713, 36.140923, 34.945171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573803, 35.741081, 35.600407>,  <38.523930, 36.513573, 35.505497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573803, 35.741081, 35.600407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 35.910229, 35.342926>,  <38.982018, 36.011715, 35.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 35.910229, 35.342926>,  <38.573803, 35.741081, 35.600407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828938, 35.910229, 35.342926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766553, -0.429463, 0.477449,
		-0.074549, -0.797964, -0.598076,
		0.637839, 0.422864, -0.643698,
		39.020290, 36.037086, 35.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993847, 35.302010, 35.136131>,  <38.573803, 35.741081, 35.600407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993847, 35.302010, 35.136131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215370, 35.629688, 35.195744>,  <39.348282, 35.826298, 35.231510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215370, 35.629688, 35.195744>,  <38.993847, 35.302010, 35.136131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215370, 35.629688, 35.195744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755801, -0.569679, 0.322848,
		0.349379, -0.066154, -0.934643,
		0.553805, 0.819200, 0.149034,
		39.381512, 35.875450, 35.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587685, 35.369854, 34.705959>,  <38.993847, 35.302010, 35.136131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587685, 35.369854, 34.705959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678947, 35.547348, 35.052612>,  <39.733704, 35.653843, 35.260605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678947, 35.547348, 35.052612>,  <39.587685, 35.369854, 34.705959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678947, 35.547348, 35.052612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626705, -0.748123, 0.218065,
		0.745109, 0.493370, -0.448775,
		0.228153, 0.443732, 0.866631,
		39.747395, 35.680466, 35.312603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038136, 35.211647, 34.056023>,  <39.587685, 35.369854, 34.705959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038136, 35.211647, 34.056023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130066, 35.472790, 33.767315>,  <40.185223, 35.629475, 33.594090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130066, 35.472790, 33.767315>,  <40.038136, 35.211647, 34.056023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130066, 35.472790, 33.767315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923031, -0.381330, -0.051011,
		-0.308536, -0.654496, -0.690247,
		0.229825, 0.652858, -0.721774,
		40.199013, 35.668648, 33.550781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471203, 34.871021, 33.485424>,  <40.038136, 35.211647, 34.056023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471203, 34.871021, 33.485424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577541, 35.251907, 33.545570>,  <40.641342, 35.480438, 33.581657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577541, 35.251907, 33.545570>,  <40.471203, 34.871021, 33.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577541, 35.251907, 33.545570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953290, -0.282871, 0.105936,
		0.143409, 0.115182, -0.982938,
		0.265842, 0.952217, 0.150368,
		40.657295, 35.537571, 33.590679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058750, 35.021656, 32.960495>,  <40.471203, 34.871021, 33.485424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058750, 35.021656, 32.960495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064739, 35.195499, 33.320694>,  <41.068333, 35.299805, 33.536812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064739, 35.195499, 33.320694>,  <41.058750, 35.021656, 32.960495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064739, 35.195499, 33.320694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934950, -0.325351, 0.141475,
		0.354463, 0.839799, -0.411209,
		0.014977, 0.434608, 0.900495,
		41.069233, 35.325882, 33.590843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683174, 35.147537, 33.200130>,  <41.058750, 35.021656, 32.960495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683174, 35.147537, 33.200130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537350, 35.089165, 33.568001>,  <41.449856, 35.054142, 33.788723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537350, 35.089165, 33.568001>,  <41.683174, 35.147537, 33.200130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537350, 35.089165, 33.568001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891913, -0.338509, 0.299839,
		0.267561, 0.929578, 0.253565,
		-0.364558, -0.145933, 0.919674,
		41.427982, 35.045383, 33.843903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048260, 35.633503, 33.839291>,  <41.683174, 35.147537, 33.200130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048260, 35.633503, 33.839291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937977, 35.249928, 33.865868>,  <41.871807, 35.019783, 33.881813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937977, 35.249928, 33.865868>,  <42.048260, 35.633503, 33.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937977, 35.249928, 33.865868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948150, -0.259931, 0.182887,
		-0.158108, 0.113422, 0.980886,
		-0.275707, -0.958943, 0.066444,
		41.855267, 34.962246, 33.885799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307224, 35.463421, 34.364475>,  <42.048260, 35.633503, 33.839291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307224, 35.463421, 34.364475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276176, 35.158432, 34.107536>,  <42.257549, 34.975437, 33.953373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276176, 35.158432, 34.107536>,  <42.307224, 35.463421, 34.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276176, 35.158432, 34.107536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966016, -0.216848, 0.140675,
		-0.246552, -0.609596, 0.753396,
		-0.077618, -0.762476, -0.642344,
		42.252892, 34.929688, 33.914833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194271, 34.807281, 34.642902>,  <42.307224, 35.463421, 34.364475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194271, 34.807281, 34.642902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421883, 34.800259, 34.314053>,  <42.558449, 34.796043, 34.116741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421883, 34.800259, 34.314053>,  <42.194271, 34.807281, 34.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421883, 34.800259, 34.314053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820675, -0.050998, 0.569114,
		-0.051947, -0.998543, -0.014570,
		0.569028, -0.017606, -0.822129,
		42.592590, 34.794991, 34.067413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721912, 34.342285, 34.740417>,  <42.194271, 34.807281, 34.642902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721912, 34.342285, 34.740417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882126, 34.590275, 34.470543>,  <42.978252, 34.739067, 34.308617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882126, 34.590275, 34.470543>,  <42.721912, 34.342285, 34.740417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882126, 34.590275, 34.470543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866705, -0.017421, 0.498516,
		0.297314, -0.784428, -0.544314,
		0.400532, 0.619976, -0.674688,
		43.002285, 34.776268, 34.268135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333294, 33.996105, 34.377319>,  <42.721912, 34.342285, 34.740417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333294, 33.996105, 34.377319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367844, 34.389843, 34.438778>,  <43.388573, 34.626087, 34.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367844, 34.389843, 34.438778>,  <43.333294, 33.996105, 34.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367844, 34.389843, 34.438778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919729, -0.138059, 0.367476,
		0.382935, 0.109572, -0.917254,
		0.086370, 0.984344, 0.153644,
		43.393753, 34.685146, 34.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912300, 34.407124, 33.934090>,  <43.333294, 33.996105, 34.377319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912300, 34.407124, 33.934090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824253, 34.538799, 34.301388>,  <43.771423, 34.617805, 34.521767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824253, 34.538799, 34.301388>,  <43.912300, 34.407124, 33.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824253, 34.538799, 34.301388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969683, -0.028558, 0.242690,
		0.106114, 0.943832, -0.312922,
		-0.220122, 0.329188, 0.918249,
		43.758217, 34.637554, 34.576862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376995, 35.008884, 34.092648>,  <43.912300, 34.407124, 33.934090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376995, 35.008884, 34.092648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278534, 34.783081, 34.407795>,  <44.219460, 34.647598, 34.596882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278534, 34.783081, 34.407795>,  <44.376995, 35.008884, 34.092648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278534, 34.783081, 34.407795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966579, -0.082873, 0.242605,
		-0.071660, 0.821256, 0.566042,
		-0.246151, -0.564510, 0.787870,
		44.204689, 34.613728, 34.644157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684834, 35.261753, 34.673969>,  <44.376995, 35.008884, 34.092648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684834, 35.261753, 34.673969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650726, 34.864525, 34.706306>,  <44.630260, 34.626186, 34.725708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650726, 34.864525, 34.706306>,  <44.684834, 35.261753, 34.673969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650726, 34.864525, 34.706306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966971, -0.062919, 0.246997,
		-0.240200, 0.099229, 0.965638,
		-0.085267, -0.993073, 0.080839,
		44.625145, 34.566605, 34.730556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108479, 35.855049, 34.854099>,  <44.684834, 35.261753, 34.673969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108479, 35.855049, 34.854099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888050, 35.722809, 35.160572>,  <44.755795, 35.643463, 35.344456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888050, 35.722809, 35.160572>,  <45.108479, 35.855049, 34.854099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888050, 35.722809, 35.160572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566871, -0.822101, 0.052986,
		0.612358, 0.463523, 0.640441,
		-0.551067, -0.330601, 0.766178,
		44.722729, 35.623627, 35.390427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672184, 36.114685, 35.290688>,  <45.108479, 35.855049, 34.854099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672184, 36.114685, 35.290688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004993, 36.252045, 35.464954>,  <46.204681, 36.334461, 35.569515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004993, 36.252045, 35.464954>,  <45.672184, 36.114685, 35.290688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004993, 36.252045, 35.464954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538121, -0.690394, -0.483510,
		0.134742, 0.636734, -0.759219,
		0.832028, 0.343403, 0.435666,
		46.254601, 36.355064, 35.595654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191055, 36.342899, 34.756088>,  <45.672184, 36.114685, 35.290688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191055, 36.342899, 34.756088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375015, 36.215382, 35.087597>,  <46.485394, 36.138870, 35.286503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375015, 36.215382, 35.087597>,  <46.191055, 36.342899, 34.756088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375015, 36.215382, 35.087597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459055, -0.713574, -0.529226,
		0.760103, 0.623844, -0.181831,
		0.459904, -0.318796, 0.828768,
		46.512985, 36.119743, 35.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963314, 36.428780, 34.654659>,  <46.191055, 36.342899, 34.756088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963314, 36.428780, 34.654659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780674, 36.142742, 34.866379>,  <46.671089, 35.971119, 34.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780674, 36.142742, 34.866379>,  <46.963314, 36.428780, 34.654659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780674, 36.142742, 34.866379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311322, -0.685746, -0.657899,
		0.833423, -0.135617, 0.535737,
		-0.456602, -0.715095, 0.529296,
		46.643692, 35.928215, 35.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350750, 35.902855, 34.897007>,  <46.963314, 36.428780, 34.654659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350750, 35.902855, 34.897007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995491, 35.737675, 34.816334>,  <46.782337, 35.638565, 34.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995491, 35.737675, 34.816334>,  <47.350750, 35.902855, 34.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995491, 35.737675, 34.816334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424861, -0.570480, -0.702884,
		0.175202, -0.709947, 0.682114,
		-0.888143, -0.412950, -0.201679,
		46.729050, 35.613789, 34.755829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706257, 35.318932, 35.220226>,  <47.350750, 35.902855, 34.897007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706257, 35.318932, 35.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473888, 35.002644, 35.142986>,  <47.334469, 34.812870, 35.096642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473888, 35.002644, 35.142986>,  <47.706257, 35.318932, 35.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.473888, 35.002644, 35.142986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479395, 0.524102, -0.703916,
		0.657807, -0.316348, -0.683530,
		-0.580922, -0.790722, -0.193103,
		47.299610, 34.765427, 35.085056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.293842, 30.292892, 24.314510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916462, 30.253086, 24.188025>,  <38.690033, 30.229202, 24.112133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916462, 30.253086, 24.188025>,  <39.293842, 30.292892, 24.314510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916462, 30.253086, 24.188025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312661, -0.049888, 0.948554,
		-0.110171, 0.993784, 0.015953,
		-0.943454, -0.099516, -0.316214,
		38.633427, 30.223232, 24.093161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933937, 30.779322, 24.635483>,  <39.293842, 30.292892, 24.314510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933937, 30.779322, 24.635483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678986, 30.491282, 24.525789>,  <38.526016, 30.318457, 24.459974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678986, 30.491282, 24.525789>,  <38.933937, 30.779322, 24.635483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678986, 30.491282, 24.525789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350734, -0.045764, 0.935356,
		-0.686101, 0.692358, -0.223395,
		-0.637378, -0.720101, -0.274232,
		38.487774, 30.275251, 24.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246128, 31.006868, 24.889200>,  <38.933937, 30.779322, 24.635483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246128, 31.006868, 24.889200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220669, 30.615423, 24.810949>,  <38.205395, 30.380556, 24.763998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220669, 30.615423, 24.810949>,  <38.246128, 31.006868, 24.889200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220669, 30.615423, 24.810949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426178, -0.150600, 0.892016,
		-0.902398, 0.140145, -0.407477,
		-0.063646, -0.978611, -0.195628,
		38.201576, 30.321840, 24.752260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573490, 30.861843, 25.014723>,  <38.246128, 31.006868, 24.889200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573490, 30.861843, 25.014723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 30.509060, 25.036051>,  <37.873203, 30.297390, 25.048847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 30.509060, 25.036051>,  <37.573490, 30.861843, 25.014723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760811, 30.509060, 25.036051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457451, -0.190383, 0.868615,
		-0.755931, -0.431165, -0.492610,
		0.468301, -0.881959, 0.053321,
		37.901302, 30.244473, 25.052048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084156, 30.555794, 25.282261>,  <37.573490, 30.861843, 25.014723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084156, 30.555794, 25.282261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388813, 30.306028, 25.351551>,  <37.571609, 30.156170, 25.393126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388813, 30.306028, 25.351551>,  <37.084156, 30.555794, 25.282261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388813, 30.306028, 25.351551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284983, -0.082690, 0.954959,
		-0.581964, -0.776706, -0.240927,
		0.761645, -0.624412, 0.173225,
		37.617306, 30.118706, 25.403519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777561, 29.925848, 25.620209>,  <37.084156, 30.555794, 25.282261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777561, 29.925848, 25.620209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169357, 29.947557, 25.697819>,  <37.404434, 29.960583, 25.744385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169357, 29.947557, 25.697819>,  <36.777561, 29.925848, 25.620209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169357, 29.947557, 25.697819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191863, -0.042567, 0.980498,
		0.061476, -0.997618, -0.031281,
		0.979494, 0.054276, 0.194023,
		37.463207, 29.963839, 25.756025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857368, 29.499098, 26.163271>,  <36.777561, 29.925848, 25.620209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857368, 29.499098, 26.163271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185387, 29.727243, 26.182117>,  <37.382198, 29.864130, 26.193424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185387, 29.727243, 26.182117>,  <36.857368, 29.499098, 26.163271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185387, 29.727243, 26.182117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070134, 0.018450, 0.997367,
		0.567991, -0.821186, 0.055132,
		0.820041, 0.570362, 0.047114,
		37.431400, 29.898352, 26.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219055, 29.242655, 26.768568>,  <36.857368, 29.499098, 26.163271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219055, 29.242655, 26.768568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344814, 29.616524, 26.702185>,  <37.420269, 29.840845, 26.662355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344814, 29.616524, 26.702185>,  <37.219055, 29.242655, 26.768568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344814, 29.616524, 26.702185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030182, 0.184576, 0.982355,
		0.948813, -0.303837, 0.086240,
		0.314393, 0.934674, -0.165958,
		37.439133, 29.896925, 26.652397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659359, 29.371603, 27.299452>,  <37.219055, 29.242655, 26.768568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659359, 29.371603, 27.299452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602520, 29.747089, 27.173836>,  <37.568417, 29.972382, 27.098467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602520, 29.747089, 27.173836>,  <37.659359, 29.371603, 27.299452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602520, 29.747089, 27.173836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101622, 0.301748, 0.947956,
		0.984623, 0.166611, 0.052518,
		-0.142093, 0.938717, -0.314039,
		37.559891, 30.028704, 27.079624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187702, 29.890003, 27.585722>,  <37.659359, 29.371603, 27.299452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187702, 29.890003, 27.585722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864895, 30.110437, 27.500843>,  <37.671211, 30.242699, 27.449917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864895, 30.110437, 27.500843>,  <38.187702, 29.890003, 27.585722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864895, 30.110437, 27.500843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048566, 0.296177, 0.953898,
		0.588527, 0.780118, -0.212256,
		-0.807018, 0.551086, -0.212196,
		37.622791, 30.275763, 27.437185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341591, 30.486059, 27.841185>,  <38.187702, 29.890003, 27.585722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341591, 30.486059, 27.841185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944561, 30.516798, 27.803471>,  <37.706345, 30.535242, 27.780842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944561, 30.516798, 27.803471>,  <38.341591, 30.486059, 27.841185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944561, 30.516798, 27.803471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053664, 0.418966, 0.906415,
		0.109159, 0.904744, -0.411731,
		-0.992575, 0.076848, -0.094286,
		37.646790, 30.539852, 27.775185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171066, 31.116764, 28.063156>,  <38.341591, 30.486059, 27.841185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171066, 31.116764, 28.063156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824371, 30.917969, 28.079967>,  <37.616356, 30.798691, 28.090054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824371, 30.917969, 28.079967>,  <38.171066, 31.116764, 28.063156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824371, 30.917969, 28.079967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187296, 0.402418, 0.896092,
		-0.462261, 0.768805, -0.441875,
		-0.866738, -0.496989, 0.042028,
		37.564350, 30.768871, 28.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587708, 31.487869, 28.253984>,  <38.171066, 31.116764, 28.063156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587708, 31.487869, 28.253984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461246, 31.131691, 28.384920>,  <37.385368, 30.917984, 28.463482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461246, 31.131691, 28.384920>,  <37.587708, 31.487869, 28.253984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461246, 31.131691, 28.384920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292068, 0.419635, 0.859420,
		-0.902631, 0.176104, -0.392740,
		-0.316154, -0.890446, 0.327341,
		37.366402, 30.864557, 28.483122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990383, 31.648697, 28.451815>,  <37.587708, 31.487869, 28.253984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990383, 31.648697, 28.451815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059788, 31.289385, 28.613300>,  <37.101429, 31.073797, 28.710192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059788, 31.289385, 28.613300>,  <36.990383, 31.648697, 28.451815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059788, 31.289385, 28.613300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529140, 0.260702, 0.807493,
		-0.830605, -0.353729, -0.430082,
		0.173510, -0.898282, 0.403713,
		37.111839, 31.019899, 28.734415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318901, 31.418743, 28.668499>,  <36.990383, 31.648697, 28.451815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318901, 31.418743, 28.668499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593555, 31.219244, 28.880075>,  <36.758347, 31.099545, 29.007021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593555, 31.219244, 28.880075>,  <36.318901, 31.418743, 28.668499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593555, 31.219244, 28.880075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511516, 0.185573, 0.838996,
		-0.516605, -0.846648, -0.127696,
		0.686637, -0.498748, 0.528942,
		36.799545, 31.069620, 29.038757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837688, 30.944315, 29.165224>,  <36.318901, 31.418743, 28.668499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837688, 30.944315, 29.165224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213093, 30.952188, 29.303102>,  <36.438335, 30.956913, 29.385830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213093, 30.952188, 29.303102>,  <35.837688, 30.944315, 29.165224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213093, 30.952188, 29.303102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343097, 0.164719, 0.924744,
		-0.038576, -0.986144, 0.161343,
		0.938508, 0.019684, 0.344698,
		36.494644, 30.958094, 29.406511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784546, 30.427879, 29.748619>,  <35.837688, 30.944315, 29.165224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784546, 30.427879, 29.748619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106785, 30.657854, 29.805843>,  <36.300129, 30.795839, 29.840178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106785, 30.657854, 29.805843>,  <35.784546, 30.427879, 29.748619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106785, 30.657854, 29.805843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321008, 0.220619, 0.921022,
		0.497966, -0.787893, 0.362289,
		0.805595, 0.574936, 0.143059,
		36.348465, 30.830334, 29.848761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045006, 30.140820, 30.435764>,  <35.784546, 30.427879, 29.748619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045006, 30.140820, 30.435764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193241, 30.507713, 30.377323>,  <36.282181, 30.727850, 30.342258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193241, 30.507713, 30.377323>,  <36.045006, 30.140820, 30.435764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193241, 30.507713, 30.377323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464819, 0.319341, 0.825812,
		0.804120, -0.238122, 0.544691,
		0.370586, 0.917235, -0.146105,
		36.304417, 30.782885, 30.333492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237396, 30.293150, 31.140278>,  <36.045006, 30.140820, 30.435764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237396, 30.293150, 31.140278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233841, 30.634680, 30.932083>,  <36.231709, 30.839598, 30.807167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233841, 30.634680, 30.932083>,  <36.237396, 30.293150, 31.140278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233841, 30.634680, 30.932083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387670, 0.476857, 0.788873,
		0.921755, 0.208790, 0.326763,
		-0.008890, 0.853824, -0.520487,
		36.231174, 30.890827, 30.775938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323463, 30.820330, 31.567533>,  <36.237396, 30.293150, 31.140278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323463, 30.820330, 31.567533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151688, 31.015528, 31.263577>,  <36.048622, 31.132647, 31.081202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151688, 31.015528, 31.263577>,  <36.323463, 30.820330, 31.567533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151688, 31.015528, 31.263577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520830, 0.553575, 0.649840,
		0.737776, 0.674845, 0.016433,
		-0.429444, 0.487995, -0.759894,
		36.022854, 31.161926, 31.035608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398117, 31.523376, 31.677956>,  <36.323463, 30.820330, 31.567533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398117, 31.523376, 31.677956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082157, 31.510214, 31.433018>,  <35.892582, 31.502316, 31.286055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082157, 31.510214, 31.433018>,  <36.398117, 31.523376, 31.677956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082157, 31.510214, 31.433018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483495, 0.647648, 0.588884,
		0.377205, 0.761229, -0.527491,
		-0.789904, -0.032909, -0.612346,
		35.845184, 31.500341, 31.249313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082645, 31.868979, 31.805834>,  <36.398117, 31.523376, 31.677956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082645, 31.868979, 31.805834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282097, 32.193169, 31.928795>,  <37.401768, 32.387684, 32.002571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282097, 32.193169, 31.928795>,  <37.082645, 31.868979, 31.805834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282097, 32.193169, 31.928795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585667, -0.053563, -0.808780,
		-0.639032, 0.583317, -0.501378,
		0.498630, 0.810477, 0.307401,
		37.431686, 32.436310, 32.021015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145607, 32.385464, 31.303980>,  <37.082645, 31.868979, 31.805834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145607, 32.385464, 31.303980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458191, 32.430767, 31.549416>,  <37.645741, 32.457947, 31.696676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458191, 32.430767, 31.549416>,  <37.145607, 32.385464, 31.303980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458191, 32.430767, 31.549416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621918, -0.062016, -0.780622,
		-0.050357, 0.991629, -0.118899,
		0.781461, 0.113255, 0.613589,
		37.692631, 32.464745, 31.733492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559345, 32.962215, 31.001657>,  <37.145607, 32.385464, 31.303980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559345, 32.962215, 31.001657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802959, 32.747849, 31.235535>,  <37.949127, 32.619228, 31.375862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802959, 32.747849, 31.235535>,  <37.559345, 32.962215, 31.001657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802959, 32.747849, 31.235535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540879, -0.258547, -0.800377,
		0.580104, 0.803710, 0.132400,
		0.609039, -0.535914, 0.584694,
		37.985672, 32.587074, 31.410942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218338, 33.107544, 30.801510>,  <37.559345, 32.962215, 31.001657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218338, 33.107544, 30.801510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291687, 32.763073, 30.991138>,  <38.335697, 32.556389, 31.104916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291687, 32.763073, 30.991138>,  <38.218338, 33.107544, 30.801510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291687, 32.763073, 30.991138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674943, -0.240325, -0.697636,
		0.714721, 0.447899, 0.537178,
		0.183373, -0.861180, 0.474071,
		38.346699, 32.504719, 31.133360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878361, 33.189739, 30.939970>,  <38.218338, 33.107544, 30.801510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878361, 33.189739, 30.939970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768536, 32.805130, 30.936045>,  <38.702641, 32.574364, 30.933689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768536, 32.805130, 30.936045>,  <38.878361, 33.189739, 30.939970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768536, 32.805130, 30.936045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748206, -0.207215, -0.630277,
		0.603991, -0.180390, 0.776308,
		-0.274558, -0.961520, -0.009813,
		38.686169, 32.516674, 30.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482288, 32.904907, 31.091112>,  <38.878361, 33.189739, 30.939970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482288, 32.904907, 31.091112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246571, 32.636925, 30.910492>,  <39.105141, 32.476135, 30.802120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246571, 32.636925, 30.910492>,  <39.482288, 32.904907, 31.091112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246571, 32.636925, 30.910492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719389, -0.180733, -0.670683,
		0.367718, -0.720066, 0.588463,
		-0.589290, -0.669956, -0.451549,
		39.069782, 32.435940, 30.775026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863216, 32.285110, 31.034027>,  <39.482288, 32.904907, 31.091112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863216, 32.285110, 31.034027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568089, 32.249672, 30.766365>,  <39.391010, 32.228409, 30.605768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568089, 32.249672, 30.766365>,  <39.863216, 32.285110, 31.034027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568089, 32.249672, 30.766365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674665, -0.065803, -0.735185,
		0.021103, -0.993891, 0.108324,
		-0.737823, -0.088597, -0.669155,
		39.346741, 32.223095, 30.565619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222580, 31.980770, 30.562984>,  <39.863216, 32.285110, 31.034027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222580, 31.980770, 30.562984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879436, 32.075085, 30.380346>,  <39.673550, 32.131676, 30.270763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879436, 32.075085, 30.380346>,  <40.222580, 31.980770, 30.562984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879436, 32.075085, 30.380346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473262, 0.016281, -0.880771,
		-0.200242, -0.971668, -0.125556,
		-0.857861, 0.235789, -0.456594,
		39.622078, 32.145821, 30.243368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130211, 31.528009, 30.021700>,  <40.222580, 31.980770, 30.562984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130211, 31.528009, 30.021700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925804, 31.855947, 29.918383>,  <39.803162, 32.052711, 29.856392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925804, 31.855947, 29.918383>,  <40.130211, 31.528009, 30.021700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925804, 31.855947, 29.918383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408583, -0.032699, -0.912135,
		-0.756257, -0.571649, -0.318265,
		-0.511014, 0.819847, -0.258295,
		39.772499, 32.101902, 29.840895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729946, 31.383543, 29.385109>,  <40.130211, 31.528009, 30.021700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729946, 31.383543, 29.385109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771667, 31.780731, 29.407509>,  <39.796700, 32.019043, 29.420948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771667, 31.780731, 29.407509>,  <39.729946, 31.383543, 29.385109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771667, 31.780731, 29.407509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272176, 0.025659, -0.961905,
		-0.956578, 0.115568, -0.267586,
		0.104299, 0.992968, 0.056000,
		39.802956, 32.078621, 29.424309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536739, 31.650631, 28.750225>,  <39.729946, 31.383543, 29.385109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536739, 31.650631, 28.750225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731110, 31.972260, 28.887245>,  <39.847733, 32.165237, 28.969458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731110, 31.972260, 28.887245>,  <39.536739, 31.650631, 28.750225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731110, 31.972260, 28.887245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398884, 0.144705, -0.905512,
		-0.777666, 0.576651, -0.250416,
		0.485928, 0.804073, 0.342549,
		39.876888, 32.213482, 28.990009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558884, 32.054993, 28.172241>,  <39.536739, 31.650631, 28.750225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558884, 32.054993, 28.172241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.849800, 32.200542, 28.405012>,  <40.024349, 32.287872, 28.544674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.849800, 32.200542, 28.405012>,  <39.558884, 32.054993, 28.172241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849800, 32.200542, 28.405012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583202, 0.119348, -0.803512,
		-0.361833, 0.923768, -0.125414,
		0.727291, 0.363879, 0.581927,
		40.067989, 32.309708, 28.579590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655537, 32.768684, 27.905703>,  <39.558884, 32.054993, 28.172241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655537, 32.768684, 27.905703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980644, 32.616676, 28.082329>,  <40.175709, 32.525471, 28.188305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980644, 32.616676, 28.082329>,  <39.655537, 32.768684, 27.905703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980644, 32.616676, 28.082329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531443, 0.173112, -0.829217,
		0.238682, 0.908633, 0.342662,
		0.812773, -0.380024, 0.441568,
		40.224476, 32.502670, 28.214800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326359, 33.246685, 27.684343>,  <39.655537, 32.768684, 27.905703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326359, 33.246685, 27.684343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450619, 32.889465, 27.814547>,  <40.525173, 32.675133, 27.892668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450619, 32.889465, 27.814547>,  <40.326359, 33.246685, 27.684343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450619, 32.889465, 27.814547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641093, -0.055984, -0.765419,
		0.701783, 0.446455, 0.555139,
		0.310646, -0.893053, 0.325507,
		40.543812, 32.621548, 27.912199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058949, 33.291176, 27.539919>,  <40.326359, 33.246685, 27.684343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058949, 33.291176, 27.539919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.963169, 32.903988, 27.570103>,  <40.905701, 32.671673, 27.588213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.963169, 32.903988, 27.570103>,  <41.058949, 33.291176, 27.539919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963169, 32.903988, 27.570103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537194, -0.196824, -0.820173,
		0.808756, -0.155855, 0.567118,
		-0.239450, -0.967972, 0.075459,
		40.891335, 32.613598, 27.592741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659954, 32.869850, 27.472252>,  <41.058949, 33.291176, 27.539919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659954, 32.869850, 27.472252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399071, 32.570889, 27.421638>,  <41.242538, 32.391514, 27.391272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399071, 32.570889, 27.421638>,  <41.659954, 32.869850, 27.472252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399071, 32.570889, 27.421638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532614, -0.333058, -0.778071,
		0.539389, -0.574861, 0.615301,
		-0.652213, -0.747401, -0.126531,
		41.203407, 32.346668, 27.383678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082340, 32.246929, 27.228821>,  <41.659954, 32.869850, 27.472252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082340, 32.246929, 27.228821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698738, 32.164185, 27.151337>,  <41.468578, 32.114536, 27.104847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698738, 32.164185, 27.151337>,  <42.082340, 32.246929, 27.228821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698738, 32.164185, 27.151337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216060, -0.091358, -0.972096,
		0.183395, -0.974095, 0.132308,
		-0.959002, -0.206864, -0.193708,
		41.411037, 32.102127, 27.093224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008156, 31.576021, 26.905384>,  <42.082340, 32.246929, 27.228821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008156, 31.576021, 26.905384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.673321, 31.765949, 26.796696>,  <41.472420, 31.879906, 26.731483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.673321, 31.765949, 26.796696>,  <42.008156, 31.576021, 26.905384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673321, 31.765949, 26.796696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164014, -0.256015, -0.952657,
		-0.521907, -0.842021, 0.136429,
		-0.837085, 0.474823, -0.271719,
		41.422195, 31.908396, 26.715179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731743, 31.135792, 26.366629>,  <42.008156, 31.576021, 26.905384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731743, 31.135792, 26.366629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.523434, 31.473227, 26.314247>,  <41.398449, 31.675688, 26.282818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.523434, 31.473227, 26.314247>,  <41.731743, 31.135792, 26.366629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523434, 31.473227, 26.314247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170845, -0.253281, -0.952187,
		-0.836423, -0.473504, 0.276026,
		-0.520777, 0.843589, -0.130954,
		41.367199, 31.726303, 26.274961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.907887, 30.924623, 26.112238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963120, 31.308851, 26.015705>,  <40.996258, 31.539387, 25.957785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963120, 31.308851, 26.015705>,  <40.907887, 30.924623, 26.112238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963120, 31.308851, 26.015705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264544, -0.199045, -0.943608,
		-0.954437, 0.194137, 0.226628,
		0.138080, 0.960568, -0.241334,
		41.004543, 31.597021, 25.943304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433971, 31.024420, 25.601957>,  <40.907887, 30.924623, 26.112238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433971, 31.024420, 25.601957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667454, 31.340971, 25.529291>,  <40.807545, 31.530903, 25.485691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667454, 31.340971, 25.529291>,  <40.433971, 31.024420, 25.601957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667454, 31.340971, 25.529291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140655, -0.121799, -0.982538,
		-0.799686, 0.599069, 0.040216,
		0.583710, 0.791379, -0.181663,
		40.842567, 31.578384, 25.474792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017185, 31.383448, 25.229992>,  <40.433971, 31.024420, 25.601957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017185, 31.383448, 25.229992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389767, 31.496866, 25.138784>,  <40.613316, 31.564917, 25.084061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389767, 31.496866, 25.138784>,  <40.017185, 31.383448, 25.229992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389767, 31.496866, 25.138784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208306, -0.098258, -0.973116,
		-0.298328, 0.953911, -0.032459,
		0.931455, 0.283546, -0.228018,
		40.669205, 31.581930, 25.070379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021549, 31.845734, 24.652508>,  <40.017185, 31.383448, 25.229992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021549, 31.845734, 24.652508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.402920, 31.725204, 24.658005>,  <40.631741, 31.652887, 24.661303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.402920, 31.725204, 24.658005>,  <40.021549, 31.845734, 24.652508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402920, 31.725204, 24.658005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036757, 0.070841, -0.996810,
		0.299388, 0.950887, 0.078618,
		0.953423, -0.301323, 0.013743,
		40.688946, 31.634808, 24.662128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352039, 32.314438, 24.046797>,  <40.021549, 31.845734, 24.652508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352039, 32.314438, 24.046797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593445, 31.996574, 24.073006>,  <40.738289, 31.805857, 24.088730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593445, 31.996574, 24.073006>,  <40.352039, 32.314438, 24.046797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593445, 31.996574, 24.073006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172873, 0.050187, -0.983665,
		0.778386, 0.604983, 0.167663,
		0.603515, -0.794655, 0.065520,
		40.774498, 31.758179, 24.092661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974239, 32.442570, 23.634504>,  <40.352039, 32.314438, 24.046797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974239, 32.442570, 23.634504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931343, 32.045273, 23.652288>,  <40.905605, 31.806896, 23.662958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931343, 32.045273, 23.652288>,  <40.974239, 32.442570, 23.634504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931343, 32.045273, 23.652288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173384, -0.062716, -0.982855,
		0.978998, -0.097697, 0.178938,
		-0.107244, -0.993238, 0.044460,
		40.899170, 31.747301, 23.665627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420597, 32.218933, 23.193693>,  <40.974239, 32.442570, 23.634504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420597, 32.218933, 23.193693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240410, 31.866705, 23.252594>,  <41.132298, 31.655369, 23.287933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240410, 31.866705, 23.252594>,  <41.420597, 32.218933, 23.193693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240410, 31.866705, 23.252594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271244, -0.292120, -0.917111,
		0.850592, -0.373187, 0.370439,
		-0.450467, -0.880566, 0.147250,
		41.105270, 31.602535, 23.296768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966808, 31.732447, 22.992970>,  <41.420597, 32.218933, 23.193693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966808, 31.732447, 22.992970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608059, 31.559334, 22.956478>,  <41.392811, 31.455467, 22.934584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608059, 31.559334, 22.956478>,  <41.966808, 31.732447, 22.992970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608059, 31.559334, 22.956478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232279, -0.285353, -0.929849,
		0.376388, -0.855146, 0.356451,
		-0.896872, -0.432780, -0.091229,
		41.338997, 31.429501, 22.929110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128910, 31.090240, 22.684597>,  <41.966808, 31.732447, 22.992970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128910, 31.090240, 22.684597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747482, 31.172028, 22.596138>,  <41.518627, 31.221100, 22.543062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747482, 31.172028, 22.596138>,  <42.128910, 31.090240, 22.684597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747482, 31.172028, 22.596138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165463, -0.257896, -0.951899,
		-0.251634, -0.944296, 0.212096,
		-0.953573, 0.204436, -0.221142,
		41.461414, 31.233368, 22.529795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998787, 30.658600, 22.143091>,  <42.128910, 31.090240, 22.684597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998787, 30.658600, 22.143091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.669582, 30.883022, 22.107616>,  <41.472057, 31.017675, 22.086330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.669582, 30.883022, 22.107616>,  <41.998787, 30.658600, 22.143091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669582, 30.883022, 22.107616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066390, -0.250079, -0.965947,
		-0.564130, -0.789098, 0.243067,
		-0.823013, 0.561056, -0.088689,
		41.422680, 31.051338, 22.081009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539295, 30.257710, 21.634573>,  <41.998787, 30.658600, 22.143091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539295, 30.257710, 21.634573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.410664, 30.635832, 21.656416>,  <41.333485, 30.862705, 21.669521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.410664, 30.635832, 21.656416>,  <41.539295, 30.257710, 21.634573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410664, 30.635832, 21.656416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186570, -0.006716, -0.982419,
		-0.928319, -0.326117, 0.178526,
		-0.321583, 0.945305, 0.054609,
		41.314190, 30.919424, 21.672798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892384, 30.288074, 21.352898>,  <41.539295, 30.257710, 21.634573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892384, 30.288074, 21.352898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066296, 30.644701, 21.302181>,  <41.170643, 30.858677, 21.271751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066296, 30.644701, 21.302181>,  <40.892384, 30.288074, 21.352898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066296, 30.644701, 21.302181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090636, -0.096757, -0.991173,
		-0.895965, 0.442431, 0.038740,
		0.434777, 0.891568, -0.126791,
		41.196728, 30.912170, 21.264143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613087, 30.502708, 20.701694>,  <40.892384, 30.288074, 21.352898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613087, 30.502708, 20.701694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.903008, 30.777582, 20.721472>,  <41.076962, 30.942507, 20.733339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.903008, 30.777582, 20.721472>,  <40.613087, 30.502708, 20.701694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903008, 30.777582, 20.721472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065645, 0.002558, -0.997840,
		-0.685824, 0.726481, -0.043256,
		0.724801, 0.687182, 0.049444,
		41.120449, 30.983736, 20.736305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410961, 30.987293, 20.211296>,  <40.613087, 30.502708, 20.701694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410961, 30.987293, 20.211296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802963, 31.043287, 20.267849>,  <41.038166, 31.076883, 20.301781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802963, 31.043287, 20.267849>,  <40.410961, 30.987293, 20.211296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802963, 31.043287, 20.267849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105777, 0.235285, -0.966153,
		-0.168512, 0.961793, 0.215774,
		0.980008, 0.139985, 0.141384,
		41.096966, 31.085283, 20.310265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575298, 31.525692, 19.791349>,  <40.410961, 30.987293, 20.211296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575298, 31.525692, 19.791349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928967, 31.359173, 19.876137>,  <41.141167, 31.259262, 19.927010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928967, 31.359173, 19.876137>,  <40.575298, 31.525692, 19.791349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928967, 31.359173, 19.876137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288237, 0.129071, -0.948820,
		0.367633, 0.900020, 0.234114,
		0.884175, -0.416298, 0.211968,
		41.194218, 31.234283, 19.939728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140759, 31.986141, 19.533695>,  <40.575298, 31.525692, 19.791349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140759, 31.986141, 19.533695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313980, 31.626213, 19.554810>,  <41.417915, 31.410257, 19.567478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313980, 31.626213, 19.554810>,  <41.140759, 31.986141, 19.533695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313980, 31.626213, 19.554810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241814, 0.059562, -0.968493,
		0.868324, 0.432179, 0.243382,
		0.433058, -0.899819, 0.052788,
		41.443897, 31.356268, 19.570646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840309, 32.103130, 19.334078>,  <41.140759, 31.986141, 19.533695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840309, 32.103130, 19.334078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778908, 31.709349, 19.299946>,  <41.742065, 31.473080, 19.279467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778908, 31.709349, 19.299946>,  <41.840309, 32.103130, 19.334078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778908, 31.709349, 19.299946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542867, -0.011865, -0.839735,
		0.825670, -0.175227, 0.536250,
		-0.153507, -0.984457, -0.085329,
		41.732857, 31.414011, 19.274347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524364, 31.793793, 19.011858>,  <41.840309, 32.103130, 19.334078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524364, 31.793793, 19.011858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229294, 31.528976, 18.958885>,  <42.052254, 31.370087, 18.927101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229294, 31.528976, 18.958885>,  <42.524364, 31.793793, 19.011858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229294, 31.528976, 18.958885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275341, -0.115892, -0.954336,
		0.616462, -0.740453, 0.267778,
		-0.737674, -0.662041, -0.132434,
		42.007992, 31.330364, 18.919155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870247, 31.254826, 18.723347>,  <42.524364, 31.793793, 19.011858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870247, 31.254826, 18.723347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483742, 31.212835, 18.629274>,  <42.251839, 31.187641, 18.572830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483742, 31.212835, 18.629274>,  <42.870247, 31.254826, 18.723347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483742, 31.212835, 18.629274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251484, -0.187588, -0.949509,
		0.055558, -0.976622, 0.207659,
		-0.966266, -0.104976, -0.235183,
		42.193863, 31.181343, 18.558720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904495, 30.715584, 18.226667>,  <42.870247, 31.254826, 18.723347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904495, 30.715584, 18.226667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.545940, 30.885283, 18.175287>,  <42.330807, 30.987101, 18.144459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.545940, 30.885283, 18.175287>,  <42.904495, 30.715584, 18.226667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545940, 30.885283, 18.175287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081643, -0.126806, -0.988562,
		-0.435681, -0.896625, 0.079031,
		-0.896391, 0.424246, -0.128450,
		42.277023, 31.012556, 18.136753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472137, 30.320229, 17.771431>,  <42.904495, 30.715584, 18.226667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472137, 30.320229, 17.771431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325260, 30.686937, 17.708567>,  <42.237133, 30.906963, 17.670847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325260, 30.686937, 17.708567>,  <42.472137, 30.320229, 17.771431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325260, 30.686937, 17.708567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059811, -0.191887, -0.979593,
		-0.928222, -0.350295, 0.125292,
		-0.367189, 0.916773, -0.157162,
		42.215103, 30.961969, 17.661419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933495, 30.164217, 17.271378>,  <42.472137, 30.320229, 17.771431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933495, 30.164217, 17.271378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.020973, 30.554153, 17.288597>,  <42.073460, 30.788116, 17.298929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.020973, 30.554153, 17.288597>,  <41.933495, 30.164217, 17.271378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020973, 30.554153, 17.288597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030881, 0.037182, -0.998831,
		-0.975304, 0.219769, -0.021973,
		0.218695, 0.974843, 0.043051,
		42.086582, 30.846607, 17.301512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517681, 30.513847, 16.780678>,  <41.933495, 30.164217, 17.271378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517681, 30.513847, 16.780678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849400, 30.729559, 16.839251>,  <42.048431, 30.858986, 16.874395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849400, 30.729559, 16.839251>,  <41.517681, 30.513847, 16.780678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849400, 30.729559, 16.839251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101760, 0.111925, -0.988492,
		-0.549461, 0.834657, 0.037942,
		0.829299, 0.539278, 0.146434,
		42.098190, 30.891342, 16.883181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093056, 30.995546, 16.479504>,  <41.517681, 30.513847, 16.780678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093056, 30.995546, 16.479504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747017, 30.873970, 16.319893>,  <40.539394, 30.801023, 16.224127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747017, 30.873970, 16.319893>,  <41.093056, 30.995546, 16.479504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747017, 30.873970, 16.319893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460538, 0.166051, 0.871970,
		-0.198769, 0.938108, -0.283628,
		-0.865098, -0.303942, -0.399029,
		40.487488, 30.782787, 16.200184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593800, 31.320286, 16.762939>,  <41.093056, 30.995546, 16.479504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593800, 31.320286, 16.762939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362762, 31.024872, 16.623827>,  <40.224140, 30.847624, 16.540359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362762, 31.024872, 16.623827>,  <40.593800, 31.320286, 16.762939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362762, 31.024872, 16.623827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581267, 0.072954, 0.810436,
		-0.573163, 0.670256, -0.471424,
		-0.577592, -0.738535, -0.347783,
		40.189484, 30.803310, 16.519491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888901, 31.519167, 16.809422>,  <40.593800, 31.320286, 16.762939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888901, 31.519167, 16.809422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865952, 31.120068, 16.795555>,  <39.852180, 30.880608, 16.787235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865952, 31.120068, 16.795555>,  <39.888901, 31.519167, 16.809422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865952, 31.120068, 16.795555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625856, 0.008895, 0.779888,
		-0.777825, 0.066442, -0.624959,
		-0.057376, -0.997751, -0.034665,
		39.848740, 30.820742, 16.785156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187267, 31.393427, 16.820507>,  <39.888901, 31.519167, 16.809422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187267, 31.393427, 16.820507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381878, 31.069765, 16.952301>,  <39.498642, 30.875568, 17.031378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381878, 31.069765, 16.952301>,  <39.187267, 31.393427, 16.820507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381878, 31.069765, 16.952301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548133, 0.010968, 0.836319,
		-0.680326, -0.587492, -0.438189,
		0.486524, -0.809156, 0.329486,
		39.527836, 30.827019, 17.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594269, 31.027561, 17.143461>,  <39.187267, 31.393427, 16.820507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594269, 31.027561, 17.143461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909763, 30.832642, 17.293356>,  <39.099060, 30.715689, 17.383293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909763, 30.832642, 17.293356>,  <38.594269, 31.027561, 17.143461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909763, 30.832642, 17.293356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403887, 0.048769, 0.913508,
		-0.463429, -0.871871, -0.158348,
		0.788739, -0.487301, 0.374739,
		39.146385, 30.686451, 17.405777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274651, 30.595734, 17.656082>,  <38.594269, 31.027561, 17.143461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274651, 30.595734, 17.656082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664806, 30.612129, 17.742735>,  <38.898899, 30.621967, 17.794727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664806, 30.612129, 17.742735>,  <38.274651, 30.595734, 17.656082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664806, 30.612129, 17.742735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219065, 0.069134, 0.973258,
		0.024912, -0.996765, 0.076411,
		0.975392, 0.040985, 0.216634,
		38.957424, 30.624426, 17.807724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289036, 30.196394, 18.204962>,  <38.274651, 30.595734, 17.656082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289036, 30.196394, 18.204962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620934, 30.419003, 18.221945>,  <38.820072, 30.552568, 18.232134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620934, 30.419003, 18.221945>,  <38.289036, 30.196394, 18.204962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620934, 30.419003, 18.221945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118488, 0.101302, 0.987775,
		0.545420, -0.824633, 0.149996,
		0.829746, 0.556524, 0.042457,
		38.869858, 30.585960, 18.234682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707108, 29.893862, 18.659439>,  <38.289036, 30.196394, 18.204962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707108, 29.893862, 18.659439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803181, 30.279644, 18.615381>,  <38.860825, 30.511114, 18.588945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803181, 30.279644, 18.615381>,  <38.707108, 29.893862, 18.659439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803181, 30.279644, 18.615381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248995, 0.170882, 0.953310,
		0.938249, -0.201546, 0.281189,
		0.240186, 0.964458, -0.110146,
		38.875237, 30.568981, 18.582338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197617, 29.949215, 19.132431>,  <38.707108, 29.893862, 18.659439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197617, 29.949215, 19.132431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088596, 30.329971, 19.076405>,  <39.023186, 30.558426, 19.042788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088596, 30.329971, 19.076405>,  <39.197617, 29.949215, 19.132431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088596, 30.329971, 19.076405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209917, 0.200902, 0.956856,
		0.938964, 0.231386, -0.254573,
		-0.272548, 0.951892, -0.140068,
		39.006832, 30.615540, 19.034384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646042, 30.355062, 19.415585>,  <39.197617, 29.949215, 19.132431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646042, 30.355062, 19.415585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325665, 30.594522, 19.411448>,  <39.133438, 30.738197, 19.408966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325665, 30.594522, 19.411448>,  <39.646042, 30.355062, 19.415585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325665, 30.594522, 19.411448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095966, 0.145407, 0.984707,
		0.590998, 0.787703, -0.173913,
		-0.800945, 0.598649, -0.010342,
		39.085381, 30.774117, 19.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846588, 30.846046, 19.785091>,  <39.646042, 30.355062, 19.415585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846588, 30.846046, 19.785091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456036, 30.931568, 19.772657>,  <39.221703, 30.982882, 19.765198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456036, 30.931568, 19.772657>,  <39.846588, 30.846046, 19.785091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456036, 30.931568, 19.772657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006040, 0.170833, 0.985281,
		0.215966, 0.961823, -0.168090,
		-0.976382, 0.213802, -0.031085,
		39.163120, 30.995708, 19.763332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760044, 31.523869, 20.118530>,  <39.846588, 30.846046, 19.785091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760044, 31.523869, 20.118530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421497, 31.315384, 20.162357>,  <39.218369, 31.190292, 20.188654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421497, 31.315384, 20.162357>,  <39.760044, 31.523869, 20.118530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421497, 31.315384, 20.162357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134324, -0.009822, 0.990889,
		-0.515386, 0.853371, 0.078324,
		-0.846365, -0.521211, 0.109566,
		39.167587, 31.159021, 20.195227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456741, 31.714676, 20.813261>,  <39.760044, 31.523869, 20.118530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456741, 31.714676, 20.813261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245800, 31.388582, 20.717518>,  <39.119236, 31.192926, 20.660072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245800, 31.388582, 20.717518>,  <39.456741, 31.714676, 20.813261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245800, 31.388582, 20.717518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100094, -0.220142, 0.970319,
		-0.843729, 0.535661, 0.034493,
		-0.527355, -0.815233, -0.239357,
		39.087593, 31.144012, 20.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909637, 31.748985, 21.263960>,  <39.456741, 31.714676, 20.813261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909637, 31.748985, 21.263960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919968, 31.367668, 21.143583>,  <38.926167, 31.138878, 21.071358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919968, 31.367668, 21.143583>,  <38.909637, 31.748985, 21.263960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919968, 31.367668, 21.143583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256952, -0.297260, 0.919572,
		-0.966079, 0.053577, -0.252628,
		0.025828, -0.953292, -0.300943,
		38.927715, 31.081680, 21.053301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361107, 31.376896, 21.500788>,  <38.909637, 31.748985, 21.263960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361107, 31.376896, 21.500788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616486, 31.085651, 21.401001>,  <38.769714, 30.910904, 21.341129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616486, 31.085651, 21.401001>,  <38.361107, 31.376896, 21.500788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616486, 31.085651, 21.401001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302317, -0.535315, 0.788696,
		-0.707803, -0.428125, -0.561893,
		0.638451, -0.728112, -0.249468,
		38.808022, 30.867218, 21.326160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961250, 30.797144, 21.656090>,  <38.361107, 31.376896, 21.500788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961250, 30.797144, 21.656090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338837, 30.665237, 21.650606>,  <38.565388, 30.586094, 21.647316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338837, 30.665237, 21.650606>,  <37.961250, 30.797144, 21.656090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338837, 30.665237, 21.650606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215323, -0.646787, 0.731643,
		-0.250139, -0.687692, -0.681550,
		0.943963, -0.329766, -0.013710,
		38.622025, 30.566307, 21.646494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885166, 30.090015, 21.750202>,  <37.961250, 30.797144, 21.656090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885166, 30.090015, 21.750202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261482, 30.176825, 21.854372>,  <38.487270, 30.228910, 21.916874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261482, 30.176825, 21.854372>,  <37.885166, 30.090015, 21.750202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261482, 30.176825, 21.854372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147081, -0.430830, 0.890366,
		0.305428, -0.875949, -0.373400,
		0.940787, 0.217023, 0.260423,
		38.543720, 30.241932, 21.932499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144783, 29.568542, 22.151176>,  <37.885166, 30.090015, 21.750202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144783, 29.568542, 22.151176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385311, 29.868618, 22.261181>,  <38.529629, 30.048664, 22.327183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385311, 29.868618, 22.261181>,  <38.144783, 29.568542, 22.151176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385311, 29.868618, 22.261181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193359, -0.197331, 0.961079,
		0.775259, -0.631091, 0.026397,
		0.601320, 0.750189, 0.275010,
		38.565708, 30.093676, 22.343683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559948, 29.250347, 22.662415>,  <38.144783, 29.568542, 22.151176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559948, 29.250347, 22.662415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597237, 29.643301, 22.727192>,  <38.619610, 29.879074, 22.766058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597237, 29.643301, 22.727192>,  <38.559948, 29.250347, 22.662415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597237, 29.643301, 22.727192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002975, -0.162926, 0.986634,
		0.995641, -0.091495, -0.018111,
		0.093223, 0.982387, 0.161943,
		38.625202, 29.938017, 22.775774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027012, 29.335094, 23.267580>,  <38.559948, 29.250347, 22.662415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027012, 29.335094, 23.267580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829899, 29.681778, 23.236643>,  <38.711632, 29.889788, 23.218081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829899, 29.681778, 23.236643>,  <39.027012, 29.335094, 23.267580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829899, 29.681778, 23.236643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059136, 0.055319, 0.996716,
		0.868140, 0.495740, 0.023994,
		-0.492784, 0.866708, -0.077341,
		38.682064, 29.941790, 23.213440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300507, 29.651423, 23.802454>,  <39.027012, 29.335094, 23.267580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300507, 29.651423, 23.802454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966854, 29.855154, 23.717787>,  <38.766663, 29.977394, 23.666986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966854, 29.855154, 23.717787>,  <39.300507, 29.651423, 23.802454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966854, 29.855154, 23.717787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130972, 0.189882, 0.973032,
		0.535787, 0.839362, -0.091679,
		-0.834134, 0.509330, -0.211669,
		38.716614, 30.007954, 23.654285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.239464, 32.205994, 28.879215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924290, 32.349915, 28.679335>,  <40.735184, 32.436268, 28.559406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924290, 32.349915, 28.679335>,  <41.239464, 32.205994, 28.879215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924290, 32.349915, 28.679335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523548, 0.035700, 0.851248,
		0.324117, 0.932347, 0.160242,
		-0.787938, 0.359798, -0.499699,
		40.687908, 32.457855, 28.529425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058125, 32.817501, 29.271574>,  <41.239464, 32.205994, 28.879215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058125, 32.817501, 29.271574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747105, 32.676781, 29.063091>,  <40.560493, 32.592350, 28.938002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747105, 32.676781, 29.063091>,  <41.058125, 32.817501, 29.271574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747105, 32.676781, 29.063091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556453, -0.001107, 0.830878,
		-0.292877, 0.936076, -0.194898,
		-0.777549, -0.351797, -0.521207,
		40.513840, 32.571243, 28.906729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494473, 33.214588, 29.537348>,  <41.058125, 32.817501, 29.271574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494473, 33.214588, 29.537348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290997, 32.919067, 29.360531>,  <40.168911, 32.741753, 29.254440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290997, 32.919067, 29.360531>,  <40.494473, 33.214588, 29.537348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290997, 32.919067, 29.360531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705568, 0.063510, 0.705791,
		-0.493368, 0.670918, -0.553585,
		-0.508686, -0.738806, -0.442044,
		40.138390, 32.697426, 29.227917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753910, 33.402805, 29.498413>,  <40.494473, 33.214588, 29.537348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753910, 33.402805, 29.498413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766102, 33.004089, 29.468809>,  <39.773415, 32.764858, 29.451048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766102, 33.004089, 29.468809>,  <39.753910, 33.402805, 29.498413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766102, 33.004089, 29.468809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825320, -0.066863, 0.560692,
		-0.563842, 0.043992, -0.824710,
		0.030476, -0.996792, -0.074008,
		39.775246, 32.705051, 29.446608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033195, 33.130333, 29.509932>,  <39.753910, 33.402805, 29.498413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033195, 33.130333, 29.509932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269215, 32.820492, 29.600990>,  <39.410828, 32.634586, 29.655624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269215, 32.820492, 29.600990>,  <39.033195, 33.130333, 29.509932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269215, 32.820492, 29.600990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623462, -0.258015, 0.738054,
		-0.512967, -0.577418, -0.635180,
		0.590052, -0.774608, 0.227645,
		39.446232, 32.588108, 29.669285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606846, 32.621811, 29.609678>,  <39.033195, 33.130333, 29.509932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606846, 32.621811, 29.609678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914749, 32.456436, 29.804222>,  <39.099491, 32.357212, 29.920948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914749, 32.456436, 29.804222>,  <38.606846, 32.621811, 29.609678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914749, 32.456436, 29.804222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612667, -0.264611, 0.744729,
		-0.179197, -0.871238, -0.456981,
		0.769758, -0.413430, 0.486361,
		39.145676, 32.332405, 29.950130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397549, 32.006947, 29.748693>,  <38.606846, 32.621811, 29.609678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397549, 32.006947, 29.748693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684883, 32.095474, 30.012516>,  <38.857285, 32.148590, 30.170809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684883, 32.095474, 30.012516>,  <38.397549, 32.006947, 29.748693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684883, 32.095474, 30.012516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598769, -0.286026, 0.748108,
		0.354217, -0.932314, -0.072946,
		0.718336, 0.221315, 0.659556,
		38.900383, 32.161869, 30.210382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366417, 31.472685, 30.255955>,  <38.397549, 32.006947, 29.748693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366417, 31.472685, 30.255955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577568, 31.767509, 30.424755>,  <38.704258, 31.944405, 30.526035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577568, 31.767509, 30.424755>,  <38.366417, 31.472685, 30.255955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577568, 31.767509, 30.424755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563188, -0.068147, 0.823514,
		0.635739, -0.672380, 0.379131,
		0.527878, 0.737062, 0.422000,
		38.735931, 31.988628, 30.551355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435196, 31.240009, 31.025270>,  <38.366417, 31.472685, 30.255955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435196, 31.240009, 31.025270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477962, 31.635855, 30.986834>,  <38.503624, 31.873362, 30.963772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477962, 31.635855, 30.986834>,  <38.435196, 31.240009, 31.025270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477962, 31.635855, 30.986834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517670, 0.137921, 0.844390,
		0.848873, -0.040537, 0.527040,
		0.106918, 0.989613, -0.096092,
		38.510036, 31.932739, 30.958006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624954, 31.412132, 31.732088>,  <38.435196, 31.240009, 31.025270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624954, 31.412132, 31.732088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541767, 31.756569, 31.546497>,  <38.491856, 31.963230, 31.435143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541767, 31.756569, 31.546497>,  <38.624954, 31.412132, 31.732088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541767, 31.756569, 31.546497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273293, 0.404301, 0.872841,
		0.939181, 0.308322, 0.151249,
		-0.207966, 0.861091, -0.463975,
		38.479378, 32.014896, 31.407305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793522, 31.865950, 32.195782>,  <38.624954, 31.412132, 31.732088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793522, 31.865950, 32.195782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529121, 32.069817, 31.975483>,  <38.370483, 32.192135, 31.843304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529121, 32.069817, 31.975483>,  <38.793522, 31.865950, 32.195782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529121, 32.069817, 31.975483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431629, 0.342134, 0.834650,
		0.613822, 0.789420, -0.006163,
		-0.660999, 0.509667, -0.550746,
		38.330822, 32.222717, 31.810259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714745, 32.642052, 32.484890>,  <38.793522, 31.865950, 32.195782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714745, 32.642052, 32.484890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387589, 32.536854, 32.280186>,  <38.191296, 32.473736, 32.157364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387589, 32.536854, 32.280186>,  <38.714745, 32.642052, 32.484890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387589, 32.536854, 32.280186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541646, 0.051859, 0.839005,
		-0.194117, 0.963402, -0.184867,
		-0.817886, -0.262998, -0.511756,
		38.142223, 32.457954, 32.126659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153141, 33.146263, 32.670135>,  <38.714745, 32.642052, 32.484890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153141, 33.146263, 32.670135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034557, 32.783279, 32.551052>,  <37.963406, 32.565491, 32.479603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034557, 32.783279, 32.551052>,  <38.153141, 33.146263, 32.670135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034557, 32.783279, 32.551052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570597, -0.081677, 0.817159,
		-0.765852, 0.412131, -0.493577,
		-0.296463, -0.907456, -0.297713,
		37.945618, 32.511044, 32.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439983, 33.100346, 32.528061>,  <38.153141, 33.146263, 32.670135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439983, 33.100346, 32.528061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583782, 32.746635, 32.647274>,  <37.670063, 32.534409, 32.718800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583782, 32.746635, 32.647274>,  <37.439983, 33.100346, 32.528061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583782, 32.746635, 32.647274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632425, 0.003960, 0.774612,
		-0.686148, -0.466953, -0.557813,
		0.359498, -0.884273, 0.298030,
		37.691631, 32.481354, 32.736683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291870, 33.740425, 32.524807>,  <37.439983, 33.100346, 32.528061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291870, 33.740425, 32.524807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600525, 33.940182, 32.682381>,  <37.785717, 34.060036, 32.776924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600525, 33.940182, 32.682381>,  <37.291870, 33.740425, 32.524807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600525, 33.940182, 32.682381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225351, 0.793805, -0.564882,
		-0.594801, 0.347112, 0.725069,
		0.771641, 0.499387, 0.393933,
		37.832016, 34.089996, 32.800560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994114, 34.361122, 32.519939>,  <37.291870, 33.740425, 32.524807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994114, 34.361122, 32.519939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.384281, 34.436668, 32.565338>,  <37.618382, 34.481998, 32.592579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.384281, 34.436668, 32.565338>,  <36.994114, 34.361122, 32.519939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384281, 34.436668, 32.565338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079441, 0.781872, -0.618357,
		-0.205530, 0.594142, 0.777659,
		0.975421, 0.188869, 0.113499,
		37.676907, 34.493328, 32.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017689, 35.048874, 32.603683>,  <36.994114, 34.361122, 32.519939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017689, 35.048874, 32.603683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373722, 34.920925, 32.473804>,  <37.587341, 34.844154, 32.395878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373722, 34.920925, 32.473804>,  <37.017689, 35.048874, 32.603683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373722, 34.920925, 32.473804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017253, 0.688223, -0.725294,
		0.455462, 0.651177, 0.607061,
		0.890088, -0.319870, -0.324694,
		37.640747, 34.824963, 32.376396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405220, 35.719738, 32.306374>,  <37.017689, 35.048874, 32.603683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405220, 35.719738, 32.306374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580368, 35.409775, 32.124039>,  <37.685455, 35.223797, 32.014637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580368, 35.409775, 32.124039>,  <37.405220, 35.719738, 32.306374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580368, 35.409775, 32.124039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060157, 0.480642, -0.874851,
		0.897024, 0.410491, 0.163842,
		0.437868, -0.774906, -0.455842,
		37.711727, 35.177303, 31.987286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014771, 35.984745, 31.908226>,  <37.405220, 35.719738, 32.306374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014771, 35.984745, 31.908226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947197, 35.640526, 31.716007>,  <37.906654, 35.433994, 31.600676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947197, 35.640526, 31.716007>,  <38.014771, 35.984745, 31.908226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947197, 35.640526, 31.716007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138309, 0.462031, -0.876013,
		0.975876, -0.214449, 0.040970,
		-0.168930, -0.860546, -0.480545,
		37.896519, 35.382362, 31.571844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553108, 35.929352, 31.397867>,  <38.014771, 35.984745, 31.908226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553108, 35.929352, 31.397867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289322, 35.660496, 31.263208>,  <38.131050, 35.499184, 31.182413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289322, 35.660496, 31.263208>,  <38.553108, 35.929352, 31.397867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289322, 35.660496, 31.263208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209838, 0.265433, -0.941017,
		0.721852, -0.691211, -0.034004,
		-0.659468, -0.672140, -0.336646,
		38.091480, 35.458855, 31.162214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855495, 35.674595, 30.871464>,  <38.553108, 35.929352, 31.397867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855495, 35.674595, 30.871464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477505, 35.558815, 30.810499>,  <38.250710, 35.489346, 30.773920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477505, 35.558815, 30.810499>,  <38.855495, 35.674595, 30.871464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477505, 35.558815, 30.810499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129623, 0.096445, -0.986862,
		0.300348, -0.952321, -0.053620,
		-0.944981, -0.289452, -0.152410,
		38.194012, 35.471981, 30.764776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835468, 35.152225, 30.429461>,  <38.855495, 35.674595, 30.871464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835468, 35.152225, 30.429461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462219, 35.292259, 30.396654>,  <38.238270, 35.376278, 30.376970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462219, 35.292259, 30.396654>,  <38.835468, 35.152225, 30.429461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462219, 35.292259, 30.396654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182479, 0.264544, -0.946952,
		-0.309812, -0.898588, -0.310734,
		-0.933122, 0.350080, -0.082015,
		38.182281, 35.397282, 30.372049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629524, 34.893028, 29.902561>,  <38.835468, 35.152225, 30.429461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629524, 34.893028, 29.902561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.354839, 35.183372, 29.918283>,  <38.190029, 35.357578, 29.927717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.354839, 35.183372, 29.918283>,  <38.629524, 34.893028, 29.902561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354839, 35.183372, 29.918283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001737, 0.055709, -0.998446,
		-0.726927, -0.685577, -0.039517,
		-0.686713, 0.725865, 0.039305,
		38.148827, 35.401131, 29.930075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144951, 34.651257, 29.336720>,  <38.629524, 34.893028, 29.902561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144951, 34.651257, 29.336720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040699, 35.033619, 29.390842>,  <37.978149, 35.263039, 29.423315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040699, 35.033619, 29.390842>,  <38.144951, 34.651257, 29.336720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040699, 35.033619, 29.390842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122060, 0.106399, -0.986803,
		-0.957692, -0.273705, 0.088948,
		-0.260629, 0.955910, 0.135306,
		37.962509, 35.320393, 29.431435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515198, 34.752682, 29.010271>,  <38.144951, 34.651257, 29.336720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515198, 34.752682, 29.010271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691471, 35.110489, 29.040300>,  <37.797234, 35.325172, 29.058317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691471, 35.110489, 29.040300>,  <37.515198, 34.752682, 29.010271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691471, 35.110489, 29.040300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149194, 0.155454, -0.976512,
		-0.885177, 0.419133, 0.201963,
		0.440684, 0.894518, 0.075072,
		37.823677, 35.378845, 29.062822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148296, 35.116024, 28.552940>,  <37.515198, 34.752682, 29.010271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148296, 35.116024, 28.552940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474377, 35.345997, 28.580925>,  <37.670025, 35.483982, 28.597715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474377, 35.345997, 28.580925>,  <37.148296, 35.116024, 28.552940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474377, 35.345997, 28.580925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002849, 0.116813, -0.993150,
		-0.579168, 0.809819, 0.093589,
		0.815203, 0.574934, 0.069961,
		37.718937, 35.518478, 28.601913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985947, 35.680569, 28.231592>,  <37.148296, 35.116024, 28.552940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985947, 35.680569, 28.231592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385017, 35.701866, 28.248592>,  <37.624458, 35.714645, 28.258793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385017, 35.701866, 28.248592>,  <36.985947, 35.680569, 28.231592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385017, 35.701866, 28.248592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036719, 0.105193, -0.993774,
		-0.057385, 0.993025, 0.102994,
		0.997677, 0.053245, 0.042500,
		37.684319, 35.717838, 28.261343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166779, 36.273819, 27.785027>,  <36.985947, 35.680569, 28.231592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166779, 36.273819, 27.785027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491539, 36.041180, 27.805241>,  <37.686394, 35.901596, 27.817369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491539, 36.041180, 27.805241>,  <37.166779, 36.273819, 27.785027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491539, 36.041180, 27.805241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174651, 0.159380, -0.971646,
		0.557056, 0.797708, 0.230979,
		0.811903, -0.581601, 0.050537,
		37.735111, 35.866699, 27.820402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073788, 36.908646, 27.518023>,  <37.166779, 36.273819, 27.785027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073788, 36.908646, 27.518023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687828, 36.964672, 27.429165>,  <36.456253, 36.998287, 27.375851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687828, 36.964672, 27.429165>,  <37.073788, 36.908646, 27.518023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687828, 36.964672, 27.429165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241610, -0.141984, 0.959930,
		0.102915, 0.979909, 0.170843,
		-0.964901, 0.140069, -0.222143,
		36.398357, 37.006691, 27.362522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763741, 37.168583, 28.151089>,  <37.073788, 36.908646, 27.518023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763741, 37.168583, 28.151089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425095, 37.066536, 27.964256>,  <36.221909, 37.005306, 27.852158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425095, 37.066536, 27.964256>,  <36.763741, 37.168583, 28.151089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425095, 37.066536, 27.964256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440081, -0.157961, 0.883955,
		-0.299296, 0.953919, 0.021458,
		-0.846611, -0.255121, -0.467079,
		36.171112, 36.989998, 27.824133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133583, 37.485153, 28.472523>,  <36.763741, 37.168583, 28.151089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133583, 37.485153, 28.472523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981388, 37.190651, 28.248678>,  <35.890072, 37.013950, 28.114372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981388, 37.190651, 28.248678>,  <36.133583, 37.485153, 28.472523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981388, 37.190651, 28.248678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567198, -0.292158, 0.770019,
		-0.730423, 0.610391, -0.306439,
		-0.380484, -0.736251, -0.559612,
		35.867241, 36.969776, 28.080795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413048, 37.517422, 28.622419>,  <36.133583, 37.485153, 28.472523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413048, 37.517422, 28.622419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475731, 37.143894, 28.493786>,  <35.513340, 36.919777, 28.416605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475731, 37.143894, 28.493786>,  <35.413048, 37.517422, 28.622419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475731, 37.143894, 28.493786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437757, -0.357552, 0.824940,
		-0.885331, 0.011498, -0.464820,
		0.156712, -0.933822, -0.321585,
		35.522743, 36.863747, 28.397310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793850, 37.314087, 28.552383>,  <35.413048, 37.517422, 28.622419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793850, 37.314087, 28.552383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028393, 36.991302, 28.580683>,  <35.169117, 36.797630, 28.597662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028393, 36.991302, 28.580683>,  <34.793850, 37.314087, 28.552383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028393, 36.991302, 28.580683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597329, -0.371729, 0.710644,
		-0.547164, -0.458946, -0.699986,
		0.586353, -0.806961, 0.070745,
		35.204300, 36.749214, 28.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394684, 36.674213, 28.543425>,  <34.793850, 37.314087, 28.552383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394684, 36.674213, 28.543425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.728134, 36.554272, 28.728964>,  <34.928204, 36.482307, 28.840286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.728134, 36.554272, 28.728964>,  <34.394684, 36.674213, 28.543425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728134, 36.554272, 28.728964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549298, -0.362266, 0.753017,
		-0.057757, -0.882526, -0.466703,
		0.833628, -0.299851, 0.463846,
		34.978222, 36.464317, 28.868118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246578, 36.036888, 28.832806>,  <34.394684, 36.674213, 28.543425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246578, 36.036888, 28.832806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579319, 36.106777, 29.043518>,  <34.778961, 36.148708, 29.169945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579319, 36.106777, 29.043518>,  <34.246578, 36.036888, 28.832806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579319, 36.106777, 29.043518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379615, -0.513283, 0.769697,
		0.404868, -0.840246, -0.360649,
		0.831850, 0.174719, 0.526782,
		34.828873, 36.159191, 29.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462402, 35.433144, 29.009386>,  <34.246578, 36.036888, 28.832806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462402, 35.433144, 29.009386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617043, 35.695614, 29.268608>,  <34.709827, 35.853096, 29.424141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617043, 35.695614, 29.268608>,  <34.462402, 35.433144, 29.009386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617043, 35.695614, 29.268608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370006, -0.533302, 0.760713,
		0.844772, -0.533873, 0.036617,
		0.386596, 0.656178, 0.648054,
		34.733021, 35.892467, 29.463024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662994, 34.956570, 29.460743>,  <34.462402, 35.433144, 29.009386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662994, 34.956570, 29.460743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655487, 35.303738, 29.659286>,  <34.650982, 35.512039, 29.778412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655487, 35.303738, 29.659286>,  <34.662994, 34.956570, 29.460743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655487, 35.303738, 29.659286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064132, -0.496468, 0.865683,
		0.997765, -0.015586, 0.064978,
		-0.018767, 0.867915, 0.496357,
		34.649857, 35.564114, 29.808193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070126, 34.871197, 30.028429>,  <34.662994, 34.956570, 29.460743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070126, 34.871197, 30.028429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.813107, 35.158367, 30.135542>,  <34.658894, 35.330669, 30.199810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.813107, 35.158367, 30.135542>,  <35.070126, 34.871197, 30.028429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813107, 35.158367, 30.135542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226718, -0.511957, 0.828552,
		0.731934, 0.471676, 0.491725,
		-0.642551, 0.717929, 0.267781,
		34.620342, 35.373745, 30.215876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102634, 34.853088, 30.736938>,  <35.070126, 34.871197, 30.028429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102634, 34.853088, 30.736938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.778625, 35.076118, 30.664309>,  <34.584221, 35.209938, 30.620731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.778625, 35.076118, 30.664309>,  <35.102634, 34.853088, 30.736938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778625, 35.076118, 30.664309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430645, -0.355479, 0.829566,
		0.398001, 0.750162, 0.528064,
		-0.810024, 0.557577, -0.181573,
		34.535618, 35.243393, 30.609837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923752, 35.094688, 31.396130>,  <35.102634, 34.853088, 30.736938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923752, 35.094688, 31.396130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595379, 35.132198, 31.170818>,  <34.398357, 35.154705, 31.035631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595379, 35.132198, 31.170818>,  <34.923752, 35.094688, 31.396130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595379, 35.132198, 31.170818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564270, -0.284563, 0.774999,
		-0.087616, 0.954060, 0.286518,
		-0.820928, 0.093771, -0.563280,
		34.349102, 35.160328, 31.001835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.814159, 37.627876, 24.109064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495590, 37.386505, 24.093184>,  <37.304447, 37.241680, 24.083656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495590, 37.386505, 24.093184>,  <37.814159, 37.627876, 24.109064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495590, 37.386505, 24.093184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479000, 0.589399, 0.650514,
		-0.369142, 0.537102, -0.758456,
		-0.796425, -0.603432, -0.039700,
		37.256664, 37.205475, 24.081274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317612, 38.150208, 24.167871>,  <37.814159, 37.627876, 24.109064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317612, 38.150208, 24.167871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114758, 37.810993, 24.229389>,  <36.993046, 37.607464, 24.266300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114758, 37.810993, 24.229389>,  <37.317612, 38.150208, 24.167871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114758, 37.810993, 24.229389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458163, 0.416406, 0.785298,
		-0.729999, 0.327791, -0.599712,
		-0.507137, -0.848033, 0.153794,
		36.962616, 37.556583, 24.275528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559250, 38.207832, 24.264374>,  <37.317612, 38.150208, 24.167871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559250, 38.207832, 24.264374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614395, 37.859848, 24.453754>,  <36.647484, 37.651058, 24.567383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614395, 37.859848, 24.453754>,  <36.559250, 38.207832, 24.264374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614395, 37.859848, 24.453754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614789, 0.299618, 0.729565,
		-0.776550, -0.391651, -0.493539,
		0.137862, -0.869965, 0.473450,
		36.655754, 37.598858, 24.595789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905224, 38.088943, 24.800529>,  <36.559250, 38.207832, 24.264374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905224, 38.088943, 24.800529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187992, 37.823620, 24.898745>,  <36.357651, 37.664425, 24.957674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187992, 37.823620, 24.898745>,  <35.905224, 38.088943, 24.800529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187992, 37.823620, 24.898745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345769, -0.021253, 0.938079,
		-0.617019, -0.748043, -0.244376,
		0.706917, -0.663310, 0.245536,
		36.400066, 37.624626, 24.972406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529385, 37.429363, 25.049086>,  <35.905224, 38.088943, 24.800529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529385, 37.429363, 25.049086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901440, 37.452621, 25.194122>,  <36.124672, 37.466576, 25.281143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901440, 37.452621, 25.194122>,  <35.529385, 37.429363, 25.049086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901440, 37.452621, 25.194122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350855, -0.150789, 0.924210,
		0.108411, -0.986855, -0.119854,
		0.930134, 0.058144, 0.362590,
		36.180481, 37.470066, 25.302898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592049, 36.843403, 25.501574>,  <35.529385, 37.429363, 25.049086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592049, 36.843403, 25.501574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915932, 37.038795, 25.631655>,  <36.110260, 37.156033, 25.709703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915932, 37.038795, 25.631655>,  <35.592049, 36.843403, 25.501574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915932, 37.038795, 25.631655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272138, -0.178411, 0.945574,
		0.519916, -0.854140, -0.011526,
		0.809709, 0.488483, 0.325202,
		36.158844, 37.185341, 25.729216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911148, 36.474205, 26.084511>,  <35.592049, 36.843403, 25.501574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911148, 36.474205, 26.084511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062763, 36.843319, 26.112223>,  <36.153732, 37.064789, 26.128849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062763, 36.843319, 26.112223>,  <35.911148, 36.474205, 26.084511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062763, 36.843319, 26.112223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177539, -0.000957, 0.984113,
		0.908190, -0.385317, 0.163467,
		0.379040, 0.922783, 0.069278,
		36.176476, 37.120155, 26.133005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573917, 36.461102, 26.361654>,  <35.911148, 36.474205, 26.084511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573917, 36.461102, 26.361654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453079, 36.834469, 26.439089>,  <36.380577, 37.058487, 26.485550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453079, 36.834469, 26.439089>,  <36.573917, 36.461102, 26.361654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453079, 36.834469, 26.439089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166995, -0.148117, 0.974769,
		0.938537, 0.326799, -0.111131,
		-0.302093, 0.933415, 0.193587,
		36.362450, 37.114494, 26.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994415, 36.587032, 26.872982>,  <36.573917, 36.461102, 26.361654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994415, 36.587032, 26.872982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697758, 36.853157, 26.907206>,  <36.519764, 37.012833, 26.927740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697758, 36.853157, 26.907206>,  <36.994415, 36.587032, 26.872982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697758, 36.853157, 26.907206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032384, -0.091888, 0.995243,
		0.670007, 0.740890, 0.046603,
		-0.741648, 0.665311, 0.085558,
		36.475262, 37.052750, 26.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660221, 36.548622, 27.295069>,  <36.994415, 36.587032, 26.872982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660221, 36.548622, 27.295069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830574, 36.199127, 27.389051>,  <37.932785, 35.989429, 27.445440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830574, 36.199127, 27.389051>,  <37.660221, 36.548622, 27.295069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830574, 36.199127, 27.389051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545759, 0.040954, -0.836941,
		0.721647, 0.484665, 0.494293,
		0.425879, -0.873741, 0.234956,
		37.958340, 35.937004, 27.459538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417946, 36.545528, 27.166470>,  <37.660221, 36.548622, 27.295069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417946, 36.545528, 27.166470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255562, 36.180679, 27.143732>,  <38.158131, 35.961769, 27.130091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255562, 36.180679, 27.143732>,  <38.417946, 36.545528, 27.166470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255562, 36.180679, 27.143732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538382, -0.188432, -0.821364,
		0.738472, -0.364044, 0.567566,
		-0.405960, -0.912122, -0.056843,
		38.133774, 35.907043, 27.126678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986374, 36.145702, 27.082249>,  <38.417946, 36.545528, 27.166470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986374, 36.145702, 27.082249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683956, 35.931999, 26.931005>,  <38.502506, 35.803776, 26.840260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683956, 35.931999, 26.931005>,  <38.986374, 36.145702, 27.082249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683956, 35.931999, 26.931005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610691, -0.367955, -0.701189,
		0.235487, -0.761038, 0.604456,
		-0.756044, -0.534257, -0.378110,
		38.457142, 35.771721, 26.817572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292500, 35.525005, 26.907522>,  <38.986374, 36.145702, 27.082249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292500, 35.525005, 26.907522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945591, 35.530880, 26.708471>,  <38.737446, 35.534405, 26.589041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945591, 35.530880, 26.708471>,  <39.292500, 35.525005, 26.907522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945591, 35.530880, 26.708471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443504, -0.431299, -0.785675,
		-0.226166, -0.902090, 0.367538,
		-0.867268, 0.014688, -0.497626,
		38.685410, 35.535286, 26.559183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296154, 34.872837, 26.549122>,  <39.292500, 35.525005, 26.907522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296154, 34.872837, 26.549122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024303, 35.082146, 26.343485>,  <38.861191, 35.207733, 26.220102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024303, 35.082146, 26.343485>,  <39.296154, 34.872837, 26.549122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024303, 35.082146, 26.343485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454610, -0.249563, -0.855013,
		-0.575705, -0.814802, -0.068276,
		-0.679628, 0.523274, -0.514092,
		38.820415, 35.239128, 26.189257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315609, 34.546089, 25.950235>,  <39.296154, 34.872837, 26.549122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315609, 34.546089, 25.950235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133701, 34.889725, 25.856293>,  <39.024555, 35.095905, 25.799927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133701, 34.889725, 25.856293>,  <39.315609, 34.546089, 25.950235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133701, 34.889725, 25.856293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271673, -0.117319, -0.955212,
		-0.848161, -0.498207, -0.180037,
		-0.454771, 0.859085, -0.234855,
		38.997269, 35.147449, 25.785837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884056, 34.353779, 25.395235>,  <39.315609, 34.546089, 25.950235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884056, 34.353779, 25.395235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997482, 34.737026, 25.379221>,  <39.065540, 34.966972, 25.369614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997482, 34.737026, 25.379221>,  <38.884056, 34.353779, 25.395235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997482, 34.737026, 25.379221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572145, -0.202541, -0.794750,
		-0.769571, 0.202461, -0.605616,
		0.283568, 0.958116, -0.040033,
		39.082554, 35.024460, 25.367210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801498, 34.507225, 24.750647>,  <38.884056, 34.353779, 25.395235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801498, 34.507225, 24.750647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061142, 34.782200, 24.880934>,  <39.216927, 34.947186, 24.959106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061142, 34.782200, 24.880934>,  <38.801498, 34.507225, 24.750647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061142, 34.782200, 24.880934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438237, 0.012052, -0.898778,
		-0.621778, 0.726145, -0.293437,
		0.649107, 0.687436, 0.325718,
		39.255875, 34.988430, 24.978649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998417, 34.844955, 24.189922>,  <38.801498, 34.507225, 24.750647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998417, 34.844955, 24.189922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283531, 34.944324, 24.452290>,  <39.454597, 35.003944, 24.609711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283531, 34.944324, 24.452290>,  <38.998417, 34.844955, 24.189922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283531, 34.944324, 24.452290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638835, 0.156104, -0.753341,
		-0.289538, 0.955991, -0.047433,
		0.712782, 0.248422, 0.655918,
		39.497364, 35.018852, 24.649065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403019, 35.332233, 23.808655>,  <38.998417, 34.844955, 24.189922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403019, 35.332233, 23.808655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650581, 35.232403, 24.106560>,  <39.799118, 35.172504, 24.285303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650581, 35.232403, 24.106560>,  <39.403019, 35.332233, 23.808655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650581, 35.232403, 24.106560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761409, -0.042245, -0.646894,
		0.192913, 0.967433, 0.163885,
		0.618903, -0.249577, 0.744761,
		39.836254, 35.157528, 24.329988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002827, 35.745258, 23.754704>,  <39.403019, 35.332233, 23.808655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002827, 35.745258, 23.754704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135334, 35.434658, 23.969105>,  <40.214840, 35.248299, 24.097746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135334, 35.434658, 23.969105>,  <40.002827, 35.745258, 23.754704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135334, 35.434658, 23.969105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693857, -0.184479, -0.696082,
		0.639393, 0.602501, 0.477671,
		0.331270, -0.776505, 0.536004,
		40.234715, 35.201706, 24.129906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806408, 35.732056, 23.791424>,  <40.002827, 35.745258, 23.754704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806408, 35.732056, 23.791424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680485, 35.361160, 23.872538>,  <40.604931, 35.138622, 23.921206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680485, 35.361160, 23.872538>,  <40.806408, 35.732056, 23.791424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680485, 35.361160, 23.872538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674229, -0.368834, -0.639826,
		0.668067, -0.064695, 0.741283,
		-0.314804, -0.927241, 0.202787,
		40.586044, 35.082989, 23.933374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390461, 35.337418, 23.893862>,  <40.806408, 35.732056, 23.791424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390461, 35.337418, 23.893862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121899, 35.062725, 23.782427>,  <40.960762, 34.897907, 23.715567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121899, 35.062725, 23.782427>,  <41.390461, 35.337418, 23.893862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121899, 35.062725, 23.782427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606276, -0.292792, -0.739393,
		0.426199, -0.665333, 0.612933,
		-0.671405, -0.686734, -0.278588,
		40.920479, 34.856705, 23.698851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754215, 34.642445, 23.813358>,  <41.390461, 35.337418, 23.893862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754215, 34.642445, 23.813358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424816, 34.620037, 23.587542>,  <41.227177, 34.606590, 23.452051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424816, 34.620037, 23.587542>,  <41.754215, 34.642445, 23.813358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424816, 34.620037, 23.587542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562904, -0.204503, -0.800823,
		-0.070585, -0.977262, 0.199945,
		-0.823503, -0.056023, -0.564539,
		41.177765, 34.603230, 23.418180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.453449, 29.983789, 21.694195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685146, 30.283916, 21.821629>,  <35.824165, 30.463993, 21.898088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685146, 30.283916, 21.821629>,  <35.453449, 29.983789, 21.694195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685146, 30.283916, 21.821629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242705, -0.214354, 0.946122,
		0.778184, -0.625358, 0.057942,
		0.579245, 0.750319, 0.318584,
		35.858921, 30.509012, 21.917204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015591, 29.802958, 22.089161>,  <35.453449, 29.983789, 21.694195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015591, 29.802958, 22.089161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941006, 30.176693, 22.210648>,  <35.896255, 30.400934, 22.283541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941006, 30.176693, 22.210648>,  <36.015591, 29.802958, 22.089161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941006, 30.176693, 22.210648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075516, -0.321856, 0.943772,
		0.979556, 0.153040, 0.130571,
		-0.186460, 0.934338, 0.303719,
		35.885067, 30.456995, 22.301764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203083, 29.807587, 22.750376>,  <36.015591, 29.802958, 22.089161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203083, 29.807587, 22.750376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008297, 30.156313, 22.729210>,  <35.891426, 30.365549, 22.716511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008297, 30.156313, 22.729210>,  <36.203083, 29.807587, 22.750376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008297, 30.156313, 22.729210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265070, -0.089790, 0.960039,
		0.832226, 0.481535, 0.274817,
		-0.486969, 0.871815, -0.052915,
		35.862206, 30.417858, 22.713335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439968, 30.067440, 23.308065>,  <36.203083, 29.807587, 22.750376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439968, 30.067440, 23.308065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124409, 30.282536, 23.189081>,  <35.935074, 30.411592, 23.117691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124409, 30.282536, 23.189081>,  <36.439968, 30.067440, 23.308065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124409, 30.282536, 23.189081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239430, 0.176840, 0.954673,
		0.565967, 0.824357, -0.010759,
		-0.788895, 0.537737, -0.297462,
		35.887741, 30.443857, 23.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433266, 30.617109, 23.703163>,  <36.439968, 30.067440, 23.308065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433266, 30.617109, 23.703163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048885, 30.619886, 23.592516>,  <35.818256, 30.621552, 23.526127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048885, 30.619886, 23.592516>,  <36.433266, 30.617109, 23.703163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048885, 30.619886, 23.592516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268913, 0.212139, 0.939512,
		0.065203, 0.977215, -0.201989,
		-0.960955, 0.006942, -0.276618,
		35.760597, 30.621969, 23.509531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166893, 31.226795, 23.989594>,  <36.433266, 30.617109, 23.703163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166893, 31.226795, 23.989594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868370, 30.972786, 23.909819>,  <35.689259, 30.820381, 23.861954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868370, 30.972786, 23.909819>,  <36.166893, 31.226795, 23.989594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868370, 30.972786, 23.909819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395004, 0.181381, 0.900596,
		-0.535724, 0.750898, -0.386202,
		-0.746305, -0.635022, -0.199437,
		35.644478, 30.782280, 23.849987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636219, 31.557903, 24.301805>,  <36.166893, 31.226795, 23.989594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636219, 31.557903, 24.301805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529499, 31.178532, 24.233339>,  <35.465466, 30.950909, 24.192259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529499, 31.178532, 24.233339>,  <35.636219, 31.557903, 24.301805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529499, 31.178532, 24.233339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561882, 0.008778, 0.827170,
		-0.783011, 0.316863, -0.535249,
		-0.266798, -0.948431, -0.171167,
		35.449459, 30.894003, 24.181990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903793, 31.579702, 24.392347>,  <35.636219, 31.557903, 24.301805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903793, 31.579702, 24.392347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062687, 31.217937, 24.454626>,  <35.158024, 31.000879, 24.491993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062687, 31.217937, 24.454626>,  <34.903793, 31.579702, 24.392347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062687, 31.217937, 24.454626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405215, -0.020632, 0.913989,
		-0.823409, -0.426163, -0.374677,
		0.397239, -0.904411, 0.155699,
		35.181858, 30.946613, 24.501335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548363, 31.274218, 24.831394>,  <34.903793, 31.579702, 24.392347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548363, 31.274218, 24.831394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848473, 31.011866, 24.864651>,  <35.028538, 30.854454, 24.884604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848473, 31.011866, 24.864651>,  <34.548363, 31.274218, 24.831394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848473, 31.011866, 24.864651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141043, -0.035932, 0.989351,
		-0.645906, -0.754011, -0.119466,
		0.750275, -0.655878, 0.083139,
		35.073555, 30.815102, 24.889593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310692, 30.659016, 25.161659>,  <34.548363, 31.274218, 24.831394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310692, 30.659016, 25.161659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699024, 30.731539, 25.224413>,  <34.932022, 30.775053, 25.262066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699024, 30.731539, 25.224413>,  <34.310692, 30.659016, 25.161659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699024, 30.731539, 25.224413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160085, 0.003053, 0.987099,
		0.178494, -0.983421, 0.031989,
		0.970831, 0.181312, 0.156886,
		34.990273, 30.785933, 25.271479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450584, 30.261541, 25.769257>,  <34.310692, 30.659016, 25.161659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450584, 30.261541, 25.769257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784462, 30.479723, 25.738882>,  <34.984787, 30.610632, 25.720657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784462, 30.479723, 25.738882>,  <34.450584, 30.261541, 25.769257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784462, 30.479723, 25.738882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003325, 0.132893, 0.991125,
		0.550706, -0.827537, 0.109111,
		0.834693, 0.545456, -0.075936,
		35.034870, 30.643360, 25.716101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820290, 30.045275, 26.402464>,  <34.450584, 30.261541, 25.769257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820290, 30.045275, 26.402464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.042175, 30.362274, 26.301085>,  <35.175308, 30.552473, 26.240257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.042175, 30.362274, 26.301085>,  <34.820290, 30.045275, 26.402464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042175, 30.362274, 26.301085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018499, 0.316282, 0.948485,
		0.831834, -0.521451, 0.190107,
		0.554716, 0.792499, -0.253448,
		35.208591, 30.600023, 26.225050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403107, 30.120996, 26.803556>,  <34.820290, 30.045275, 26.402464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403107, 30.120996, 26.803556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302715, 30.483284, 26.666920>,  <35.242481, 30.700657, 26.584938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302715, 30.483284, 26.666920>,  <35.403107, 30.120996, 26.803556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302715, 30.483284, 26.666920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017028, 0.348701, 0.937079,
		0.967843, 0.241002, -0.072093,
		-0.250977, 0.905719, -0.341592,
		35.227421, 30.754999, 26.564442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817024, 30.581230, 27.181557>,  <35.403107, 30.120996, 26.803556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817024, 30.581230, 27.181557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519073, 30.809971, 27.044065>,  <35.340305, 30.947216, 26.961571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519073, 30.809971, 27.044065>,  <35.817024, 30.581230, 27.181557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519073, 30.809971, 27.044065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165338, 0.340902, 0.925445,
		0.646396, 0.746170, -0.159380,
		-0.744873, 0.571853, -0.343728,
		35.295612, 30.981527, 26.940947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590889, 30.907797, 27.097908>,  <35.817024, 30.581230, 27.181557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590889, 30.907797, 27.097908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911354, 30.692789, 27.203142>,  <37.103634, 30.563786, 27.266283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911354, 30.692789, 27.203142>,  <36.590889, 30.907797, 27.097908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911354, 30.692789, 27.203142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130082, -0.272687, -0.953268,
		0.584139, 0.797945, -0.148545,
		0.801162, -0.537518, 0.263085,
		37.151703, 30.531534, 27.282068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238907, 31.227425, 26.764515>,  <36.590889, 30.907797, 27.097908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238907, 31.227425, 26.764515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313293, 30.844759, 26.854143>,  <37.357925, 30.615160, 26.907921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313293, 30.844759, 26.854143>,  <37.238907, 31.227425, 26.764515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313293, 30.844759, 26.854143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240347, -0.176828, -0.954445,
		0.952706, 0.231354, 0.197046,
		0.185971, -0.956665, 0.224070,
		37.369083, 30.557760, 26.921364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962402, 31.071804, 26.494329>,  <37.238907, 31.227425, 26.764515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962402, 31.071804, 26.494329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769695, 30.724823, 26.544010>,  <37.654072, 30.516634, 26.573818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769695, 30.724823, 26.544010>,  <37.962402, 31.071804, 26.494329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769695, 30.724823, 26.544010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464902, -0.373152, -0.802885,
		0.742811, -0.329062, 0.583053,
		-0.481766, -0.867454, 0.124200,
		37.625164, 30.464586, 26.581270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500664, 30.555468, 26.400949>,  <37.962402, 31.071804, 26.494329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500664, 30.555468, 26.400949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178627, 30.327587, 26.334904>,  <37.985405, 30.190859, 26.295277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178627, 30.327587, 26.334904>,  <38.500664, 30.555468, 26.400949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178627, 30.327587, 26.334904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366921, -0.259635, -0.893285,
		0.466037, -0.779763, 0.418066,
		-0.805095, -0.569701, -0.165112,
		37.937099, 30.156677, 26.285370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750511, 29.970566, 26.023441>,  <38.500664, 30.555468, 26.400949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750511, 29.970566, 26.023441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357910, 29.979818, 25.947418>,  <38.122349, 29.985371, 25.901804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357910, 29.979818, 25.947418>,  <38.750511, 29.970566, 26.023441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357910, 29.979818, 25.947418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172775, -0.320706, -0.931288,
		-0.082493, -0.946897, 0.310777,
		-0.981501, 0.023130, -0.190056,
		38.063461, 29.986757, 25.890402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591282, 29.295410, 25.646832>,  <38.750511, 29.970566, 26.023441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591282, 29.295410, 25.646832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292763, 29.549217, 25.566399>,  <38.113651, 29.701502, 25.518139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292763, 29.549217, 25.566399>,  <38.591282, 29.295410, 25.646832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292763, 29.549217, 25.566399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215715, -0.055232, -0.974893,
		-0.629692, -0.770933, -0.095655,
		-0.746294, 0.634517, -0.201081,
		38.068874, 29.739573, 25.506075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378670, 29.041901, 24.978558>,  <38.591282, 29.295410, 25.646832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378670, 29.041901, 24.978558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238308, 29.413525, 25.025396>,  <38.154091, 29.636499, 25.053499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238308, 29.413525, 25.025396>,  <38.378670, 29.041901, 24.978558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238308, 29.413525, 25.025396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328546, 0.239250, -0.913683,
		-0.876882, -0.282145, -0.389193,
		-0.350906, 0.929061, 0.117097,
		38.133038, 29.692244, 25.060526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110046, 29.086800, 24.342888>,  <38.378670, 29.041901, 24.978558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110046, 29.086800, 24.342888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136623, 29.457394, 24.491055>,  <38.152569, 29.679750, 24.579954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136623, 29.457394, 24.491055>,  <38.110046, 29.086800, 24.342888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136623, 29.457394, 24.491055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061600, 0.366721, -0.928289,
		-0.995887, 0.084497, -0.032704,
		0.066444, 0.926485, 0.370418,
		38.156555, 29.735340, 24.602180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584278, 29.460335, 24.009661>,  <38.110046, 29.086800, 24.342888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584278, 29.460335, 24.009661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884125, 29.694349, 24.133471>,  <38.064034, 29.834759, 24.207756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884125, 29.694349, 24.133471>,  <37.584278, 29.460335, 24.009661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884125, 29.694349, 24.133471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133629, 0.324247, -0.936487,
		-0.648243, 0.743367, 0.164883,
		0.749616, 0.585038, 0.309526,
		38.109009, 29.869860, 24.226328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375935, 30.051264, 23.654024>,  <37.584278, 29.460335, 24.009661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375935, 30.051264, 23.654024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752750, 30.084631, 23.784008>,  <37.978840, 30.104652, 23.861998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752750, 30.084631, 23.784008>,  <37.375935, 30.051264, 23.654024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752750, 30.084631, 23.784008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275904, 0.358451, -0.891846,
		-0.190879, 0.929814, 0.314660,
		0.942041, 0.083419, 0.324960,
		38.035362, 30.109657, 23.881496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560986, 30.565504, 23.282919>,  <37.375935, 30.051264, 23.654024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560986, 30.565504, 23.282919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904774, 30.398495, 23.400888>,  <38.111046, 30.298288, 23.471670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904774, 30.398495, 23.400888>,  <37.560986, 30.565504, 23.282919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904774, 30.398495, 23.400888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424348, 0.261074, -0.867046,
		0.285017, 0.870353, 0.401562,
		0.859473, -0.417525, 0.294922,
		38.162617, 30.273237, 23.489365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011837, 31.010780, 23.141275>,  <37.560986, 30.565504, 23.282919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011837, 31.010780, 23.141275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260334, 30.698730, 23.170834>,  <38.409431, 30.511499, 23.188568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260334, 30.698730, 23.170834>,  <38.011837, 31.010780, 23.141275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260334, 30.698730, 23.170834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383184, 0.220174, -0.897047,
		0.683539, 0.585600, 0.435714,
		0.621244, -0.780125, 0.073895,
		38.446709, 30.464693, 23.193003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833534, 31.172153, 23.031757>,  <38.011837, 31.010780, 23.141275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833534, 31.172153, 23.031757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784710, 30.784527, 22.945957>,  <38.755413, 30.551950, 22.894478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784710, 30.784527, 22.945957>,  <38.833534, 31.172153, 23.031757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784710, 30.784527, 22.945957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329776, 0.164239, -0.929663,
		0.936135, -0.184217, 0.299527,
		-0.122065, -0.969066, -0.214500,
		38.748089, 30.493807, 22.881607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461155, 30.998886, 22.683880>,  <38.833534, 31.172153, 23.031757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461155, 30.998886, 22.683880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168606, 30.743160, 22.588907>,  <38.993076, 30.589725, 22.531923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168606, 30.743160, 22.588907>,  <39.461155, 30.998886, 22.683880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168606, 30.743160, 22.588907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226252, 0.100975, -0.968821,
		0.643355, -0.762288, 0.070796,
		-0.731372, -0.639313, -0.237432,
		38.949196, 30.551367, 22.517677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201427, 30.769258, 22.834007>,  <39.461155, 30.998886, 22.683880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201427, 30.769258, 22.834007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542469, 30.976318, 22.862577>,  <40.747093, 31.100554, 22.879719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542469, 30.976318, 22.862577>,  <40.201427, 30.769258, 22.834007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542469, 30.976318, 22.862577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136940, 0.089429, 0.986534,
		0.504293, -0.850906, 0.147134,
		0.852606, 0.517651, 0.071425,
		40.798252, 31.131613, 22.884005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559635, 30.442499, 23.420538>,  <40.201427, 30.769258, 22.834007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559635, 30.442499, 23.420538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.732971, 30.800861, 23.381411>,  <40.836971, 31.015879, 23.357933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.732971, 30.800861, 23.381411>,  <40.559635, 30.442499, 23.420538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732971, 30.800861, 23.381411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069398, 0.075048, 0.994762,
		0.898556, -0.437856, -0.029653,
		0.433337, 0.895907, -0.097821,
		40.862972, 31.069633, 23.352064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903790, 30.477743, 24.022533>,  <40.559635, 30.442499, 23.420538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903790, 30.477743, 24.022533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.920738, 30.860474, 23.907513>,  <40.930908, 31.090113, 23.838501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.920738, 30.860474, 23.907513>,  <40.903790, 30.477743, 24.022533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920738, 30.860474, 23.907513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187127, 0.275115, 0.943025,
		0.981422, -0.093766, -0.167391,
		0.042372, 0.956828, -0.287550,
		40.933449, 31.147522, 23.821247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609055, 30.764927, 24.374546>,  <40.903790, 30.477743, 24.022533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609055, 30.764927, 24.374546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 31.033651, 24.283245>,  <41.158062, 31.194887, 24.228464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 31.033651, 24.283245>,  <41.609055, 30.764927, 24.374546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327183, 31.033651, 24.283245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074663, 0.390119, 0.917732,
		0.705588, 0.629663, -0.325068,
		-0.704677, 0.671812, -0.228250,
		41.115780, 31.235195, 24.214769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900402, 31.354483, 24.532286>,  <41.609055, 30.764927, 24.374546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900402, 31.354483, 24.532286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509403, 31.423260, 24.581182>,  <41.274803, 31.464525, 24.610521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509403, 31.423260, 24.581182>,  <41.900402, 31.354483, 24.532286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509403, 31.423260, 24.581182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195686, 0.522434, 0.829922,
		0.078834, 0.835164, -0.544322,
		-0.977493, 0.171942, 0.122244,
		41.216156, 31.474842, 24.617855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866199, 32.060963, 24.749952>,  <41.900402, 31.354483, 24.532286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866199, 32.060963, 24.749952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.520893, 31.901690, 24.874027>,  <41.313709, 31.806124, 24.948473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.520893, 31.901690, 24.874027>,  <41.866199, 32.060963, 24.749952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520893, 31.901690, 24.874027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066704, 0.519154, 0.852074,
		-0.500321, 0.756258, -0.421607,
		-0.863267, -0.398187, 0.310189,
		41.261913, 31.782234, 24.967085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559231, 32.546307, 25.130320>,  <41.866199, 32.060963, 24.749952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559231, 32.546307, 25.130320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.329014, 32.246815, 25.261868>,  <41.190884, 32.067120, 25.340797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.329014, 32.246815, 25.261868>,  <41.559231, 32.546307, 25.130320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329014, 32.246815, 25.261868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031096, 0.381827, 0.923711,
		-0.817183, 0.541858, -0.196474,
		-0.575538, -0.748732, 0.328872,
		41.156353, 32.022194, 25.360529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165409, 32.872448, 25.613110>,  <41.559231, 32.546307, 25.130320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165409, 32.872448, 25.613110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123680, 32.487606, 25.713886>,  <41.098640, 32.256702, 25.774353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123680, 32.487606, 25.713886>,  <41.165409, 32.872448, 25.613110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123680, 32.487606, 25.713886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065085, 0.259387, 0.963578,
		-0.992411, 0.084127, -0.089679,
		-0.104324, -0.962102, 0.251943,
		41.092384, 32.198975, 25.789469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745342, 32.909950, 26.093578>,  <41.165409, 32.872448, 25.613110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745342, 32.909950, 26.093578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.902962, 32.547054, 26.152416>,  <40.997536, 32.329315, 26.187719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.902962, 32.547054, 26.152416>,  <40.745342, 32.909950, 26.093578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902962, 32.547054, 26.152416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038147, 0.176049, 0.983642,
		-0.918296, -0.381995, 0.103981,
		0.394052, -0.907241, 0.147093,
		41.021179, 32.274883, 26.196545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306545, 32.551685, 26.535395>,  <40.745342, 32.909950, 26.093578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306545, 32.551685, 26.535395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659283, 32.366608, 26.571762>,  <40.870926, 32.255562, 26.593582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659283, 32.366608, 26.571762>,  <40.306545, 32.551685, 26.535395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659283, 32.366608, 26.571762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121467, -0.036592, 0.991921,
		-0.455631, -0.885761, -0.088471,
		0.881842, -0.462697, 0.090919,
		40.923836, 32.227798, 26.599037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173374, 31.857466, 26.818722>,  <40.306545, 32.551685, 26.535395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173374, 31.857466, 26.818722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556484, 31.932507, 26.905874>,  <40.786350, 31.977531, 26.958166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556484, 31.932507, 26.905874>,  <40.173374, 31.857466, 26.818722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556484, 31.932507, 26.905874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184050, -0.182143, 0.965893,
		0.220887, -0.965210, -0.139924,
		0.957776, 0.187600, 0.217880,
		40.843819, 31.988787, 26.971239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364460, 31.376581, 27.326887>,  <40.173374, 31.857466, 26.818722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364460, 31.376581, 27.326887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624313, 31.680084, 27.345955>,  <40.780224, 31.862186, 27.357395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624313, 31.680084, 27.345955>,  <40.364460, 31.376581, 27.326887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624313, 31.680084, 27.345955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109918, 0.031698, 0.993435,
		0.752263, -0.650604, 0.103992,
		0.649629, 0.758755, 0.047668,
		40.819202, 31.907711, 27.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727852, 31.283171, 27.934406>,  <40.364460, 31.376581, 27.326887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727852, 31.283171, 27.934406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780834, 31.664673, 27.826473>,  <40.812622, 31.893574, 27.761713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780834, 31.664673, 27.826473>,  <40.727852, 31.283171, 27.934406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780834, 31.664673, 27.826473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156589, 0.288949, 0.944451,
		0.978742, -0.082846, 0.187621,
		0.132457, 0.953753, -0.269834,
		40.820572, 31.950798, 27.745523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065361, 31.559059, 28.462877>,  <40.727852, 31.283171, 27.934406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065361, 31.559059, 28.462877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924175, 31.890467, 28.288992>,  <40.839462, 32.089310, 28.184660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924175, 31.890467, 28.288992>,  <41.065361, 31.559059, 28.462877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924175, 31.890467, 28.288992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334830, 0.321999, 0.885554,
		0.873674, 0.458123, 0.163759,
		-0.352963, 0.828517, -0.434715,
		40.818287, 32.139023, 28.158577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.930340, 33.983791, 23.518009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.612026, 34.121647, 23.318830>,  <41.421036, 34.204361, 23.199324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.612026, 34.121647, 23.318830>,  <41.930340, 33.983791, 23.518009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612026, 34.121647, 23.318830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442879, -0.229599, -0.866685,
		-0.413019, -0.910226, 0.030079,
		-0.795785, 0.344636, -0.497948,
		41.373291, 34.225037, 23.169447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651577, 33.443672, 22.881113>,  <41.930340, 33.983791, 23.518009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651577, 33.443672, 22.881113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548824, 33.818371, 22.786018>,  <41.487171, 34.043190, 22.728962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548824, 33.818371, 22.786018>,  <41.651577, 33.443672, 22.881113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548824, 33.818371, 22.786018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339371, -0.142895, -0.929736,
		-0.904898, -0.319513, -0.281197,
		-0.256881, 0.936746, -0.237739,
		41.471760, 34.099396, 22.714697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272449, 33.344868, 22.392859>,  <41.651577, 33.443672, 22.881113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272449, 33.344868, 22.392859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.386688, 33.724434, 22.339201>,  <41.455231, 33.952175, 22.307007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.386688, 33.724434, 22.339201>,  <41.272449, 33.344868, 22.392859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386688, 33.724434, 22.339201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163503, -0.186169, -0.968818,
		-0.944300, 0.254756, -0.208319,
		0.285595, 0.948915, -0.134146,
		41.472366, 34.009109, 22.298958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055428, 33.472755, 21.670895>,  <41.272449, 33.344868, 22.392859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055428, 33.472755, 21.670895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.299202, 33.783840, 21.732548>,  <41.445465, 33.970490, 21.769539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.299202, 33.783840, 21.732548>,  <41.055428, 33.472755, 21.670895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299202, 33.783840, 21.732548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260333, -0.012669, -0.965436,
		-0.748876, 0.628496, -0.210184,
		0.609436, 0.777709, 0.154130,
		41.482033, 34.017155, 21.778788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965435, 33.890362, 21.207163>,  <41.055428, 33.472755, 21.670895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965435, 33.890362, 21.207163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338207, 33.989979, 21.312599>,  <41.561871, 34.049751, 21.375862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338207, 33.989979, 21.312599>,  <40.965435, 33.890362, 21.207163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338207, 33.989979, 21.312599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296336, -0.104034, -0.949401,
		-0.209020, 0.962888, -0.170753,
		0.931931, 0.249044, 0.263593,
		41.617786, 34.064693, 21.391678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009945, 34.480667, 20.769629>,  <40.965435, 33.890362, 21.207163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009945, 34.480667, 20.769629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.376537, 34.365467, 20.880716>,  <41.596493, 34.296349, 20.947369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.376537, 34.365467, 20.880716>,  <41.009945, 34.480667, 20.769629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376537, 34.365467, 20.880716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295322, 0.018661, -0.955216,
		0.269917, 0.957449, 0.102155,
		0.916477, -0.287998, 0.277719,
		41.651482, 34.279068, 20.964031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453690, 34.900478, 20.379702>,  <41.009945, 34.480667, 20.769629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453690, 34.900478, 20.379702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663876, 34.575718, 20.481441>,  <41.789989, 34.380859, 20.542484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663876, 34.575718, 20.481441>,  <41.453690, 34.900478, 20.379702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663876, 34.575718, 20.481441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286597, -0.112566, -0.951415,
		0.801090, 0.572834, 0.173540,
		0.525468, -0.811906, 0.254348,
		41.821514, 34.332146, 20.557745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994099, 35.078037, 20.169943>,  <41.453690, 34.900478, 20.379702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994099, 35.078037, 20.169943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.045971, 34.682613, 20.200775>,  <42.077095, 34.445358, 20.219275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.045971, 34.682613, 20.200775>,  <41.994099, 35.078037, 20.169943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045971, 34.682613, 20.200775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483945, -0.004750, -0.875085,
		0.865436, 0.150785, 0.477790,
		0.129680, -0.988555, 0.077082,
		42.084873, 34.386047, 20.223900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667179, 34.918213, 19.940632>,  <41.994099, 35.078037, 20.169943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667179, 34.918213, 19.940632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.468266, 34.575809, 19.884129>,  <42.348919, 34.370365, 19.850227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.468266, 34.575809, 19.884129>,  <42.667179, 34.918213, 19.940632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468266, 34.575809, 19.884129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273848, -0.000375, -0.961773,
		0.823236, -0.516957, 0.234603,
		-0.497283, -0.856011, -0.141259,
		42.319080, 34.319008, 19.841751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178211, 34.415012, 19.719814>,  <42.667179, 34.918213, 19.940632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178211, 34.415012, 19.719814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.823566, 34.269413, 19.605675>,  <42.610779, 34.182053, 19.537191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.823566, 34.269413, 19.605675>,  <43.178211, 34.415012, 19.719814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823566, 34.269413, 19.605675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343206, -0.104194, -0.933463,
		0.310044, -0.925555, 0.217304,
		-0.886613, -0.363995, -0.285351,
		42.557583, 34.160213, 19.520069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375755, 33.900467, 19.254047>,  <43.178211, 34.415012, 19.719814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375755, 33.900467, 19.254047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.983326, 33.922474, 19.179779>,  <42.747868, 33.935677, 19.135218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.983326, 33.922474, 19.179779>,  <43.375755, 33.900467, 19.254047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983326, 33.922474, 19.179779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173421, -0.177018, -0.968809,
		-0.086168, -0.982669, 0.164126,
		-0.981071, 0.055018, -0.185669,
		42.689003, 33.938980, 19.124079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110756, 33.164494, 18.874865>,  <43.375755, 33.900467, 19.254047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110756, 33.164494, 18.874865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.893860, 33.495674, 18.817644>,  <42.763721, 33.694382, 18.783312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.893860, 33.495674, 18.817644>,  <43.110756, 33.164494, 18.874865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893860, 33.495674, 18.817644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135417, -0.081911, -0.987397,
		-0.829238, -0.554780, -0.067703,
		-0.542242, 0.827955, -0.143050,
		42.731186, 33.744061, 18.774729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836636, 33.010468, 18.280823>,  <43.110756, 33.164494, 18.874865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836636, 33.010468, 18.280823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.810844, 33.406944, 18.327082>,  <42.795368, 33.644833, 18.354837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.810844, 33.406944, 18.327082>,  <42.836636, 33.010468, 18.280823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810844, 33.406944, 18.327082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196386, 0.126226, -0.972368,
		-0.978404, -0.039989, -0.202796,
		-0.064482, 0.991195, 0.115647,
		42.791500, 33.704304, 18.361776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367794, 32.627243, 17.882105>,  <42.836636, 33.010468, 18.280823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367794, 32.627243, 17.882105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751549, 32.537334, 17.950298>,  <42.981800, 32.483391, 17.991215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751549, 32.537334, 17.950298>,  <42.367794, 32.627243, 17.882105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751549, 32.537334, 17.950298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277242, 0.639435, -0.717119,
		0.052175, 0.735256, 0.675779,
		0.959382, -0.224770, 0.170482,
		43.039364, 32.469902, 18.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438393, 32.112465, 17.381878>,  <42.367794, 32.627243, 17.882105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438393, 32.112465, 17.381878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325539, 31.729292, 17.360819>,  <42.257824, 31.499390, 17.348183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325539, 31.729292, 17.360819>,  <42.438393, 32.112465, 17.381878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325539, 31.729292, 17.360819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292685, 0.033684, 0.955616,
		-0.913638, 0.285025, -0.289875,
		-0.282139, -0.957928, -0.052648,
		42.240898, 31.441914, 17.345024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741734, 32.142673, 17.666546>,  <42.438393, 32.112465, 17.381878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741734, 32.142673, 17.666546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893135, 31.772686, 17.652828>,  <41.983974, 31.550694, 17.644598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893135, 31.772686, 17.652828>,  <41.741734, 32.142673, 17.666546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893135, 31.772686, 17.652828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247351, -0.136783, 0.959222,
		-0.891939, -0.354582, -0.280564,
		0.378499, -0.924966, -0.034296,
		42.006683, 31.495195, 17.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253719, 31.668556, 17.855671>,  <41.741734, 32.142673, 17.666546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253719, 31.668556, 17.855671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.586639, 31.462940, 17.938654>,  <41.786392, 31.339571, 17.988443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.586639, 31.462940, 17.938654>,  <41.253719, 31.668556, 17.855671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586639, 31.462940, 17.938654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329551, -0.157923, 0.930836,
		-0.445724, -0.843104, -0.300842,
		0.832302, -0.514039, 0.207455,
		41.836330, 31.308729, 18.000891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951637, 31.059088, 18.250238>,  <41.253719, 31.668556, 17.855671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951637, 31.059088, 18.250238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.337700, 31.092634, 18.349382>,  <41.569340, 31.112762, 18.408869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.337700, 31.092634, 18.349382>,  <40.951637, 31.059088, 18.250238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337700, 31.092634, 18.349382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236258, -0.127854, 0.963242,
		0.112474, -0.988241, -0.103585,
		0.965159, 0.083867, 0.247860,
		41.627247, 31.117794, 18.423740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088604, 30.463303, 18.650217>,  <40.951637, 31.059088, 18.250238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088604, 30.463303, 18.650217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.386261, 30.714544, 18.741201>,  <41.564854, 30.865290, 18.795792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.386261, 30.714544, 18.741201>,  <41.088604, 30.463303, 18.650217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386261, 30.714544, 18.741201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148371, -0.176590, 0.973037,
		0.651336, -0.757826, -0.038216,
		0.744142, 0.628105, 0.227459,
		41.609505, 30.902975, 18.809439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626019, 30.097635, 19.176657>,  <41.088604, 30.463303, 18.650217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626019, 30.097635, 19.176657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673023, 30.493433, 19.210342>,  <41.701225, 30.730911, 19.230553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673023, 30.493433, 19.210342>,  <41.626019, 30.097635, 19.176657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673023, 30.493433, 19.210342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231148, -0.055219, 0.971350,
		0.965796, -0.133608, 0.222231,
		0.117509, 0.989495, 0.084213,
		41.708275, 30.790281, 19.235607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065975, 30.242397, 19.812094>,  <41.626019, 30.097635, 19.176657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065975, 30.242397, 19.812094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.865932, 30.577251, 19.723463>,  <41.745907, 30.778164, 19.670284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.865932, 30.577251, 19.723463>,  <42.065975, 30.242397, 19.812094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865932, 30.577251, 19.723463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080241, 0.209975, 0.974409,
		0.862235, 0.505092, -0.037839,
		-0.500111, 0.837133, -0.221577,
		41.715900, 30.828392, 19.656990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421394, 30.678448, 20.175386>,  <42.065975, 30.242397, 19.812094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421394, 30.678448, 20.175386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.057346, 30.830084, 20.108488>,  <41.838917, 30.921066, 20.068350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.057346, 30.830084, 20.108488>,  <42.421394, 30.678448, 20.175386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057346, 30.830084, 20.108488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115319, 0.155938, 0.981012,
		0.397972, 0.912126, -0.098206,
		-0.910121, 0.379091, -0.167245,
		41.784309, 30.943811, 20.058315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356289, 31.386600, 20.403807>,  <42.421394, 30.678448, 20.175386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356289, 31.386600, 20.403807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972794, 31.272882, 20.404549>,  <41.742699, 31.204651, 20.404993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972794, 31.272882, 20.404549>,  <42.356289, 31.386600, 20.403807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972794, 31.272882, 20.404549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079657, 0.274881, 0.958173,
		-0.272914, 0.918486, -0.286184,
		-0.958735, -0.284296, 0.001855,
		41.685173, 31.187593, 20.405106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039616, 31.855171, 20.777138>,  <42.356289, 31.386600, 20.403807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039616, 31.855171, 20.777138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749084, 31.580307, 20.783550>,  <41.574764, 31.415388, 20.787397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749084, 31.580307, 20.783550>,  <42.039616, 31.855171, 20.777138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749084, 31.580307, 20.783550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182456, 0.215235, 0.959366,
		-0.662689, 0.693891, -0.281708,
		-0.726329, -0.687161, 0.016029,
		41.531185, 31.374159, 20.788359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477951, 32.151936, 21.098577>,  <42.039616, 31.855171, 20.777138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477951, 32.151936, 21.098577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.406563, 31.762568, 21.155998>,  <41.363728, 31.528948, 21.190451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.406563, 31.762568, 21.155998>,  <41.477951, 32.151936, 21.098577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406563, 31.762568, 21.155998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135244, 0.168777, 0.976332,
		-0.974605, 0.154836, -0.161772,
		-0.178475, -0.973417, 0.143550,
		41.353020, 31.470543, 21.199062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981216, 32.140083, 21.585424>,  <41.477951, 32.151936, 21.098577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981216, 32.140083, 21.585424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099121, 31.758982, 21.614729>,  <41.169865, 31.530319, 21.632313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099121, 31.758982, 21.614729>,  <40.981216, 32.140083, 21.585424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099121, 31.758982, 21.614729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068999, 0.055248, 0.996086,
		-0.953077, -0.298662, -0.049454,
		0.294761, -0.952758, 0.073263,
		41.187550, 31.473154, 21.636707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421471, 31.784615, 21.982702>,  <40.981216, 32.140083, 21.585424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421471, 31.784615, 21.982702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747917, 31.554928, 22.008724>,  <40.943783, 31.417116, 22.024338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747917, 31.554928, 22.008724>,  <40.421471, 31.784615, 21.982702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747917, 31.554928, 22.008724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100561, -0.030257, 0.994471,
		-0.569075, -0.818143, -0.082438,
		0.816113, -0.574219, 0.065055,
		40.992752, 31.382662, 22.028240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167725, 31.247156, 22.223173>,  <40.421471, 31.784615, 21.982702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167725, 31.247156, 22.223173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549892, 31.265015, 22.339914>,  <40.779194, 31.275730, 22.409958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549892, 31.265015, 22.339914>,  <40.167725, 31.247156, 22.223173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549892, 31.265015, 22.339914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291586, -0.012491, 0.956463,
		0.046357, -0.998924, 0.001087,
		0.955421, 0.044656, 0.291851,
		40.836517, 31.278410, 22.427469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847355, 30.620817, 22.166405>,  <40.167725, 31.247156, 22.223173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847355, 30.620817, 22.166405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460545, 30.525751, 22.129782>,  <39.228458, 30.468712, 22.107809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460545, 30.525751, 22.129782>,  <39.847355, 30.620817, 22.166405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460545, 30.525751, 22.129782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131338, -0.157338, -0.978772,
		0.218215, -0.958520, 0.183364,
		-0.967023, -0.237665, -0.091557,
		39.170437, 30.454453, 22.102314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877914, 30.100458, 21.548658>,  <39.847355, 30.620817, 22.166405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877914, 30.100458, 21.548658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509300, 30.248283, 21.596306>,  <39.288132, 30.336979, 21.624893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509300, 30.248283, 21.596306>,  <39.877914, 30.100458, 21.548658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509300, 30.248283, 21.596306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010640, 0.282628, -0.959171,
		-0.388140, -0.885181, -0.256521,
		-0.921539, 0.369563, 0.119117,
		39.232838, 30.359152, 21.632040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489941, 29.843203, 20.996817>,  <39.877914, 30.100458, 21.548658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489941, 29.843203, 20.996817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285152, 30.174049, 21.089567>,  <39.162281, 30.372559, 21.145218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285152, 30.174049, 21.089567>,  <39.489941, 29.843203, 20.996817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285152, 30.174049, 21.089567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039189, 0.247164, -0.968181,
		-0.858111, -0.504762, -0.094125,
		-0.511966, 0.827119, 0.231875,
		39.131561, 30.422184, 21.159130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986935, 29.834963, 20.552788>,  <39.489941, 29.843203, 20.996817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986935, 29.834963, 20.552788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.951725, 30.204220, 20.702484>,  <38.930599, 30.425774, 20.792303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.951725, 30.204220, 20.702484>,  <38.986935, 29.834963, 20.552788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951725, 30.204220, 20.702484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222667, 0.347959, -0.910683,
		-0.970912, -0.163497, 0.174923,
		-0.088028, 0.923143, 0.374243,
		38.925316, 30.481163, 20.814756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312351, 30.081425, 20.396427>,  <38.986935, 29.834963, 20.552788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312351, 30.081425, 20.396427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549316, 30.399649, 20.447233>,  <38.691494, 30.590584, 20.477716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549316, 30.399649, 20.447233>,  <38.312351, 30.081425, 20.396427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549316, 30.399649, 20.447233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260495, 0.338344, -0.904249,
		-0.762360, 0.502600, 0.407678,
		0.592411, 0.795561, 0.127015,
		38.727039, 30.638317, 20.485338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894047, 30.709658, 20.247295>,  <38.312351, 30.081425, 20.396427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894047, 30.709658, 20.247295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272682, 30.836468, 20.223766>,  <38.499863, 30.912554, 20.209648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272682, 30.836468, 20.223766>,  <37.894047, 30.709658, 20.247295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272682, 30.836468, 20.223766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191784, 0.406926, -0.893102,
		-0.259200, 0.856683, 0.445993,
		0.946591, 0.317026, -0.058823,
		38.556660, 30.931576, 20.206120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865692, 31.184776, 19.837597>,  <37.894047, 30.709658, 20.247295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865692, 31.184776, 19.837597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258141, 31.111153, 19.813837>,  <38.493610, 31.066978, 19.799582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258141, 31.111153, 19.813837>,  <37.865692, 31.184776, 19.837597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258141, 31.111153, 19.813837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051537, 0.047218, -0.997554,
		0.186412, 0.981781, 0.036840,
		0.981119, -0.184058, -0.059401,
		38.552475, 31.055935, 19.796017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460403, 31.884586, 19.806383>,  <37.865692, 31.184776, 19.837597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460403, 31.884586, 19.806383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099232, 32.012726, 19.691774>,  <36.882530, 32.089611, 19.623009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099232, 32.012726, 19.691774>,  <37.460403, 31.884586, 19.806383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099232, 32.012726, 19.691774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381192, -0.288984, 0.878169,
		0.198520, 0.902145, 0.383046,
		-0.902930, 0.320349, -0.286521,
		36.828354, 32.108829, 19.605818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150143, 32.430252, 20.360176>,  <37.460403, 31.884586, 19.806383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150143, 32.430252, 20.360176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861973, 32.249683, 20.149574>,  <36.689072, 32.141342, 20.023212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861973, 32.249683, 20.149574>,  <37.150143, 32.430252, 20.360176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861973, 32.249683, 20.149574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380813, -0.376999, 0.844306,
		-0.579632, 0.808757, 0.099691,
		-0.720422, -0.451423, -0.526506,
		36.645847, 32.114258, 19.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654358, 32.498138, 20.809210>,  <37.150143, 32.430252, 20.360176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654358, 32.498138, 20.809210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524025, 32.212101, 20.561832>,  <36.445824, 32.040478, 20.413406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524025, 32.212101, 20.561832>,  <36.654358, 32.498138, 20.809210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524025, 32.212101, 20.561832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391076, -0.493609, 0.776794,
		-0.860751, 0.494963, -0.118823,
		-0.325833, -0.715096, -0.618443,
		36.426273, 31.997572, 20.376299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029922, 32.425335, 21.030947>,  <36.654358, 32.498138, 20.809210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029922, 32.425335, 21.030947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137981, 32.088181, 20.844805>,  <36.202816, 31.885887, 20.733120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137981, 32.088181, 20.844805>,  <36.029922, 32.425335, 21.030947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137981, 32.088181, 20.844805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423546, -0.538085, 0.728748,
		-0.864654, 0.000226, -0.502367,
		0.270151, -0.842891, -0.465353,
		36.219028, 31.835314, 20.705198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448597, 32.073467, 21.100027>,  <36.029922, 32.425335, 21.030947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448597, 32.073467, 21.100027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727211, 31.795162, 21.029871>,  <35.894379, 31.628180, 20.987778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727211, 31.795162, 21.029871>,  <35.448597, 32.073467, 21.100027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727211, 31.795162, 21.029871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200624, -0.423536, 0.883384,
		-0.688909, -0.580117, -0.434591,
		0.696531, -0.695761, -0.175392,
		35.936169, 31.586433, 20.977253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157585, 31.356367, 21.239555>,  <35.448597, 32.073467, 21.100027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157585, 31.356367, 21.239555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552193, 31.295677, 21.264057>,  <35.788960, 31.259262, 21.278757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552193, 31.295677, 21.264057>,  <35.157585, 31.356367, 21.239555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552193, 31.295677, 21.264057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141124, -0.599543, 0.787802,
		-0.082806, -0.785829, -0.612875,
		0.986523, -0.151726, 0.061253,
		35.848148, 31.250160, 21.282433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143291, 30.577839, 21.239082>,  <35.157585, 31.356367, 21.239555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143291, 30.577839, 21.239082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484482, 30.704813, 21.404810>,  <35.689198, 30.780998, 21.504246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484482, 30.704813, 21.404810>,  <35.143291, 30.577839, 21.239082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484482, 30.704813, 21.404810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187569, -0.554342, 0.810878,
		0.487076, -0.769376, -0.413301,
		0.852980, 0.317437, 0.414317,
		35.740376, 30.800043, 21.529104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.147415, 35.449459, 17.965956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.412971, 35.324219, 18.237606>,  <40.572304, 35.249073, 18.400597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.412971, 35.324219, 18.237606>,  <40.147415, 35.449459, 17.965956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412971, 35.324219, 18.237606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680905, 0.122415, 0.722068,
		-0.309219, -0.941796, -0.131925,
		0.663891, -0.313106, 0.679127,
		40.612141, 35.230286, 18.441343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838001, 34.934067, 18.419891>,  <40.147415, 35.449459, 17.965956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838001, 34.934067, 18.419891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152073, 35.052799, 18.637291>,  <40.340515, 35.124039, 18.767731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152073, 35.052799, 18.637291>,  <39.838001, 34.934067, 18.419891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152073, 35.052799, 18.637291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565397, -0.014437, 0.824693,
		0.252638, -0.954822, 0.156489,
		0.785176, 0.296827, 0.543501,
		40.387627, 35.141846, 18.800341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787060, 34.518383, 19.037819>,  <39.838001, 34.934067, 18.419891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787060, 34.518383, 19.037819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.012558, 34.828583, 19.151512>,  <40.147858, 35.014702, 19.219728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.012558, 34.828583, 19.151512>,  <39.787060, 34.518383, 19.037819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012558, 34.828583, 19.151512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461088, 0.009974, 0.887298,
		0.685267, -0.631266, 0.363198,
		0.563744, 0.775502, 0.284234,
		40.181683, 35.061234, 19.236782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957405, 34.323158, 19.698175>,  <39.787060, 34.518383, 19.037819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957405, 34.323158, 19.698175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034592, 34.715363, 19.683367>,  <40.080902, 34.950684, 19.674482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034592, 34.715363, 19.683367>,  <39.957405, 34.323158, 19.698175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034592, 34.715363, 19.683367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391535, 0.111541, 0.913378,
		0.899702, -0.161755, 0.405427,
		0.192965, 0.980507, -0.037021,
		40.092480, 35.009514, 19.672260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160751, 34.522659, 20.351868>,  <39.957405, 34.323158, 19.698175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160751, 34.522659, 20.351868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.056042, 34.875675, 20.195614>,  <39.993214, 35.087486, 20.101862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.056042, 34.875675, 20.195614>,  <40.160751, 34.522659, 20.351868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056042, 34.875675, 20.195614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442743, 0.249837, 0.861139,
		0.857585, 0.398376, 0.325337,
		-0.261776, 0.882541, -0.390634,
		39.977509, 35.140438, 20.078424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265900, 35.059338, 20.914570>,  <40.160751, 34.522659, 20.351868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265900, 35.059338, 20.914570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.020699, 35.239307, 20.654789>,  <39.873577, 35.347290, 20.498920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.020699, 35.239307, 20.654789>,  <40.265900, 35.059338, 20.914570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020699, 35.239307, 20.654789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436736, 0.492038, 0.753100,
		0.658395, 0.745295, -0.105123,
		-0.613007, 0.449926, -0.649453,
		39.836796, 35.374287, 20.459953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364288, 35.799488, 21.006449>,  <40.265900, 35.059338, 20.914570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364288, 35.799488, 21.006449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996883, 35.725338, 20.866753>,  <39.776440, 35.680847, 20.782936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996883, 35.725338, 20.866753>,  <40.364288, 35.799488, 21.006449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996883, 35.725338, 20.866753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393768, 0.348972, 0.850391,
		-0.035771, 0.918614, -0.393532,
		-0.918513, -0.185380, -0.349238,
		39.721329, 35.669724, 20.761982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882305, 36.423161, 21.259991>,  <40.364288, 35.799488, 21.006449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882305, 36.423161, 21.259991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.642757, 36.125149, 21.142498>,  <39.499027, 35.946342, 21.072002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.642757, 36.125149, 21.142498>,  <39.882305, 36.423161, 21.259991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642757, 36.125149, 21.142498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586581, 0.158366, 0.794256,
		-0.545229, 0.647956, -0.531863,
		-0.598872, -0.745032, -0.293733,
		39.463097, 35.901638, 21.054379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257172, 36.751270, 21.412674>,  <39.882305, 36.423161, 21.259991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257172, 36.751270, 21.412674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197609, 36.356544, 21.387304>,  <39.161869, 36.119709, 21.372082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197609, 36.356544, 21.387304>,  <39.257172, 36.751270, 21.412674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197609, 36.356544, 21.387304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707489, 0.061508, 0.704043,
		-0.690859, 0.149711, -0.707319,
		-0.148908, -0.986815, -0.063425,
		39.152935, 36.060501, 21.368277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561287, 36.689701, 21.219862>,  <39.257172, 36.751270, 21.412674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561287, 36.689701, 21.219862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678795, 36.347820, 21.391060>,  <38.749298, 36.142693, 21.493778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678795, 36.347820, 21.391060>,  <38.561287, 36.689701, 21.219862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678795, 36.347820, 21.391060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626150, 0.166250, 0.761773,
		-0.722245, -0.491773, -0.486335,
		0.293766, -0.854705, 0.427997,
		38.766926, 36.091408, 21.519459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013065, 36.324913, 21.437464>,  <38.561287, 36.689701, 21.219862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013065, 36.324913, 21.437464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.287094, 36.143349, 21.665373>,  <38.451511, 36.034412, 21.802118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.287094, 36.143349, 21.665373>,  <38.013065, 36.324913, 21.437464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287094, 36.143349, 21.665373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598410, 0.095382, 0.795492,
		-0.415426, -0.885930, -0.206278,
		0.685074, -0.453907, 0.569773,
		38.492615, 36.007175, 21.836306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677223, 35.708496, 21.763678>,  <38.013065, 36.324913, 21.437464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677223, 35.708496, 21.763678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.999180, 35.811928, 21.977325>,  <38.192352, 35.873985, 22.105515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.999180, 35.811928, 21.977325>,  <37.677223, 35.708496, 21.763678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999180, 35.811928, 21.977325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582473, 0.172168, 0.794408,
		0.113462, -0.950523, 0.289194,
		0.804893, 0.258582, 0.534120,
		38.240646, 35.889500, 22.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265251, 35.157944, 21.803192>,  <37.677223, 35.708496, 21.763678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265251, 35.157944, 21.803192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879887, 35.167229, 21.696377>,  <36.648670, 35.172798, 21.632288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879887, 35.167229, 21.696377>,  <37.265251, 35.157944, 21.803192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879887, 35.167229, 21.696377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268043, 0.085166, -0.959635,
		0.000471, -0.996097, -0.088271,
		-0.963407, 0.023209, -0.267037,
		36.590866, 35.174191, 21.616266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233974, 34.682281, 21.200993>,  <37.265251, 35.157944, 21.803192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233974, 34.682281, 21.200993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.907417, 34.908188, 21.152760>,  <36.711483, 35.043732, 21.123819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.907417, 34.908188, 21.152760>,  <37.233974, 34.682281, 21.200993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907417, 34.908188, 21.152760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239673, 0.141380, -0.960504,
		-0.525412, -0.813051, -0.250781,
		-0.816394, 0.564766, -0.120584,
		36.662498, 35.077618, 21.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735893, 34.310459, 20.796598>,  <37.233974, 34.682281, 21.200993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735893, 34.310459, 20.796598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.638893, 34.697308, 20.765926>,  <36.580692, 34.929417, 20.747522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.638893, 34.697308, 20.765926>,  <36.735893, 34.310459, 20.796598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638893, 34.697308, 20.765926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135117, -0.044602, -0.989825,
		-0.960697, -0.250392, -0.119858,
		-0.242498, 0.967117, -0.076682,
		36.566143, 34.987442, 20.742922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258621, 34.394180, 20.186113>,  <36.735893, 34.310459, 20.796598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258621, 34.394180, 20.186113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.375858, 34.774712, 20.224216>,  <36.446201, 35.003029, 20.247078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.375858, 34.774712, 20.224216>,  <36.258621, 34.394180, 20.186113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375858, 34.774712, 20.224216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206959, 0.034144, -0.977754,
		-0.933416, 0.306286, -0.186879,
		0.293091, 0.951327, 0.095259,
		36.463787, 35.060108, 20.252794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886078, 34.731438, 19.595301>,  <36.258621, 34.394180, 20.186113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886078, 34.731438, 19.595301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.174892, 34.984402, 19.707531>,  <36.348183, 35.136181, 19.774870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.174892, 34.984402, 19.707531>,  <35.886078, 34.731438, 19.595301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174892, 34.984402, 19.707531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, 0.209014, -0.959333,
		-0.665335, 0.745903, 0.030935,
		0.722036, 0.632409, 0.280577,
		36.391502, 35.174126, 19.791704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761002, 35.500446, 19.329132>,  <35.886078, 34.731438, 19.595301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761002, 35.500446, 19.329132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.154961, 35.462372, 19.386982>,  <36.391335, 35.439526, 19.421692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.154961, 35.462372, 19.386982>,  <35.761002, 35.500446, 19.329132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154961, 35.462372, 19.386982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169574, 0.361650, -0.916763,
		0.034962, 0.927442, 0.372329,
		0.984897, -0.095189, 0.144626,
		36.450428, 35.433815, 19.430370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967163, 36.139683, 19.098951>,  <35.761002, 35.500446, 19.329132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967163, 36.139683, 19.098951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301891, 35.921509, 19.080053>,  <36.502728, 35.790604, 19.068714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301891, 35.921509, 19.080053>,  <35.967163, 36.139683, 19.098951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301891, 35.921509, 19.080053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051178, 0.163853, -0.985156,
		0.545082, 0.821980, 0.165029,
		0.836819, -0.545437, -0.047246,
		36.552937, 35.757877, 19.065880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466537, 36.583073, 18.638227>,  <35.967163, 36.139683, 19.098951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466537, 36.583073, 18.638227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590706, 36.203171, 18.654266>,  <36.665207, 35.975231, 18.663889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590706, 36.203171, 18.654266>,  <36.466537, 36.583073, 18.638227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590706, 36.203171, 18.654266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004444, -0.043630, -0.999038,
		0.950589, 0.309944, -0.017764,
		0.310421, -0.949753, 0.040097,
		36.683834, 35.918243, 18.666296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997913, 36.543205, 18.218187>,  <36.466537, 36.583073, 18.638227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997913, 36.543205, 18.218187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906162, 36.155460, 18.253344>,  <36.851112, 35.922813, 18.274437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906162, 36.155460, 18.253344>,  <36.997913, 36.543205, 18.218187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906162, 36.155460, 18.253344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021016, -0.095208, -0.995236,
		0.973110, -0.226442, 0.042212,
		-0.229382, -0.969360, 0.087889,
		36.837349, 35.864651, 18.279711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507004, 36.212555, 17.779852>,  <36.997913, 36.543205, 18.218187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507004, 36.212555, 17.779852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202492, 35.956532, 17.821396>,  <37.019787, 35.802917, 17.846323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202492, 35.956532, 17.821396>,  <37.507004, 36.212555, 17.779852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202492, 35.956532, 17.821396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152134, -0.332007, -0.930928,
		0.630329, -0.692892, 0.350123,
		-0.761276, -0.640056, 0.103861,
		36.974110, 35.764515, 17.852554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702106, 35.544937, 17.481615>,  <37.507004, 36.212555, 17.779852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702106, 35.544937, 17.481615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.302437, 35.528900, 17.478981>,  <37.062634, 35.519276, 17.477400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.302437, 35.528900, 17.478981>,  <37.702106, 35.544937, 17.481615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302437, 35.528900, 17.478981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025370, -0.488990, -0.871921,
		0.031739, -0.871368, 0.489603,
		-0.999174, -0.040095, -0.006587,
		37.002686, 35.516872, 17.477005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396015, 34.767834, 17.359451>,  <37.702106, 35.544937, 17.481615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396015, 34.767834, 17.359451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.105709, 35.023705, 17.258198>,  <36.931526, 35.177227, 17.197445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.105709, 35.023705, 17.258198>,  <37.396015, 34.767834, 17.359451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105709, 35.023705, 17.258198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044700, -0.411033, -0.910524,
		-0.686487, -0.649513, 0.326908,
		-0.725767, 0.639675, -0.253136,
		36.887978, 35.215607, 17.182257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907452, 34.372208, 17.041512>,  <37.396015, 34.767834, 17.359451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907452, 34.372208, 17.041512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.809864, 34.740788, 16.920576>,  <36.751312, 34.961937, 16.848015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.809864, 34.740788, 16.920576>,  <36.907452, 34.372208, 17.041512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809864, 34.740788, 16.920576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103984, -0.334816, -0.936528,
		-0.964192, -0.197045, 0.177501,
		-0.243968, 0.921451, -0.302338,
		36.736675, 35.017223, 16.829874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135002, 34.380749, 16.991402>,  <36.907452, 34.372208, 17.041512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135002, 34.380749, 16.991402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191463, 34.028004, 16.811449>,  <36.225342, 33.816357, 16.703478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191463, 34.028004, 16.811449>,  <36.135002, 34.380749, 16.991402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191463, 34.028004, 16.811449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076212, -0.462765, 0.883199,
		-0.987049, -0.090383, -0.132531,
		0.141157, -0.881861, -0.449883,
		36.233810, 33.763447, 16.676483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635315, 33.938854, 17.182163>,  <36.135002, 34.380749, 16.991402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635315, 33.938854, 17.182163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941803, 33.708500, 17.068140>,  <36.125694, 33.570286, 16.999725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941803, 33.708500, 17.068140>,  <35.635315, 33.938854, 17.182163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941803, 33.708500, 17.068140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050218, -0.495925, 0.866912,
		-0.640614, -0.649930, -0.408907,
		0.766219, -0.575891, -0.285058,
		36.171669, 33.535732, 16.982622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535240, 33.397987, 17.523895>,  <35.635315, 33.938854, 17.182163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535240, 33.397987, 17.523895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888733, 33.279682, 17.378819>,  <36.100830, 33.208698, 17.291773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888733, 33.279682, 17.378819>,  <35.535240, 33.397987, 17.523895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888733, 33.279682, 17.378819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101104, -0.636028, 0.765014,
		-0.456945, -0.712736, -0.532174,
		0.883731, -0.295764, -0.362690,
		36.153851, 33.190952, 17.270012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524834, 32.634350, 17.485525>,  <35.535240, 33.397987, 17.523895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524834, 32.634350, 17.485525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.903397, 32.757290, 17.525209>,  <36.130535, 32.831055, 17.549021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.903397, 32.757290, 17.525209>,  <35.524834, 32.634350, 17.485525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903397, 32.757290, 17.525209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079154, -0.518562, 0.851368,
		0.313115, -0.797891, -0.515101,
		0.946411, 0.307348, 0.099213,
		36.187321, 32.849495, 17.554974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937874, 32.002254, 17.706957>,  <35.524834, 32.634350, 17.485525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937874, 32.002254, 17.706957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191345, 32.294502, 17.808651>,  <36.343430, 32.469852, 17.869667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191345, 32.294502, 17.808651>,  <35.937874, 32.002254, 17.706957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191345, 32.294502, 17.808651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124326, -0.420554, 0.898709,
		0.763538, -0.537888, -0.357333,
		0.633682, 0.730624, 0.254235,
		36.381451, 32.513691, 17.884922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513008, 31.690163, 17.918972>,  <35.937874, 32.002254, 17.706957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513008, 31.690163, 17.918972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.559921, 32.052029, 18.082836>,  <36.588070, 32.269150, 18.181154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.559921, 32.052029, 18.082836>,  <36.513008, 31.690163, 17.918972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559921, 32.052029, 18.082836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256849, -0.426106, 0.867446,
		0.959309, 0.003481, -0.282339,
		0.117286, 0.904667, 0.409661,
		36.595108, 32.323429, 18.205734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001652, 31.583141, 18.409773>,  <36.513008, 31.690163, 17.918972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001652, 31.583141, 18.409773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.862885, 31.939810, 18.526098>,  <36.779625, 32.153809, 18.595894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.862885, 31.939810, 18.526098>,  <37.001652, 31.583141, 18.409773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862885, 31.939810, 18.526098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168116, -0.245930, 0.954597,
		0.922705, 0.380059, -0.064586,
		-0.346919, 0.891669, 0.290815,
		36.758808, 32.207310, 18.613342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474236, 31.802990, 19.026442>,  <37.001652, 31.583141, 18.409773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474236, 31.802990, 19.026442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122307, 31.990728, 19.056437>,  <36.911148, 32.103371, 19.074434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122307, 31.990728, 19.056437>,  <37.474236, 31.802990, 19.026442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122307, 31.990728, 19.056437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054211, -0.255833, 0.965200,
		0.472199, 0.845140, 0.250531,
		-0.879824, 0.469348, 0.074988,
		36.858360, 32.131535, 19.078934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033234, 31.519638, 19.181183>,  <37.474236, 31.802990, 19.026442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033234, 31.519638, 19.181183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351368, 31.291576, 19.263515>,  <38.542248, 31.154739, 19.312916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351368, 31.291576, 19.263515>,  <38.033234, 31.519638, 19.181183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351368, 31.291576, 19.263515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219577, -0.045519, -0.974533,
		0.565003, 0.820276, 0.088990,
		0.795335, -0.570154, 0.205833,
		38.589970, 31.120531, 19.325266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684826, 31.843946, 18.780165>,  <38.033234, 31.519638, 19.181183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684826, 31.843946, 18.780165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789360, 31.468048, 18.868326>,  <38.852081, 31.242508, 18.921223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789360, 31.468048, 18.868326>,  <38.684826, 31.843946, 18.780165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789360, 31.468048, 18.868326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486329, -0.069048, -0.871043,
		0.833779, 0.334825, 0.438982,
		0.261336, -0.939747, 0.220406,
		38.867760, 31.186125, 18.934448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390797, 31.738745, 18.520252>,  <38.684826, 31.843946, 18.780165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390797, 31.738745, 18.520252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244629, 31.368479, 18.559473>,  <39.156929, 31.146318, 18.583006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244629, 31.368479, 18.559473>,  <39.390797, 31.738745, 18.520252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244629, 31.368479, 18.559473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471859, -0.275006, -0.837688,
		0.802384, -0.259838, 0.537275,
		-0.365417, -0.925665, 0.098054,
		39.135002, 31.090778, 18.588888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936058, 31.310846, 18.232758>,  <39.390797, 31.738745, 18.520252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936058, 31.310846, 18.232758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611942, 31.077127, 18.250746>,  <39.417473, 30.936897, 18.261539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611942, 31.077127, 18.250746>,  <39.936058, 31.310846, 18.232758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611942, 31.077127, 18.250746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233423, -0.392192, -0.889775,
		0.537529, -0.710482, 0.454179,
		-0.810294, -0.584296, 0.044971,
		39.368855, 30.901838, 18.264236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150917, 30.705475, 18.226614>,  <39.936058, 31.310846, 18.232758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150917, 30.705475, 18.226614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779697, 30.695454, 18.077967>,  <39.556965, 30.689442, 17.988777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779697, 30.695454, 18.077967>,  <40.150917, 30.705475, 18.226614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779697, 30.695454, 18.077967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356340, -0.350088, -0.866291,
		-0.108397, -0.936382, 0.333826,
		-0.928047, -0.025053, -0.371619,
		39.501282, 30.687939, 17.966480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248211, 30.137505, 17.838924>,  <40.150917, 30.705475, 18.226614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248211, 30.137505, 17.838924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911694, 30.315979, 17.716841>,  <39.709785, 30.423063, 17.643591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911694, 30.315979, 17.716841>,  <40.248211, 30.137505, 17.838924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911694, 30.315979, 17.716841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257269, -0.166097, -0.951958,
		-0.475444, -0.879393, 0.024946,
		-0.841288, 0.446185, -0.305210,
		39.659306, 30.449835, 17.625278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988075, 29.659304, 17.417892>,  <40.248211, 30.137505, 17.838924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988075, 29.659304, 17.417892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839073, 30.009394, 17.294462>,  <39.749672, 30.219448, 17.220404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839073, 30.009394, 17.294462>,  <39.988075, 29.659304, 17.417892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839073, 30.009394, 17.294462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363549, -0.168309, -0.916245,
		-0.853856, -0.453493, -0.255490,
		-0.372509, 0.875224, -0.308578,
		39.727322, 30.271961, 17.201889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757687, 29.532528, 16.765211>,  <39.988075, 29.659304, 17.417892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757687, 29.532528, 16.765211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785889, 29.931280, 16.751022>,  <39.802811, 30.170532, 16.742510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785889, 29.931280, 16.751022>,  <39.757687, 29.532528, 16.765211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785889, 29.931280, 16.751022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423838, -0.062128, -0.903605,
		-0.902990, 0.048673, -0.426896,
		0.070504, 0.996881, -0.035472,
		39.807041, 30.230345, 16.740381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649578, 29.701805, 16.141058>,  <39.757687, 29.532528, 16.765211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649578, 29.701805, 16.141058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835442, 30.033804, 16.264475>,  <39.946960, 30.233004, 16.338526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835442, 30.033804, 16.264475>,  <39.649578, 29.701805, 16.141058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835442, 30.033804, 16.264475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488898, 0.050049, -0.870904,
		-0.738290, 0.555516, -0.382529,
		0.464656, 0.829998, 0.308541,
		39.974838, 30.282803, 16.357037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.328327, 30.792202, 30.329498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555668, 30.559637, 30.096626>,  <34.692074, 30.420099, 29.956903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555668, 30.559637, 30.096626>,  <34.328327, 30.792202, 30.329498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555668, 30.559637, 30.096626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134629, 0.763754, -0.631312,
		0.811693, 0.280431, 0.512359,
		0.568356, -0.581410, -0.582180,
		34.726173, 30.385214, 29.921972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888027, 31.282293, 30.399830>,  <34.328327, 30.792202, 30.329498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888027, 31.282293, 30.399830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176090, 31.393473, 30.654108>,  <35.348930, 31.460180, 30.806675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176090, 31.393473, 30.654108>,  <34.888027, 31.282293, 30.399830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176090, 31.393473, 30.654108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692487, -0.231481, -0.683284,
		-0.042767, 0.932288, -0.359181,
		0.720161, 0.277950, 0.635698,
		35.392139, 31.476858, 30.844818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341194, 31.862757, 30.144365>,  <34.888027, 31.282293, 30.399830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341194, 31.862757, 30.144365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548714, 31.649479, 30.411663>,  <35.673225, 31.521513, 30.572042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548714, 31.649479, 30.411663>,  <35.341194, 31.862757, 30.144365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548714, 31.649479, 30.411663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635332, -0.282550, -0.718692,
		0.572016, 0.797414, 0.192169,
		0.518798, -0.533194, 0.668246,
		35.704353, 31.489521, 30.612137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998127, 32.041420, 30.122797>,  <35.341194, 31.862757, 30.144365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998127, 32.041420, 30.122797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049099, 31.685774, 30.298632>,  <36.079681, 31.472385, 30.404133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049099, 31.685774, 30.298632>,  <35.998127, 32.041420, 30.122797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049099, 31.685774, 30.298632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717683, -0.223258, -0.659611,
		0.684612, 0.399535, 0.609654,
		0.127428, -0.889116, 0.439585,
		36.087326, 31.419039, 30.430508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741222, 32.025723, 30.152037>,  <35.998127, 32.041420, 30.122797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741222, 32.025723, 30.152037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590466, 31.657698, 30.194801>,  <36.500011, 31.436882, 30.220461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590466, 31.657698, 30.194801>,  <36.741222, 32.025723, 30.152037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590466, 31.657698, 30.194801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589533, -0.327307, -0.738458,
		0.714423, -0.215293, 0.665769,
		-0.376896, -0.920065, 0.106913,
		36.477398, 31.381678, 30.226875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302746, 31.618828, 30.108557>,  <36.741222, 32.025723, 30.152037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302746, 31.618828, 30.108557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006149, 31.362272, 30.029760>,  <36.828190, 31.208340, 29.982483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006149, 31.362272, 30.029760>,  <37.302746, 31.618828, 30.108557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006149, 31.362272, 30.029760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482826, -0.306200, -0.820439,
		0.465901, -0.703465, 0.536725,
		-0.741495, -0.641388, -0.196992,
		36.783699, 31.169855, 29.970663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577709, 30.983576, 30.077936>,  <37.302746, 31.618828, 30.108557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577709, 30.983576, 30.077936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241432, 30.950762, 29.863832>,  <37.039665, 30.931074, 29.735371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241432, 30.950762, 29.863832>,  <37.577709, 30.983576, 30.077936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241432, 30.950762, 29.863832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509492, -0.454663, -0.730547,
		-0.183432, -0.886877, 0.424029,
		-0.840697, -0.082034, -0.535256,
		36.989223, 30.926151, 29.703255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655109, 30.382011, 29.733963>,  <37.577709, 30.983576, 30.077936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655109, 30.382011, 29.733963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384842, 30.583900, 29.519032>,  <37.222679, 30.705034, 29.390072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384842, 30.583900, 29.519032>,  <37.655109, 30.382011, 29.733963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384842, 30.583900, 29.519032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280675, -0.497856, -0.820585,
		-0.681679, -0.705263, 0.194725,
		-0.675673, 0.504722, -0.537328,
		37.182140, 30.735317, 29.357834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290810, 29.893448, 29.311369>,  <37.655109, 30.382011, 29.733963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290810, 29.893448, 29.311369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231663, 30.248943, 29.137806>,  <37.196175, 30.462242, 29.033669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231663, 30.248943, 29.137806>,  <37.290810, 29.893448, 29.311369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231663, 30.248943, 29.137806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121826, -0.419022, -0.899766,
		-0.981476, -0.185903, -0.046314,
		-0.147863, 0.888741, -0.433908,
		37.187305, 30.515566, 29.007633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764080, 29.794184, 28.783003>,  <37.290810, 29.893448, 29.311369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764080, 29.794184, 28.783003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974594, 30.122761, 28.695133>,  <37.100903, 30.319906, 28.642412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974594, 30.122761, 28.695133>,  <36.764080, 29.794184, 28.783003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974594, 30.122761, 28.695133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026075, -0.273816, -0.961428,
		-0.849909, 0.500257, -0.165524,
		0.526285, 0.821442, -0.219674,
		37.132481, 30.369194, 28.629230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471066, 30.044296, 28.278521>,  <36.764080, 29.794184, 28.783003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471066, 30.044296, 28.278521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789474, 30.275570, 28.206905>,  <36.980518, 30.414335, 28.163937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789474, 30.275570, 28.206905>,  <36.471066, 30.044296, 28.278521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789474, 30.275570, 28.206905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147907, -0.101020, -0.983828,
		-0.586922, 0.809627, 0.005104,
		0.796019, 0.578186, -0.179040,
		37.028278, 30.449026, 28.153193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349915, 30.604639, 27.747847>,  <36.471066, 30.044296, 28.278521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349915, 30.604639, 27.747847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746223, 30.550703, 27.753389>,  <36.984009, 30.518341, 27.756714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746223, 30.550703, 27.753389>,  <36.349915, 30.604639, 27.747847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746223, 30.550703, 27.753389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028902, -0.310013, -0.950293,
		0.132432, 0.941122, -0.311049,
		0.990771, -0.134840, 0.013855,
		37.043453, 30.510252, 27.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829681, 31.277121, 27.610226>,  <36.349915, 30.604639, 27.747847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829681, 31.277121, 27.610226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485489, 31.298336, 27.407539>,  <35.278973, 31.311066, 27.285927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485489, 31.298336, 27.407539>,  <35.829681, 31.277121, 27.610226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485489, 31.298336, 27.407539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449039, 0.390931, 0.803453,
		0.240706, 0.918890, -0.312572,
		-0.860479, 0.053039, -0.506717,
		35.227345, 31.314247, 27.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530167, 31.931004, 27.623075>,  <35.829681, 31.277121, 27.610226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530167, 31.931004, 27.623075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228130, 31.672237, 27.580492>,  <35.046909, 31.516977, 27.554943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228130, 31.672237, 27.580492>,  <35.530167, 31.931004, 27.623075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228130, 31.672237, 27.580492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469346, 0.420008, 0.776729,
		-0.457766, 0.636467, -0.620773,
		-0.755092, -0.646918, -0.106458,
		35.001602, 31.478163, 27.548555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799801, 32.292679, 27.726091>,  <35.530167, 31.931004, 27.623075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799801, 32.292679, 27.726091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754948, 31.898493, 27.777140>,  <34.728035, 31.661982, 27.807770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754948, 31.898493, 27.777140>,  <34.799801, 32.292679, 27.726091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754948, 31.898493, 27.777140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591976, 0.169401, 0.787951,
		-0.798117, 0.012805, -0.602366,
		-0.112131, -0.985464, 0.127622,
		34.721310, 31.602854, 27.815426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095806, 32.173363, 27.689556>,  <34.799801, 32.292679, 27.726091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095806, 32.173363, 27.689556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261726, 31.901464, 27.931509>,  <34.361279, 31.738325, 28.076681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261726, 31.901464, 27.931509>,  <34.095806, 32.173363, 27.689556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261726, 31.901464, 27.931509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688144, 0.200579, 0.697299,
		-0.595314, -0.705487, -0.384564,
		0.414800, -0.679747, 0.604884,
		34.386166, 31.697540, 28.112974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529427, 31.690353, 27.802322>,  <34.095806, 32.173363, 27.689556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529427, 31.690353, 27.802322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818840, 31.658667, 28.076614>,  <33.992489, 31.639654, 28.241190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818840, 31.658667, 28.076614>,  <33.529427, 31.690353, 27.802322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818840, 31.658667, 28.076614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663974, 0.191810, 0.722736,
		-0.188784, -0.978230, 0.086181,
		0.723532, -0.079219, 0.685729,
		34.035900, 31.634901, 28.282333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111954, 31.547045, 28.272116>,  <33.529427, 31.690353, 27.802322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111954, 31.547045, 28.272116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450718, 31.589645, 28.480499>,  <33.653976, 31.615206, 28.605530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450718, 31.589645, 28.480499>,  <33.111954, 31.547045, 28.272116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450718, 31.589645, 28.480499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531515, 0.141570, 0.835135,
		0.015192, -0.984182, 0.176506,
		0.846913, 0.106503, 0.520957,
		33.704792, 31.621597, 28.636786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964745, 31.291988, 28.883211>,  <33.111954, 31.547045, 28.272116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964745, 31.291988, 28.883211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274261, 31.535076, 28.954681>,  <33.459972, 31.680929, 28.997564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274261, 31.535076, 28.954681>,  <32.964745, 31.291988, 28.883211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274261, 31.535076, 28.954681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366288, 0.199147, 0.908941,
		0.516799, -0.768777, 0.376698,
		0.773791, 0.607720, 0.178675,
		33.506397, 31.717392, 29.008284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407009, 30.933640, 29.411201>,  <32.964745, 31.291988, 28.883211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407009, 30.933640, 29.411201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461990, 31.329838, 29.409357>,  <33.494980, 31.567558, 29.408251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461990, 31.329838, 29.409357>,  <33.407009, 30.933640, 29.411201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461990, 31.329838, 29.409357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496747, 0.072958, 0.864823,
		0.856942, -0.116579, 0.502055,
		0.137449, 0.990498, -0.004610,
		33.503223, 31.626987, 29.407974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620899, 31.094732, 30.043058>,  <33.407009, 30.933640, 29.411201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620899, 31.094732, 30.043058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501602, 31.457644, 29.924469>,  <33.430023, 31.675390, 29.853315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501602, 31.457644, 29.924469>,  <33.620899, 31.094732, 30.043058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501602, 31.457644, 29.924469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279956, 0.213801, 0.935903,
		0.912511, 0.362126, 0.190234,
		-0.298243, 0.907279, -0.296475,
		33.412128, 31.729828, 29.835527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893475, 31.557970, 30.528471>,  <33.620899, 31.094732, 30.043058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893475, 31.557970, 30.528471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574848, 31.740858, 30.370264>,  <33.383671, 31.850592, 30.275339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574848, 31.740858, 30.370264>,  <33.893475, 31.557970, 30.528471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574848, 31.740858, 30.370264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329337, 0.220447, 0.918118,
		0.506971, 0.861600, -0.025021,
		-0.796566, 0.457219, -0.395517,
		33.335880, 31.878023, 30.251610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893761, 32.328907, 30.534321>,  <33.893475, 31.557970, 30.528471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893761, 32.328907, 30.534321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505192, 32.237602, 30.560356>,  <33.272049, 32.182819, 30.575977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505192, 32.237602, 30.560356>,  <33.893761, 32.328907, 30.534321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505192, 32.237602, 30.560356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068247, 0.531237, 0.844470,
		-0.227341, 0.815894, -0.531633,
		-0.971421, -0.228265, 0.065090,
		33.213764, 32.169125, 30.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673851, 32.760342, 31.041939>,  <33.893761, 32.328907, 30.534321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673851, 32.760342, 31.041939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339592, 32.547325, 30.988131>,  <33.139038, 32.419514, 30.955845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339592, 32.547325, 30.988131>,  <33.673851, 32.760342, 31.041939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339592, 32.547325, 30.988131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461774, 0.548521, 0.697057,
		-0.297425, 0.644611, -0.704284,
		-0.835645, -0.532542, -0.134521,
		33.088898, 32.387562, 30.947775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079117, 33.244255, 30.935926>,  <33.673851, 32.760342, 31.041939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079117, 33.244255, 30.935926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903866, 32.898556, 31.034817>,  <32.798714, 32.691135, 31.094151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903866, 32.898556, 31.034817>,  <33.079117, 33.244255, 30.935926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903866, 32.898556, 31.034817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591180, 0.484212, 0.645015,
		-0.677160, 0.136448, -0.723074,
		-0.438132, -0.864246, 0.247224,
		32.772427, 32.639282, 31.108984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309483, 33.452816, 30.960745>,  <33.079117, 33.244255, 30.935926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309483, 33.452816, 30.960745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349201, 33.117722, 31.175533>,  <32.373032, 32.916664, 31.304407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349201, 33.117722, 31.175533>,  <32.309483, 33.452816, 30.960745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349201, 33.117722, 31.175533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393045, 0.462734, 0.794603,
		-0.914142, -0.289957, -0.283319,
		0.099299, -0.837737, 0.536970,
		32.378990, 32.866402, 31.336624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754103, 33.298725, 31.241922>,  <32.309483, 33.452816, 30.960745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754103, 33.298725, 31.241922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040024, 33.142990, 31.474293>,  <32.211578, 33.049549, 31.613714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040024, 33.142990, 31.474293>,  <31.754103, 33.298725, 31.241922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040024, 33.142990, 31.474293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423098, 0.420649, 0.802523,
		-0.556816, -0.819434, 0.135954,
		0.714803, -0.389336, 0.580925,
		32.254463, 33.026188, 31.648571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252819, 33.963131, 31.156155>,  <31.754103, 33.298725, 31.241922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252819, 33.963131, 31.156155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397694, 34.332485, 31.105286>,  <31.484619, 34.554100, 31.074764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397694, 34.332485, 31.105286>,  <31.252819, 33.963131, 31.156155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397694, 34.332485, 31.105286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349649, 0.008117, -0.936846,
		-0.864041, 0.383779, 0.325802,
		0.362186, 0.923389, -0.127174,
		31.506350, 34.609501, 31.067133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767391, 34.511494, 30.696030>,  <31.252819, 33.963131, 31.156155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767391, 34.511494, 30.696030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146021, 34.638245, 30.672070>,  <31.373198, 34.714294, 30.657694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146021, 34.638245, 30.672070>,  <30.767391, 34.511494, 30.696030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146021, 34.638245, 30.672070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063143, -0.000042, -0.998004,
		-0.316248, 0.948466, 0.019969,
		0.946573, 0.316878, -0.059902,
		31.429993, 34.733307, 30.654099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813238, 34.976509, 30.077993>,  <30.767391, 34.511494, 30.696030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813238, 34.976509, 30.077993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.197699, 34.893215, 30.150467>,  <31.428375, 34.843239, 30.193951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.197699, 34.893215, 30.150467>,  <30.813238, 34.976509, 30.077993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197699, 34.893215, 30.150467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200473, 0.075437, -0.976790,
		0.189732, 0.975166, 0.114251,
		0.961151, -0.208233, 0.181182,
		31.486044, 34.830746, 30.204821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186075, 35.411922, 29.609245>,  <30.813238, 34.976509, 30.077993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186075, 35.411922, 29.609245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433548, 35.117264, 29.718487>,  <31.582031, 34.940468, 29.784031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433548, 35.117264, 29.718487>,  <31.186075, 35.411922, 29.609245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433548, 35.117264, 29.718487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237565, -0.155934, -0.958774,
		0.748865, 0.658054, 0.078528,
		0.618680, -0.736647, 0.273104,
		31.619152, 34.896271, 29.800419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802866, 35.528023, 29.350113>,  <31.186075, 35.411922, 29.609245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802866, 35.528023, 29.350113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861227, 35.136223, 29.405672>,  <31.896244, 34.901142, 29.439007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861227, 35.136223, 29.405672>,  <31.802866, 35.528023, 29.350113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861227, 35.136223, 29.405672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345733, -0.081062, -0.934825,
		0.926920, 0.184415, 0.326818,
		0.145903, -0.979500, 0.138896,
		31.904999, 34.842373, 29.447340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411861, 35.385651, 29.081274>,  <31.802866, 35.528023, 29.350113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411861, 35.385651, 29.081274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261642, 35.015156, 29.094196>,  <32.171513, 34.792858, 29.101950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261642, 35.015156, 29.094196>,  <32.411861, 35.385651, 29.081274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261642, 35.015156, 29.094196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571189, -0.258760, -0.778965,
		0.729869, -0.274082, 0.626235,
		-0.375545, -0.926241, 0.032308,
		32.148979, 34.737282, 29.103889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967316, 34.781578, 28.996147>,  <32.411861, 35.385651, 29.081274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967316, 34.781578, 28.996147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647404, 34.566772, 28.888838>,  <32.455456, 34.437889, 28.824451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647404, 34.566772, 28.888838>,  <32.967316, 34.781578, 28.996147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647404, 34.566772, 28.888838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541484, -0.452467, -0.708568,
		0.259123, -0.711965, 0.652657,
		-0.799782, -0.537009, -0.268273,
		32.407471, 34.405670, 28.808355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312695, 34.154865, 28.896889>,  <32.967316, 34.781578, 28.996147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312695, 34.154865, 28.896889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969494, 34.202263, 28.696970>,  <32.763573, 34.230701, 28.577019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969494, 34.202263, 28.696970>,  <33.312695, 34.154865, 28.896889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969494, 34.202263, 28.696970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462489, -0.245116, -0.852069,
		-0.223466, -0.962226, 0.155511,
		-0.858002, 0.118487, -0.499794,
		32.712093, 34.237812, 28.547031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259731, 33.645210, 28.413525>,  <33.312695, 34.154865, 28.896889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259731, 33.645210, 28.413525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972759, 33.810455, 28.189156>,  <32.800575, 33.909603, 28.054535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972759, 33.810455, 28.189156>,  <33.259731, 33.645210, 28.413525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972759, 33.810455, 28.189156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600020, -0.042649, -0.798847,
		-0.353939, -0.909680, -0.217280,
		-0.717428, 0.413115, -0.560922,
		32.757530, 33.934391, 28.020880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197269, 33.247459, 27.851376>,  <33.259731, 33.645210, 28.413525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197269, 33.247459, 27.851376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046204, 33.603516, 27.749376>,  <32.955566, 33.817150, 27.688177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046204, 33.603516, 27.749376>,  <33.197269, 33.247459, 27.851376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046204, 33.603516, 27.749376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474178, -0.050620, -0.878973,
		-0.795316, -0.452868, -0.402967,
		-0.377661, 0.890139, -0.254999,
		32.932907, 33.870556, 27.672876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853237, 33.185421, 27.146080>,  <33.197269, 33.247459, 27.851376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853237, 33.185421, 27.146080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952480, 33.570446, 27.189747>,  <33.012028, 33.801460, 27.215946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952480, 33.570446, 27.189747>,  <32.853237, 33.185421, 27.146080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952480, 33.570446, 27.189747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541043, -0.044212, -0.839832,
		-0.803563, 0.267437, -0.531756,
		0.248112, 0.962560, 0.109168,
		33.026913, 33.859215, 27.222498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825962, 33.390633, 26.523783>,  <32.853237, 33.185421, 27.146080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825962, 33.390633, 26.523783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047779, 33.680817, 26.686848>,  <33.180870, 33.854927, 26.784687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047779, 33.680817, 26.686848>,  <32.825962, 33.390633, 26.523783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047779, 33.680817, 26.686848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549661, 0.048480, -0.833979,
		-0.624784, 0.686553, -0.371874,
		0.554543, 0.725462, 0.407661,
		33.214142, 33.898457, 26.809147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961021, 33.936916, 25.907085>,  <32.825962, 33.390633, 26.523783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961021, 33.936916, 25.907085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230770, 34.005112, 26.194462>,  <33.392620, 34.046028, 26.366888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230770, 34.005112, 26.194462>,  <32.961021, 33.936916, 25.907085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230770, 34.005112, 26.194462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676934, 0.245884, -0.693759,
		-0.294934, 0.954187, 0.050404,
		0.674370, 0.170493, 0.718441,
		33.433083, 34.056259, 26.409994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240158, 34.530678, 25.735813>,  <32.961021, 33.936916, 25.907085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240158, 34.530678, 25.735813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514938, 34.375072, 25.981337>,  <33.679806, 34.281708, 26.128651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514938, 34.375072, 25.981337>,  <33.240158, 34.530678, 25.735813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514938, 34.375072, 25.981337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702230, 0.138000, -0.698448,
		0.187002, 0.910836, 0.367978,
		0.686952, -0.389016, 0.613811,
		33.721024, 34.258369, 26.165480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860134, 35.097717, 25.863478>,  <33.240158, 34.530678, 25.735813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860134, 35.097717, 25.863478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995995, 34.727936, 25.932789>,  <34.077511, 34.506069, 25.974375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995995, 34.727936, 25.932789>,  <33.860134, 35.097717, 25.863478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995995, 34.727936, 25.932789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807092, 0.191875, -0.558378,
		0.482946, 0.329505, 0.811289,
		0.339654, -0.924452, 0.173275,
		34.097893, 34.450600, 25.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614841, 35.116119, 25.933729>,  <33.860134, 35.097717, 25.863478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614841, 35.116119, 25.933729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561016, 34.724781, 25.870813>,  <34.528721, 34.489979, 25.833065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561016, 34.724781, 25.870813>,  <34.614841, 35.116119, 25.933729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561016, 34.724781, 25.870813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735488, 0.007758, -0.677493,
		0.664040, -0.206850, 0.718515,
		-0.134565, -0.978342, -0.157287,
		34.520645, 34.431278, 25.823627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413475, 34.774529, 25.969566>,  <34.614841, 35.116119, 25.933729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413475, 34.774529, 25.969566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165539, 34.530643, 25.771959>,  <35.016777, 34.384312, 25.653395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165539, 34.530643, 25.771959>,  <35.413475, 34.774529, 25.969566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165539, 34.530643, 25.771959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630361, -0.011906, -0.776211,
		0.467381, -0.792536, 0.391717,
		-0.619839, -0.609709, -0.494019,
		34.979588, 34.347733, 25.623755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769024, 34.154041, 25.723124>,  <35.413475, 34.774529, 25.969566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769024, 34.154041, 25.723124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451363, 34.164806, 25.480276>,  <35.260765, 34.171265, 25.334568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451363, 34.164806, 25.480276>,  <35.769024, 34.154041, 25.723124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451363, 34.164806, 25.480276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604623, -0.065634, -0.793803,
		-0.061190, -0.997482, 0.035867,
		-0.794158, 0.026887, -0.607116,
		35.213116, 34.172882, 25.298141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827988, 33.558044, 25.194208>,  <35.769024, 34.154041, 25.723124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827988, 33.558044, 25.194208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578091, 33.831085, 25.042551>,  <35.428154, 33.994911, 24.951557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578091, 33.831085, 25.042551>,  <35.827988, 33.558044, 25.194208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578091, 33.831085, 25.042551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334342, -0.204946, -0.919898,
		-0.705632, -0.701460, -0.100186,
		-0.624739, 0.682606, -0.379144,
		35.390671, 34.035866, 24.928808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773003, 33.341167, 24.505987>,  <35.827988, 33.558044, 25.194208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773003, 33.341167, 24.505987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628887, 33.712734, 24.471798>,  <35.542416, 33.935673, 24.451284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628887, 33.712734, 24.471798>,  <35.773003, 33.341167, 24.505987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628887, 33.712734, 24.471798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307288, 0.031670, -0.951090,
		-0.880775, -0.368933, -0.296855,
		-0.360290, 0.928916, -0.085474,
		35.520802, 33.991409, 24.446156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376606, 33.383396, 23.936398>,  <35.773003, 33.341167, 24.505987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376606, 33.383396, 23.936398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486374, 33.758968, 24.019440>,  <35.552235, 33.984310, 24.069265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486374, 33.758968, 24.019440>,  <35.376606, 33.383396, 23.936398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486374, 33.758968, 24.019440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314231, 0.116479, -0.942174,
		-0.908818, 0.323791, -0.263077,
		0.274424, 0.938931, 0.207604,
		35.568703, 34.040649, 24.081720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964031, 33.920265, 23.561152>,  <35.376606, 33.383396, 23.936398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964031, 33.920265, 23.561152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312840, 34.091755, 23.655611>,  <35.522125, 34.194649, 23.712286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312840, 34.091755, 23.655611>,  <34.964031, 33.920265, 23.561152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312840, 34.091755, 23.655611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103801, 0.309502, -0.945216,
		-0.478329, 0.848764, 0.225391,
		0.872024, 0.428729, 0.236146,
		35.574448, 34.220375, 23.726456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931683, 34.548458, 23.172167>,  <34.964031, 33.920265, 23.561152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931683, 34.548458, 23.172167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325382, 34.523365, 23.238276>,  <35.561604, 34.508308, 23.277941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325382, 34.523365, 23.238276>,  <34.931683, 34.548458, 23.172167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325382, 34.523365, 23.238276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173560, 0.520510, -0.836030,
		-0.033577, 0.851548, 0.523201,
		0.984251, -0.062736, 0.165272,
		35.620659, 34.504543, 23.287857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135197, 35.168301, 22.925907>,  <34.931683, 34.548458, 23.172167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135197, 35.168301, 22.925907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461605, 34.937122, 22.929504>,  <35.657452, 34.798416, 22.931664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461605, 34.937122, 22.929504>,  <35.135197, 35.168301, 22.925907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461605, 34.937122, 22.929504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328956, 0.451555, -0.829389,
		0.475284, 0.679758, 0.558599,
		0.816023, -0.577950, 0.008993,
		35.706413, 34.763737, 22.932203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717155, 35.651146, 22.906597>,  <35.135197, 35.168301, 22.925907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717155, 35.651146, 22.906597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.832470, 35.302551, 22.747898>,  <35.901657, 35.093395, 22.652679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.832470, 35.302551, 22.747898>,  <35.717155, 35.651146, 22.906597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832470, 35.302551, 22.747898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390457, 0.485314, -0.782312,
		0.874319, 0.070617, 0.480186,
		0.288286, -0.871483, -0.396747,
		35.918957, 35.041107, 22.628874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296223, 35.829948, 22.576674>,  <35.717155, 35.651146, 22.906597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296223, 35.829948, 22.576674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242996, 35.460945, 22.431749>,  <36.211060, 35.239544, 22.344795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242996, 35.460945, 22.431749>,  <36.296223, 35.829948, 22.576674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242996, 35.460945, 22.431749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400958, 0.284204, -0.870897,
		0.906381, -0.261158, 0.332069,
		-0.133066, -0.922510, -0.362311,
		36.203075, 35.184193, 22.323055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953064, 35.563141, 22.317368>,  <36.296223, 35.829948, 22.576674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953064, 35.563141, 22.317368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648125, 35.376606, 22.137880>,  <36.465160, 35.264683, 22.030188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648125, 35.376606, 22.137880>,  <36.953064, 35.563141, 22.317368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648125, 35.376606, 22.137880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414786, 0.180136, -0.891910,
		0.496765, -0.866070, 0.056105,
		-0.762350, -0.466341, -0.448719,
		36.419418, 35.236702, 22.003265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619701, 35.406372, 22.537153>,  <36.953064, 35.563141, 22.317368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619701, 35.406372, 22.537153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904091, 35.687176, 22.553642>,  <38.074726, 35.855659, 22.563536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904091, 35.687176, 22.553642>,  <37.619701, 35.406372, 22.537153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904091, 35.687176, 22.553642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415832, 0.372425, 0.829689,
		0.567098, -0.607027, 0.556702,
		0.710974, 0.702010, 0.041220,
		38.117382, 35.897778, 22.566008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667885, 35.452213, 23.194485>,  <37.619701, 35.406372, 22.537153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667885, 35.452213, 23.194485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845528, 35.792145, 23.080948>,  <37.952114, 35.996101, 23.012825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845528, 35.792145, 23.080948>,  <37.667885, 35.452213, 23.194485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845528, 35.792145, 23.080948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432907, 0.480892, 0.762453,
		0.784449, -0.215734, 0.581462,
		0.444108, 0.849825, -0.283842,
		37.978760, 36.047092, 22.995794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084438, 35.750080, 23.758585>,  <37.667885, 35.452213, 23.194485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084438, 35.750080, 23.758585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932438, 36.038940, 23.527378>,  <37.841236, 36.212257, 23.388655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932438, 36.038940, 23.527378>,  <38.084438, 35.750080, 23.758585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932438, 36.038940, 23.527378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323932, 0.481426, 0.814431,
		0.866411, 0.496722, 0.050984,
		-0.380000, 0.722147, -0.578017,
		37.818439, 36.255585, 23.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167233, 36.313980, 24.181545>,  <38.084438, 35.750080, 23.758585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167233, 36.313980, 24.181545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914143, 36.456509, 23.906534>,  <37.762291, 36.542027, 23.741528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914143, 36.456509, 23.906534>,  <38.167233, 36.313980, 24.181545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914143, 36.456509, 23.906534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319427, 0.688699, 0.650891,
		0.705428, 0.631449, -0.321937,
		-0.632723, 0.356321, -0.687530,
		37.724327, 36.563404, 23.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175476, 36.978584, 24.229610>,  <38.167233, 36.313980, 24.181545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175476, 36.978584, 24.229610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823982, 36.903515, 24.054066>,  <37.613087, 36.858475, 23.948738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823982, 36.903515, 24.054066>,  <38.175476, 36.978584, 24.229610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823982, 36.903515, 24.054066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470071, 0.499772, 0.727504,
		0.082797, 0.845580, -0.527388,
		-0.878737, -0.187675, -0.438862,
		37.560360, 36.847214, 23.922407>
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
