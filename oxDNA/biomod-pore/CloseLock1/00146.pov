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
	<23.789959, 34.760349, 34.593590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098572, 34.982323, 34.718033>,  <24.283739, 35.115505, 34.792698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098572, 34.982323, 34.718033>,  <23.789959, 34.760349, 34.593590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098572, 34.982323, 34.718033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404302, -0.805254, 0.433711,
		0.491201, -0.208841, -0.845640,
		0.771532, 0.554934, 0.311107,
		24.330030, 35.148804, 34.811363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291641, 34.390652, 34.254028>,  <23.789959, 34.760349, 34.593590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291641, 34.390652, 34.254028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410181, 34.551517, 34.600540>,  <24.481304, 34.648037, 34.808449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410181, 34.551517, 34.600540>,  <24.291641, 34.390652, 34.254028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410181, 34.551517, 34.600540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490860, -0.842199, 0.223064,
		0.819289, 0.359119, -0.446989,
		0.296348, 0.402163, 0.866281,
		24.499084, 34.672165, 34.860424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964312, 34.176537, 34.406425>,  <24.291641, 34.390652, 34.254028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964312, 34.176537, 34.406425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800611, 34.262306, 34.761173>,  <24.702393, 34.313766, 34.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800611, 34.262306, 34.761173>,  <24.964312, 34.176537, 34.406425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800611, 34.262306, 34.761173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660850, -0.600536, 0.450148,
		0.629120, 0.770311, 0.104067,
		-0.409249, 0.214424, 0.886869,
		24.677837, 34.326633, 35.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550133, 34.307243, 34.908249>,  <24.964312, 34.176537, 34.406425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550133, 34.307243, 34.908249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213114, 34.172653, 35.076485>,  <25.010902, 34.091900, 35.177425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213114, 34.172653, 35.076485>,  <25.550133, 34.307243, 34.908249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213114, 34.172653, 35.076485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532586, -0.637006, 0.557293,
		0.080407, 0.693549, 0.715909,
		-0.842548, -0.336472, 0.420594,
		24.960350, 34.071712, 35.202663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197191, 34.676403, 35.088039>,  <25.550133, 34.307243, 34.908249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197191, 34.676403, 35.088039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840403, 34.857212, 35.091286>,  <25.626329, 34.965698, 35.093235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840403, 34.857212, 35.091286>,  <26.197191, 34.676403, 35.088039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840403, 34.857212, 35.091286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219533, 0.448756, -0.866270,
		-0.395216, -0.770905, -0.499510,
		-0.891970, 0.452023, 0.008116,
		25.572811, 34.992817, 35.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043566, 34.853477, 34.457153>,  <26.197191, 34.676403, 35.088039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043566, 34.853477, 34.457153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712732, 35.018978, 34.609333>,  <25.514233, 35.118279, 34.700642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712732, 35.018978, 34.609333>,  <26.043566, 34.853477, 34.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712732, 35.018978, 34.609333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136518, 0.508721, -0.850039,
		-0.545248, -0.754991, -0.364270,
		-0.827084, 0.413752, 0.380449,
		25.464607, 35.143105, 34.723469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178219, 35.480991, 33.885761>,  <26.043566, 34.853477, 34.457153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178219, 35.480991, 33.885761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307436, 35.625500, 34.235649>,  <26.384966, 35.712204, 34.445580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307436, 35.625500, 34.235649>,  <26.178219, 35.480991, 33.885761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307436, 35.625500, 34.235649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563188, 0.669410, -0.484468,
		-0.760567, 0.649134, 0.012786,
		0.323044, 0.361269, 0.874716,
		26.404348, 35.733879, 34.498062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961590, 36.100735, 33.839584>,  <26.178219, 35.480991, 33.885761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961590, 36.100735, 33.839584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270250, 36.101536, 34.094002>,  <26.455446, 36.102016, 34.246655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270250, 36.101536, 34.094002>,  <25.961590, 36.100735, 33.839584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270250, 36.101536, 34.094002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488434, 0.638674, -0.594582,
		-0.407419, 0.769475, 0.491852,
		0.771649, 0.002007, 0.636046,
		26.501745, 36.102139, 34.284817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206133, 36.827709, 33.988270>,  <25.961590, 36.100735, 33.839584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206133, 36.827709, 33.988270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516142, 36.598141, 34.094063>,  <26.702148, 36.460400, 34.157539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516142, 36.598141, 34.094063>,  <26.206133, 36.827709, 33.988270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516142, 36.598141, 34.094063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630041, 0.669422, -0.393602,
		0.048850, 0.471684, 0.880414,
		0.775024, -0.573924, 0.264479,
		26.748650, 36.425964, 34.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738474, 37.156799, 34.483006>,  <26.206133, 36.827709, 33.988270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738474, 37.156799, 34.483006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908430, 36.878929, 34.250832>,  <27.010403, 36.712208, 34.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908430, 36.878929, 34.250832>,  <26.738474, 37.156799, 34.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908430, 36.878929, 34.250832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663301, 0.675249, -0.322600,
		0.616037, -0.247932, 0.747682,
		0.424888, -0.694672, -0.580432,
		27.035896, 36.670528, 34.076702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362055, 37.436722, 34.312248>,  <26.738474, 37.156799, 34.483006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362055, 37.436722, 34.312248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353952, 37.134293, 34.050579>,  <27.349091, 36.952835, 33.893578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353952, 37.134293, 34.050579>,  <27.362055, 37.436722, 34.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353952, 37.134293, 34.050579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444706, 0.579206, -0.683196,
		0.895447, -0.304755, 0.324496,
		-0.020257, -0.756072, -0.654175,
		27.347876, 36.907471, 33.854328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034477, 37.372066, 34.043884>,  <27.362055, 37.436722, 34.312248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034477, 37.372066, 34.043884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825394, 37.169930, 33.769249>,  <27.699944, 37.048649, 33.604465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825394, 37.169930, 33.769249>,  <28.034477, 37.372066, 34.043884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825394, 37.169930, 33.769249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182880, 0.720158, -0.669274,
		0.832665, -0.475399, -0.284015,
		-0.522708, -0.505340, -0.686592,
		27.668581, 37.018326, 33.563271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402493, 37.250290, 33.407280>,  <28.034477, 37.372066, 34.043884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402493, 37.250290, 33.407280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023668, 37.209660, 33.285458>,  <27.796373, 37.185280, 33.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023668, 37.209660, 33.285458>,  <28.402493, 37.250290, 33.407280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023668, 37.209660, 33.285458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193512, 0.576341, -0.793967,
		0.256177, -0.810872, -0.526175,
		-0.947062, -0.101575, -0.304559,
		27.739550, 37.179188, 33.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543797, 37.172356, 32.724476>,  <28.402493, 37.250290, 33.407280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543797, 37.172356, 32.724476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148806, 37.234638, 32.734657>,  <27.911812, 37.272007, 32.740765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148806, 37.234638, 32.734657>,  <28.543797, 37.172356, 32.724476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148806, 37.234638, 32.734657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036970, 0.385199, -0.922092,
		-0.153377, -0.909603, -0.386132,
		-0.987476, 0.155703, 0.025453,
		27.852562, 37.281349, 32.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299320, 36.998959, 32.044819>,  <28.543797, 37.172356, 32.724476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299320, 36.998959, 32.044819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036472, 37.248173, 32.214535>,  <27.878763, 37.397701, 32.316364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036472, 37.248173, 32.214535>,  <28.299320, 36.998959, 32.044819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036472, 37.248173, 32.214535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091839, 0.624856, -0.775320,
		-0.748171, -0.470512, -0.467824,
		-0.657120, 0.623036, 0.424287,
		27.839336, 37.435085, 32.341820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076477, 37.311810, 31.472778>,  <28.299320, 36.998959, 32.044819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076477, 37.311810, 31.472778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988918, 37.569122, 31.766247>,  <27.936382, 37.723511, 31.942327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988918, 37.569122, 31.766247>,  <28.076477, 37.311810, 31.472778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988918, 37.569122, 31.766247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264111, 0.762902, -0.590107,
		-0.939324, 0.064598, -0.336894,
		-0.218897, 0.643279, 0.733673,
		27.923248, 37.762108, 31.986349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878225, 37.959290, 31.076815>,  <28.076477, 37.311810, 31.472778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878225, 37.959290, 31.076815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958090, 38.092796, 31.445322>,  <28.006008, 38.172901, 31.666426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958090, 38.092796, 31.445322>,  <27.878225, 37.959290, 31.076815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958090, 38.092796, 31.445322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447372, 0.805434, -0.388761,
		-0.871776, 0.489770, 0.011495,
		0.199661, 0.333770, 0.921267,
		28.017988, 38.192928, 31.721703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682596, 38.671700, 31.058661>,  <27.878225, 37.959290, 31.076815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682596, 38.671700, 31.058661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937159, 38.612217, 31.361414>,  <28.089895, 38.576527, 31.543066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937159, 38.612217, 31.361414>,  <27.682596, 38.671700, 31.058661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937159, 38.612217, 31.361414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557175, 0.767197, -0.317749,
		-0.533428, 0.623935, 0.571104,
		0.636404, -0.148708, 0.756885,
		28.128080, 38.567604, 31.588480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731937, 39.410301, 31.429741>,  <27.682596, 38.671700, 31.058661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731937, 39.410301, 31.429741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055359, 39.192413, 31.518755>,  <28.249413, 39.061680, 31.572163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055359, 39.192413, 31.518755>,  <27.731937, 39.410301, 31.429741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055359, 39.192413, 31.518755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574981, 0.811777, -0.102057,
		-0.125057, 0.210472, 0.969568,
		0.808553, -0.544720, 0.222536,
		28.297924, 39.028996, 31.585516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271309, 39.871540, 31.826204>,  <27.731937, 39.410301, 31.429741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271309, 39.871540, 31.826204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500685, 39.568722, 31.700953>,  <28.638311, 39.387032, 31.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500685, 39.568722, 31.700953>,  <28.271309, 39.871540, 31.826204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500685, 39.568722, 31.700953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648914, 0.653036, -0.390453,
		0.500076, 0.020706, 0.865734,
		0.573441, -0.757043, -0.313131,
		28.672716, 39.341610, 31.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983555, 40.029243, 32.014389>,  <28.271309, 39.871540, 31.826204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983555, 40.029243, 32.014389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972601, 39.761898, 31.717058>,  <28.966028, 39.601490, 31.538658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972601, 39.761898, 31.717058>,  <28.983555, 40.029243, 32.014389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972601, 39.761898, 31.717058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736114, 0.489612, -0.467350,
		0.676303, -0.559974, 0.478584,
		-0.027383, -0.668363, -0.743331,
		28.964386, 39.561390, 31.494059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676735, 39.973469, 31.870405>,  <28.983555, 40.029243, 32.014389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676735, 39.973469, 31.870405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497858, 39.812664, 31.550806>,  <29.390532, 39.716179, 31.359047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497858, 39.812664, 31.550806>,  <29.676735, 39.973469, 31.870405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497858, 39.812664, 31.550806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742600, 0.331050, -0.582195,
		0.498561, -0.853691, 0.150493,
		-0.447194, -0.402016, -0.799000,
		29.363699, 39.692059, 31.311106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140566, 39.482529, 31.547348>,  <29.676735, 39.973469, 31.870405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140566, 39.482529, 31.547348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903708, 39.637192, 31.264545>,  <29.761593, 39.729992, 31.094864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903708, 39.637192, 31.264545>,  <30.140566, 39.482529, 31.547348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903708, 39.637192, 31.264545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800280, 0.179377, -0.572168,
		-0.094416, -0.904608, -0.415655,
		-0.592147, 0.386662, -0.707004,
		29.726063, 39.753189, 31.052444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601553, 39.431965, 30.927555>,  <30.140566, 39.482529, 31.547348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601553, 39.431965, 30.927555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297905, 39.664867, 30.811131>,  <30.115717, 39.804607, 30.741276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297905, 39.664867, 30.811131>,  <30.601553, 39.431965, 30.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297905, 39.664867, 30.811131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650562, 0.663157, -0.370125,
		-0.022488, -0.470322, -0.882208,
		-0.759121, 0.582254, -0.291060,
		30.070169, 39.839542, 30.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670135, 39.617615, 30.197321>,  <30.601553, 39.431965, 30.927555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670135, 39.617615, 30.197321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445257, 39.909657, 30.352697>,  <30.310329, 40.084881, 30.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445257, 39.909657, 30.352697>,  <30.670135, 39.617615, 30.197321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445257, 39.909657, 30.352697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687591, 0.673636, -0.270988,
		-0.459516, 0.114740, -0.880727,
		-0.562196, 0.730103, 0.388440,
		30.276598, 40.128689, 30.469229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576998, 40.154060, 29.683664>,  <30.670135, 39.617615, 30.197321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576998, 40.154060, 29.683664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521269, 40.319847, 30.043398>,  <30.487831, 40.419319, 30.259239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521269, 40.319847, 30.043398>,  <30.576998, 40.154060, 29.683664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521269, 40.319847, 30.043398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706045, 0.678372, -0.203255,
		-0.694327, 0.606653, -0.387146,
		-0.139323, 0.414468, 0.899336,
		30.479471, 40.444187, 30.313198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565844, 40.806820, 29.651463>,  <30.576998, 40.154060, 29.683664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565844, 40.806820, 29.651463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671608, 40.769474, 30.035414>,  <30.735067, 40.747066, 30.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671608, 40.769474, 30.035414>,  <30.565844, 40.806820, 29.651463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671608, 40.769474, 30.035414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584599, 0.807114, -0.082533,
		-0.767027, 0.582968, 0.267989,
		0.264412, -0.093361, 0.959880,
		30.750931, 40.741467, 30.323378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322147, 41.416451, 30.134283>,  <30.565844, 40.806820, 29.651463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322147, 41.416451, 30.134283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 41.232040, 30.253119>,  <30.857300, 41.121395, 30.324419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 41.232040, 30.253119>,  <30.322147, 41.416451, 30.134283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656618, 41.232040, 30.253119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487420, 0.873000, -0.017135,
		-0.251458, 0.159134, 0.954697,
		0.836177, -0.461029, 0.297088,
		30.907471, 41.093731, 30.342245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711304, 41.690266, 30.748470>,  <30.322147, 41.416451, 30.134283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711304, 41.690266, 30.748470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976748, 41.528419, 30.496784>,  <31.136013, 41.431313, 30.345774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976748, 41.528419, 30.496784>,  <30.711304, 41.690266, 30.748470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976748, 41.528419, 30.496784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642069, 0.739691, 0.201505,
		0.383891, -0.537718, 0.750658,
		0.663608, -0.404618, -0.629213,
		31.175829, 41.407036, 30.308020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336613, 41.502502, 31.151369>,  <30.711304, 41.690266, 30.748470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336613, 41.502502, 31.151369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418898, 41.612064, 30.775570>,  <31.468269, 41.677803, 30.550091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418898, 41.612064, 30.775570>,  <31.336613, 41.502502, 31.151369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418898, 41.612064, 30.775570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669351, 0.660962, 0.339262,
		0.713899, -0.698645, -0.047370,
		0.205714, 0.273906, -0.939498,
		31.480612, 41.694237, 30.493721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037258, 41.472530, 31.030716>,  <31.336613, 41.502502, 31.151369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037258, 41.472530, 31.030716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864128, 41.775764, 30.835587>,  <31.760250, 41.957703, 30.718508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864128, 41.775764, 30.835587>,  <32.037258, 41.472530, 31.030716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864128, 41.775764, 30.835587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742719, 0.606568, 0.283625,
		0.510910, -0.239556, -0.825581,
		-0.432827, 0.758082, -0.487825,
		31.734280, 42.003189, 30.689240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245331, 41.675892, 30.393478>,  <32.037258, 41.472530, 31.030716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245331, 41.675892, 30.393478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094193, 42.000729, 30.571348>,  <32.003510, 42.195633, 30.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094193, 42.000729, 30.571348>,  <32.245331, 41.675892, 30.393478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094193, 42.000729, 30.571348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925806, 0.325839, 0.191604,
		0.010708, 0.484078, -0.874959,
		-0.377847, 0.812094, 0.444673,
		31.980839, 42.244358, 30.704750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686104, 42.231789, 30.202202>,  <32.245331, 41.675892, 30.393478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686104, 42.231789, 30.202202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492702, 42.341011, 30.534868>,  <32.376663, 42.406544, 30.734468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492702, 42.341011, 30.534868>,  <32.686104, 42.231789, 30.202202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492702, 42.341011, 30.534868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839824, 0.412606, 0.352778,
		-0.246822, 0.869021, -0.428814,
		-0.483503, 0.273055, 0.831664,
		32.347652, 42.422928, 30.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944614, 42.897598, 30.490610>,  <32.686104, 42.231789, 30.202202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944614, 42.897598, 30.490610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781017, 42.677364, 30.781698>,  <32.682858, 42.545223, 30.956350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781017, 42.677364, 30.781698>,  <32.944614, 42.897598, 30.490610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781017, 42.677364, 30.781698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655139, 0.377965, 0.654168,
		-0.635230, 0.744308, 0.206127,
		-0.408994, -0.550588, 0.727720,
		32.658318, 42.512188, 31.000013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206982, 42.510189, 30.983351>,  <32.944614, 42.897598, 30.490610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206982, 42.510189, 30.983351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559700, 42.350899, 31.084421>,  <33.771332, 42.255325, 31.145063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559700, 42.350899, 31.084421>,  <33.206982, 42.510189, 30.983351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559700, 42.350899, 31.084421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313277, -0.094096, 0.944988,
		-0.352543, -0.912448, -0.207729,
		0.881799, -0.398226, 0.252676,
		33.824242, 42.231430, 31.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091145, 41.911346, 31.248024>,  <33.206982, 42.510189, 30.983351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091145, 41.911346, 31.248024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446678, 42.005600, 31.405224>,  <33.660000, 42.062153, 31.499544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446678, 42.005600, 31.405224>,  <33.091145, 41.911346, 31.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446678, 42.005600, 31.405224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336729, -0.245813, 0.908950,
		0.310784, -0.940241, -0.139143,
		0.888835, 0.235633, 0.393001,
		33.713329, 42.076290, 31.523125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528244, 41.368351, 31.401871>,  <33.091145, 41.911346, 31.248024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528244, 41.368351, 31.401871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603149, 41.685360, 31.634024>,  <33.648094, 41.875565, 31.773315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603149, 41.685360, 31.634024>,  <33.528244, 41.368351, 31.401871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603149, 41.685360, 31.634024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218463, -0.542437, 0.811194,
		0.957709, -0.278699, 0.071558,
		0.187263, 0.792521, 0.580382,
		33.659328, 41.923115, 31.808138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067879, 41.216526, 31.933119>,  <33.528244, 41.368351, 31.401871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067879, 41.216526, 31.933119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793388, 41.480213, 32.056103>,  <33.628693, 41.638424, 32.129894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793388, 41.480213, 32.056103>,  <34.067879, 41.216526, 31.933119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793388, 41.480213, 32.056103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394596, -0.692461, 0.603979,
		0.611055, 0.293144, 0.735308,
		-0.686226, 0.659214, 0.307458,
		33.587521, 41.677979, 32.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944073, 41.083138, 32.617123>,  <34.067879, 41.216526, 31.933119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944073, 41.083138, 32.617123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616249, 41.297337, 32.535572>,  <33.419556, 41.425858, 32.486641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616249, 41.297337, 32.535572>,  <33.944073, 41.083138, 32.617123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616249, 41.297337, 32.535572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558386, -0.666572, 0.493849,
		0.128557, 0.518580, 0.845310,
		-0.819560, 0.535497, -0.203875,
		33.370380, 41.457985, 32.474411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461590, 41.078850, 33.159798>,  <33.944073, 41.083138, 32.617123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461590, 41.078850, 33.159798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182236, 41.161011, 32.885551>,  <33.014626, 41.210308, 32.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182236, 41.161011, 32.885551>,  <33.461590, 41.078850, 33.159798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182236, 41.161011, 32.885551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611436, -0.669158, 0.422344,
		-0.372036, 0.714169, 0.592919,
		-0.698381, 0.205404, -0.685619,
		32.972721, 41.222633, 32.679867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830116, 41.170471, 33.496174>,  <33.461590, 41.078850, 33.159798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830116, 41.170471, 33.496174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674332, 41.145390, 33.128613>,  <32.580860, 41.130341, 32.908073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674332, 41.145390, 33.128613>,  <32.830116, 41.170471, 33.496174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674332, 41.145390, 33.128613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653028, -0.684763, 0.323504,
		-0.649518, 0.726063, 0.225739,
		-0.389462, -0.062708, -0.918905,
		32.557491, 41.126575, 32.852940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150757, 41.166542, 33.569111>,  <32.830116, 41.170471, 33.496174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150757, 41.166542, 33.569111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213921, 40.993275, 33.214161>,  <32.251820, 40.889317, 33.001190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213921, 40.993275, 33.214161>,  <32.150757, 41.166542, 33.569111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213921, 40.993275, 33.214161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683500, -0.696522, 0.218369,
		-0.712665, 0.572037, -0.406058,
		0.157913, -0.433164, -0.887374,
		32.261295, 40.863327, 32.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494560, 40.803108, 33.341240>,  <32.150757, 41.166542, 33.569111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494560, 40.803108, 33.341240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745958, 40.644680, 33.073475>,  <31.896797, 40.549622, 32.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745958, 40.644680, 33.073475>,  <31.494560, 40.803108, 33.341240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745958, 40.644680, 33.073475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629870, -0.764113, -0.139267,
		-0.456350, 0.509174, -0.729717,
		0.628497, -0.396072, -0.669416,
		31.934507, 40.525860, 32.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077526, 40.593811, 32.710594>,  <31.494560, 40.803108, 33.341240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077526, 40.593811, 32.710594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417727, 40.384907, 32.735538>,  <31.621847, 40.259563, 32.750504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417727, 40.384907, 32.735538>,  <31.077526, 40.593811, 32.710594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417727, 40.384907, 32.735538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502434, -0.841777, -0.197413,
		0.155592, 0.136570, -0.978335,
		0.850501, -0.522264, 0.062357,
		31.672876, 40.228226, 32.754246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870714, 40.040878, 32.214130>,  <31.077526, 40.593811, 32.710594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870714, 40.040878, 32.214130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176582, 39.906635, 32.434185>,  <31.360104, 39.826088, 32.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176582, 39.906635, 32.434185>,  <30.870714, 40.040878, 32.214130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176582, 39.906635, 32.434185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416507, -0.908802, 0.024524,
		0.491730, -0.247887, -0.834718,
		0.764672, -0.335607, 0.550132,
		31.405983, 39.805954, 32.599224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156618, 39.365856, 31.952829>,  <30.870714, 40.040878, 32.214130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156618, 39.365856, 31.952829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258440, 39.376556, 32.339504>,  <31.319532, 39.382977, 32.571510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258440, 39.376556, 32.339504>,  <31.156618, 39.365856, 31.952829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258440, 39.376556, 32.339504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324416, -0.939329, 0.111424,
		0.911020, -0.341973, -0.230430,
		0.254553, 0.026754, 0.966689,
		31.334806, 39.384583, 32.629509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458799, 38.715603, 32.190430>,  <31.156618, 39.365856, 31.952829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458799, 38.715603, 32.190430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350542, 38.892159, 32.532642>,  <31.285587, 38.998093, 32.737968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350542, 38.892159, 32.532642>,  <31.458799, 38.715603, 32.190430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350542, 38.892159, 32.532642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566866, -0.791355, 0.228954,
		0.778084, -0.423005, 0.464383,
		-0.270643, 0.441388, 0.855528,
		31.269348, 39.024574, 32.789299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530949, 38.076214, 32.664646>,  <31.458799, 38.715603, 32.190430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530949, 38.076214, 32.664646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316566, 38.361923, 32.844673>,  <31.187937, 38.533348, 32.952690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316566, 38.361923, 32.844673>,  <31.530949, 38.076214, 32.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316566, 38.361923, 32.844673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383117, -0.680824, 0.624259,
		0.752312, 0.162145, 0.638542,
		-0.535956, 0.714274, 0.450071,
		31.155779, 38.576206, 32.979694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607403, 37.971451, 33.322475>,  <31.530949, 38.076214, 32.664646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607403, 37.971451, 33.322475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262226, 38.173565, 33.320908>,  <31.055120, 38.294834, 33.319965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262226, 38.173565, 33.320908>,  <31.607403, 37.971451, 33.322475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262226, 38.173565, 33.320908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411138, -0.697598, 0.586790,
		0.293765, 0.507976, 0.809730,
		-0.862941, 0.505289, -0.003919,
		31.003344, 38.325153, 33.319733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406353, 38.074070, 34.073017>,  <31.607403, 37.971451, 33.322475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406353, 38.074070, 34.073017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085291, 38.102798, 33.836178>,  <30.892654, 38.120037, 33.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085291, 38.102798, 33.836178>,  <31.406353, 38.074070, 34.073017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085291, 38.102798, 33.836178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523576, -0.560328, 0.641795,
		-0.285677, 0.825151, 0.487354,
		-0.802656, 0.071821, -0.592103,
		30.844494, 38.124344, 33.658546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984514, 38.266144, 34.509426>,  <31.406353, 38.074070, 34.073017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984514, 38.266144, 34.509426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790871, 38.105507, 34.198463>,  <30.674685, 38.009125, 34.011887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790871, 38.105507, 34.198463>,  <30.984514, 38.266144, 34.509426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790871, 38.105507, 34.198463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581223, -0.516541, 0.628780,
		-0.654077, 0.756245, 0.016646,
		-0.484110, -0.401596, -0.777405,
		30.645638, 37.985027, 33.965240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197969, 38.400146, 34.592045>,  <30.984514, 38.266144, 34.509426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197969, 38.400146, 34.592045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245356, 38.077950, 34.359783>,  <30.273787, 37.884632, 34.220428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245356, 38.077950, 34.359783>,  <30.197969, 38.400146, 34.592045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245356, 38.077950, 34.359783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538725, -0.543359, 0.643845,
		-0.834111, 0.236538, -0.498305,
		0.118465, -0.805488, -0.580651,
		30.280895, 37.836304, 34.185589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482059, 38.060089, 34.597336>,  <30.197969, 38.400146, 34.592045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482059, 38.060089, 34.597336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729658, 37.778030, 34.458996>,  <29.878218, 37.608795, 34.375992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729658, 37.778030, 34.458996>,  <29.482059, 38.060089, 34.597336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729658, 37.778030, 34.458996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569690, -0.706244, 0.420324,
		-0.540642, -0.063155, -0.838879,
		0.618999, -0.705146, -0.345847,
		29.915358, 37.566486, 34.355240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038877, 37.424004, 34.341496>,  <29.482059, 38.060089, 34.597336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038877, 37.424004, 34.341496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406973, 37.277351, 34.396263>,  <29.627831, 37.189362, 34.429123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406973, 37.277351, 34.396263>,  <29.038877, 37.424004, 34.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406973, 37.277351, 34.396263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373547, -0.718489, 0.586716,
		-0.116733, -0.591064, -0.798134,
		0.920237, -0.366629, 0.136919,
		29.683044, 37.167362, 34.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032106, 36.726463, 34.126736>,  <29.038877, 37.424004, 34.341496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032106, 36.726463, 34.126736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324564, 36.762352, 34.397255>,  <29.500038, 36.783886, 34.559566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324564, 36.762352, 34.397255>,  <29.032106, 36.726463, 34.126736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324564, 36.762352, 34.397255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339418, -0.812078, 0.474683,
		0.591795, -0.576610, -0.563294,
		0.731146, 0.089723, 0.676296,
		29.543907, 36.789268, 34.600143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226988, 36.072346, 34.122055>,  <29.032106, 36.726463, 34.126736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226988, 36.072346, 34.122055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389143, 36.221527, 34.455894>,  <29.486437, 36.311035, 34.656200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389143, 36.221527, 34.455894>,  <29.226988, 36.072346, 34.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389143, 36.221527, 34.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352943, -0.778339, 0.519249,
		0.843262, -0.505065, -0.183897,
		0.405389, 0.372957, 0.834603,
		29.510759, 36.333416, 34.706276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726061, 35.609295, 34.455490>,  <29.226988, 36.072346, 34.122055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726061, 35.609295, 34.455490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590065, 35.849045, 34.745361>,  <29.508469, 35.992893, 34.919285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590065, 35.849045, 34.745361>,  <29.726061, 35.609295, 34.455490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590065, 35.849045, 34.745361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247960, -0.800447, 0.545712,
		0.907152, 0.005844, 0.420763,
		-0.339987, 0.599375, 0.724678,
		29.488070, 36.028858, 34.962765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807583, 35.222584, 35.040295>,  <29.726061, 35.609295, 34.455490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807583, 35.222584, 35.040295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609850, 35.532650, 35.197651>,  <29.491211, 35.718689, 35.292065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609850, 35.532650, 35.197651>,  <29.807583, 35.222584, 35.040295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609850, 35.532650, 35.197651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211512, -0.546208, 0.810505,
		0.843147, 0.317453, 0.433965,
		-0.494333, 0.775164, 0.393389,
		29.461550, 35.765198, 35.315666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302423, 35.050362, 34.516293>,  <29.807583, 35.222584, 35.040295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302423, 35.050362, 34.516293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336306, 35.299389, 34.205105>,  <29.356636, 35.448807, 34.018394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336306, 35.299389, 34.205105>,  <29.302423, 35.050362, 34.516293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336306, 35.299389, 34.205105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934173, -0.321228, -0.155348,
		-0.346619, -0.713597, -0.608797,
		0.084707, 0.622569, -0.777967,
		29.361717, 35.486160, 33.971714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767887, 34.673458, 34.107128>,  <29.302423, 35.050362, 34.516293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767887, 34.673458, 34.107128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814114, 35.049923, 33.980095>,  <29.841850, 35.275803, 33.903873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814114, 35.049923, 33.980095>,  <29.767887, 34.673458, 34.107128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814114, 35.049923, 33.980095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930263, -0.214636, -0.297561,
		-0.348218, -0.261047, -0.900333,
		0.115566, 0.941162, -0.317583,
		29.848783, 35.332272, 33.884819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823946, 34.532017, 33.430367>,  <29.767887, 34.673458, 34.107128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823946, 34.532017, 33.430367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969793, 34.896767, 33.505768>,  <30.057302, 35.115616, 33.551010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969793, 34.896767, 33.505768>,  <29.823946, 34.532017, 33.430367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969793, 34.896767, 33.505768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868214, -0.259770, -0.422757,
		-0.336535, 0.317807, -0.886421,
		0.364620, 0.911876, 0.188503,
		30.079180, 35.170330, 33.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901878, 35.119545, 32.832630>,  <29.823946, 34.532017, 33.430367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901878, 35.119545, 32.832630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189404, 35.144878, 33.109554>,  <30.361919, 35.160076, 33.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189404, 35.144878, 33.109554>,  <29.901878, 35.119545, 32.832630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189404, 35.144878, 33.109554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693108, 0.011958, -0.720734,
		-0.053923, 0.997921, -0.035299,
		0.718814, 0.063330, 0.692312,
		30.405048, 35.163876, 33.317249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411581, 35.663754, 32.664040>,  <29.901878, 35.119545, 32.832630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411581, 35.663754, 32.664040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590185, 35.397282, 32.902981>,  <30.697348, 35.237396, 33.046345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590185, 35.397282, 32.902981>,  <30.411581, 35.663754, 32.664040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590185, 35.397282, 32.902981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816476, 0.030233, -0.576588,
		0.366054, 0.745175, 0.557422,
		0.446511, -0.666183, 0.597350,
		30.724138, 35.197426, 33.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003681, 35.929874, 32.755875>,  <30.411581, 35.663754, 32.664040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003681, 35.929874, 32.755875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045950, 35.538448, 32.826569>,  <31.071310, 35.303593, 32.868984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045950, 35.538448, 32.826569>,  <31.003681, 35.929874, 32.755875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045950, 35.538448, 32.826569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907133, 0.022053, -0.420266,
		0.407362, 0.204732, 0.890023,
		0.105670, -0.978569, 0.176736,
		31.077650, 35.244877, 32.879589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660631, 35.797840, 33.194088>,  <31.003681, 35.929874, 32.755875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660631, 35.797840, 33.194088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576654, 35.453938, 33.007870>,  <31.526268, 35.247597, 32.896137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576654, 35.453938, 33.007870>,  <31.660631, 35.797840, 33.194088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576654, 35.453938, 33.007870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956657, -0.082346, -0.279334,
		0.201824, -0.504014, 0.839784,
		-0.209941, -0.859761, -0.465549,
		31.513672, 35.196011, 32.868206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247021, 35.273018, 33.381248>,  <31.660631, 35.797840, 33.194088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247021, 35.273018, 33.381248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054840, 35.130054, 33.060890>,  <31.939531, 35.044277, 32.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054840, 35.130054, 33.060890>,  <32.247021, 35.273018, 33.381248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054840, 35.130054, 33.060890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842632, -0.441331, -0.308541,
		-0.243185, -0.823096, 0.513200,
		-0.480450, -0.357407, -0.800893,
		31.910706, 35.022831, 32.820621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966976, 35.456642, 33.509586>,  <32.247021, 35.273018, 33.381248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966976, 35.456642, 33.509586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348309, 35.558289, 33.574810>,  <33.577106, 35.619278, 33.613945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348309, 35.558289, 33.574810>,  <32.966976, 35.456642, 33.509586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348309, 35.558289, 33.574810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028867, -0.460857, 0.887005,
		0.300546, -0.850316, -0.432013,
		0.953330, 0.254115, 0.163055,
		33.634308, 35.634521, 33.623726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432438, 34.842567, 33.651173>,  <32.966976, 35.456642, 33.509586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432438, 34.842567, 33.651173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623199, 35.149834, 33.822044>,  <33.737656, 35.334194, 33.924568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623199, 35.149834, 33.822044>,  <33.432438, 34.842567, 33.651173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623199, 35.149834, 33.822044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012831, -0.492037, 0.870480,
		0.878863, -0.409652, -0.244509,
		0.476901, 0.768170, 0.427177,
		33.766270, 35.380283, 33.950199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888218, 34.585285, 34.237305>,  <33.432438, 34.842567, 33.651173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888218, 34.585285, 34.237305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912952, 34.976795, 34.315464>,  <33.927795, 35.211700, 34.362358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912952, 34.976795, 34.315464>,  <33.888218, 34.585285, 34.237305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912952, 34.976795, 34.315464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476618, -0.200967, 0.855832,
		0.876933, 0.040204, -0.478928,
		0.061841, 0.978773, 0.195397,
		33.931503, 35.270428, 34.374084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514519, 34.671288, 34.561607>,  <33.888218, 34.585285, 34.237305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514519, 34.671288, 34.561607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284397, 34.978024, 34.675434>,  <34.146324, 35.162067, 34.743732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284397, 34.978024, 34.675434>,  <34.514519, 34.671288, 34.561607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284397, 34.978024, 34.675434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319093, -0.109930, 0.941326,
		0.753133, 0.632349, -0.181451,
		-0.575300, 0.766844, 0.284570,
		34.111809, 35.208076, 34.760807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959332, 35.130646, 34.999367>,  <34.514519, 34.671288, 34.561607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959332, 35.130646, 34.999367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574841, 35.178066, 35.098953>,  <34.344147, 35.206520, 35.158707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574841, 35.178066, 35.098953>,  <34.959332, 35.130646, 34.999367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574841, 35.178066, 35.098953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246253, -0.037243, 0.968490,
		0.124088, 0.992249, 0.006605,
		-0.961229, 0.118552, 0.248965,
		34.286472, 35.213631, 35.173641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022007, 35.631630, 35.528255>,  <34.959332, 35.130646, 34.999367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022007, 35.631630, 35.528255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660702, 35.469154, 35.583580>,  <34.443920, 35.371670, 35.616776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660702, 35.469154, 35.583580>,  <35.022007, 35.631630, 35.528255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660702, 35.469154, 35.583580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091833, 0.131879, 0.987003,
		-0.419146, 0.904224, -0.081820,
		-0.903262, -0.406185, 0.138315,
		34.389725, 35.347298, 35.625076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551556, 36.179558, 35.864025>,  <35.022007, 35.631630, 35.528255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551556, 36.179558, 35.864025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382641, 35.825172, 35.940704>,  <34.281292, 35.612541, 35.986713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382641, 35.825172, 35.940704>,  <34.551556, 36.179558, 35.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382641, 35.825172, 35.940704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111619, 0.260691, 0.958948,
		-0.899565, 0.383552, -0.208976,
		-0.422285, -0.885961, 0.191697,
		34.255955, 35.559383, 35.998215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255489, 36.143627, 36.493122>,  <34.551556, 36.179558, 35.864025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255489, 36.143627, 36.493122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233315, 35.747105, 36.445381>,  <34.220009, 35.509193, 36.416737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233315, 35.747105, 36.445381>,  <34.255489, 36.143627, 36.493122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233315, 35.747105, 36.445381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006842, -0.119153, 0.992852,
		-0.998438, 0.055861, -0.000177,
		-0.055441, -0.991303, -0.119349,
		34.216682, 35.449715, 36.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715225, 35.816109, 36.866390>,  <34.255489, 36.143627, 36.493122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715225, 35.816109, 36.866390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988159, 35.529144, 36.810192>,  <34.151920, 35.356968, 36.776474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988159, 35.529144, 36.810192>,  <33.715225, 35.816109, 36.866390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988159, 35.529144, 36.810192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041833, -0.153551, 0.987255,
		-0.729839, -0.679519, -0.074763,
		0.682338, -0.717409, -0.140493,
		34.192860, 35.313923, 36.768044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599289, 35.428978, 37.462154>,  <33.715225, 35.816109, 36.866390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599289, 35.428978, 37.462154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923695, 35.246639, 37.315479>,  <34.118336, 35.137238, 37.227474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923695, 35.246639, 37.315479>,  <33.599289, 35.428978, 37.462154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923695, 35.246639, 37.315479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033088, -0.590049, 0.806689,
		-0.584077, -0.666377, -0.463461,
		0.811024, -0.455833, -0.366683,
		34.167000, 35.109886, 37.205471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436821, 34.744125, 37.570095>,  <33.599289, 35.428978, 37.462154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436821, 34.744125, 37.570095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834316, 34.788666, 37.573635>,  <34.072815, 34.815392, 37.575760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834316, 34.788666, 37.573635>,  <33.436821, 34.744125, 37.570095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834316, 34.788666, 37.573635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063818, -0.630967, 0.773181,
		0.091682, -0.767777, -0.634124,
		0.993742, 0.111355, 0.008850,
		34.132439, 34.822071, 37.576290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775673, 34.075188, 37.644100>,  <33.436821, 34.744125, 37.570095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775673, 34.075188, 37.644100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050648, 34.346867, 37.746952>,  <34.215633, 34.509876, 37.808662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050648, 34.346867, 37.746952>,  <33.775673, 34.075188, 37.644100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050648, 34.346867, 37.746952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215718, -0.529040, 0.820721,
		0.693466, -0.508727, -0.510197,
		0.687438, 0.679200, 0.257130,
		34.256878, 34.550629, 37.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349876, 33.737892, 37.759670>,  <33.775673, 34.075188, 37.644100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349876, 33.737892, 37.759670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414577, 34.083630, 37.950142>,  <34.453400, 34.291073, 38.064423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414577, 34.083630, 37.950142>,  <34.349876, 33.737892, 37.759670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414577, 34.083630, 37.950142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258823, -0.502796, 0.824746,
		0.952285, -0.010159, -0.305040,
		0.161752, 0.864345, 0.476176,
		34.463104, 34.342934, 38.092995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957100, 33.634907, 38.063290>,  <34.349876, 33.737892, 37.759670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957100, 33.634907, 38.063290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772991, 33.932030, 38.257763>,  <34.662525, 34.110306, 38.374447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772991, 33.932030, 38.257763>,  <34.957100, 33.634907, 38.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772991, 33.932030, 38.257763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119647, -0.490748, 0.863048,
		0.879677, 0.455410, 0.137004,
		-0.460275, 0.742811, 0.486188,
		34.634911, 34.154873, 38.403618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451500, 33.710121, 38.620739>,  <34.957100, 33.634907, 38.063290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451500, 33.710121, 38.620739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120026, 33.904308, 38.732166>,  <34.921143, 34.020821, 38.799023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120026, 33.904308, 38.732166>,  <35.451500, 33.710121, 38.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120026, 33.904308, 38.732166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020547, -0.470984, 0.881902,
		0.559336, 0.736544, 0.380323,
		-0.828686, 0.485465, 0.278573,
		34.871418, 34.049950, 38.815739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564110, 33.951920, 39.203064>,  <35.451500, 33.710121, 38.620739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564110, 33.951920, 39.203064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166492, 33.909985, 39.191216>,  <34.927921, 33.884823, 39.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166492, 33.909985, 39.191216>,  <35.564110, 33.951920, 39.203064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166492, 33.909985, 39.191216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033778, -0.555102, 0.831096,
		-0.103573, 0.825149, 0.555339,
		-0.994048, -0.104838, -0.029621,
		34.868279, 33.878532, 39.182327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324844, 33.842167, 39.915154>,  <35.564110, 33.951920, 39.203064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324844, 33.842167, 39.915154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009319, 33.733402, 39.694668>,  <34.820004, 33.668144, 39.562374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009319, 33.733402, 39.694668>,  <35.324844, 33.842167, 39.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009319, 33.733402, 39.694668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300224, -0.612101, 0.731572,
		-0.536321, 0.742562, 0.401200,
		-0.788812, -0.271908, -0.551218,
		34.772675, 33.651829, 39.529301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810024, 33.909283, 40.405819>,  <35.324844, 33.842167, 39.915154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810024, 33.909283, 40.405819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683472, 33.640842, 40.137630>,  <34.607540, 33.479778, 39.976719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683472, 33.640842, 40.137630>,  <34.810024, 33.909283, 40.405819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683472, 33.640842, 40.137630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226775, -0.632781, 0.740379,
		-0.921128, 0.386288, 0.048012,
		-0.316381, -0.671096, -0.670473,
		34.588558, 33.439514, 39.936489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081043, 33.808819, 40.599895>,  <34.810024, 33.909283, 40.405819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081043, 33.808819, 40.599895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218510, 33.494331, 40.394466>,  <34.300987, 33.305637, 40.271210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218510, 33.494331, 40.394466>,  <34.081043, 33.808819, 40.599895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218510, 33.494331, 40.394466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448620, -0.617891, 0.645718,
		-0.825006, 0.008489, -0.565060,
		0.343664, -0.786218, -0.513572,
		34.321609, 33.258465, 40.240395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546841, 33.411674, 40.458302>,  <34.081043, 33.808819, 40.599895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546841, 33.411674, 40.458302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 33.152050, 40.405098>,  <34.026211, 32.996277, 40.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 33.152050, 40.405098>,  <33.546841, 33.411674, 40.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846447, 33.152050, 40.405098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457073, -0.651537, 0.605462,
		-0.479639, -0.392710, -0.784682,
		0.749020, -0.649060, -0.133005,
		34.071152, 32.957333, 40.365196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303150, 32.782257, 40.256874>,  <33.546841, 33.411674, 40.458302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303150, 32.782257, 40.256874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656506, 32.669430, 40.406574>,  <33.868519, 32.601734, 40.496395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656506, 32.669430, 40.406574>,  <33.303150, 32.782257, 40.256874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656506, 32.669430, 40.406574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441155, -0.769996, 0.460965,
		0.158146, -0.572312, -0.804642,
		0.883387, -0.282072, 0.374250,
		33.921520, 32.584808, 40.518848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134529, 32.090153, 40.289547>,  <33.303150, 32.782257, 40.256874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134529, 32.090153, 40.289547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471176, 32.112972, 40.504368>,  <33.673164, 32.126663, 40.633259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471176, 32.112972, 40.504368>,  <33.134529, 32.090153, 40.289547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471176, 32.112972, 40.504368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257837, -0.831321, 0.492368,
		0.474547, -0.552858, -0.684948,
		0.841621, 0.057047, 0.537048,
		33.723663, 32.130085, 40.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254765, 31.415424, 40.517181>,  <33.134529, 32.090153, 40.289547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254765, 31.415424, 40.517181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490562, 31.626850, 40.761517>,  <33.632042, 31.753706, 40.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490562, 31.626850, 40.761517>,  <33.254765, 31.415424, 40.517181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490562, 31.626850, 40.761517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128721, -0.685066, 0.717019,
		0.797453, -0.501304, -0.335803,
		0.589491, 0.528564, 0.610836,
		33.667408, 31.785419, 40.944767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658680, 30.890047, 40.903378>,  <33.254765, 31.415424, 40.517181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658680, 30.890047, 40.903378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713531, 31.229244, 41.108162>,  <33.746445, 31.432762, 41.231033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713531, 31.229244, 41.108162>,  <33.658680, 30.890047, 40.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713531, 31.229244, 41.108162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188266, -0.485110, 0.853946,
		0.972497, -0.213488, 0.093124,
		0.137131, 0.847992, 0.511961,
		33.754669, 31.483643, 41.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136768, 30.751005, 41.398888>,  <33.658680, 30.890047, 40.903378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136768, 30.751005, 41.398888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906704, 31.054958, 41.520061>,  <33.768665, 31.237329, 41.592766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906704, 31.054958, 41.520061>,  <34.136768, 30.751005, 41.398888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906704, 31.054958, 41.520061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127155, -0.448862, 0.884508,
		0.808097, 0.470215, 0.354791,
		-0.575161, 0.759882, 0.302934,
		33.734158, 31.282923, 41.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355423, 30.904173, 42.051628>,  <34.136768, 30.751005, 41.398888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355423, 30.904173, 42.051628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990749, 31.067398, 42.032341>,  <33.771946, 31.165333, 42.020767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990749, 31.067398, 42.032341>,  <34.355423, 30.904173, 42.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990749, 31.067398, 42.032341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169649, -0.266919, 0.948669,
		0.374244, 0.873064, 0.312572,
		-0.911680, 0.408061, -0.048221,
		33.717247, 31.189817, 42.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348263, 31.378721, 42.579037>,  <34.355423, 30.904173, 42.051628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348263, 31.378721, 42.579037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970181, 31.283968, 42.489178>,  <33.743332, 31.227116, 42.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970181, 31.283968, 42.489178>,  <34.348263, 31.378721, 42.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970181, 31.283968, 42.489178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166953, -0.240597, 0.956159,
		-0.280545, 0.941276, 0.187867,
		-0.945210, -0.236881, -0.224647,
		33.686619, 31.212904, 42.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061813, 31.564501, 43.116016>,  <34.348263, 31.378721, 42.579037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061813, 31.564501, 43.116016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780277, 31.334133, 42.949677>,  <33.611355, 31.195911, 42.849873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780277, 31.334133, 42.949677>,  <34.061813, 31.564501, 43.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780277, 31.334133, 42.949677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117287, -0.483152, 0.867645,
		-0.700612, 0.659454, 0.272512,
		-0.703837, -0.575920, -0.415848,
		33.569126, 31.161358, 42.824921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627171, 31.461044, 43.627907>,  <34.061813, 31.564501, 43.116016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627171, 31.461044, 43.627907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518764, 31.143576, 43.410049>,  <33.453720, 30.953094, 43.279335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518764, 31.143576, 43.410049>,  <33.627171, 31.461044, 43.627907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518764, 31.143576, 43.410049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024360, -0.559985, 0.828145,
		-0.962267, 0.237708, 0.132431,
		-0.271016, -0.793670, -0.544645,
		33.437458, 30.905476, 43.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973007, 31.166098, 43.888424>,  <33.627171, 31.461044, 43.627907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973007, 31.166098, 43.888424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155418, 30.865292, 43.698051>,  <33.264866, 30.684807, 43.583828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155418, 30.865292, 43.698051>,  <32.973007, 31.166098, 43.888424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155418, 30.865292, 43.698051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076267, -0.565830, 0.820987,
		-0.886692, -0.338094, -0.315388,
		0.456027, -0.752016, -0.475932,
		33.292225, 30.639687, 43.555271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640724, 30.450518, 44.035721>,  <32.973007, 31.166098, 43.888424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640724, 30.450518, 44.035721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016365, 30.380135, 43.917652>,  <33.241749, 30.337904, 43.846813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016365, 30.380135, 43.917652>,  <32.640724, 30.450518, 44.035721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016365, 30.380135, 43.917652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133929, -0.603623, 0.785940,
		-0.316464, -0.777610, -0.543298,
		0.939103, -0.175958, -0.295169,
		33.298096, 30.327347, 43.829102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712997, 29.777163, 44.125034>,  <32.640724, 30.450518, 44.035721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712997, 29.777163, 44.125034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098907, 29.880861, 44.107124>,  <33.330452, 29.943081, 44.096378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098907, 29.880861, 44.107124>,  <32.712997, 29.777163, 44.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098907, 29.880861, 44.107124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227093, -0.734693, 0.639261,
		0.132829, -0.626910, -0.767685,
		0.964772, 0.259249, -0.044778,
		33.388340, 29.958635, 44.093689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076176, 29.189337, 43.953060>,  <32.712997, 29.777163, 44.125034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076176, 29.189337, 43.953060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370335, 29.423470, 44.089638>,  <33.546829, 29.563950, 44.171585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370335, 29.423470, 44.089638>,  <33.076176, 29.189337, 43.953060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370335, 29.423470, 44.089638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282773, -0.722974, 0.630356,
		0.615822, -0.367008, -0.697186,
		0.735393, 0.585333, 0.341443,
		33.590954, 29.599070, 44.192070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722713, 28.754707, 43.972256>,  <33.076176, 29.189337, 43.953060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722713, 28.754707, 43.972256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774807, 29.054482, 44.231915>,  <33.806065, 29.234346, 44.387711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774807, 29.054482, 44.231915>,  <33.722713, 28.754707, 43.972256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774807, 29.054482, 44.231915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114983, -0.638886, 0.760660,
		0.984793, -0.173705, 0.002967,
		0.130235, 0.749434, 0.649144,
		33.813877, 29.279312, 44.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026638, 28.463364, 44.437321>,  <33.722713, 28.754707, 43.972256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026638, 28.463364, 44.437321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904873, 28.791277, 44.631348>,  <33.831814, 28.988026, 44.747765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904873, 28.791277, 44.631348>,  <34.026638, 28.463364, 44.437321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904873, 28.791277, 44.631348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142420, -0.542679, 0.827778,
		0.941832, 0.182907, 0.281953,
		-0.304416, 0.819784, 0.485062,
		33.813549, 29.037212, 44.776867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556484, 28.636244, 44.946598>,  <34.026638, 28.463364, 44.437321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556484, 28.636244, 44.946598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214397, 28.800177, 45.073490>,  <34.009144, 28.898537, 45.149628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214397, 28.800177, 45.073490>,  <34.556484, 28.636244, 44.946598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214397, 28.800177, 45.073490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037309, -0.659203, 0.751039,
		0.516921, 0.630467, 0.579054,
		-0.855219, 0.409832, 0.317234,
		33.957832, 28.923126, 45.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643940, 28.713619, 45.646576>,  <34.556484, 28.636244, 44.946598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643940, 28.713619, 45.646576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245121, 28.709759, 45.616093>,  <34.005829, 28.707443, 45.597801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245121, 28.709759, 45.616093>,  <34.643940, 28.713619, 45.646576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245121, 28.709759, 45.616093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047157, -0.706246, 0.706394,
		-0.060639, 0.707900, 0.703704,
		-0.997045, -0.009650, -0.076208,
		33.946007, 28.706863, 45.593231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331211, 28.766239, 46.301922>,  <34.643940, 28.713619, 45.646576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331211, 28.766239, 46.301922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006683, 28.638216, 46.106236>,  <33.811966, 28.561403, 45.988823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006683, 28.638216, 46.106236>,  <34.331211, 28.766239, 46.301922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006683, 28.638216, 46.106236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178331, -0.661446, 0.728483,
		-0.556743, 0.678272, 0.479567,
		-0.811317, -0.320056, -0.489213,
		33.763287, 28.542200, 45.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836658, 28.784592, 46.811462>,  <34.331211, 28.766239, 46.301922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836658, 28.784592, 46.811462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708210, 28.547873, 46.515717>,  <33.631142, 28.405840, 46.338268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708210, 28.547873, 46.515717>,  <33.836658, 28.784592, 46.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708210, 28.547873, 46.515717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397869, -0.624168, 0.672395,
		-0.859409, 0.510087, -0.035028,
		-0.321116, -0.591799, -0.739363,
		33.611874, 28.370333, 46.293907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095497, 28.679094, 46.927494>,  <33.836658, 28.784592, 46.811462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095497, 28.679094, 46.927494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242241, 28.377689, 46.709274>,  <33.330288, 28.196846, 46.578342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242241, 28.377689, 46.709274>,  <33.095497, 28.679094, 46.927494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242241, 28.377689, 46.709274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359896, -0.655740, 0.663687,
		-0.857838, -0.047141, -0.511754,
		0.366864, -0.753514, -0.545553,
		33.352299, 28.151634, 46.545609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708076, 28.195780, 46.383080>,  <33.095497, 28.679094, 46.927494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708076, 28.195780, 46.383080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992977, 28.021351, 46.603092>,  <33.163918, 27.916695, 46.735100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992977, 28.021351, 46.603092>,  <32.708076, 28.195780, 46.383080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992977, 28.021351, 46.603092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688756, -0.585259, 0.427887,
		0.135325, -0.683604, -0.717198,
		0.712252, -0.436071, 0.550036,
		33.206654, 27.890530, 46.768105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642792, 27.501400, 46.444626>,  <32.708076, 28.195780, 46.383080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642792, 27.501400, 46.444626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825802, 27.589878, 46.789124>,  <32.935608, 27.642965, 46.995823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825802, 27.589878, 46.789124>,  <32.642792, 27.501400, 46.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825802, 27.589878, 46.789124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662940, -0.560644, 0.496175,
		0.592602, -0.797967, -0.109872,
		0.457530, 0.221196, 0.861242,
		32.963062, 27.656237, 47.047497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990021, 26.974127, 46.768501>,  <32.642792, 27.501400, 46.444626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990021, 26.974127, 46.768501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831085, 27.233305, 47.028435>,  <32.735725, 27.388811, 47.184395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831085, 27.233305, 47.028435>,  <32.990021, 26.974127, 46.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831085, 27.233305, 47.028435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499175, -0.746815, 0.439421,
		0.770030, -0.149783, 0.620177,
		-0.397339, 0.647944, 0.649838,
		32.711884, 27.427689, 47.223385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103306, 26.667477, 47.476257>,  <32.990021, 26.974127, 46.768501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103306, 26.667477, 47.476257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793606, 26.913448, 47.416389>,  <32.607784, 27.061031, 47.380466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793606, 26.913448, 47.416389>,  <33.103306, 26.667477, 47.476257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793606, 26.913448, 47.416389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630581, -0.729407, 0.265204,
		0.053910, 0.299715, 0.952505,
		-0.774249, 0.614928, -0.149672,
		32.561333, 27.097927, 47.371487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493423, 26.502659, 47.101822>,  <33.103306, 26.667477, 47.476257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493423, 26.502659, 47.101822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390244, 26.163345, 46.916836>,  <32.328335, 25.959757, 46.805843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390244, 26.163345, 46.916836>,  <32.493423, 26.502659, 47.101822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390244, 26.163345, 46.916836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921919, 0.359295, -0.144819,
		0.289008, 0.388996, -0.874732,
		-0.257953, -0.848286, -0.462462,
		32.312859, 25.908859, 46.778095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162197, 26.135994, 46.880669>,  <32.493423, 26.502659, 47.101822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162197, 26.135994, 46.880669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412380, 25.838036, 46.787777>,  <33.562492, 25.659260, 46.732044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412380, 25.838036, 46.787777>,  <33.162197, 26.135994, 46.880669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412380, 25.838036, 46.787777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177299, 0.425527, -0.887407,
		0.759845, 0.513865, 0.398219,
		0.625460, -0.744896, -0.232227,
		33.600018, 25.614567, 46.718109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933163, 26.396187, 46.675488>,  <33.162197, 26.135994, 46.880669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933163, 26.396187, 46.675488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825954, 26.055742, 46.494923>,  <33.761631, 25.851475, 46.386581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825954, 26.055742, 46.494923>,  <33.933163, 26.396187, 46.675488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825954, 26.055742, 46.494923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428814, 0.314199, -0.846993,
		0.862720, -0.420582, 0.280758,
		-0.268016, -0.851111, -0.451417,
		33.745548, 25.800409, 46.359497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444805, 25.968994, 46.413235>,  <33.933163, 26.396187, 46.675488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444805, 25.968994, 46.413235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122246, 25.890823, 46.189976>,  <33.928711, 25.843920, 46.056019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122246, 25.890823, 46.189976>,  <34.444805, 25.968994, 46.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122246, 25.890823, 46.189976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514296, 0.234156, -0.825028,
		0.291926, -0.952355, -0.088316,
		-0.806399, -0.195426, -0.558149,
		33.880325, 25.832195, 46.022530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654896, 25.465593, 45.897316>,  <34.444805, 25.968994, 46.413235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654896, 25.465593, 45.897316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361019, 25.717201, 45.795685>,  <34.184692, 25.868166, 45.734707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361019, 25.717201, 45.795685>,  <34.654896, 25.465593, 45.897316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361019, 25.717201, 45.795685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559983, 0.350904, -0.750524,
		-0.382939, -0.693685, -0.610048,
		-0.734695, 0.629021, -0.254077,
		34.140610, 25.905907, 45.719463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522858, 25.403597, 45.213604>,  <34.654896, 25.465593, 45.897316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522858, 25.403597, 45.213604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 25.762726, 45.354221>,  <34.353130, 25.978203, 45.438591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 25.762726, 45.354221>,  <34.522858, 25.403597, 45.213604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416779, 25.762726, 45.354221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433534, 0.436699, -0.788252,
		-0.861231, -0.056636, -0.505049,
		-0.265198, 0.897823, 0.351545,
		34.337219, 26.032072, 45.459686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419537, 25.841564, 44.698109>,  <34.522858, 25.403597, 45.213604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419537, 25.841564, 44.698109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462494, 26.147844, 44.951778>,  <34.488266, 26.331612, 45.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462494, 26.147844, 44.951778>,  <34.419537, 25.841564, 44.698109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462494, 26.147844, 44.951778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365777, 0.562695, -0.741338,
		-0.924486, 0.311578, -0.219646,
		0.107391, 0.765698, 0.634171,
		34.494713, 26.377554, 45.142029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090767, 26.399086, 44.388161>,  <34.419537, 25.841564, 44.698109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090767, 26.399086, 44.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321449, 26.584576, 44.657196>,  <34.459858, 26.695869, 44.818619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321449, 26.584576, 44.657196>,  <34.090767, 26.399086, 44.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321449, 26.584576, 44.657196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333872, 0.617616, -0.712095,
		-0.745617, 0.635225, 0.201356,
		0.576701, 0.463723, 0.672589,
		34.494461, 26.723692, 44.858974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051003, 26.983452, 44.216312>,  <34.090767, 26.399086, 44.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051003, 26.983452, 44.216312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375092, 27.018467, 44.448132>,  <34.569546, 27.039476, 44.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375092, 27.018467, 44.448132>,  <34.051003, 26.983452, 44.216312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375092, 27.018467, 44.448132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428357, 0.586456, -0.687444,
		-0.400055, 0.805237, 0.437663,
		0.810226, 0.087540, 0.579544,
		34.618160, 27.044729, 44.621994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174458, 27.727039, 44.323029>,  <34.051003, 26.983452, 44.216312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174458, 27.727039, 44.323029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495659, 27.490616, 44.353596>,  <34.688377, 27.348763, 44.371937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495659, 27.490616, 44.353596>,  <34.174458, 27.727039, 44.323029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495659, 27.490616, 44.353596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452835, 0.521737, -0.723001,
		0.387465, 0.615176, 0.686607,
		0.803002, -0.591057, 0.076418,
		34.736561, 27.313299, 44.376522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741676, 28.199810, 44.189388>,  <34.174458, 27.727039, 44.323029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741676, 28.199810, 44.189388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907688, 27.837639, 44.153736>,  <35.007298, 27.620337, 44.132347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907688, 27.837639, 44.153736>,  <34.741676, 28.199810, 44.189388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907688, 27.837639, 44.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630051, 0.356704, -0.689781,
		0.656341, 0.230127, 0.718511,
		0.415033, -0.905430, -0.089127,
		35.032200, 27.566010, 44.126999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421787, 28.374413, 44.209774>,  <34.741676, 28.199810, 44.189388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421787, 28.374413, 44.209774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377666, 28.017765, 44.034115>,  <35.351196, 27.803776, 43.928719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377666, 28.017765, 44.034115>,  <35.421787, 28.374413, 44.209774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377666, 28.017765, 44.034115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512558, 0.327526, -0.793732,
		0.851539, -0.312635, 0.420882,
		-0.110299, -0.891620, -0.439145,
		35.344578, 27.750278, 43.902370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168571, 28.121700, 44.053761>,  <35.421787, 28.374413, 44.209774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168571, 28.121700, 44.053761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912907, 27.911373, 43.829266>,  <35.759510, 27.785177, 43.694569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912907, 27.911373, 43.829266>,  <36.168571, 28.121700, 44.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912907, 27.911373, 43.829266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602171, 0.111783, -0.790503,
		0.478399, -0.843219, 0.245186,
		-0.639159, -0.525820, -0.561239,
		35.721157, 27.753628, 43.660892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593399, 27.549471, 43.624783>,  <36.168571, 28.121700, 44.053761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593399, 27.549471, 43.624783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252525, 27.629116, 43.431236>,  <36.048000, 27.676903, 43.315109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252525, 27.629116, 43.431236>,  <36.593399, 27.549471, 43.624783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252525, 27.629116, 43.431236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522036, 0.260996, -0.812009,
		-0.035394, -0.944582, -0.326362,
		-0.852188, 0.199113, -0.483868,
		35.996868, 27.688850, 43.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561016, 27.290976, 42.900360>,  <36.593399, 27.549471, 43.624783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561016, 27.290976, 42.900360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282856, 27.577431, 42.876465>,  <36.115959, 27.749304, 42.862129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282856, 27.577431, 42.876465>,  <36.561016, 27.290976, 42.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282856, 27.577431, 42.876465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334068, 0.248558, -0.909185,
		-0.636254, -0.652202, -0.412085,
		-0.695399, 0.716137, -0.059734,
		36.074238, 27.792273, 42.858543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430382, 27.366505, 42.192108>,  <36.561016, 27.290976, 42.900360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430382, 27.366505, 42.192108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228130, 27.684673, 42.325756>,  <36.106777, 27.875574, 42.405945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228130, 27.684673, 42.325756>,  <36.430382, 27.366505, 42.192108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228130, 27.684673, 42.325756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229793, 0.497453, -0.836502,
		-0.831584, -0.346181, -0.434311,
		-0.505631, 0.795423, 0.334125,
		36.076443, 27.923300, 42.425995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043102, 27.556614, 41.617702>,  <36.430382, 27.366505, 42.192108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043102, 27.556614, 41.617702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083416, 27.875803, 41.855385>,  <36.107605, 28.067316, 41.997993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083416, 27.875803, 41.855385>,  <36.043102, 27.556614, 41.617702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083416, 27.875803, 41.855385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185856, 0.571634, -0.799182,
		-0.977395, 0.190981, -0.090697,
		0.100783, 0.797973, 0.594207,
		36.113651, 28.115194, 42.033646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721687, 28.076466, 41.341400>,  <36.043102, 27.556614, 41.617702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721687, 28.076466, 41.341400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942062, 28.287296, 41.600216>,  <36.074287, 28.413794, 41.755505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942062, 28.287296, 41.600216>,  <35.721687, 28.076466, 41.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942062, 28.287296, 41.600216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146141, 0.702404, -0.696614,
		-0.821650, 0.478350, 0.309955,
		0.550939, 0.527076, 0.647037,
		36.107346, 28.445419, 41.794327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436771, 28.829739, 41.323608>,  <35.721687, 28.076466, 41.341400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436771, 28.829739, 41.323608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802486, 28.828346, 41.485626>,  <36.021915, 28.827511, 41.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802486, 28.828346, 41.485626>,  <35.436771, 28.829739, 41.323608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802486, 28.828346, 41.485626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234259, 0.820314, -0.521736,
		-0.330448, 0.571903, 0.750820,
		0.914291, -0.003480, 0.405044,
		36.076775, 28.827303, 41.607140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524052, 29.438023, 41.497654>,  <35.436771, 28.829739, 41.323608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524052, 29.438023, 41.497654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878593, 29.270555, 41.418571>,  <36.091320, 29.170074, 41.371124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878593, 29.270555, 41.418571>,  <35.524052, 29.438023, 41.497654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878593, 29.270555, 41.418571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263875, 0.807654, -0.527318,
		0.380446, 0.415224, 0.826347,
		0.886358, -0.418669, -0.197702,
		36.144501, 29.144955, 41.359261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040577, 29.908514, 41.712162>,  <35.524052, 29.438023, 41.497654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040577, 29.908514, 41.712162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220310, 29.663109, 41.452408>,  <36.328152, 29.515865, 41.296555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220310, 29.663109, 41.452408>,  <36.040577, 29.908514, 41.712162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220310, 29.663109, 41.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289286, 0.787656, -0.543977,
		0.845230, 0.056569, 0.531401,
		0.449333, -0.613513, -0.649386,
		36.355110, 29.479055, 41.257591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530209, 30.387335, 41.426571>,  <36.040577, 29.908514, 41.712162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530209, 30.387335, 41.426571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573792, 30.064854, 41.193962>,  <36.599941, 29.871365, 41.054398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573792, 30.064854, 41.193962>,  <36.530209, 30.387335, 41.426571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573792, 30.064854, 41.193962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343048, 0.579560, -0.739208,
		0.932977, -0.118947, 0.339713,
		0.108957, -0.806202, -0.581521,
		36.606480, 29.822992, 41.019505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292713, 30.349632, 41.024895>,  <36.530209, 30.387335, 41.426571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292713, 30.349632, 41.024895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022038, 30.144758, 40.813324>,  <36.859634, 30.021833, 40.686382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022038, 30.144758, 40.813324>,  <37.292713, 30.349632, 41.024895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022038, 30.144758, 40.813324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334157, 0.426488, -0.840504,
		0.656075, -0.745501, -0.117447,
		-0.676686, -0.512188, -0.528923,
		36.819031, 29.991102, 40.654648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694878, 30.321253, 40.432304>,  <37.292713, 30.349632, 41.024895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694878, 30.321253, 40.432304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316353, 30.222446, 40.348907>,  <37.089237, 30.163162, 40.298870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316353, 30.222446, 40.348907>,  <37.694878, 30.321253, 40.432304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316353, 30.222446, 40.348907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102065, 0.383675, -0.917811,
		0.306708, -0.889818, -0.337866,
		-0.946316, -0.247016, -0.208495,
		37.032459, 30.148342, 40.286358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702785, 30.153526, 39.787346>,  <37.694878, 30.321253, 40.432304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702785, 30.153526, 39.787346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318115, 30.244253, 39.848972>,  <37.087315, 30.298689, 39.885948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318115, 30.244253, 39.848972>,  <37.702785, 30.153526, 39.787346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318115, 30.244253, 39.848972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046124, 0.420067, -0.906320,
		-0.270287, -0.878691, -0.393506,
		-0.961674, 0.226817, 0.154067,
		37.029613, 30.312298, 39.895191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368191, 29.939512, 39.140362>,  <37.702785, 30.153526, 39.787346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368191, 29.939512, 39.140362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133411, 30.205194, 39.325542>,  <36.992546, 30.364605, 39.436649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133411, 30.205194, 39.325542>,  <37.368191, 29.939512, 39.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133411, 30.205194, 39.325542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114986, 0.497623, -0.859738,
		-0.801419, -0.557853, -0.215703,
		-0.586946, 0.664207, 0.462950,
		36.957329, 30.404457, 39.464428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806793, 29.924198, 38.751278>,  <37.368191, 29.939512, 39.140362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806793, 29.924198, 38.751278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789459, 30.271591, 38.948807>,  <36.779057, 30.480028, 39.067322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789459, 30.271591, 38.948807>,  <36.806793, 29.924198, 38.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789459, 30.271591, 38.948807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379487, 0.442927, -0.812284,
		-0.924182, -0.222601, 0.310382,
		-0.043339, 0.868484, 0.493820,
		36.776459, 30.532137, 39.096954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090687, 30.161280, 38.796688>,  <36.806793, 29.924198, 38.751278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090687, 30.161280, 38.796688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327942, 30.482004, 38.825783>,  <36.470295, 30.674438, 38.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327942, 30.482004, 38.825783>,  <36.090687, 30.161280, 38.796688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327942, 30.482004, 38.825783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497017, 0.435739, -0.750404,
		-0.633377, 0.408937, 0.656965,
		0.593134, 0.801811, 0.072738,
		36.505882, 30.722548, 38.847603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621918, 30.648216, 38.604626>,  <36.090687, 30.161280, 38.796688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621918, 30.648216, 38.604626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971512, 30.842575, 38.601917>,  <36.181271, 30.959190, 38.600292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971512, 30.842575, 38.601917>,  <35.621918, 30.648216, 38.604626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971512, 30.842575, 38.601917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343165, 0.607263, -0.716568,
		-0.344065, 0.628597, 0.697485,
		0.873990, 0.485898, -0.006775,
		36.233707, 30.988344, 38.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397186, 31.343403, 38.548832>,  <35.621918, 30.648216, 38.604626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397186, 31.343403, 38.548832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780636, 31.374481, 38.439281>,  <36.010704, 31.393127, 38.373550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780636, 31.374481, 38.439281>,  <35.397186, 31.343403, 38.548832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780636, 31.374481, 38.439281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255593, 0.658552, -0.707800,
		0.125372, 0.748514, 0.651159,
		0.958621, 0.077694, -0.273879,
		36.068222, 31.397789, 38.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557392, 32.005859, 38.490341>,  <35.397186, 31.343403, 38.548832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557392, 32.005859, 38.490341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817631, 31.810133, 38.258034>,  <35.973774, 31.692698, 38.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817631, 31.810133, 38.258034>,  <35.557392, 32.005859, 38.490341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817631, 31.810133, 38.258034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140986, 0.673635, -0.725492,
		0.746218, 0.553886, 0.369281,
		0.650601, -0.489312, -0.580769,
		36.012810, 31.663340, 38.083801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789436, 32.565300, 38.143326>,  <35.557392, 32.005859, 38.490341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789436, 32.565300, 38.143326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950687, 32.267239, 37.930824>,  <36.047440, 32.088402, 37.803322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950687, 32.267239, 37.930824>,  <35.789436, 32.565300, 38.143326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950687, 32.267239, 37.930824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147947, 0.519813, -0.841371,
		0.903105, 0.417778, 0.099308,
		0.403128, -0.745155, -0.531255,
		36.071625, 32.043694, 37.771446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275669, 32.932434, 37.797668>,  <35.789436, 32.565300, 38.143326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275669, 32.932434, 37.797668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227890, 32.597610, 37.584103>,  <36.199223, 32.396717, 37.455963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227890, 32.597610, 37.584103>,  <36.275669, 32.932434, 37.797668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227890, 32.597610, 37.584103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045197, 0.532625, -0.845144,
		0.991811, -0.125085, -0.025790,
		-0.119451, -0.837057, -0.533916,
		36.192055, 32.346493, 37.423927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850407, 32.803555, 37.443077>,  <36.275669, 32.932434, 37.797668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850407, 32.803555, 37.443077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534504, 32.657253, 37.246098>,  <36.344963, 32.569473, 37.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534504, 32.657253, 37.246098>,  <36.850407, 32.803555, 37.443077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534504, 32.657253, 37.246098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262619, 0.523904, -0.810282,
		0.554365, -0.769251, -0.317700,
		-0.789753, -0.365758, -0.492454,
		36.297577, 32.547527, 37.098362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014183, 32.772961, 36.771473>,  <36.850407, 32.803555, 37.443077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014183, 32.772961, 36.771473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627468, 32.684074, 36.720963>,  <36.395439, 32.630745, 36.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627468, 32.684074, 36.720963>,  <37.014183, 32.772961, 36.771473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627468, 32.684074, 36.720963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041260, 0.351904, -0.935126,
		0.252235, -0.909277, -0.331048,
		-0.966786, -0.222212, -0.126279,
		36.337433, 32.617409, 36.683079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015858, 32.386158, 36.259308>,  <37.014183, 32.772961, 36.771473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015858, 32.386158, 36.259308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659256, 32.561081, 36.306606>,  <36.445293, 32.666035, 36.334988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659256, 32.561081, 36.306606>,  <37.015858, 32.386158, 36.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659256, 32.561081, 36.306606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092712, 0.431628, -0.897275,
		-0.443426, -0.788960, -0.425342,
		-0.891503, 0.437309, 0.118248,
		36.391804, 32.692272, 36.342079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849434, 32.327015, 35.620029>,  <37.015858, 32.386158, 36.259308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849434, 32.327015, 35.620029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623318, 32.614494, 35.781975>,  <36.487648, 32.786983, 35.879143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623318, 32.614494, 35.781975>,  <36.849434, 32.327015, 35.620029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623318, 32.614494, 35.781975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012553, 0.483255, -0.875389,
		-0.824798, -0.499930, -0.264156,
		-0.565289, 0.718703, 0.404864,
		36.453732, 32.830105, 35.903435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469101, 32.576073, 35.114849>,  <36.849434, 32.327015, 35.620029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469101, 32.576073, 35.114849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452038, 32.882507, 35.371376>,  <36.441799, 33.066368, 35.525291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452038, 32.882507, 35.371376>,  <36.469101, 32.576073, 35.114849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452038, 32.882507, 35.371376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103383, 0.641841, -0.759837,
		-0.993726, 0.033885, -0.106583,
		-0.042662, 0.766088, 0.641318,
		36.439240, 33.112335, 35.563770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164356, 33.095684, 34.630451>,  <36.469101, 32.576073, 35.114849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164356, 33.095684, 34.630451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316383, 33.284225, 34.948788>,  <36.407600, 33.397350, 35.139790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316383, 33.284225, 34.948788>,  <36.164356, 33.095684, 34.630451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316383, 33.284225, 34.948788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330188, 0.734583, -0.592759,
		-0.864015, 0.488070, 0.123558,
		0.380072, 0.471355, 0.795845,
		36.430405, 33.425632, 35.187542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943985, 33.804493, 34.675987>,  <36.164356, 33.095684, 34.630451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943985, 33.804493, 34.675987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282108, 33.783470, 34.888660>,  <36.484982, 33.770859, 35.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282108, 33.783470, 34.888660>,  <35.943985, 33.804493, 34.675987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282108, 33.783470, 34.888660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417997, 0.684858, -0.596865,
		-0.332763, 0.726779, 0.600883,
		0.845309, -0.052553, 0.531687,
		36.535702, 33.767704, 35.048168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072227, 34.459347, 34.765697>,  <35.943985, 33.804493, 34.675987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072227, 34.459347, 34.765697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430908, 34.295635, 34.833126>,  <36.646114, 34.197407, 34.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430908, 34.295635, 34.833126>,  <36.072227, 34.459347, 34.765697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430908, 34.295635, 34.833126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432041, 0.726440, -0.534440,
		0.096279, 0.552062, 0.828225,
		0.896700, -0.409282, 0.168573,
		36.699917, 34.172852, 34.883698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515053, 34.984509, 35.017597>,  <36.072227, 34.459347, 34.765697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515053, 34.984509, 35.017597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791019, 34.713379, 34.915951>,  <36.956600, 34.550701, 34.854961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791019, 34.713379, 34.915951>,  <36.515053, 34.984509, 35.017597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791019, 34.713379, 34.915951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546107, 0.717782, -0.431921,
		0.475166, 0.159214, 0.865372,
		0.689916, -0.677820, -0.254118,
		36.997993, 34.510033, 34.839714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227329, 35.334774, 35.147324>,  <36.515053, 34.984509, 35.017597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227329, 35.334774, 35.147324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285450, 35.060593, 34.861935>,  <37.320324, 34.896084, 34.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285450, 35.060593, 34.861935>,  <37.227329, 35.334774, 35.147324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285450, 35.060593, 34.861935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384370, 0.703590, -0.597679,
		0.911672, -0.187393, 0.365701,
		0.145303, -0.685452, -0.713472,
		37.329041, 34.854958, 34.647892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899696, 35.482807, 34.772999>,  <37.227329, 35.334774, 35.147324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899696, 35.482807, 34.772999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674946, 35.269283, 34.520226>,  <37.540096, 35.141171, 34.368561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674946, 35.269283, 34.520226>,  <37.899696, 35.482807, 34.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674946, 35.269283, 34.520226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220031, 0.639959, -0.736233,
		0.797419, -0.552719, -0.242125,
		-0.561880, -0.533811, -0.631931,
		37.506382, 35.109138, 34.330647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288769, 34.987034, 34.259338>,  <37.899696, 35.482807, 34.772999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288769, 34.987034, 34.259338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954227, 35.192642, 34.183128>,  <37.753502, 35.316006, 34.137402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954227, 35.192642, 34.183128>,  <38.288769, 34.987034, 34.259338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954227, 35.192642, 34.183128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461042, 0.471527, -0.751733,
		-0.296569, -0.716553, -0.631347,
		-0.836353, 0.514018, -0.190521,
		37.703320, 35.346848, 34.125973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608414, 34.385330, 34.684334>,  <38.288769, 34.987034, 34.259338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608414, 34.385330, 34.684334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952915, 34.330647, 34.488560>,  <39.159618, 34.297836, 34.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952915, 34.330647, 34.488560>,  <38.608414, 34.385330, 34.684334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952915, 34.330647, 34.488560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269782, -0.693186, 0.668365,
		-0.430642, -0.707674, -0.560129,
		0.861258, -0.136714, -0.489433,
		39.211292, 34.289631, 34.341728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679337, 33.675312, 34.504463>,  <38.608414, 34.385330, 34.684334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679337, 33.675312, 34.504463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011017, 33.893135, 34.554863>,  <39.210026, 34.023830, 34.585102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011017, 33.893135, 34.554863>,  <38.679337, 33.675312, 34.504463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011017, 33.893135, 34.554863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370211, -0.703960, 0.606122,
		0.418769, -0.455953, -0.785328,
		0.829202, 0.544562, 0.125998,
		39.259777, 34.056503, 34.592663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238228, 33.188381, 34.217670>,  <38.679337, 33.675312, 34.504463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238228, 33.188381, 34.217670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393433, 33.480701, 34.442303>,  <39.486557, 33.656094, 34.577080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393433, 33.480701, 34.442303>,  <39.238228, 33.188381, 34.217670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393433, 33.480701, 34.442303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585626, -0.665994, 0.462054,
		0.711679, 0.149592, -0.686393,
		0.388014, 0.730804, 0.561579,
		39.509838, 33.699944, 34.610775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915169, 33.093849, 34.211319>,  <39.238228, 33.188381, 34.217670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915169, 33.093849, 34.211319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872139, 33.288792, 34.557938>,  <39.846321, 33.405758, 34.765911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872139, 33.288792, 34.557938>,  <39.915169, 33.093849, 34.211319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872139, 33.288792, 34.557938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600997, -0.662445, 0.447180,
		0.791979, 0.568900, -0.221637,
		-0.107579, 0.487360, 0.866549,
		39.839867, 33.435001, 34.817902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508724, 32.968666, 34.535660>,  <39.915169, 33.093849, 34.211319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508724, 32.968666, 34.535660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307968, 33.111378, 34.850826>,  <40.187515, 33.197006, 35.039925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307968, 33.111378, 34.850826>,  <40.508724, 32.968666, 34.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307968, 33.111378, 34.850826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510411, -0.613261, 0.602820,
		0.698274, 0.704710, 0.125683,
		-0.501890, 0.356783, 0.787916,
		40.157402, 33.218414, 35.087200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021130, 33.041527, 35.087955>,  <40.508724, 32.968666, 34.535660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021130, 33.041527, 35.087955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668736, 33.013874, 35.275181>,  <40.457298, 32.997284, 35.387516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668736, 33.013874, 35.275181>,  <41.021130, 33.041527, 35.087955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668736, 33.013874, 35.275181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430462, -0.527722, 0.732265,
		0.196388, 0.846600, 0.494673,
		-0.880985, -0.069130, 0.468067,
		40.404442, 32.993134, 35.415600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165401, 32.948826, 35.742077>,  <41.021130, 33.041527, 35.087955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165401, 32.948826, 35.742077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775471, 32.864452, 35.770988>,  <40.541512, 32.813828, 35.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775471, 32.864452, 35.770988>,  <41.165401, 32.948826, 35.742077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775471, 32.864452, 35.770988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181026, -0.559447, 0.808856,
		-0.130176, 0.801578, 0.583547,
		-0.974825, -0.210931, 0.072280,
		40.483025, 32.801174, 35.792671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027500, 33.067547, 36.466999>,  <41.165401, 32.948826, 35.742077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027500, 33.067547, 36.466999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742321, 32.825748, 36.324852>,  <40.571213, 32.680668, 36.239563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742321, 32.825748, 36.324852>,  <41.027500, 33.067547, 36.466999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742321, 32.825748, 36.324852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079160, -0.572931, 0.815772,
		-0.696736, 0.553471, 0.456322,
		-0.712947, -0.604499, -0.355369,
		40.528439, 32.644398, 36.218243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546703, 33.118481, 37.014111>,  <41.027500, 33.067547, 36.466999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546703, 33.118481, 37.014111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491169, 32.794090, 36.786762>,  <40.457848, 32.599457, 36.650352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491169, 32.794090, 36.786762>,  <40.546703, 33.118481, 37.014111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491169, 32.794090, 36.786762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062210, -0.565649, 0.822296,
		-0.988360, 0.149519, 0.028080,
		-0.138833, -0.810977, -0.568367,
		40.449520, 32.550797, 36.616253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940525, 32.787430, 37.198738>,  <40.546703, 33.118481, 37.014111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940525, 32.787430, 37.198738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119213, 32.493256, 36.994942>,  <40.226425, 32.316753, 36.872665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119213, 32.493256, 36.994942>,  <39.940525, 32.787430, 37.198738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119213, 32.493256, 36.994942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097256, -0.606011, 0.789489,
		-0.889372, -0.303131, -0.342243,
		0.446721, -0.735434, -0.509487,
		40.253231, 32.272625, 36.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483074, 32.280281, 37.240200>,  <39.940525, 32.787430, 37.198738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483074, 32.280281, 37.240200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843430, 32.120800, 37.171566>,  <40.059643, 32.025112, 37.130386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843430, 32.120800, 37.171566>,  <39.483074, 32.280281, 37.240200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843430, 32.120800, 37.171566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143409, -0.646512, 0.749303,
		-0.409684, -0.650429, -0.639611,
		0.900885, -0.398703, -0.171589,
		40.113693, 32.001190, 37.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304871, 31.665943, 37.240017>,  <39.483074, 32.280281, 37.240200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304871, 31.665943, 37.240017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699883, 31.646776, 37.300011>,  <39.936890, 31.635275, 37.336006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699883, 31.646776, 37.300011>,  <39.304871, 31.665943, 37.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699883, 31.646776, 37.300011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137912, -0.722832, 0.677122,
		0.075963, -0.689360, -0.720425,
		0.987527, -0.047919, 0.149980,
		39.996140, 31.632401, 37.345005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545685, 30.996208, 37.019077>,  <39.304871, 31.665943, 37.240017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545685, 30.996208, 37.019077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812119, 31.138311, 37.281414>,  <39.971977, 31.223574, 37.438816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812119, 31.138311, 37.281414>,  <39.545685, 30.996208, 37.019077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812119, 31.138311, 37.281414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328865, -0.649330, 0.685725,
		0.669467, -0.672432, -0.315674,
		0.666080, 0.355256, 0.655844,
		40.011944, 31.244888, 37.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766781, 30.437325, 37.289207>,  <39.545685, 30.996208, 37.019077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766781, 30.437325, 37.289207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891075, 30.710785, 37.553349>,  <39.965652, 30.874861, 37.711834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891075, 30.710785, 37.553349>,  <39.766781, 30.437325, 37.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891075, 30.710785, 37.553349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281846, -0.597226, 0.750922,
		0.907749, -0.419454, 0.007106,
		0.310734, 0.683651, 0.660353,
		39.984295, 30.915880, 37.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184296, 30.095406, 37.785385>,  <39.766781, 30.437325, 37.289207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184296, 30.095406, 37.785385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033089, 30.409456, 37.981621>,  <39.942364, 30.597887, 38.099361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033089, 30.409456, 37.981621>,  <40.184296, 30.095406, 37.785385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033089, 30.409456, 37.981621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284055, -0.602710, 0.745690,
		0.881143, 0.142533, 0.450857,
		-0.378021, 0.785127, 0.490587,
		39.919682, 30.644995, 38.128796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490177, 29.983212, 38.445366>,  <40.184296, 30.095406, 37.785385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490177, 29.983212, 38.445366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195007, 30.246578, 38.504623>,  <40.017906, 30.404598, 38.540176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195007, 30.246578, 38.504623>,  <40.490177, 29.983212, 38.445366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195007, 30.246578, 38.504623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265650, -0.485172, 0.833089,
		0.620396, 0.575406, 0.532931,
		-0.737928, 0.658419, 0.148143,
		39.973629, 30.444103, 38.549065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441071, 30.180922, 39.171074>,  <40.490177, 29.983212, 38.445366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441071, 30.180922, 39.171074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077946, 30.295322, 39.048389>,  <39.860069, 30.363964, 38.974777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077946, 30.295322, 39.048389>,  <40.441071, 30.180922, 39.171074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077946, 30.295322, 39.048389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410687, -0.458234, 0.788262,
		0.084899, 0.841560, 0.533450,
		-0.907815, 0.286003, -0.306714,
		39.805603, 30.381123, 38.956375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121464, 30.510658, 39.763424>,  <40.441071, 30.180922, 39.171074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121464, 30.510658, 39.763424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831573, 30.390574, 39.515343>,  <39.657639, 30.318523, 39.366493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831573, 30.390574, 39.515343>,  <40.121464, 30.510658, 39.763424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831573, 30.390574, 39.515343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531738, -0.328766, 0.780492,
		-0.438214, 0.895425, 0.078631,
		-0.724723, -0.300212, -0.620201,
		39.614155, 30.300510, 39.329281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516674, 30.647926, 40.196579>,  <40.121464, 30.510658, 39.763424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516674, 30.647926, 40.196579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408283, 30.392576, 39.908398>,  <39.343246, 30.239367, 39.735489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408283, 30.392576, 39.908398>,  <39.516674, 30.647926, 40.196579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408283, 30.392576, 39.908398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598865, -0.474161, 0.645394,
		-0.753612, 0.606340, -0.253813,
		-0.270980, -0.638376, -0.720449,
		39.326988, 30.201063, 39.692265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799213, 30.466534, 40.352749>,  <39.516674, 30.647926, 40.196579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799213, 30.466534, 40.352749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932213, 30.165867, 40.124908>,  <39.012012, 29.985468, 39.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932213, 30.165867, 40.124908>,  <38.799213, 30.466534, 40.352749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932213, 30.165867, 40.124908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482005, -0.654565, 0.582423,
		-0.810628, 0.080899, -0.579946,
		0.332495, -0.751665, -0.569603,
		39.031960, 29.940367, 39.954029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275433, 29.917721, 40.461563>,  <38.799213, 30.466534, 40.352749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275433, 29.917721, 40.461563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606529, 29.749208, 40.313313>,  <38.805187, 29.648102, 40.224361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606529, 29.749208, 40.313313>,  <38.275433, 29.917721, 40.461563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606529, 29.749208, 40.313313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118266, -0.776680, 0.618694,
		-0.548501, -0.468287, -0.692715,
		0.827744, -0.421279, -0.370627,
		38.854851, 29.622826, 40.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979752, 29.333113, 40.273296>,  <38.275433, 29.917721, 40.461563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979752, 29.333113, 40.273296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373451, 29.266335, 40.296593>,  <38.609669, 29.226267, 40.310570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373451, 29.266335, 40.296593>,  <37.979752, 29.333113, 40.273296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373451, 29.266335, 40.296593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157855, -0.681284, 0.714797,
		-0.079655, -0.712728, -0.696903,
		0.984244, -0.166947, 0.058240,
		38.668724, 29.216251, 40.314064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078392, 28.629290, 40.113213>,  <37.979752, 29.333113, 40.273296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078392, 28.629290, 40.113213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405212, 28.751644, 40.308708>,  <38.601303, 28.825056, 40.426006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405212, 28.751644, 40.308708>,  <38.078392, 28.629290, 40.113213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405212, 28.751644, 40.308708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117991, -0.741025, 0.661029,
		0.564369, -0.597759, -0.569361,
		0.817047, 0.305885, 0.488742,
		38.650326, 28.843410, 40.455330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353802, 27.982071, 40.263847>,  <38.078392, 28.629290, 40.113213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353802, 27.982071, 40.263847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551765, 28.241390, 40.495285>,  <38.670544, 28.396982, 40.634148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551765, 28.241390, 40.495285>,  <38.353802, 27.982071, 40.263847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551765, 28.241390, 40.495285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086237, -0.699220, 0.709686,
		0.864653, -0.301336, -0.401960,
		0.494913, 0.648296, 0.578597,
		38.700241, 28.435879, 40.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791267, 27.585630, 40.594063>,  <38.353802, 27.982071, 40.263847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791267, 27.585630, 40.594063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794323, 27.913473, 40.823215>,  <38.796154, 28.110178, 40.960705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794323, 27.913473, 40.823215>,  <38.791267, 27.585630, 40.594063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794323, 27.913473, 40.823215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060947, -0.572210, 0.817839,
		0.998112, 0.028671, -0.054321,
		0.007635, 0.819606, 0.572877,
		38.796612, 28.159355, 40.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286209, 27.404253, 41.068821>,  <38.791267, 27.585630, 40.594063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286209, 27.404253, 41.068821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040337, 27.686131, 41.210571>,  <38.892815, 27.855257, 41.295620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040337, 27.686131, 41.210571>,  <39.286209, 27.404253, 41.068821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040337, 27.686131, 41.210571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034643, -0.472956, 0.880405,
		0.788018, 0.528888, 0.315128,
		-0.614677, 0.704691, 0.354375,
		38.855934, 27.897537, 41.316883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603458, 27.615282, 41.769112>,  <39.286209, 27.404253, 41.068821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603458, 27.615282, 41.769112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212799, 27.700836, 41.760979>,  <38.978405, 27.752169, 41.756100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212799, 27.700836, 41.760979>,  <39.603458, 27.615282, 41.769112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212799, 27.700836, 41.760979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123427, -0.481093, 0.867938,
		0.175857, 0.850179, 0.496257,
		-0.976647, 0.213884, -0.020331,
		38.919804, 27.765001, 41.754879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474113, 27.811571, 42.375401>,  <39.603458, 27.615282, 41.769112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474113, 27.811571, 42.375401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095112, 27.742096, 42.268017>,  <38.867710, 27.700411, 42.203587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095112, 27.742096, 42.268017>,  <39.474113, 27.811571, 42.375401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095112, 27.742096, 42.268017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185605, -0.384912, 0.904098,
		-0.260366, 0.906463, 0.332467,
		-0.947502, -0.173689, -0.268462,
		38.810860, 27.689989, 42.187477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076149, 28.047703, 42.951263>,  <39.474113, 27.811571, 42.375401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076149, 28.047703, 42.951263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805508, 27.838583, 42.743843>,  <38.643124, 27.713112, 42.619392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805508, 27.838583, 42.743843>,  <39.076149, 28.047703, 42.951263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805508, 27.838583, 42.743843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379321, -0.356125, 0.853985,
		-0.631129, 0.774504, 0.042647,
		-0.676603, -0.522798, -0.518547,
		38.602528, 27.681744, 42.588280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512711, 28.219439, 43.224678>,  <39.076149, 28.047703, 42.951263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512711, 28.219439, 43.224678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470097, 27.858334, 43.057980>,  <38.444530, 27.641670, 42.957962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470097, 27.858334, 43.057980>,  <38.512711, 28.219439, 43.224678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470097, 27.858334, 43.057980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373181, -0.352186, 0.858313,
		-0.921622, 0.246956, -0.299374,
		-0.106530, -0.902761, -0.416742,
		38.438137, 27.587505, 42.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870506, 28.007948, 43.512966>,  <38.512711, 28.219439, 43.224678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870506, 28.007948, 43.512966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043137, 27.670006, 43.386497>,  <38.146713, 27.467241, 43.310616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043137, 27.670006, 43.386497>,  <37.870506, 28.007948, 43.512966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043137, 27.670006, 43.386497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181105, -0.424507, 0.887127,
		-0.883711, -0.325599, -0.336213,
		0.431573, -0.844855, -0.316174,
		38.172607, 27.416550, 43.291645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423080, 27.562010, 43.657818>,  <37.870506, 28.007948, 43.512966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423080, 27.562010, 43.657818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760132, 27.347528, 43.637943>,  <37.962360, 27.218840, 43.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760132, 27.347528, 43.637943>,  <37.423080, 27.562010, 43.657818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760132, 27.347528, 43.637943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274920, -0.507690, 0.816499,
		-0.463029, -0.674346, -0.575206,
		0.842628, -0.536198, -0.049684,
		38.012920, 27.186668, 43.623035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221916, 26.913422, 44.034328>,  <37.423080, 27.562010, 43.657818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221916, 26.913422, 44.034328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617008, 26.859665, 44.002499>,  <37.854061, 26.827412, 43.983402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617008, 26.859665, 44.002499>,  <37.221916, 26.913422, 44.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617008, 26.859665, 44.002499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014699, -0.427249, 0.904015,
		-0.155489, -0.894091, -0.420030,
		0.987728, -0.134390, -0.079574,
		37.913326, 26.819347, 43.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346024, 26.154263, 44.210518>,  <37.221916, 26.913422, 44.034328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346024, 26.154263, 44.210518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684776, 26.354374, 44.282639>,  <37.888027, 26.474442, 44.325912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684776, 26.354374, 44.282639>,  <37.346024, 26.154263, 44.210518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684776, 26.354374, 44.282639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064615, -0.239736, 0.968686,
		0.527838, -0.832014, -0.170704,
		0.846884, 0.500279, 0.180302,
		37.938843, 26.504457, 44.336731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794842, 25.667700, 44.640560>,  <37.346024, 26.154263, 44.210518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794842, 25.667700, 44.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939224, 26.034519, 44.708359>,  <38.025852, 26.254612, 44.749039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939224, 26.034519, 44.708359>,  <37.794842, 25.667700, 44.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939224, 26.034519, 44.708359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125938, -0.228021, 0.965477,
		0.924040, -0.327149, -0.197797,
		0.360957, 0.917050, 0.169500,
		38.047512, 26.309633, 44.759209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270184, 25.543510, 45.157345>,  <37.794842, 25.667700, 44.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270184, 25.543510, 45.157345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197254, 25.936762, 45.163185>,  <38.153496, 26.172712, 45.166687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197254, 25.936762, 45.163185>,  <38.270184, 25.543510, 45.157345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197254, 25.936762, 45.163185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060033, -0.003689, 0.998190,
		0.981404, 0.182871, -0.058347,
		-0.182324, 0.983130, 0.014599,
		38.142555, 26.231701, 45.167564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846046, 25.844620, 45.558475>,  <38.270184, 25.543510, 45.157345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846046, 25.844620, 45.558475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547798, 26.110193, 45.581245>,  <38.368847, 26.269537, 45.594906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547798, 26.110193, 45.581245>,  <38.846046, 25.844620, 45.558475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547798, 26.110193, 45.581245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072925, -0.003611, 0.997331,
		0.662365, 0.747784, -0.045725,
		-0.745623, 0.663932, 0.056923,
		38.324112, 26.309372, 45.598324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909733, 26.295158, 46.184406>,  <38.846046, 25.844620, 45.558475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909733, 26.295158, 46.184406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513283, 26.316656, 46.135769>,  <38.275414, 26.329556, 46.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513283, 26.316656, 46.135769>,  <38.909733, 26.295158, 46.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513283, 26.316656, 46.135769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116618, 0.087599, 0.989306,
		0.063823, 0.994705, -0.080554,
		-0.991124, 0.053746, -0.121592,
		38.215946, 26.332781, 46.099293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038124, 26.991787, 46.387970>,  <38.909733, 26.295158, 46.184406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038124, 26.991787, 46.387970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117470, 27.310547, 46.616215>,  <39.165077, 27.501802, 46.753162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117470, 27.310547, 46.616215>,  <39.038124, 26.991787, 46.387970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117470, 27.310547, 46.616215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291831, 0.507756, -0.810567,
		-0.935674, 0.327309, -0.131841,
		0.198363, 0.796902, 0.570613,
		39.176979, 27.549618, 46.787399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608009, 27.578905, 46.172134>,  <39.038124, 26.991787, 46.387970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608009, 27.578905, 46.172134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936138, 27.712631, 46.357735>,  <39.133015, 27.792868, 46.469093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936138, 27.712631, 46.357735>,  <38.608009, 27.578905, 46.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936138, 27.712631, 46.357735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210493, 0.577882, -0.788509,
		-0.531750, 0.744503, 0.403680,
		0.820326, 0.334318, 0.464001,
		39.182236, 27.812927, 46.496933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640781, 28.280197, 45.909966>,  <38.608009, 27.578905, 46.172134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640781, 28.280197, 45.909966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996849, 28.210808, 46.078491>,  <39.210491, 28.169174, 46.179607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996849, 28.210808, 46.078491>,  <38.640781, 28.280197, 45.909966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996849, 28.210808, 46.078491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392427, 0.761749, -0.515499,
		-0.231509, 0.624217, 0.746162,
		0.890171, -0.173471, 0.421311,
		39.263901, 28.158766, 46.204884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940300, 28.884567, 46.195820>,  <38.640781, 28.280197, 45.909966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940300, 28.884567, 46.195820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241329, 28.630836, 46.125095>,  <39.421947, 28.478598, 46.082661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241329, 28.630836, 46.125095>,  <38.940300, 28.884567, 46.195820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241329, 28.630836, 46.125095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402453, 0.655570, -0.638952,
		0.521216, 0.409701, 0.748651,
		0.752573, -0.634329, -0.176808,
		39.467102, 28.440538, 46.072052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562923, 29.285330, 46.257393>,  <38.940300, 28.884567, 46.195820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562923, 29.285330, 46.257393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677483, 28.953890, 46.064976>,  <39.746216, 28.755026, 45.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677483, 28.953890, 46.064976>,  <39.562923, 29.285330, 46.257393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677483, 28.953890, 46.064976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436069, 0.559786, -0.704616,
		0.853125, -0.007970, 0.521645,
		0.286394, -0.828599, -0.481043,
		39.763401, 28.705311, 45.920662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311661, 29.367155, 46.174370>,  <39.562923, 29.285330, 46.257393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311661, 29.367155, 46.174370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191414, 29.099911, 45.902119>,  <40.119267, 28.939564, 45.738766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191414, 29.099911, 45.902119>,  <40.311661, 29.367155, 46.174370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191414, 29.099911, 45.902119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431375, 0.541227, -0.721796,
		0.850616, -0.510588, 0.125507,
		-0.300612, -0.668112, -0.680631,
		40.101231, 28.899477, 45.697929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862995, 29.268040, 45.696873>,  <40.311661, 29.367155, 46.174370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862995, 29.268040, 45.696873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554626, 29.127087, 45.484642>,  <40.369606, 29.042515, 45.357304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554626, 29.127087, 45.484642>,  <40.862995, 29.268040, 45.696873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554626, 29.127087, 45.484642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353320, 0.456503, -0.816560,
		0.529950, -0.816965, -0.227424,
		-0.770920, -0.352382, -0.530573,
		40.323349, 29.021372, 45.325470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040695, 29.307863, 44.948326>,  <40.862995, 29.268040, 45.696873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040695, 29.307863, 44.948326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645264, 29.273827, 44.898575>,  <40.408005, 29.253405, 44.868725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645264, 29.273827, 44.898575>,  <41.040695, 29.307863, 44.948326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645264, 29.273827, 44.898575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028167, 0.706457, -0.707195,
		0.148045, -0.702622, -0.695992,
		-0.988579, -0.085093, -0.124378,
		40.348690, 29.248299, 44.861259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976307, 29.381329, 44.227455>,  <41.040695, 29.307863, 44.948326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976307, 29.381329, 44.227455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604362, 29.440086, 44.362385>,  <40.381195, 29.475342, 44.443344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604362, 29.440086, 44.362385>,  <40.976307, 29.381329, 44.227455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604362, 29.440086, 44.362385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172525, 0.635703, -0.752407,
		-0.324963, -0.757828, -0.565770,
		-0.929857, 0.146896, 0.337324,
		40.325405, 29.484156, 44.463581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563766, 29.317221, 43.670147>,  <40.976307, 29.381329, 44.227455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563766, 29.317221, 43.670147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337021, 29.517345, 43.931942>,  <40.200974, 29.637421, 44.089020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337021, 29.517345, 43.931942>,  <40.563766, 29.317221, 43.670147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337021, 29.517345, 43.931942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197542, 0.688734, -0.697583,
		-0.799779, -0.524722, -0.291583,
		-0.566860, 0.500312, 0.654490,
		40.166962, 29.667439, 44.128288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902042, 29.413517, 43.371529>,  <40.563766, 29.317221, 43.670147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902042, 29.413517, 43.371529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931866, 29.692392, 43.656727>,  <39.949760, 29.859718, 43.827847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931866, 29.692392, 43.656727>,  <39.902042, 29.413517, 43.371529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931866, 29.692392, 43.656727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222013, 0.708651, -0.669720,
		-0.972189, -0.108360, 0.207623,
		0.074561, 0.697189, 0.713000,
		39.954235, 29.901548, 43.870628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319607, 29.878788, 43.322006>,  <39.902042, 29.413517, 43.371529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319607, 29.878788, 43.322006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604599, 30.072168, 43.525433>,  <39.775597, 30.188196, 43.647488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604599, 30.072168, 43.525433>,  <39.319607, 29.878788, 43.322006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604599, 30.072168, 43.525433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066491, 0.675001, -0.734815,
		-0.698530, 0.557360, 0.448783,
		0.712485, 0.483450, 0.508568,
		39.818344, 30.217203, 43.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054245, 30.568693, 43.492714>,  <39.319607, 29.878788, 43.322006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054245, 30.568693, 43.492714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453957, 30.569901, 43.477596>,  <39.693783, 30.570625, 43.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453957, 30.569901, 43.477596>,  <39.054245, 30.568693, 43.492714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453957, 30.569901, 43.477596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029931, 0.674729, -0.737459,
		0.023277, 0.738059, 0.674334,
		0.999281, 0.003018, -0.037796,
		39.753742, 30.570807, 43.466259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291256, 31.322756, 43.423542>,  <39.054245, 30.568693, 43.492714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291256, 31.322756, 43.423542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591549, 31.098503, 43.283772>,  <39.771725, 30.963951, 43.199909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591549, 31.098503, 43.283772>,  <39.291256, 31.322756, 43.423542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591549, 31.098503, 43.283772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088311, 0.609367, -0.787955,
		0.654682, 0.560682, 0.506979,
		0.750728, -0.560631, -0.349428,
		39.816769, 30.930313, 43.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727036, 31.758211, 43.324356>,  <39.291256, 31.322756, 43.423542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727036, 31.758211, 43.324356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852547, 31.462740, 43.085728>,  <39.927853, 31.285458, 42.942551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852547, 31.462740, 43.085728>,  <39.727036, 31.758211, 43.324356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852547, 31.462740, 43.085728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194243, 0.664955, -0.721182,
		0.929417, 0.110407, 0.352129,
		0.313774, -0.738678, -0.596575,
		39.946678, 31.241137, 42.906754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991344, 32.104851, 42.886402>,  <39.727036, 31.758211, 43.324356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991344, 32.104851, 42.886402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085045, 31.751602, 42.723812>,  <40.141266, 31.539652, 42.626259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085045, 31.751602, 42.723812>,  <39.991344, 32.104851, 42.886402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085045, 31.751602, 42.723812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409783, 0.468844, -0.782472,
		0.881593, 0.016725, 0.471714,
		0.234247, -0.883123, -0.406476,
		40.155319, 31.486666, 42.601868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696556, 32.074093, 42.655525>,  <39.991344, 32.104851, 42.886402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696556, 32.074093, 42.655525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514847, 31.812220, 42.413857>,  <40.405823, 31.655096, 42.268856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514847, 31.812220, 42.413857>,  <40.696556, 32.074093, 42.655525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514847, 31.812220, 42.413857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381349, 0.470007, -0.796032,
		0.805114, -0.592017, 0.036150,
		-0.454274, -0.654682, -0.604174,
		40.378563, 31.615814, 42.232605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163715, 31.956007, 42.167038>,  <40.696556, 32.074093, 42.655525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163715, 31.956007, 42.167038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814865, 31.843277, 42.007050>,  <40.605556, 31.775639, 41.911057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814865, 31.843277, 42.007050>,  <41.163715, 31.956007, 42.167038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814865, 31.843277, 42.007050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290669, 0.359149, -0.886862,
		0.393588, -0.889711, -0.231304,
		-0.872124, -0.281825, -0.399968,
		40.553226, 31.758730, 41.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348476, 31.651966, 41.547596>,  <41.163715, 31.956007, 42.167038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348476, 31.651966, 41.547596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955696, 31.710279, 41.499393>,  <40.720028, 31.745268, 41.470470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955696, 31.710279, 41.499393>,  <41.348476, 31.651966, 41.547596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955696, 31.710279, 41.499393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128858, 0.049220, -0.990441,
		-0.138458, -0.988092, -0.067117,
		-0.981950, 0.145783, -0.120509,
		40.661110, 31.754015, 41.463242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081059, 31.299297, 40.936558>,  <41.348476, 31.651966, 41.547596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081059, 31.299297, 40.936558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790169, 31.573605, 40.948273>,  <40.615635, 31.738190, 40.955303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790169, 31.573605, 40.948273>,  <41.081059, 31.299297, 40.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790169, 31.573605, 40.948273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124251, 0.173490, -0.976966,
		-0.675056, -0.706839, -0.211374,
		-0.727229, 0.685770, 0.029290,
		40.571999, 31.779335, 40.957058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752865, 31.149496, 40.379913>,  <41.081059, 31.299297, 40.936558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752865, 31.149496, 40.379913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634602, 31.516169, 40.487457>,  <40.563644, 31.736172, 40.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634602, 31.516169, 40.487457>,  <40.752865, 31.149496, 40.379913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634602, 31.516169, 40.487457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055076, 0.264619, -0.962779,
		-0.953706, -0.299458, -0.027749,
		-0.295655, 0.916680, 0.268862,
		40.545906, 31.791172, 40.568115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370209, 31.350351, 39.801430>,  <40.752865, 31.149496, 40.379913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370209, 31.350351, 39.801430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456356, 31.699574, 39.976421>,  <40.508045, 31.909107, 40.081417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456356, 31.699574, 39.976421>,  <40.370209, 31.350351, 39.801430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456356, 31.699574, 39.976421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116694, 0.421771, -0.899162,
		-0.969535, 0.244705, -0.011043,
		0.215371, 0.873057, 0.437477,
		40.520969, 31.961491, 40.107666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070583, 31.857504, 39.334229>,  <40.370209, 31.350351, 39.801430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070583, 31.857504, 39.334229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326462, 32.044998, 39.577892>,  <40.479988, 32.157494, 39.724091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326462, 32.044998, 39.577892>,  <40.070583, 31.857504, 39.334229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326462, 32.044998, 39.577892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220447, 0.647350, -0.729617,
		-0.736337, 0.601021, 0.310776,
		0.639696, 0.468735, 0.609161,
		40.518372, 32.185619, 39.760639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858292, 32.447937, 39.281670>,  <40.070583, 31.857504, 39.334229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858292, 32.447937, 39.281670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235130, 32.463634, 39.414883>,  <40.461235, 32.473053, 39.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235130, 32.463634, 39.414883>,  <39.858292, 32.447937, 39.281670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235130, 32.463634, 39.414883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201826, 0.726763, -0.656568,
		-0.267804, 0.685766, 0.676761,
		0.942097, 0.039243, 0.333035,
		40.517761, 32.475407, 39.514793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032955, 33.131153, 39.363060>,  <39.858292, 32.447937, 39.281670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032955, 33.131153, 39.363060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385620, 32.947124, 39.321098>,  <40.597221, 32.836708, 39.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385620, 32.947124, 39.321098>,  <40.032955, 33.131153, 39.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385620, 32.947124, 39.321098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243556, 0.634092, -0.733899,
		0.404163, 0.621503, 0.671108,
		0.881665, -0.460068, -0.104906,
		40.650120, 32.809105, 39.289627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506077, 33.637489, 39.265369>,  <40.032955, 33.131153, 39.363060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506077, 33.637489, 39.265369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694790, 33.315506, 39.121441>,  <40.808018, 33.122318, 39.035084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694790, 33.315506, 39.121441>,  <40.506077, 33.637489, 39.265369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694790, 33.315506, 39.121441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328687, 0.539235, -0.775365,
		0.818163, 0.247531, 0.518978,
		0.471778, -0.804955, -0.359822,
		40.836323, 33.074020, 39.013493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186474, 33.904469, 39.113602>,  <40.506077, 33.637489, 39.265369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186474, 33.904469, 39.113602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128357, 33.584351, 38.880905>,  <41.093487, 33.392281, 38.741287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128357, 33.584351, 38.880905>,  <41.186474, 33.904469, 39.113602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128357, 33.584351, 38.880905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330967, 0.514795, -0.790852,
		0.932390, -0.307442, 0.190074,
		-0.145292, -0.800291, -0.581743,
		41.084770, 33.344265, 38.706383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840137, 33.752487, 38.674271>,  <41.186474, 33.904469, 39.113602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840137, 33.752487, 38.674271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546673, 33.563457, 38.478962>,  <41.370594, 33.450039, 38.361774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546673, 33.563457, 38.478962>,  <41.840137, 33.752487, 38.674271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546673, 33.563457, 38.478962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291106, 0.430701, -0.854257,
		0.614002, -0.768875, -0.178419,
		-0.733662, -0.472576, -0.488275,
		41.326572, 33.421684, 38.332481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143208, 33.548958, 38.041782>,  <41.840137, 33.752487, 38.674271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143208, 33.548958, 38.041782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745049, 33.551613, 38.003536>,  <41.506153, 33.553207, 37.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745049, 33.551613, 38.003536>,  <42.143208, 33.548958, 38.041782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745049, 33.551613, 38.003536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078724, 0.625713, -0.776071,
		0.054674, -0.780025, -0.623355,
		-0.995396, 0.006642, -0.095617,
		41.446430, 33.553604, 37.974850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140869, 33.273426, 37.328312>,  <42.143208, 33.548958, 38.041782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140869, 33.273426, 37.328312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781216, 33.420280, 37.423618>,  <41.565422, 33.508392, 37.480801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781216, 33.420280, 37.423618>,  <42.140869, 33.273426, 37.328312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781216, 33.420280, 37.423618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051023, 0.628602, -0.776052,
		-0.434687, -0.685618, -0.583930,
		-0.899135, 0.367134, 0.238263,
		41.511475, 33.530422, 37.495098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736916, 33.483723, 36.655457>,  <42.140869, 33.273426, 37.328312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736916, 33.483723, 36.655457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578499, 33.706779, 36.947262>,  <41.483448, 33.840614, 37.122345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578499, 33.706779, 36.947262>,  <41.736916, 33.483723, 36.655457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578499, 33.706779, 36.947262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052205, 0.806867, -0.588422,
		-0.916749, -0.194953, -0.348662,
		-0.396038, 0.557637, 0.729517,
		41.459686, 33.874069, 37.166119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311272, 33.912174, 36.333698>,  <41.736916, 33.483723, 36.655457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311272, 33.912174, 36.333698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367432, 34.105137, 36.679546>,  <41.401127, 34.220913, 36.887054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367432, 34.105137, 36.679546>,  <41.311272, 33.912174, 36.333698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367432, 34.105137, 36.679546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045678, 0.869187, -0.492370,
		-0.989041, 0.108622, 0.099998,
		0.140399, 0.482406, 0.864623,
		41.409550, 34.249859, 36.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887890, 34.455109, 36.189434>,  <41.311272, 33.912174, 36.333698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887890, 34.455109, 36.189434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137432, 34.564285, 36.482368>,  <41.287155, 34.629791, 36.658127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137432, 34.564285, 36.482368>,  <40.887890, 34.455109, 36.189434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137432, 34.564285, 36.482368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253796, 0.815499, -0.520143,
		-0.739187, 0.510355, 0.439478,
		0.623851, 0.272945, 0.732332,
		41.324589, 34.646168, 36.702068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594471, 35.154552, 36.433620>,  <40.887890, 34.455109, 36.189434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594471, 35.154552, 36.433620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986370, 35.130672, 36.510071>,  <41.221508, 35.116344, 36.555939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986370, 35.130672, 36.510071>,  <40.594471, 35.154552, 36.433620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986370, 35.130672, 36.510071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157252, 0.820291, -0.549904,
		-0.123949, 0.568822, 0.813067,
		0.979749, -0.059697, 0.191123,
		41.280296, 35.112762, 36.567406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759129, 35.814957, 36.674816>,  <40.594471, 35.154552, 36.433620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759129, 35.814957, 36.674816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107510, 35.654236, 36.561684>,  <41.316540, 35.557804, 36.493805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107510, 35.654236, 36.561684>,  <40.759129, 35.814957, 36.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107510, 35.654236, 36.561684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302598, 0.892102, -0.335541,
		0.387133, 0.206658, 0.898566,
		0.870955, -0.401803, -0.282828,
		41.368797, 35.533695, 36.476833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241409, 36.346981, 36.803829>,  <40.759129, 35.814957, 36.674816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241409, 36.346981, 36.803829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452377, 36.119637, 36.551228>,  <41.578960, 35.983231, 36.399666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452377, 36.119637, 36.551228>,  <41.241409, 36.346981, 36.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452377, 36.119637, 36.551228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336302, 0.822242, -0.459151,
		0.780208, 0.029792, 0.624810,
		0.527424, -0.568358, -0.631501,
		41.610603, 35.949131, 36.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867615, 36.779507, 36.658783>,  <41.241409, 36.346981, 36.803829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867615, 36.779507, 36.658783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893032, 36.488201, 36.385849>,  <41.908283, 36.313416, 36.222088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893032, 36.488201, 36.385849>,  <41.867615, 36.779507, 36.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893032, 36.488201, 36.385849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459721, 0.628219, -0.627692,
		0.885787, -0.273800, 0.374720,
		0.063544, -0.728268, -0.682340,
		41.912094, 36.269722, 36.181149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520031, 36.771843, 36.483955>,  <41.867615, 36.779507, 36.658783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520031, 36.771843, 36.483955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335655, 36.602062, 36.172218>,  <42.225029, 36.500195, 35.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335655, 36.602062, 36.172218>,  <42.520031, 36.771843, 36.483955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335655, 36.602062, 36.172218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402659, 0.682563, -0.609896,
		0.790823, -0.594934, -0.143710,
		-0.460939, -0.424454, -0.779342,
		42.197372, 36.474728, 35.938416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081718, 36.834389, 35.920879>,  <42.520031, 36.771843, 36.483955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081718, 36.834389, 35.920879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724525, 36.792290, 35.745834>,  <42.510208, 36.767033, 35.640808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724525, 36.792290, 35.745834>,  <43.081718, 36.834389, 35.920879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724525, 36.792290, 35.745834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280725, 0.629748, -0.724301,
		0.351812, -0.769637, -0.532810,
		-0.892985, -0.105245, -0.437609,
		42.456631, 36.760715, 35.614552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237614, 36.761585, 35.189213>,  <43.081718, 36.834389, 35.920879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237614, 36.761585, 35.189213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858360, 36.885323, 35.218468>,  <42.630810, 36.959564, 35.236023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858360, 36.885323, 35.218468>,  <43.237614, 36.761585, 35.189213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858360, 36.885323, 35.218468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193100, 0.743291, -0.640493,
		-0.252495, -0.593150, -0.764473,
		-0.948134, 0.309341, 0.073140,
		42.573921, 36.978127, 35.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781898, 36.441742, 34.658737>,  <43.237614, 36.761585, 35.189213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781898, 36.441742, 34.658737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041809, 36.351925, 34.368256>,  <43.197754, 36.298035, 34.193966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041809, 36.351925, 34.368256>,  <42.781898, 36.441742, 34.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041809, 36.351925, 34.368256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479213, -0.620585, 0.620668,
		-0.590039, -0.751301, -0.295637,
		0.649776, -0.224545, -0.726203,
		43.236740, 36.284561, 34.150394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079174, 36.073277, 35.008686>,  <42.781898, 36.441742, 34.658737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079174, 36.073277, 35.008686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194931, 35.993603, 34.634182>,  <43.264385, 35.945797, 34.409481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194931, 35.993603, 34.634182>,  <43.079174, 36.073277, 35.008686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194931, 35.993603, 34.634182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460267, -0.828658, 0.318560,
		-0.839289, -0.523117, -0.148131,
		0.289394, -0.199184, -0.936257,
		43.281750, 35.933849, 34.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698067, 35.394123, 34.755730>,  <43.079174, 36.073277, 35.008686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698067, 35.394123, 34.755730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058842, 35.484814, 34.608700>,  <43.275307, 35.539230, 34.520481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058842, 35.484814, 34.608700>,  <42.698067, 35.394123, 34.755730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058842, 35.484814, 34.608700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416007, -0.684704, 0.598430,
		-0.115997, -0.692657, -0.711878,
		0.901933, 0.226730, -0.367574,
		43.329422, 35.552834, 34.498428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129658, 34.797844, 34.593960>,  <42.698067, 35.394123, 34.755730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129658, 34.797844, 34.593960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425556, 35.053360, 34.678555>,  <43.603096, 35.206669, 34.729313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425556, 35.053360, 34.678555>,  <43.129658, 34.797844, 34.593960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425556, 35.053360, 34.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356955, -0.638966, 0.681401,
		0.570401, -0.428573, -0.700691,
		0.739747, 0.638786, 0.211485,
		43.647480, 35.244995, 34.742001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869553, 34.407261, 34.613678>,  <43.129658, 34.797844, 34.593960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869553, 34.407261, 34.613678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862774, 34.721272, 34.861370>,  <43.858707, 34.909676, 35.009987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862774, 34.721272, 34.861370>,  <43.869553, 34.407261, 34.613678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862774, 34.721272, 34.861370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321807, -0.582085, 0.746738,
		0.946654, 0.211931, -0.242760,
		-0.016950, 0.785024, 0.619234,
		43.857689, 34.956779, 35.047142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487770, 34.531872, 35.065681>,  <43.869553, 34.407261, 34.613678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487770, 34.531872, 35.065681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168236, 34.666248, 35.265282>,  <43.976513, 34.746876, 35.385040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168236, 34.666248, 35.265282>,  <44.487770, 34.531872, 35.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168236, 34.666248, 35.265282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204812, -0.628074, 0.750716,
		0.565605, 0.701903, 0.432925,
		-0.798839, 0.335940, 0.499000,
		43.928585, 34.767029, 35.414982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617004, 35.166389, 35.351265>,  <44.487770, 34.531872, 35.065681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617004, 35.166389, 35.351265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940933, 34.981312, 35.495541>,  <45.135292, 34.870266, 35.582108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940933, 34.981312, 35.495541>,  <44.617004, 35.166389, 35.351265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940933, 34.981312, 35.495541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303062, 0.196484, 0.932495,
		-0.502329, -0.864470, 0.018893,
		0.809826, -0.462694, 0.360688,
		45.183880, 34.842503, 35.603748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405853, 34.616581, 35.795486>,  <44.617004, 35.166389, 35.351265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405853, 34.616581, 35.795486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774384, 34.730133, 35.901749>,  <44.995502, 34.798264, 35.965504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774384, 34.730133, 35.901749>,  <44.405853, 34.616581, 35.795486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774384, 34.730133, 35.901749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337274, 0.243678, 0.909322,
		0.193398, -0.927382, 0.320251,
		0.921327, 0.283873, 0.265655,
		45.050781, 34.815296, 35.981445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516846, 34.283512, 36.462109>,  <44.405853, 34.616581, 35.795486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516846, 34.283512, 36.462109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806107, 34.559643, 36.453117>,  <44.979664, 34.725323, 36.447723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806107, 34.559643, 36.453117>,  <44.516846, 34.283512, 36.462109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806107, 34.559643, 36.453117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051185, 0.086020, 0.994978,
		0.688794, -0.718365, 0.097540,
		0.723148, 0.690327, -0.022480,
		45.023052, 34.766743, 36.446373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072628, 34.160458, 37.096039>,  <44.516846, 34.283512, 36.462109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072628, 34.160458, 37.096039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067417, 34.538429, 36.965233>,  <45.064293, 34.765213, 36.886749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067417, 34.538429, 36.965233>,  <45.072628, 34.160458, 37.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067417, 34.538429, 36.965233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106823, 0.323858, 0.940056,
		0.994193, 0.047176, 0.096722,
		-0.013024, 0.944929, -0.327017,
		45.063511, 34.821907, 36.867126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598843, 34.568172, 37.516281>,  <45.072628, 34.160458, 37.096039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598843, 34.568172, 37.516281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333332, 34.820770, 37.355972>,  <45.174026, 34.972328, 37.259789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333332, 34.820770, 37.355972>,  <45.598843, 34.568172, 37.516281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333332, 34.820770, 37.355972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157644, 0.405679, 0.900318,
		0.731130, 0.660789, -0.169729,
		-0.663775, 0.631493, -0.400774,
		45.134201, 35.010220, 37.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767311, 35.158623, 37.812824>,  <45.598843, 34.568172, 37.516281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767311, 35.158623, 37.812824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398739, 35.245571, 37.684002>,  <45.177597, 35.297741, 37.606709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398739, 35.245571, 37.684002>,  <45.767311, 35.158623, 37.812824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398739, 35.245571, 37.684002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184002, 0.485923, 0.854413,
		0.342219, 0.846540, -0.407746,
		-0.921428, 0.217370, -0.322057,
		45.122311, 35.310783, 37.587383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696613, 35.904415, 37.936344>,  <45.767311, 35.158623, 37.812824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696613, 35.904415, 37.936344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319965, 35.773060, 37.906639>,  <45.093979, 35.694244, 37.888817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319965, 35.773060, 37.906639>,  <45.696613, 35.904415, 37.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319965, 35.773060, 37.906639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212691, 0.409196, 0.887311,
		-0.260994, 0.851304, -0.455152,
		-0.941618, -0.328390, -0.074267,
		45.037479, 35.674541, 37.884357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215347, 36.408134, 38.148811>,  <45.696613, 35.904415, 37.936344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215347, 36.408134, 38.148811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023560, 36.058041, 38.174320>,  <44.908485, 35.847984, 38.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023560, 36.058041, 38.174320>,  <45.215347, 36.408134, 38.148811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023560, 36.058041, 38.174320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471254, 0.318102, 0.822636,
		-0.740288, 0.364377, -0.564980,
		-0.479471, -0.875237, 0.063773,
		44.879719, 35.795471, 38.193451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555431, 36.609344, 38.380814>,  <45.215347, 36.408134, 38.148811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555431, 36.609344, 38.380814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605606, 36.221668, 38.465599>,  <44.635712, 35.989063, 38.516468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605606, 36.221668, 38.465599>,  <44.555431, 36.609344, 38.380814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605606, 36.221668, 38.465599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384006, 0.149566, 0.911136,
		-0.914771, -0.195681, -0.353416,
		0.125434, -0.969195, 0.211961,
		44.643238, 35.930908, 38.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892235, 36.344849, 38.651196>,  <44.555431, 36.609344, 38.380814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892235, 36.344849, 38.651196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181786, 36.103870, 38.785694>,  <44.355515, 35.959282, 38.866394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181786, 36.103870, 38.785694>,  <43.892235, 36.344849, 38.651196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181786, 36.103870, 38.785694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418382, 0.004224, 0.908261,
		-0.548601, -0.798147, -0.248996,
		0.723874, -0.602448, 0.336248,
		44.398949, 35.923138, 38.886570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557945, 35.787907, 38.978043>,  <43.892235, 36.344849, 38.651196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557945, 35.787907, 38.978043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925549, 35.843342, 39.125668>,  <44.146111, 35.876602, 39.214241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925549, 35.843342, 39.125668>,  <43.557945, 35.787907, 38.978043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925549, 35.843342, 39.125668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376638, 0.032147, 0.925803,
		0.116447, -0.989827, 0.081744,
		0.919012, 0.138595, 0.369063,
		44.201252, 35.884918, 39.236385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446896, 35.520809, 39.609123>,  <43.557945, 35.787907, 38.978043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446896, 35.520809, 39.609123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792088, 35.718548, 39.650864>,  <43.999203, 35.837189, 39.675907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792088, 35.718548, 39.650864>,  <43.446896, 35.520809, 39.609123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792088, 35.718548, 39.650864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214732, 0.171911, 0.961424,
		0.457336, -0.852097, 0.254507,
		0.862980, 0.494345, 0.104351,
		44.050980, 35.866852, 39.682171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806454, 35.262257, 40.297421>,  <43.446896, 35.520809, 39.609123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806454, 35.262257, 40.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965977, 35.614567, 40.195286>,  <44.061691, 35.825951, 40.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965977, 35.614567, 40.195286>,  <43.806454, 35.262257, 40.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965977, 35.614567, 40.195286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109194, 0.322063, 0.940400,
		0.910513, -0.347153, 0.224614,
		0.398803, 0.880772, -0.255335,
		44.085617, 35.878799, 40.118687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351372, 35.275074, 40.621346>,  <43.806454, 35.262257, 40.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351372, 35.275074, 40.621346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254868, 35.651554, 40.526737>,  <44.196964, 35.877441, 40.469971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254868, 35.651554, 40.526737>,  <44.351372, 35.275074, 40.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254868, 35.651554, 40.526737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020293, 0.238775, 0.970863,
		0.970247, 0.239035, -0.038508,
		-0.241265, 0.941196, -0.236521,
		44.182487, 35.933914, 40.455780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876553, 35.615604, 41.005268>,  <44.351372, 35.275074, 40.621346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876553, 35.615604, 41.005268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564098, 35.845390, 40.907433>,  <44.376625, 35.983261, 40.848732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564098, 35.845390, 40.907433>,  <44.876553, 35.615604, 41.005268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564098, 35.845390, 40.907433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143527, 0.216035, 0.965779,
		0.607642, 0.789509, -0.086302,
		-0.781135, 0.574461, -0.244587,
		44.329758, 36.017727, 40.834057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984127, 36.295521, 41.338684>,  <44.876553, 35.615604, 41.005268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984127, 36.295521, 41.338684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589798, 36.298355, 41.271626>,  <44.353199, 36.300056, 41.231392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589798, 36.298355, 41.271626>,  <44.984127, 36.295521, 41.338684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589798, 36.298355, 41.271626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154617, 0.349743, 0.923999,
		0.065181, 0.936819, -0.343689,
		-0.985822, 0.007087, -0.167645,
		44.294052, 36.300480, 41.221333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809032, 36.793098, 41.707260>,  <44.984127, 36.295521, 41.338684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809032, 36.793098, 41.707260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453400, 36.625702, 41.633068>,  <44.240021, 36.525265, 41.588554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453400, 36.625702, 41.633068>,  <44.809032, 36.793098, 41.707260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453400, 36.625702, 41.633068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317070, 0.270776, 0.908926,
		-0.330152, 0.866919, -0.373433,
		-0.889082, -0.418488, -0.185477,
		44.186676, 36.500156, 41.577427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341633, 37.200539, 42.097584>,  <44.809032, 36.793098, 41.707260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341633, 37.200539, 42.097584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188087, 36.836754, 42.033680>,  <44.095959, 36.618484, 41.995338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188087, 36.836754, 42.033680>,  <44.341633, 37.200539, 42.097584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188087, 36.836754, 42.033680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321916, -0.030351, 0.946281,
		-0.865456, 0.414676, -0.281120,
		-0.383868, -0.909463, -0.159758,
		44.072926, 36.563915, 41.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811619, 37.228386, 42.565765>,  <44.341633, 37.200539, 42.097584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811619, 37.228386, 42.565765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831253, 36.842102, 42.463791>,  <43.843033, 36.610332, 42.402607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831253, 36.842102, 42.463791>,  <43.811619, 37.228386, 42.565765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831253, 36.842102, 42.463791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130623, -0.259257, 0.956934,
		-0.990216, -0.013676, -0.138871,
		0.049090, -0.965712, -0.254934,
		43.845982, 36.552387, 42.387310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324524, 36.949459, 42.896294>,  <43.811619, 37.228386, 42.565765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324524, 36.949459, 42.896294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579571, 36.646885, 42.837986>,  <43.732601, 36.465340, 42.803001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579571, 36.646885, 42.837986>,  <43.324524, 36.949459, 42.896294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579571, 36.646885, 42.837986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120472, -0.284804, 0.950985,
		-0.760873, -0.588807, -0.272726,
		0.637620, -0.756435, -0.145765,
		43.770855, 36.419956, 42.794258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096977, 36.508408, 43.380314>,  <43.324524, 36.949459, 42.896294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096977, 36.508408, 43.380314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443295, 36.332592, 43.284645>,  <43.651085, 36.227100, 43.227242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443295, 36.332592, 43.284645>,  <43.096977, 36.508408, 43.380314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443295, 36.332592, 43.284645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043338, -0.410307, 0.910917,
		-0.498522, -0.799032, -0.336192,
		0.865793, -0.439542, -0.239175,
		43.703033, 36.200729, 43.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092342, 35.784092, 43.499718>,  <43.096977, 36.508408, 43.380314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092342, 35.784092, 43.499718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467319, 35.916550, 43.542686>,  <43.692307, 35.996025, 43.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467319, 35.916550, 43.542686>,  <43.092342, 35.784092, 43.499718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467319, 35.916550, 43.542686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057772, -0.452260, 0.890013,
		0.343301, -0.828134, -0.443101,
		0.937447, 0.331141, 0.107419,
		43.748554, 36.015892, 43.574913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603966, 35.239822, 43.625698>,  <43.092342, 35.784092, 43.499718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603966, 35.239822, 43.625698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748383, 35.576439, 43.786427>,  <43.835033, 35.778408, 43.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748383, 35.576439, 43.786427>,  <43.603966, 35.239822, 43.625698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748383, 35.576439, 43.786427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147322, -0.476945, 0.866499,
		0.920841, -0.253641, -0.296172,
		0.361037, 0.841540, 0.401824,
		43.856693, 35.828899, 43.906975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087147, 34.635891, 43.461784>,  <43.603966, 35.239822, 43.625698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087147, 34.635891, 43.461784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802788, 34.359879, 43.407410>,  <42.632172, 34.194271, 43.374786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802788, 34.359879, 43.407410>,  <43.087147, 34.635891, 43.461784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802788, 34.359879, 43.407410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059432, -0.251535, 0.966022,
		-0.700782, 0.678661, 0.219825,
		-0.710895, -0.690036, -0.135937,
		42.589520, 34.152866, 43.366627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453419, 34.817528, 43.847385>,  <43.087147, 34.635891, 43.461784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453419, 34.817528, 43.847385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511414, 34.422386, 43.825047>,  <42.546211, 34.185299, 43.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511414, 34.422386, 43.825047>,  <42.453419, 34.817528, 43.847385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511414, 34.422386, 43.825047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056333, -0.064592, 0.996320,
		-0.987828, -0.141308, -0.065014,
		0.144988, -0.987856, -0.055846,
		42.554909, 34.126030, 43.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945847, 34.490532, 44.231453>,  <42.453419, 34.817528, 43.847385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945847, 34.490532, 44.231453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268055, 34.253571, 44.225910>,  <42.461380, 34.111393, 44.222584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268055, 34.253571, 44.225910>,  <41.945847, 34.490532, 44.231453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268055, 34.253571, 44.225910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035726, 0.025211, 0.999044,
		-0.591486, -0.805248, 0.041472,
		0.805524, -0.592402, -0.013856,
		42.509712, 34.075851, 44.221752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747276, 34.049488, 44.671997>,  <41.945847, 34.490532, 44.231453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747276, 34.049488, 44.671997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138763, 34.125629, 44.641308>,  <42.373653, 34.171314, 44.622894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138763, 34.125629, 44.641308>,  <41.747276, 34.049488, 44.671997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138763, 34.125629, 44.641308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079990, -0.009519, 0.996750,
		0.189002, -0.981670, -0.024543,
		0.978713, 0.190351, -0.076725,
		42.432377, 34.182735, 44.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060600, 33.565311, 45.082031>,  <41.747276, 34.049488, 44.671997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060600, 33.565311, 45.082031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305027, 33.874592, 45.014198>,  <42.451683, 34.060162, 44.973499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305027, 33.874592, 45.014198>,  <42.060600, 33.565311, 45.082031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305027, 33.874592, 45.014198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354205, -0.075489, 0.932116,
		0.707913, -0.629650, -0.320001,
		0.611063, 0.773202, -0.169586,
		42.488346, 34.106552, 44.963322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919632, 33.431171, 45.084137>,  <42.060600, 33.565311, 45.082031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919632, 33.431171, 45.084137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717216, 33.748272, 45.220058>,  <42.595768, 33.938534, 45.301613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717216, 33.748272, 45.220058>,  <42.919632, 33.431171, 45.084137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717216, 33.748272, 45.220058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208270, -0.270007, 0.940064,
		0.836988, 0.546480, -0.028473,
		-0.506038, 0.792753, 0.339808,
		42.565407, 33.986099, 45.322002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193504, 34.017265, 44.575035>,  <42.919632, 33.431171, 45.084137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193504, 34.017265, 44.575035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941051, 33.758331, 44.404091>,  <42.789581, 33.602970, 44.301525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941051, 33.758331, 44.404091>,  <43.193504, 34.017265, 44.575035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941051, 33.758331, 44.404091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741272, -0.341072, -0.578088,
		0.228453, -0.681639, 0.695109,
		-0.631130, -0.647331, -0.427361,
		42.751713, 33.564133, 44.275883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689846, 33.428356, 44.451355>,  <43.193504, 34.017265, 44.575035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689846, 33.428356, 44.451355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385063, 33.391750, 44.194904>,  <43.202194, 33.369785, 44.041035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385063, 33.391750, 44.194904>,  <43.689846, 33.428356, 44.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385063, 33.391750, 44.194904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645327, -0.190680, -0.739726,
		-0.054552, -0.977377, 0.204350,
		-0.761956, -0.091519, -0.641130,
		43.156475, 33.364296, 44.002567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849060, 32.871490, 44.137951>,  <43.689846, 33.428356, 44.451355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849060, 32.871490, 44.137951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596157, 33.072632, 43.902195>,  <43.444416, 33.193317, 43.760742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596157, 33.072632, 43.902195>,  <43.849060, 32.871490, 44.137951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596157, 33.072632, 43.902195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408386, -0.430166, -0.805095,
		-0.658385, -0.749728, 0.066616,
		-0.632258, 0.502858, -0.589393,
		43.406479, 33.223488, 43.725376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611557, 32.386024, 43.717361>,  <43.849060, 32.871490, 44.137951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611557, 32.386024, 43.717361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545822, 32.735844, 43.534866>,  <43.506382, 32.945736, 43.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545822, 32.735844, 43.534866>,  <43.611557, 32.386024, 43.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545822, 32.735844, 43.534866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425224, -0.354538, -0.832759,
		-0.890045, -0.330854, -0.313618,
		-0.164333, 0.874550, -0.456241,
		43.496521, 32.998207, 43.397995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215073, 32.233574, 43.141445>,  <43.611557, 32.386024, 43.717361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215073, 32.233574, 43.141445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392639, 32.587059, 43.082127>,  <43.499180, 32.799149, 43.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392639, 32.587059, 43.082127>,  <43.215073, 32.233574, 43.141445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392639, 32.587059, 43.082127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391670, -0.340211, -0.854898,
		-0.805935, 0.321422, -0.497149,
		0.443919, 0.883711, -0.148297,
		43.525814, 32.852173, 43.037636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165577, 32.341927, 42.492702>,  <43.215073, 32.233574, 43.141445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165577, 32.341927, 42.492702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452457, 32.610775, 42.566322>,  <43.624584, 32.772083, 42.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452457, 32.610775, 42.566322>,  <43.165577, 32.341927, 42.492702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452457, 32.610775, 42.566322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427883, -0.216268, -0.877579,
		-0.550035, 0.708153, -0.442697,
		0.717201, 0.672121, 0.184052,
		43.667618, 32.812412, 42.621536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208359, 32.915222, 41.996300>,  <43.165577, 32.341927, 42.492702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208359, 32.915222, 41.996300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581413, 32.919907, 42.140549>,  <43.805244, 32.922718, 42.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581413, 32.919907, 42.140549>,  <43.208359, 32.915222, 41.996300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581413, 32.919907, 42.140549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342301, 0.287318, -0.894583,
		-0.114094, 0.957763, 0.263954,
		0.932637, 0.011715, 0.360625,
		43.861206, 32.923420, 42.248737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553989, 33.584259, 41.678909>,  <43.208359, 32.915222, 41.996300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553989, 33.584259, 41.678909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857800, 33.361115, 41.812721>,  <44.040085, 33.227226, 41.893009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857800, 33.361115, 41.812721>,  <43.553989, 33.584259, 41.678909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857800, 33.361115, 41.812721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461895, 0.100426, -0.881230,
		0.458010, 0.823835, 0.333951,
		0.759526, -0.557863, 0.334529,
		44.085659, 33.193756, 41.913078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164948, 33.887047, 41.335011>,  <43.553989, 33.584259, 41.678909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164948, 33.887047, 41.335011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272190, 33.524952, 41.466869>,  <44.336536, 33.307697, 41.545986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272190, 33.524952, 41.466869>,  <44.164948, 33.887047, 41.335011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272190, 33.524952, 41.466869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536963, -0.143686, -0.831279,
		0.799869, 0.399880, 0.447555,
		0.268105, -0.905235, 0.329651,
		44.352623, 33.253380, 41.565765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929764, 33.815727, 41.281681>,  <44.164948, 33.887047, 41.335011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929764, 33.815727, 41.281681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804279, 33.436390, 41.300552>,  <44.728989, 33.208786, 41.311874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804279, 33.436390, 41.300552>,  <44.929764, 33.815727, 41.281681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804279, 33.436390, 41.300552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591459, -0.234041, -0.771623,
		0.742808, -0.214159, 0.634328,
		-0.313709, -0.948346, 0.047181,
		44.710167, 33.151886, 41.314705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551517, 33.408154, 41.419674>,  <44.929764, 33.815727, 41.281681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551517, 33.408154, 41.419674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287113, 33.163414, 41.245911>,  <45.128471, 33.016571, 41.141655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287113, 33.163414, 41.245911>,  <45.551517, 33.408154, 41.419674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287113, 33.163414, 41.245911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694216, -0.278884, -0.663542,
		0.284841, -0.740177, 0.609101,
		-0.661007, -0.611852, -0.434405,
		45.088810, 32.979858, 41.115589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002621, 33.046490, 41.091614>,  <45.551517, 33.408154, 41.419674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002621, 33.046490, 41.091614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638035, 32.939091, 40.966942>,  <45.419285, 32.874649, 40.892139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638035, 32.939091, 40.966942>,  <46.002621, 33.046490, 41.091614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638035, 32.939091, 40.966942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394740, -0.357477, -0.846398,
		0.115841, -0.894492, 0.431815,
		-0.911461, -0.268502, -0.311682,
		45.364597, 32.858540, 40.873436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059902, 32.280685, 40.958458>,  <46.002621, 33.046490, 41.091614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059902, 32.280685, 40.958458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777157, 32.450428, 40.732090>,  <45.607510, 32.552273, 40.596268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777157, 32.450428, 40.732090>,  <46.059902, 32.280685, 40.958458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777157, 32.450428, 40.732090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524788, -0.221823, -0.821823,
		-0.474282, -0.877903, -0.065901,
		-0.706862, 0.424360, -0.565920,
		45.565098, 32.577736, 40.562313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970692, 31.733227, 40.381008>,  <46.059902, 32.280685, 40.958458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970692, 31.733227, 40.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821072, 32.077644, 40.243202>,  <45.731300, 32.284294, 40.160519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821072, 32.077644, 40.243202>,  <45.970692, 31.733227, 40.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821072, 32.077644, 40.243202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462240, -0.148958, -0.874154,
		-0.804004, -0.486225, -0.342291,
		-0.374049, 0.861044, -0.344515,
		45.708858, 32.335957, 40.139847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596188, 31.599865, 39.734383>,  <45.970692, 31.733227, 40.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596188, 31.599865, 39.734383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714520, 31.981745, 39.747238>,  <45.785519, 32.210873, 39.754951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714520, 31.981745, 39.747238>,  <45.596188, 31.599865, 39.734383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714520, 31.981745, 39.747238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420177, -0.099834, -0.901934,
		-0.857868, 0.280320, -0.430677,
		0.295826, 0.954701, 0.032139,
		45.803268, 32.268154, 39.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401867, 31.944313, 39.045990>,  <45.596188, 31.599865, 39.734383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401867, 31.944313, 39.045990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698681, 32.173695, 39.184860>,  <45.876770, 32.311321, 39.268185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698681, 32.173695, 39.184860>,  <45.401867, 31.944313, 39.045990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698681, 32.173695, 39.184860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385459, 0.058722, -0.920854,
		-0.548452, 0.817132, -0.177468,
		0.742038, 0.573452, 0.347177,
		45.921291, 32.345730, 39.289013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444363, 32.470604, 38.596104>,  <45.401867, 31.944313, 39.045990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444363, 32.470604, 38.596104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806080, 32.516335, 38.760632>,  <46.023109, 32.543774, 38.859348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806080, 32.516335, 38.760632>,  <45.444363, 32.470604, 38.596104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806080, 32.516335, 38.760632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288943, 0.545346, -0.786835,
		-0.314265, 0.830378, 0.460120,
		0.904295, 0.114327, 0.411315,
		46.077370, 32.550632, 38.884026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529984, 33.173084, 38.596600>,  <45.444363, 32.470604, 38.596104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529984, 33.173084, 38.596600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896824, 33.014454, 38.612823>,  <46.116928, 32.919277, 38.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896824, 33.014454, 38.612823>,  <45.529984, 33.173084, 38.596600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896824, 33.014454, 38.612823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318111, 0.666714, -0.674017,
		0.240257, 0.631047, 0.737602,
		0.917105, -0.396576, 0.040560,
		46.171955, 32.895481, 38.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951584, 33.679688, 38.611259>,  <45.529984, 33.173084, 38.596600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951584, 33.679688, 38.611259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191170, 33.388443, 38.477940>,  <46.334923, 33.213696, 38.397945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191170, 33.388443, 38.477940>,  <45.951584, 33.679688, 38.611259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191170, 33.388443, 38.477940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387972, 0.627976, -0.674629,
		0.700511, 0.274769, 0.658625,
		0.598968, -0.728113, -0.333301,
		46.370861, 33.170010, 38.377949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582428, 33.972267, 38.603909>,  <45.951584, 33.679688, 38.611259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582428, 33.972267, 38.603909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572060, 33.661537, 38.352238>,  <46.565838, 33.475098, 38.201237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572060, 33.661537, 38.352238>,  <46.582428, 33.972267, 38.603909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572060, 33.661537, 38.352238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399439, 0.568912, -0.718879,
		0.916393, -0.269952, 0.295550,
		-0.025921, -0.776830, -0.629177,
		46.564281, 33.428490, 38.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210575, 34.129604, 38.228901>,  <46.582428, 33.972267, 38.603909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210575, 34.129604, 38.228901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006054, 33.875755, 37.997101>,  <46.883343, 33.723446, 37.858021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006054, 33.875755, 37.997101>,  <47.210575, 34.129604, 38.228901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006054, 33.875755, 37.997101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251409, 0.534355, -0.807005,
		0.821805, -0.558316, -0.113667,
		-0.511303, -0.634624, -0.579502,
		46.852661, 33.685368, 37.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623455, 34.094460, 37.783833>,  <47.210575, 34.129604, 38.228901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623455, 34.094460, 37.783833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284554, 33.969749, 37.611809>,  <47.081211, 33.894924, 37.508595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284554, 33.969749, 37.611809>,  <47.623455, 34.094460, 37.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284554, 33.969749, 37.611809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283724, 0.418829, -0.862603,
		0.449064, -0.852863, -0.266395,
		-0.847256, -0.311781, -0.430059,
		47.030376, 33.876217, 37.482792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.786251, 33.775047, 37.082169>,  <47.623455, 34.094460, 37.783833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.786251, 33.775047, 37.082169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401207, 33.877377, 37.046543>,  <47.170181, 33.938774, 37.025166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401207, 33.877377, 37.046543>,  <47.786251, 33.775047, 37.082169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401207, 33.877377, 37.046543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177885, 0.349013, -0.920080,
		-0.204289, -0.901524, -0.381472,
		-0.962613, 0.255820, -0.089068,
		47.112423, 33.954124, 37.019821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706448, 33.642765, 36.377777>,  <47.786251, 33.775047, 37.082169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706448, 33.642765, 36.377777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384514, 33.851521, 36.490826>,  <47.191353, 33.976772, 36.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384514, 33.851521, 36.490826>,  <47.706448, 33.642765, 36.377777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.384514, 33.851521, 36.490826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054665, 0.539350, -0.840306,
		-0.590976, -0.660858, -0.462617,
		-0.804835, 0.521889, 0.282617,
		47.143063, 34.008087, 36.575611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108528, 33.563286, 35.913235>,  <47.706448, 33.642765, 36.377777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108528, 33.563286, 35.913235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102753, 33.911667, 36.109699>,  <47.099289, 34.120693, 36.227577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102753, 33.911667, 36.109699>,  <47.108528, 33.563286, 35.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102753, 33.911667, 36.109699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160796, 0.486843, -0.858562,
		-0.986882, 0.066584, -0.147072,
		-0.014434, 0.870948, 0.491163,
		47.098423, 34.172951, 36.257050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698303, 33.977116, 35.483055>,  <47.108528, 33.563286, 35.913235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698303, 33.977116, 35.483055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969872, 34.221882, 35.645355>,  <47.132812, 34.368740, 35.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969872, 34.221882, 35.645355>,  <46.698303, 33.977116, 35.483055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969872, 34.221882, 35.645355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172010, 0.404690, -0.898131,
		-0.713781, 0.679549, 0.169496,
		0.678917, 0.611914, 0.405749,
		47.173546, 34.405457, 35.767078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705193, 34.818272, 35.353485>,  <46.698303, 33.977116, 35.483055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705193, 34.818272, 35.353485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079834, 34.688927, 35.407478>,  <47.304619, 34.611320, 35.439873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079834, 34.688927, 35.407478>,  <46.705193, 34.818272, 35.353485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079834, 34.688927, 35.407478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282476, 0.468826, -0.836905,
		0.207340, 0.821973, 0.530444,
		0.936599, -0.323362, 0.134981,
		47.360813, 34.591919, 35.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277142, 35.429352, 35.181446>,  <46.705193, 34.818272, 35.353485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277142, 35.429352, 35.181446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428410, 35.059097, 35.176071>,  <47.519169, 34.836945, 35.172848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428410, 35.059097, 35.176071>,  <47.277142, 35.429352, 35.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428410, 35.059097, 35.176071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525521, 0.226603, -0.820048,
		0.762112, 0.303059, 0.572137,
		0.378171, -0.925638, -0.013433,
		47.541862, 34.781406, 35.172043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.382629, 34.764866, 41.980633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073395, 34.563366, 41.826450>,  <35.887856, 34.442467, 41.733940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073395, 34.563366, 41.826450>,  <36.382629, 34.764866, 41.980633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073395, 34.563366, 41.826450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177796, 0.411230, -0.894024,
		0.608878, -0.759686, -0.228349,
		-0.773082, -0.503752, -0.385458,
		35.841469, 34.412239, 41.710812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652565, 34.498444, 41.373909>,  <36.382629, 34.764866, 41.980633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652565, 34.498444, 41.373909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253502, 34.498611, 41.346565>,  <36.014065, 34.498711, 41.330158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253502, 34.498611, 41.346565>,  <36.652565, 34.498444, 41.373909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253502, 34.498611, 41.346565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059838, 0.488914, -0.870277,
		0.033058, -0.872332, -0.487795,
		-0.997661, 0.000419, -0.068361,
		35.954205, 34.498737, 41.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474270, 34.344814, 40.659168>,  <36.652565, 34.498444, 41.373909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474270, 34.344814, 40.659168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113605, 34.468380, 40.780216>,  <35.897205, 34.542519, 40.852844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113605, 34.468380, 40.780216>,  <36.474270, 34.344814, 40.659168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113605, 34.468380, 40.780216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111609, 0.509846, -0.852995,
		-0.417792, -0.802888, -0.425231,
		-0.901661, 0.308915, 0.302619,
		35.843105, 34.561054, 40.871002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051716, 34.293022, 40.058994>,  <36.474270, 34.344814, 40.659168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051716, 34.293022, 40.058994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874485, 34.556652, 40.302074>,  <35.768147, 34.714832, 40.447922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874485, 34.556652, 40.302074>,  <36.051716, 34.293022, 40.058994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874485, 34.556652, 40.302074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222539, 0.575794, -0.786725,
		-0.868425, -0.483815, -0.108449,
		-0.443073, 0.659078, 0.607702,
		35.741562, 34.754375, 40.484386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418819, 34.535721, 39.675129>,  <36.051716, 34.293022, 40.058994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418819, 34.535721, 39.675129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521496, 34.815777, 39.941639>,  <35.583103, 34.983810, 40.101543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521496, 34.815777, 39.941639>,  <35.418819, 34.535721, 39.675129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521496, 34.815777, 39.941639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240586, 0.713957, -0.657559,
		-0.936071, 0.008493, 0.351709,
		0.256690, 0.700138, 0.666271,
		35.598503, 35.025818, 40.141521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855213, 34.983353, 39.713203>,  <35.418819, 34.535721, 39.675129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855213, 34.983353, 39.713203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150604, 35.220879, 39.840977>,  <35.327839, 35.363392, 39.917641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150604, 35.220879, 39.840977>,  <34.855213, 34.983353, 39.713203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150604, 35.220879, 39.840977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197556, 0.643494, -0.739518,
		-0.644687, 0.483012, 0.592518,
		0.738478, 0.593813, 0.319431,
		35.372147, 35.399021, 39.936806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658173, 35.691265, 39.809631>,  <34.855213, 34.983353, 39.713203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658173, 35.691265, 39.809631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054111, 35.721142, 39.761261>,  <35.291676, 35.739067, 39.732239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054111, 35.721142, 39.761261>,  <34.658173, 35.691265, 39.809631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054111, 35.721142, 39.761261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142131, 0.525470, -0.838857,
		0.000884, 0.847528, 0.530751,
		0.989847, 0.074695, -0.120925,
		35.351067, 35.743549, 39.724983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827263, 36.370525, 39.719540>,  <34.658173, 35.691265, 39.809631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827263, 36.370525, 39.719540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162525, 36.192314, 39.593689>,  <35.363682, 36.085388, 39.518181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162525, 36.192314, 39.593689>,  <34.827263, 36.370525, 39.719540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162525, 36.192314, 39.593689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033814, 0.618180, -0.785309,
		0.544376, 0.647576, 0.533199,
		0.838160, -0.445533, -0.314625,
		35.413975, 36.058655, 39.499302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186546, 36.911449, 39.528622>,  <34.827263, 36.370525, 39.719540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186546, 36.911449, 39.528622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428513, 36.641876, 39.358967>,  <35.573692, 36.480133, 39.257172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428513, 36.641876, 39.358967>,  <35.186546, 36.911449, 39.528622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428513, 36.641876, 39.358967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250825, 0.666796, -0.701762,
		0.755753, 0.318122, 0.572394,
		0.604916, -0.673930, -0.424140,
		35.609989, 36.439697, 39.231724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808270, 37.243687, 39.302273>,  <35.186546, 36.911449, 39.528622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808270, 37.243687, 39.302273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803307, 36.920002, 39.067322>,  <35.800331, 36.725792, 38.926350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803307, 36.920002, 39.067322>,  <35.808270, 37.243687, 39.302273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803307, 36.920002, 39.067322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318824, 0.553565, -0.769362,
		0.947733, -0.196815, 0.251130,
		-0.012405, -0.809215, -0.587381,
		35.799583, 36.677238, 38.891106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464184, 37.190090, 39.020210>,  <35.808270, 37.243687, 39.302273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464184, 37.190090, 39.020210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249645, 36.961369, 38.771896>,  <36.120922, 36.824135, 38.622906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249645, 36.961369, 38.771896>,  <36.464184, 37.190090, 39.020210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249645, 36.961369, 38.771896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386603, 0.487386, -0.782939,
		0.750249, -0.659923, -0.040347,
		-0.536344, -0.571801, -0.620789,
		36.088741, 36.789829, 38.585659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928329, 37.023178, 38.619839>,  <36.464184, 37.190090, 39.020210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928329, 37.023178, 38.619839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615829, 36.924465, 38.390491>,  <36.428329, 36.865238, 38.252884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615829, 36.924465, 38.390491>,  <36.928329, 37.023178, 38.619839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615829, 36.924465, 38.390491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526479, 0.232987, -0.817641,
		0.335370, -0.940645, -0.052091,
		-0.781246, -0.246787, -0.573367,
		36.381454, 36.850430, 38.218483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124874, 36.569912, 37.986355>,  <36.928329, 37.023178, 38.619839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124874, 36.569912, 37.986355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777214, 36.714752, 37.851616>,  <36.568619, 36.801655, 37.770775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777214, 36.714752, 37.851616>,  <37.124874, 36.569912, 37.986355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777214, 36.714752, 37.851616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430192, 0.217572, -0.876126,
		-0.243955, -0.906393, -0.344874,
		-0.869150, 0.362098, -0.336845,
		36.516468, 36.823380, 37.750561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015030, 36.339138, 37.224136>,  <37.124874, 36.569912, 37.986355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015030, 36.339138, 37.224136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782780, 36.659454, 37.282936>,  <36.643429, 36.851643, 37.318214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782780, 36.659454, 37.282936>,  <37.015030, 36.339138, 37.224136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782780, 36.659454, 37.282936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167201, 0.293981, -0.941073,
		-0.796817, -0.521833, -0.304586,
		-0.580626, 0.800790, 0.146998,
		36.608593, 36.899693, 37.327034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529144, 36.361912, 36.725094>,  <37.015030, 36.339138, 37.224136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529144, 36.361912, 36.725094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575668, 36.742256, 36.839874>,  <36.603584, 36.970463, 36.908745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575668, 36.742256, 36.839874>,  <36.529144, 36.361912, 36.725094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575668, 36.742256, 36.839874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317451, 0.238170, -0.917878,
		-0.941115, 0.197851, -0.274149,
		0.116309, 0.950858, 0.286953,
		36.610561, 37.027512, 36.925961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406857, 36.763279, 36.121532>,  <36.529144, 36.361912, 36.725094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406857, 36.763279, 36.121532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554596, 37.062035, 36.342709>,  <36.643242, 37.241287, 36.475414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554596, 37.062035, 36.342709>,  <36.406857, 36.763279, 36.121532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554596, 37.062035, 36.342709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222689, 0.506540, -0.832963,
		-0.902213, 0.430790, 0.020769,
		0.369353, 0.746885, 0.552939,
		36.665401, 37.286098, 36.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070614, 37.384415, 35.823574>,  <36.406857, 36.763279, 36.121532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070614, 37.384415, 35.823574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410645, 37.472595, 36.014896>,  <36.614662, 37.525505, 36.129688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410645, 37.472595, 36.014896>,  <36.070614, 37.384415, 35.823574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410645, 37.472595, 36.014896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434207, 0.220608, -0.873382,
		-0.298056, 0.950123, 0.091812,
		0.850075, 0.220452, 0.478303,
		36.665668, 37.538731, 36.158386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278080, 37.957520, 35.472107>,  <36.070614, 37.384415, 35.823574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278080, 37.957520, 35.472107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602512, 37.828472, 35.667274>,  <36.797173, 37.751041, 35.784374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602512, 37.828472, 35.667274>,  <36.278080, 37.957520, 35.472107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602512, 37.828472, 35.667274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577741, 0.311422, -0.754475,
		0.091462, 0.893829, 0.438981,
		0.811080, -0.322623, 0.487918,
		36.845837, 37.731686, 35.813648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839638, 38.526039, 35.441860>,  <36.278080, 37.957520, 35.472107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839638, 38.526039, 35.441860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026653, 38.178169, 35.505207>,  <37.138863, 37.969448, 35.543213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026653, 38.178169, 35.505207>,  <36.839638, 38.526039, 35.441860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026653, 38.178169, 35.505207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597018, 0.178540, -0.782108,
		0.651903, 0.460212, 0.602683,
		0.467539, -0.869672, 0.158364,
		37.166916, 37.917267, 35.552715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475441, 38.704990, 35.201374>,  <36.839638, 38.526039, 35.441860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475441, 38.704990, 35.201374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465893, 38.306965, 35.239902>,  <37.460163, 38.068150, 35.263020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465893, 38.306965, 35.239902>,  <37.475441, 38.704990, 35.201374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465893, 38.306965, 35.239902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524096, -0.094503, -0.846400,
		0.851324, 0.030277, 0.523765,
		-0.023871, -0.995064, 0.096321,
		37.458733, 38.008446, 35.268799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237206, 38.455734, 35.109970>,  <37.475441, 38.704990, 35.201374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237206, 38.455734, 35.109970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966869, 38.179901, 35.005878>,  <37.804668, 38.014400, 34.943424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966869, 38.179901, 35.005878>,  <38.237206, 38.455734, 35.109970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966869, 38.179901, 35.005878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406183, -0.053844, -0.912204,
		0.615026, -0.722205, 0.316486,
		-0.675839, -0.689580, -0.260232,
		37.764118, 37.973026, 34.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544945, 37.908058, 34.841042>,  <38.237206, 38.455734, 35.109970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544945, 37.908058, 34.841042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182369, 37.890625, 34.673012>,  <37.964825, 37.880165, 34.572193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182369, 37.890625, 34.673012>,  <38.544945, 37.908058, 34.841042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182369, 37.890625, 34.673012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422318, -0.100985, -0.900805,
		-0.003162, -0.993933, 0.109943,
		-0.906442, -0.043582, -0.420075,
		37.910435, 37.877552, 34.546989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033401, 38.469299, 35.019363>,  <38.544945, 37.908058, 34.841042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033401, 38.469299, 35.019363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432529, 38.446033, 35.031830>,  <39.672005, 38.432076, 35.039310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432529, 38.446033, 35.031830>,  <39.033401, 38.469299, 35.019363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432529, 38.446033, 35.031830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063976, -0.737059, 0.672794,
		-0.016162, -0.673321, -0.739173,
		0.997820, -0.058163, 0.031164,
		39.731876, 38.428585, 35.041180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120197, 37.788635, 35.265007>,  <39.033401, 38.469299, 35.019363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120197, 37.788635, 35.265007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473713, 37.962177, 35.335091>,  <39.685822, 38.066303, 35.377140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473713, 37.962177, 35.335091>,  <39.120197, 37.788635, 35.265007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473713, 37.962177, 35.335091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062060, -0.479840, 0.875158,
		0.463760, -0.762578, -0.451000,
		0.883784, 0.433853, 0.175205,
		39.738850, 38.092335, 35.387653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634720, 37.300316, 35.429119>,  <39.120197, 37.788635, 35.265007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634720, 37.300316, 35.429119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762932, 37.635490, 35.605808>,  <39.839859, 37.836597, 35.711823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762932, 37.635490, 35.605808>,  <39.634720, 37.300316, 35.429119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762932, 37.635490, 35.605808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132930, -0.501504, 0.854882,
		0.937865, -0.215295, -0.272133,
		0.320527, 0.837939, 0.441724,
		39.859089, 37.886871, 35.738327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296555, 37.220737, 35.764130>,  <39.634720, 37.300316, 35.429119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296555, 37.220737, 35.764130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132977, 37.527916, 35.961315>,  <40.034828, 37.712223, 36.079628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132977, 37.527916, 35.961315>,  <40.296555, 37.220737, 35.764130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132977, 37.527916, 35.961315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143447, -0.479390, 0.865799,
		0.901212, 0.424782, 0.085886,
		-0.408949, 0.767949, 0.492966,
		40.010292, 37.758301, 36.109203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749748, 37.359501, 36.399109>,  <40.296555, 37.220737, 35.764130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749748, 37.359501, 36.399109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404949, 37.553005, 36.459698>,  <40.198071, 37.669106, 36.496052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404949, 37.553005, 36.459698>,  <40.749748, 37.359501, 36.399109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404949, 37.553005, 36.459698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036851, -0.238223, 0.970511,
		0.505576, 0.842158, 0.187520,
		-0.861995, 0.483756, 0.151474,
		40.146351, 37.698132, 36.505138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777637, 37.532780, 37.117702>,  <40.749748, 37.359501, 36.399109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777637, 37.532780, 37.117702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391788, 37.597000, 37.034061>,  <40.160278, 37.635532, 36.983875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391788, 37.597000, 37.034061>,  <40.777637, 37.532780, 37.117702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391788, 37.597000, 37.034061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250448, -0.310434, 0.917009,
		0.082311, 0.936939, 0.339662,
		-0.964625, 0.160547, -0.209103,
		40.102402, 37.645164, 36.971329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540054, 37.863514, 37.761490>,  <40.777637, 37.532780, 37.117702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540054, 37.863514, 37.761490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231071, 37.721813, 37.550655>,  <40.045681, 37.636791, 37.424156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231071, 37.721813, 37.550655>,  <40.540054, 37.863514, 37.761490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231071, 37.721813, 37.550655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373850, -0.417259, 0.828331,
		-0.513370, 0.836898, 0.189876,
		-0.772456, -0.354255, -0.527082,
		39.999336, 37.615536, 37.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975616, 38.083763, 38.131462>,  <40.540054, 37.863514, 37.761490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975616, 38.083763, 38.131462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830101, 37.780331, 37.915234>,  <39.742790, 37.598270, 37.785496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830101, 37.780331, 37.915234>,  <39.975616, 38.083763, 38.131462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830101, 37.780331, 37.915234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473441, -0.349205, 0.808647,
		-0.802192, 0.550105, -0.232105,
		-0.363789, -0.758578, -0.540572,
		39.720966, 37.552757, 37.753063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206249, 38.142395, 38.230293>,  <39.975616, 38.083763, 38.131462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206249, 38.142395, 38.230293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289406, 37.773331, 38.100384>,  <39.339298, 37.551891, 38.022438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289406, 37.773331, 38.100384>,  <39.206249, 38.142395, 38.230293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289406, 37.773331, 38.100384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383097, -0.382308, 0.840879,
		-0.900010, -0.050388, -0.432946,
		0.207889, -0.922660, -0.324777,
		39.351772, 37.496532, 38.002949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559353, 37.696976, 38.370941>,  <39.206249, 38.142395, 38.230293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559353, 37.696976, 38.370941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887249, 37.470535, 38.336193>,  <39.083988, 37.334671, 38.315342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887249, 37.470535, 38.336193>,  <38.559353, 37.696976, 38.370941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887249, 37.470535, 38.336193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178213, -0.396272, 0.900671,
		-0.544300, -0.722836, -0.425728,
		0.819742, -0.566106, -0.086872,
		39.133171, 37.300705, 38.310131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350513, 37.048607, 38.510635>,  <38.559353, 37.696976, 38.370941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350513, 37.048607, 38.510635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746052, 37.023075, 38.564465>,  <38.983376, 37.007755, 38.596760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746052, 37.023075, 38.564465>,  <38.350513, 37.048607, 38.510635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746052, 37.023075, 38.564465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146691, -0.573807, 0.805747,
		0.025788, -0.816500, -0.576770,
		0.988846, -0.063828, 0.134570,
		39.042706, 37.003925, 38.604836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486439, 36.402637, 38.401947>,  <38.350513, 37.048607, 38.510635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486439, 36.402637, 38.401947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784649, 36.568977, 38.610275>,  <38.963573, 36.668781, 38.735271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784649, 36.568977, 38.610275>,  <38.486439, 36.402637, 38.401947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784649, 36.568977, 38.610275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270961, -0.524841, 0.806921,
		0.608912, -0.742702, -0.278602,
		0.745524, 0.415854, 0.520825,
		39.008305, 36.693733, 38.766521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990170, 35.869213, 38.514313>,  <38.486439, 36.402637, 38.401947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990170, 35.869213, 38.514313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027760, 36.166988, 38.778732>,  <39.050312, 36.345654, 38.937386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027760, 36.166988, 38.778732>,  <38.990170, 35.869213, 38.514313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027760, 36.166988, 38.778732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240807, -0.627274, 0.740635,
		0.966013, -0.228786, 0.120317,
		0.093976, 0.744436, 0.661048,
		39.055954, 36.390320, 38.977047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350609, 35.550014, 39.026115>,  <38.990170, 35.869213, 38.514313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350609, 35.550014, 39.026115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249790, 35.873543, 39.238632>,  <39.189301, 36.067661, 39.366142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249790, 35.873543, 39.238632>,  <39.350609, 35.550014, 39.026115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249790, 35.873543, 39.238632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011187, -0.551420, 0.834153,
		0.967651, 0.204302, 0.148032,
		-0.252047, 0.808824, 0.531297,
		39.174175, 36.116192, 39.398022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804974, 35.564026, 39.624649>,  <39.350609, 35.550014, 39.026115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804974, 35.564026, 39.624649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.491512, 35.795555, 39.714851>,  <39.303436, 35.934471, 39.768970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.491512, 35.795555, 39.714851>,  <39.804974, 35.564026, 39.624649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491512, 35.795555, 39.714851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177331, -0.556353, 0.811804,
		0.595351, 0.596183, 0.538630,
		-0.783652, 0.578824, 0.225503,
		39.256416, 35.969204, 39.782501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872314, 35.655941, 40.318481>,  <39.804974, 35.564026, 39.624649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872314, 35.655941, 40.318481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485580, 35.735165, 40.253979>,  <39.253540, 35.782700, 40.215275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485580, 35.735165, 40.253979>,  <39.872314, 35.655941, 40.318481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485580, 35.735165, 40.253979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244932, -0.540021, 0.805224,
		0.072398, 0.818016, 0.570621,
		-0.966834, 0.198060, -0.161261,
		39.195530, 35.794582, 40.205601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685566, 35.678787, 41.009628>,  <39.872314, 35.655941, 40.318481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685566, 35.678787, 41.009628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367966, 35.650600, 40.768097>,  <39.177406, 35.633686, 40.623180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367966, 35.650600, 40.768097>,  <39.685566, 35.678787, 41.009628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367966, 35.650600, 40.768097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422583, -0.650062, 0.631540,
		-0.437028, 0.756606, 0.486368,
		-0.793996, -0.070470, -0.603824,
		39.129768, 35.629459, 40.586948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089172, 35.822544, 41.412216>,  <39.685566, 35.678787, 41.009628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089172, 35.822544, 41.412216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972950, 35.610851, 41.093346>,  <38.903217, 35.483833, 40.902023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972950, 35.610851, 41.093346>,  <39.089172, 35.822544, 41.412216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972950, 35.610851, 41.093346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544446, -0.593664, 0.592573,
		-0.786863, 0.606195, -0.115645,
		-0.290561, -0.529236, -0.797173,
		38.885780, 35.452080, 40.854195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.350632, 35.649429, 41.566677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438160, 35.408478, 41.259624>,  <38.490677, 35.263908, 41.075394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438160, 35.408478, 41.259624>,  <38.350632, 35.649429, 41.566677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438160, 35.408478, 41.259624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611106, -0.697909, 0.373461,
		-0.760702, 0.387383, -0.520833,
		0.218822, -0.602377, -0.767632,
		38.503807, 35.227764, 41.029335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678699, 35.377335, 41.374615>,  <38.350632, 35.649429, 41.566677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678699, 35.377335, 41.374615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970455, 35.138039, 41.241890>,  <38.145508, 34.994461, 41.162254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970455, 35.138039, 41.241890>,  <37.678699, 35.377335, 41.374615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970455, 35.138039, 41.241890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433738, -0.779498, 0.451945,
		-0.529014, -0.185729, -0.828039,
		0.729394, -0.598238, -0.331807,
		38.189274, 34.958569, 41.142349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352486, 34.771069, 41.227123>,  <37.678699, 35.377335, 41.374615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352486, 34.771069, 41.227123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734440, 34.653027, 41.240467>,  <37.963612, 34.582203, 41.248474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734440, 34.653027, 41.240467>,  <37.352486, 34.771069, 41.227123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734440, 34.653027, 41.240467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266993, -0.803845, 0.531552,
		-0.130048, -0.516476, -0.846369,
		0.954884, -0.295102, 0.033357,
		38.020905, 34.564495, 41.250473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305553, 34.041725, 41.227238>,  <37.352486, 34.771069, 41.227123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305553, 34.041725, 41.227238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643009, 34.158993, 41.407158>,  <37.845482, 34.229351, 41.515110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643009, 34.158993, 41.407158>,  <37.305553, 34.041725, 41.227238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643009, 34.158993, 41.407158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164952, -0.655722, 0.736763,
		0.510937, -0.695761, -0.504837,
		0.843643, 0.293166, 0.449800,
		37.896103, 34.246941, 41.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613804, 33.468208, 41.385036>,  <37.305553, 34.041725, 41.227238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613804, 33.468208, 41.385036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770985, 33.751553, 41.619579>,  <37.865292, 33.921558, 41.760303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770985, 33.751553, 41.619579>,  <37.613804, 33.468208, 41.385036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770985, 33.751553, 41.619579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089731, -0.664141, 0.742203,
		0.915170, -0.239036, -0.324538,
		0.392952, 0.708363, 0.586353,
		37.888870, 33.964062, 41.795486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805729, 33.041073, 41.881321>,  <37.613804, 33.468208, 41.385036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805729, 33.041073, 41.881321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840427, 33.392624, 42.068958>,  <37.861248, 33.603554, 42.181541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840427, 33.392624, 42.068958>,  <37.805729, 33.041073, 41.881321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840427, 33.392624, 42.068958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145362, -0.476999, 0.866800,
		0.985569, -0.007001, -0.169132,
		0.086745, 0.878876, 0.469097,
		37.866451, 33.656288, 42.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463356, 32.976910, 42.277088>,  <37.805729, 33.041073, 41.881321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463356, 32.976910, 42.277088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235302, 33.253452, 42.454617>,  <38.098469, 33.419376, 42.561134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235302, 33.253452, 42.454617>,  <38.463356, 32.976910, 42.277088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235302, 33.253452, 42.454617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082321, -0.489430, 0.868148,
		0.817418, 0.531496, 0.222127,
		-0.570133, 0.691354, 0.443822,
		38.064262, 33.460857, 42.587765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777351, 33.020203, 42.904823>,  <38.463356, 32.976910, 42.277088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777351, 33.020203, 42.904823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415047, 33.182701, 42.953079>,  <38.197662, 33.280201, 42.982033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415047, 33.182701, 42.953079>,  <38.777351, 33.020203, 42.904823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415047, 33.182701, 42.953079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046323, -0.377876, 0.924697,
		0.421241, 0.831969, 0.361085,
		-0.905765, 0.406247, 0.120638,
		38.143318, 33.304577, 42.989269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857403, 33.340538, 43.521839>,  <38.777351, 33.020203, 42.904823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857403, 33.340538, 43.521839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465374, 33.277821, 43.473057>,  <38.230156, 33.240189, 43.443787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465374, 33.277821, 43.473057>,  <38.857403, 33.340538, 43.521839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465374, 33.277821, 43.473057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034019, -0.472411, 0.880722,
		-0.195705, 0.867320, 0.457663,
		-0.980072, -0.156793, -0.121959,
		38.171352, 33.230782, 43.436470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526543, 33.621082, 44.041443>,  <38.857403, 33.340538, 43.521839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526543, 33.621082, 44.041443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282322, 33.329166, 43.918396>,  <38.135788, 33.154015, 43.844570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282322, 33.329166, 43.918396>,  <38.526543, 33.621082, 44.041443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282322, 33.329166, 43.918396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160882, -0.266026, 0.950446,
		-0.775462, 0.629787, 0.045013,
		-0.610553, -0.729793, -0.307614,
		38.099155, 33.110229, 43.826111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046993, 33.526928, 44.635735>,  <38.526543, 33.621082, 44.041443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046993, 33.526928, 44.635735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004593, 33.217640, 44.385647>,  <37.979153, 33.032066, 44.235596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004593, 33.217640, 44.385647>,  <38.046993, 33.526928, 44.635735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004593, 33.217640, 44.385647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257407, -0.585989, 0.768348,
		-0.960472, 0.242380, -0.136918,
		-0.106000, -0.773220, -0.625216,
		37.972794, 32.985676, 44.198082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515720, 33.170280, 44.964520>,  <38.046993, 33.526928, 44.635735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515720, 33.170280, 44.964520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709339, 32.902672, 44.738914>,  <37.825508, 32.742107, 44.603554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709339, 32.902672, 44.738914>,  <37.515720, 33.170280, 44.964520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709339, 32.902672, 44.738914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262585, -0.725900, 0.635703,
		-0.834717, -0.159606, -0.527042,
		0.484042, -0.669025, -0.564011,
		37.854553, 32.701965, 44.569710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227100, 32.705757, 45.210182>,  <37.515720, 33.170280, 44.964520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227100, 32.705757, 45.210182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535492, 32.517681, 45.038364>,  <37.720528, 32.404835, 44.935272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535492, 32.517681, 45.038364>,  <37.227100, 32.705757, 45.210182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535492, 32.517681, 45.038364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108578, -0.761652, 0.638825,
		-0.627532, -0.445884, -0.638272,
		0.770983, -0.470186, -0.429547,
		37.766788, 32.376625, 44.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965454, 32.114079, 45.242035>,  <37.227100, 32.705757, 45.210182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965454, 32.114079, 45.242035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352139, 32.045902, 45.165703>,  <37.584148, 32.004997, 45.119904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352139, 32.045902, 45.165703>,  <36.965454, 32.114079, 45.242035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352139, 32.045902, 45.165703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007989, -0.765570, 0.643303,
		-0.255737, -0.620365, -0.741448,
		0.966713, -0.170440, -0.190829,
		37.642151, 31.994770, 45.108456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056664, 31.351295, 45.162617>,  <36.965454, 32.114079, 45.242035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056664, 31.351295, 45.162617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419212, 31.488842, 45.260796>,  <37.636742, 31.571369, 45.319702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419212, 31.488842, 45.260796>,  <37.056664, 31.351295, 45.162617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419212, 31.488842, 45.260796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096947, -0.734748, 0.671377,
		0.411202, -0.584724, -0.699293,
		0.906374, 0.343865, 0.245443,
		37.691124, 31.592001, 45.334427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528370, 30.760880, 45.185825>,  <37.056664, 31.351295, 45.162617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528370, 30.760880, 45.185825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692661, 31.066931, 45.384174>,  <37.791237, 31.250561, 45.503181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692661, 31.066931, 45.384174>,  <37.528370, 30.760880, 45.185825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692661, 31.066931, 45.384174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199932, -0.606204, 0.769769,
		0.889568, -0.217024, -0.401957,
		0.410727, 0.765126, 0.495869,
		37.815880, 31.296469, 45.532936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149586, 30.435938, 45.407478>,  <37.528370, 30.760880, 45.185825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149586, 30.435938, 45.407478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083256, 30.751429, 45.644260>,  <38.043457, 30.940723, 45.786331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083256, 30.751429, 45.644260>,  <38.149586, 30.435938, 45.407478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083256, 30.751429, 45.644260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036759, -0.604793, 0.795534,
		0.985470, 0.110160, 0.129283,
		-0.165825, 0.788727, 0.591956,
		38.033508, 30.988047, 45.821846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530426, 30.300859, 45.940372>,  <38.149586, 30.435938, 45.407478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530426, 30.300859, 45.940372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 30.595076, 46.107006>,  <38.188499, 30.771605, 46.206985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 30.595076, 46.107006>,  <38.530426, 30.300859, 45.940372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316723, 30.595076, 46.107006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089031, -0.441114, 0.893024,
		0.840617, 0.514198, 0.170184,
		-0.534262, 0.735540, 0.416587,
		38.156445, 30.815737, 46.231983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942940, 30.594521, 46.531776>,  <38.530426, 30.300859, 45.940372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942940, 30.594521, 46.531776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556633, 30.680120, 46.590424>,  <38.324848, 30.731480, 46.625614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556633, 30.680120, 46.590424>,  <38.942940, 30.594521, 46.531776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556633, 30.680120, 46.590424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040185, -0.434968, 0.899549,
		0.256278, 0.874647, 0.411479,
		-0.965767, 0.213999, 0.146621,
		38.266903, 30.744320, 46.634411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876610, 30.959230, 47.176334>,  <38.942940, 30.594521, 46.531776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876610, 30.959230, 47.176334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533546, 30.775560, 47.083744>,  <38.327709, 30.665358, 47.028191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533546, 30.775560, 47.083744>,  <38.876610, 30.959230, 47.176334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533546, 30.775560, 47.083744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027568, -0.490555, 0.870974,
		-0.513480, 0.740617, 0.433387,
		-0.857659, -0.459175, -0.231473,
		38.276249, 30.637808, 47.014301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505531, 31.019190, 47.817814>,  <38.876610, 30.959230, 47.176334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505531, 31.019190, 47.817814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321201, 30.724239, 47.620262>,  <38.210602, 30.547270, 47.501732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321201, 30.724239, 47.620262>,  <38.505531, 31.019190, 47.817814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321201, 30.724239, 47.620262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130530, -0.494130, 0.859534,
		-0.877840, 0.460560, 0.131457,
		-0.460824, -0.737374, -0.493884,
		38.182953, 30.503027, 47.472095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971558, 30.906582, 48.195187>,  <38.505531, 31.019190, 47.817814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971558, 30.906582, 48.195187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024292, 30.577333, 47.974247>,  <38.055935, 30.379786, 47.841682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024292, 30.577333, 47.974247>,  <37.971558, 30.906582, 48.195187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024292, 30.577333, 47.974247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216818, -0.567670, 0.794192,
		-0.967269, 0.015055, -0.253308,
		0.131839, -0.823119, -0.552354,
		38.063843, 30.330399, 47.808540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368816, 30.430092, 48.263634>,  <37.971558, 30.906582, 48.195187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368816, 30.430092, 48.263634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709202, 30.238420, 48.177605>,  <37.913433, 30.123417, 48.125988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709202, 30.238420, 48.177605>,  <37.368816, 30.430092, 48.263634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709202, 30.238420, 48.177605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126496, -0.584398, 0.801547,
		-0.509769, -0.654880, -0.557914,
		0.850961, -0.479178, -0.215069,
		37.964489, 30.094667, 48.113083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212654, 29.655153, 48.106075>,  <37.368816, 30.430092, 48.263634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212654, 29.655153, 48.106075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561176, 29.758238, 48.273121>,  <37.770290, 29.820089, 48.373348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561176, 29.758238, 48.273121>,  <37.212654, 29.655153, 48.106075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561176, 29.758238, 48.273121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318550, -0.350318, 0.880797,
		0.373292, -0.900478, -0.223140,
		0.871309, 0.257714, 0.417618,
		37.822571, 29.835552, 48.398407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843895, 29.193977, 47.544930>,  <37.212654, 29.655153, 48.106075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843895, 29.193977, 47.544930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512314, 28.972723, 47.511749>,  <36.313366, 28.839972, 47.491840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512314, 28.972723, 47.511749>,  <36.843895, 29.193977, 47.544930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512314, 28.972723, 47.511749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359267, 0.640239, -0.678986,
		0.428679, -0.533045, -0.729450,
		-0.828952, -0.553134, -0.082952,
		36.263630, 28.806782, 47.486862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712975, 29.075350, 46.832657>,  <36.843895, 29.193977, 47.544930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712975, 29.075350, 46.832657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362980, 29.038176, 47.022717>,  <36.152985, 29.015871, 47.136753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362980, 29.038176, 47.022717>,  <36.712975, 29.075350, 46.832657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362980, 29.038176, 47.022717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409127, 0.666690, -0.623009,
		-0.258878, -0.739519, -0.621365,
		-0.874984, -0.092934, 0.475148,
		36.100483, 29.010296, 47.165260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179619, 28.974560, 46.310684>,  <36.712975, 29.075350, 46.832657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179619, 28.974560, 46.310684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016167, 29.128567, 46.641689>,  <35.918095, 29.220970, 46.840294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016167, 29.128567, 46.641689>,  <36.179619, 28.974560, 46.310684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016167, 29.128567, 46.641689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472824, 0.686218, -0.552760,
		-0.780677, -0.617145, -0.098367,
		-0.408634, 0.385016, 0.827515,
		35.893578, 29.244072, 46.889942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484608, 29.046740, 46.110813>,  <36.179619, 28.974560, 46.310684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484608, 29.046740, 46.110813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504398, 29.292997, 46.425400>,  <35.516273, 29.440752, 46.614151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504398, 29.292997, 46.425400>,  <35.484608, 29.046740, 46.110813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504398, 29.292997, 46.425400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415995, 0.728587, -0.544159,
		-0.908020, -0.300243, 0.292154,
		0.049480, 0.615642, 0.786471,
		35.519241, 29.477690, 46.661343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833363, 29.340918, 46.243713>,  <35.484608, 29.046740, 46.110813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833363, 29.340918, 46.243713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119434, 29.585655, 46.378864>,  <35.291077, 29.732498, 46.459953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119434, 29.585655, 46.378864>,  <34.833363, 29.340918, 46.243713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119434, 29.585655, 46.378864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329980, 0.721721, -0.608467,
		-0.616141, 0.323672, 0.718058,
		0.715181, 0.611846, 0.337877,
		35.333988, 29.769209, 46.480228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507530, 29.915932, 46.089680>,  <34.833363, 29.340918, 46.243713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507530, 29.915932, 46.089680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876553, 30.044994, 46.174324>,  <35.097965, 30.122431, 46.225113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876553, 30.044994, 46.174324>,  <34.507530, 29.915932, 46.089680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876553, 30.044994, 46.174324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087724, 0.709448, -0.699276,
		-0.375754, 0.626559, 0.682812,
		0.922558, 0.322655, 0.211614,
		35.153320, 30.141790, 46.237808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425346, 30.624994, 46.234863>,  <34.507530, 29.915932, 46.089680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425346, 30.624994, 46.234863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810913, 30.590202, 46.134220>,  <35.042252, 30.569328, 46.073833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810913, 30.590202, 46.134220>,  <34.425346, 30.624994, 46.234863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810913, 30.590202, 46.134220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056393, 0.856964, -0.512281,
		0.260179, 0.507983, 0.821133,
		0.963912, -0.086978, -0.251610,
		35.100086, 30.564108, 46.058739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728279, 31.243780, 46.320942>,  <34.425346, 30.624994, 46.234863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728279, 31.243780, 46.320942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977646, 31.071266, 46.060066>,  <35.127266, 30.967758, 45.903542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977646, 31.071266, 46.060066>,  <34.728279, 31.243780, 46.320942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977646, 31.071266, 46.060066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093017, 0.787283, -0.609535,
		0.776340, 0.440657, 0.450686,
		0.623414, -0.431285, -0.652188,
		35.164669, 30.941881, 45.864410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216877, 31.820803, 46.049953>,  <34.728279, 31.243780, 46.320942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216877, 31.820803, 46.049953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220238, 31.525938, 45.779690>,  <35.222252, 31.349018, 45.617531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220238, 31.525938, 45.779690>,  <35.216877, 31.820803, 46.049953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220238, 31.525938, 45.779690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109072, 0.672331, -0.732171,
		0.993998, -0.067548, 0.086050,
		0.008397, -0.737162, -0.675663,
		35.222755, 31.304789, 45.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931953, 31.733385, 45.643917>,  <35.216877, 31.820803, 46.049953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931953, 31.733385, 45.643917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620998, 31.622740, 45.417942>,  <35.434425, 31.556353, 45.282356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620998, 31.622740, 45.417942>,  <35.931953, 31.733385, 45.643917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620998, 31.622740, 45.417942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264473, 0.671140, -0.692550,
		0.570717, -0.687791, -0.448581,
		-0.777391, -0.276613, -0.564933,
		35.387779, 31.539757, 45.248463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038475, 32.080872, 45.205788>,  <35.931953, 31.733385, 45.643917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038475, 32.080872, 45.205788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711349, 31.930796, 45.031246>,  <35.515072, 31.840750, 44.926521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711349, 31.930796, 45.031246>,  <36.038475, 32.080872, 45.205788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711349, 31.930796, 45.031246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172914, 0.563001, -0.808165,
		0.548873, -0.736389, -0.395563,
		-0.817826, -0.375182, -0.436348,
		35.466003, 31.818237, 44.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189938, 31.718241, 44.522488>,  <36.038475, 32.080872, 45.205788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189938, 31.718241, 44.522488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808746, 31.838678, 44.536163>,  <35.580032, 31.910940, 44.544369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808746, 31.838678, 44.536163>,  <36.189938, 31.718241, 44.522488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808746, 31.838678, 44.536163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139943, 0.537362, -0.831660,
		-0.268778, -0.787772, -0.554232,
		-0.952982, 0.301093, 0.034188,
		35.522850, 31.929007, 44.546421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002327, 31.748716, 43.772160>,  <36.189938, 31.718241, 44.522488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002327, 31.748716, 43.772160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698448, 31.951551, 43.934998>,  <35.516121, 32.073254, 44.032700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698448, 31.951551, 43.934998>,  <36.002327, 31.748716, 43.772160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698448, 31.951551, 43.934998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005652, 0.620856, -0.783904,
		-0.650252, -0.597831, -0.468797,
		-0.759697, 0.507085, 0.407092,
		35.470539, 32.103676, 44.057125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418213, 31.640112, 43.328785>,  <36.002327, 31.748716, 43.772160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418213, 31.640112, 43.328785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374893, 31.974930, 43.543308>,  <35.348900, 32.175819, 43.672024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374893, 31.974930, 43.543308>,  <35.418213, 31.640112, 43.328785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374893, 31.974930, 43.543308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012996, 0.538243, -0.842690,
		-0.994033, -0.098235, -0.047414,
		-0.108302, 0.837045, 0.536308,
		35.342403, 32.226044, 43.704201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076183, 32.055367, 42.912899>,  <35.418213, 31.640112, 43.328785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076183, 32.055367, 42.912899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194355, 32.327560, 43.181129>,  <35.265259, 32.490875, 43.342068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194355, 32.327560, 43.181129>,  <35.076183, 32.055367, 42.912899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194355, 32.327560, 43.181129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099981, 0.720070, -0.686661,
		-0.950119, 0.135814, 0.280764,
		0.295428, 0.680481, 0.670573,
		35.282982, 32.531704, 43.382301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674198, 32.496490, 42.777672>,  <35.076183, 32.055367, 42.912899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674198, 32.496490, 42.777672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989475, 32.684738, 42.936298>,  <35.178642, 32.797688, 43.031475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989475, 32.684738, 42.936298>,  <34.674198, 32.496490, 42.777672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989475, 32.684738, 42.936298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092475, 0.727630, -0.679708,
		-0.608441, 0.499068, 0.617034,
		0.788193, 0.470623, 0.396569,
		35.225933, 32.825924, 43.055267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502766, 33.221382, 42.702595>,  <34.674198, 32.496490, 42.777672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502766, 33.221382, 42.702595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891872, 33.238213, 42.793774>,  <35.125336, 33.248310, 42.848480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891872, 33.238213, 42.793774>,  <34.502766, 33.221382, 42.702595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891872, 33.238213, 42.793774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135385, 0.695090, -0.706061,
		-0.188157, 0.717691, 0.670460,
		0.972763, 0.042080, 0.227951,
		35.183701, 33.250835, 42.862160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639481, 33.905491, 42.779747>,  <34.502766, 33.221382, 42.702595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639481, 33.905491, 42.779747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989815, 33.733932, 42.691246>,  <35.200016, 33.630997, 42.638145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989815, 33.733932, 42.691246>,  <34.639481, 33.905491, 42.779747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989815, 33.733932, 42.691246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240855, 0.785741, -0.569737,
		0.418204, 0.445709, 0.791486,
		0.875839, -0.428899, -0.221249,
		35.252567, 33.605263, 42.624870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162033, 34.483120, 42.785877>,  <34.639481, 33.905491, 42.779747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162033, 34.483120, 42.785877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313618, 34.191689, 42.557644>,  <35.404568, 34.016830, 42.420704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313618, 34.191689, 42.557644>,  <35.162033, 34.483120, 42.785877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313618, 34.191689, 42.557644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300016, 0.679997, -0.669025,
		0.875431, 0.082351, 0.476277,
		0.378961, -0.728576, -0.570583,
		35.427307, 33.973114, 42.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641239, 34.843056, 42.494968>,  <35.162033, 34.483120, 42.785877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641239, 34.843056, 42.494968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611046, 34.521725, 42.258675>,  <35.592930, 34.328926, 42.116898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611046, 34.521725, 42.258675>,  <35.641239, 34.843056, 42.494968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611046, 34.521725, 42.258675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301678, 0.546259, -0.781404,
		0.950417, -0.237197, 0.201111,
		-0.075488, -0.803330, -0.590730,
		35.588398, 34.280727, 42.081455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.980751, 36.336750, 43.612316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615215, 36.175137, 43.596043>,  <44.395893, 36.078171, 43.586277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615215, 36.175137, 43.596043>,  <44.980751, 36.336750, 43.612316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615215, 36.175137, 43.596043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069555, 0.254457, -0.964580,
		0.400075, -0.878640, -0.260635,
		-0.913839, -0.404033, -0.040688,
		44.341064, 36.053928, 43.583836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936642, 35.909237, 42.989502>,  <44.980751, 36.336750, 43.612316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936642, 35.909237, 42.989502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552429, 35.990505, 43.065514>,  <44.321903, 36.039265, 43.111118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552429, 35.990505, 43.065514>,  <44.936642, 35.909237, 42.989502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552429, 35.990505, 43.065514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160494, 0.153216, -0.975072,
		-0.227221, -0.967081, -0.114561,
		-0.960527, 0.203170, 0.190025,
		44.264271, 36.051456, 43.122520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485958, 35.383823, 42.536713>,  <44.936642, 35.909237, 42.989502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485958, 35.383823, 42.536713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277763, 35.714886, 42.620697>,  <44.152847, 35.913521, 42.671089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277763, 35.714886, 42.620697>,  <44.485958, 35.383823, 42.536713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277763, 35.714886, 42.620697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088350, 0.192372, -0.977337,
		-0.849287, -0.527241, -0.027003,
		-0.520486, 0.827653, 0.209961,
		44.121616, 35.963181, 42.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999565, 35.332981, 42.064217>,  <44.485958, 35.383823, 42.536713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999565, 35.332981, 42.064217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947792, 35.712292, 42.180161>,  <43.916729, 35.939880, 42.249725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947792, 35.712292, 42.180161>,  <43.999565, 35.332981, 42.064217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947792, 35.712292, 42.180161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163777, 0.267855, -0.949437,
		-0.977969, -0.170359, 0.120637,
		-0.129432, 0.948278, 0.289855,
		43.908962, 35.996777, 42.267117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434410, 35.485920, 41.652973>,  <43.999565, 35.332981, 42.064217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434410, 35.485920, 41.652973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631794, 35.813351, 41.770565>,  <43.750225, 36.009808, 41.841122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631794, 35.813351, 41.770565>,  <43.434410, 35.485920, 41.652973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631794, 35.813351, 41.770565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043171, 0.360636, -0.931707,
		-0.868694, 0.447072, 0.213300,
		0.493464, 0.818577, 0.293982,
		43.779835, 36.058926, 41.858761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026367, 36.007534, 41.460751>,  <43.434410, 35.485920, 41.652973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026367, 36.007534, 41.460751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398720, 36.151241, 41.487232>,  <43.622131, 36.237465, 41.503120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398720, 36.151241, 41.487232>,  <43.026367, 36.007534, 41.460751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398720, 36.151241, 41.487232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012179, 0.150608, -0.988518,
		-0.365115, 0.921001, 0.135823,
		0.930883, 0.359269, 0.066206,
		43.677986, 36.259022, 41.507095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078209, 36.559849, 40.955181>,  <43.026367, 36.007534, 41.460751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078209, 36.559849, 40.955181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458107, 36.461433, 41.032600>,  <43.686047, 36.402386, 41.079052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458107, 36.461433, 41.032600>,  <43.078209, 36.559849, 40.955181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458107, 36.461433, 41.032600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217834, 0.075410, -0.973068,
		0.224813, 0.966323, 0.125215,
		0.949741, -0.246034, 0.193545,
		43.743031, 36.387623, 41.090664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471004, 37.006962, 40.557442>,  <43.078209, 36.559849, 40.955181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471004, 37.006962, 40.557442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736103, 36.716145, 40.629196>,  <43.895161, 36.541653, 40.672249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736103, 36.716145, 40.629196>,  <43.471004, 37.006962, 40.557442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736103, 36.716145, 40.629196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372610, 0.112380, -0.921158,
		0.649562, 0.677332, 0.345384,
		0.662744, -0.727043, 0.179383,
		43.934925, 36.498032, 40.683010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139057, 37.210705, 40.221077>,  <43.471004, 37.006962, 40.557442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139057, 37.210705, 40.221077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174644, 36.817455, 40.285015>,  <44.195995, 36.581505, 40.323380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174644, 36.817455, 40.285015>,  <44.139057, 37.210705, 40.221077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174644, 36.817455, 40.285015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500485, -0.094628, -0.860558,
		0.861162, 0.156560, 0.483620,
		0.088965, -0.983125, 0.159846,
		44.201332, 36.522518, 40.332970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679482, 37.010620, 39.769592>,  <44.139057, 37.210705, 40.221077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679482, 37.010620, 39.769592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530460, 36.659863, 39.891098>,  <44.441048, 36.449409, 39.964001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530460, 36.659863, 39.891098>,  <44.679482, 37.010620, 39.769592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530460, 36.659863, 39.891098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315999, -0.427633, -0.846920,
		0.872554, -0.219533, 0.436411,
		-0.372551, -0.876889, 0.303761,
		44.418694, 36.396797, 39.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160500, 36.521481, 39.828514>,  <44.679482, 37.010620, 39.769592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160500, 36.521481, 39.828514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822556, 36.313114, 39.779751>,  <44.619789, 36.188095, 39.750492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822556, 36.313114, 39.779751>,  <45.160500, 36.521481, 39.828514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822556, 36.313114, 39.779751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385469, -0.434712, -0.813903,
		0.370981, -0.734624, 0.568067,
		-0.844859, -0.520915, -0.121905,
		44.569099, 36.156841, 39.743179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364742, 35.797543, 39.720028>,  <45.160500, 36.521481, 39.828514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364742, 35.797543, 39.720028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001350, 35.859600, 39.564796>,  <44.783318, 35.896835, 39.471657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001350, 35.859600, 39.564796>,  <45.364742, 35.797543, 39.720028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001350, 35.859600, 39.564796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309440, -0.374453, -0.874089,
		-0.280923, -0.914175, 0.292174,
		-0.908476, 0.155142, -0.388075,
		44.728809, 35.906143, 39.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263195, 35.062733, 39.310604>,  <45.364742, 35.797543, 39.720028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263195, 35.062733, 39.310604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022186, 35.359249, 39.192318>,  <44.877579, 35.537159, 39.121346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022186, 35.359249, 39.192318>,  <45.263195, 35.062733, 39.310604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022186, 35.359249, 39.192318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180387, -0.234449, -0.955246,
		-0.777448, -0.628903, 0.007542,
		-0.602525, 0.741293, -0.295718,
		44.841431, 35.581638, 39.103603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717266, 34.730270, 38.923260>,  <45.263195, 35.062733, 39.310604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717266, 34.730270, 38.923260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719326, 35.107555, 38.790398>,  <44.720562, 35.333927, 38.710682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719326, 35.107555, 38.790398>,  <44.717266, 34.730270, 38.923260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719326, 35.107555, 38.790398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068592, -0.331706, -0.940886,
		-0.997632, -0.017941, -0.066403,
		0.005146, 0.943212, -0.332151,
		44.720871, 35.390518, 38.690754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274570, 34.658653, 38.326050>,  <44.717266, 34.730270, 38.923260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274570, 34.658653, 38.326050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423504, 35.026577, 38.276558>,  <44.512863, 35.247334, 38.246864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423504, 35.026577, 38.276558>,  <44.274570, 34.658653, 38.326050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423504, 35.026577, 38.276558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091307, -0.168971, -0.981382,
		-0.923596, 0.354106, -0.146900,
		0.372335, 0.919814, -0.123728,
		44.535206, 35.302521, 38.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882336, 35.072739, 37.755527>,  <44.274570, 34.658653, 38.326050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882336, 35.072739, 37.755527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228161, 35.271740, 37.783878>,  <44.435658, 35.391140, 37.800888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228161, 35.271740, 37.783878>,  <43.882336, 35.072739, 37.755527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228161, 35.271740, 37.783878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193183, -0.198827, -0.960806,
		-0.463911, 0.844369, -0.268008,
		0.864562, 0.497503, 0.070880,
		44.487530, 35.420990, 37.805141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958141, 35.572117, 37.191776>,  <43.882336, 35.072739, 37.755527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958141, 35.572117, 37.191776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331486, 35.492249, 37.311092>,  <44.555492, 35.444328, 37.382683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331486, 35.492249, 37.311092>,  <43.958141, 35.572117, 37.191776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331486, 35.492249, 37.311092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227503, -0.313725, -0.921856,
		0.277647, 0.928283, -0.247392,
		0.933357, -0.199668, 0.298292,
		44.611492, 35.432346, 37.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493080, 36.020596, 36.836956>,  <43.958141, 35.572117, 37.191776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493080, 36.020596, 36.836956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659119, 35.669277, 36.931854>,  <44.758743, 35.458485, 36.988792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659119, 35.669277, 36.931854>,  <44.493080, 36.020596, 36.836956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659119, 35.669277, 36.931854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396074, -0.060304, -0.916236,
		0.819037, 0.474292, 0.322840,
		0.415095, -0.878300, 0.237246,
		44.783646, 35.405788, 37.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998314, 35.988853, 36.350964>,  <44.493080, 36.020596, 36.836956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998314, 35.988853, 36.350964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028862, 35.630146, 36.525303>,  <45.047192, 35.414921, 36.629906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028862, 35.630146, 36.525303>,  <44.998314, 35.988853, 36.350964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028862, 35.630146, 36.525303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435900, -0.363115, -0.823492,
		0.896749, 0.252874, 0.363174,
		0.076366, -0.896773, 0.435851,
		45.051773, 35.361115, 36.656059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778278, 35.823822, 36.477818>,  <44.998314, 35.988853, 36.350964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778278, 35.823822, 36.477818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549095, 35.497906, 36.442394>,  <45.411587, 35.302357, 36.421139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549095, 35.497906, 36.442394>,  <45.778278, 35.823822, 36.477818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549095, 35.497906, 36.442394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482360, -0.247871, -0.840172,
		0.662611, -0.524098, 0.535040,
		-0.572954, -0.814789, -0.088561,
		45.377209, 35.253468, 36.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248764, 35.239025, 36.361759>,  <45.778278, 35.823822, 36.477818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248764, 35.239025, 36.361759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890408, 35.109348, 36.240250>,  <45.675392, 35.031544, 36.167343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890408, 35.109348, 36.240250>,  <46.248764, 35.239025, 36.361759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890408, 35.109348, 36.240250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431923, -0.475502, -0.766381,
		0.104011, -0.817801, 0.566025,
		-0.895893, -0.324192, -0.303770,
		45.621639, 35.012093, 36.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089741, 34.765232, 36.982418>,  <46.248764, 35.239025, 36.361759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089741, 34.765232, 36.982418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.354542, 34.511723, 36.822376>,  <46.513420, 34.359615, 36.726353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.354542, 34.511723, 36.822376>,  <46.089741, 34.765232, 36.982418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354542, 34.511723, 36.822376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194609, -0.660865, 0.724834,
		-0.723796, -0.401978, -0.560832,
		0.662002, -0.633775, -0.400104,
		46.553143, 34.321590, 36.702343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861122, 34.087875, 36.751484>,  <46.089741, 34.765232, 36.982418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861122, 34.087875, 36.751484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.247597, 34.045471, 36.845505>,  <46.479481, 34.020031, 36.901917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.247597, 34.045471, 36.845505>,  <45.861122, 34.087875, 36.751484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247597, 34.045471, 36.845505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237930, -0.717877, 0.654249,
		0.099387, -0.688052, -0.718823,
		0.966184, -0.106006, 0.235055,
		46.537453, 34.013668, 36.916019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899441, 33.432503, 37.024624>,  <45.861122, 34.087875, 36.751484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899441, 33.432503, 37.024624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.247372, 33.581543, 37.153976>,  <46.456131, 33.670967, 37.231590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.247372, 33.581543, 37.153976>,  <45.899441, 33.432503, 37.024624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247372, 33.581543, 37.153976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010393, -0.641485, 0.767065,
		0.493253, -0.670573, -0.554106,
		0.869824, 0.372598, 0.323383,
		46.508320, 33.693321, 37.250992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261417, 32.821320, 37.070831>,  <45.899441, 33.432503, 37.024624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261417, 32.821320, 37.070831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.449547, 33.086868, 37.303406>,  <46.562424, 33.246197, 37.442951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.449547, 33.086868, 37.303406>,  <46.261417, 32.821320, 37.070831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449547, 33.086868, 37.303406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084961, -0.689859, 0.718941,
		0.878394, -0.288736, -0.380861,
		0.470324, 0.663872, 0.581437,
		46.590645, 33.286030, 37.477837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738361, 32.361557, 37.443607>,  <46.261417, 32.821320, 37.070831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738361, 32.361557, 37.443607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681156, 32.694710, 37.657467>,  <46.646835, 32.894604, 37.785782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681156, 32.694710, 37.657467>,  <46.738361, 32.361557, 37.443607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681156, 32.694710, 37.657467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020743, -0.537561, 0.842970,
		0.989504, 0.131644, 0.059600,
		-0.143011, 0.832886, 0.534649,
		46.638252, 32.944576, 37.817863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199062, 32.210247, 38.092258>,  <46.738361, 32.361557, 37.443607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199062, 32.210247, 38.092258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951778, 32.511494, 38.182262>,  <46.803410, 32.692242, 38.236263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951778, 32.511494, 38.182262>,  <47.199062, 32.210247, 38.092258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951778, 32.511494, 38.182262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244491, -0.456315, 0.855571,
		0.747020, 0.473911, 0.466229,
		-0.618211, 0.753117, 0.225010,
		46.766315, 32.737431, 38.249763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318806, 32.325680, 38.768570>,  <47.199062, 32.210247, 38.092258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318806, 32.325680, 38.768570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966503, 32.505173, 38.708015>,  <46.755123, 32.612869, 38.671684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966503, 32.505173, 38.708015>,  <47.318806, 32.325680, 38.768570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966503, 32.505173, 38.708015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259151, -0.189131, 0.947138,
		0.396378, 0.873425, 0.282866,
		-0.880753, 0.448729, -0.151382,
		46.702278, 32.639790, 38.662601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222145, 32.648132, 39.436802>,  <47.318806, 32.325680, 38.768570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222145, 32.648132, 39.436802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.858250, 32.649742, 39.270733>,  <46.639912, 32.650707, 39.171093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.858250, 32.649742, 39.270733>,  <47.222145, 32.648132, 39.436802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858250, 32.649742, 39.270733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413183, -0.106913, 0.904350,
		-0.040750, 0.994260, 0.098925,
		-0.909736, 0.004022, -0.415168,
		46.585327, 32.650948, 39.146183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722500, 33.211010, 39.774651>,  <47.222145, 32.648132, 39.436802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722500, 33.211010, 39.774651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490017, 32.925938, 39.617535>,  <46.350529, 32.754894, 39.523266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490017, 32.925938, 39.617535>,  <46.722500, 33.211010, 39.774651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490017, 32.925938, 39.617535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686284, 0.169902, 0.707211,
		-0.437282, 0.680599, -0.587852,
		-0.581204, -0.712684, -0.392789,
		46.315655, 32.712132, 39.499699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089981, 33.541626, 39.765835>,  <46.722500, 33.211010, 39.774651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089981, 33.541626, 39.765835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006741, 33.150822, 39.747330>,  <45.956795, 32.916340, 39.736225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006741, 33.150822, 39.747330>,  <46.089981, 33.541626, 39.765835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006741, 33.150822, 39.747330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711964, 0.118874, 0.692081,
		-0.670672, 0.176964, -0.720336,
		-0.208103, -0.977012, -0.046266,
		45.944309, 32.857719, 39.733448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291252, 33.491535, 39.667961>,  <46.089981, 33.541626, 39.765835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291252, 33.491535, 39.667961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433620, 33.160305, 39.841213>,  <45.519043, 32.961567, 39.945164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433620, 33.160305, 39.841213>,  <45.291252, 33.491535, 39.667961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433620, 33.160305, 39.841213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805040, -0.036312, 0.592109,
		-0.474584, -0.559435, -0.679560,
		0.355923, -0.828079, 0.433134,
		45.540398, 32.911880, 39.971153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690815, 33.244667, 39.900177>,  <45.291252, 33.491535, 39.667961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690815, 33.244667, 39.900177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954021, 33.019886, 40.100662>,  <45.111946, 32.885017, 40.220955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954021, 33.019886, 40.100662>,  <44.690815, 33.244667, 39.900177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954021, 33.019886, 40.100662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640245, -0.067174, 0.765228,
		-0.396353, -0.824437, -0.403989,
		0.658020, -0.561952, 0.501218,
		45.151428, 32.851299, 40.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363297, 32.696522, 40.118401>,  <44.690815, 33.244667, 39.900177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363297, 32.696522, 40.118401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674706, 32.688545, 40.369320>,  <44.861549, 32.683762, 40.519871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674706, 32.688545, 40.369320>,  <44.363297, 32.696522, 40.118401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674706, 32.688545, 40.369320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627026, -0.068131, 0.776013,
		0.027269, -0.997477, -0.065542,
		0.778521, -0.019936, 0.627302,
		44.908260, 32.682564, 40.557510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199360, 32.102642, 40.665100>,  <44.363297, 32.696522, 40.118401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199360, 32.102642, 40.665100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472176, 32.364464, 40.795567>,  <44.635864, 32.521557, 40.873848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472176, 32.364464, 40.795567>,  <44.199360, 32.102642, 40.665100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472176, 32.364464, 40.795567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551207, 0.166997, 0.817486,
		0.480618, -0.737342, 0.474692,
		0.682039, 0.654552, 0.326166,
		44.676788, 32.560829, 40.893417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218910, 31.928053, 41.332355>,  <44.199360, 32.102642, 40.665100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218910, 31.928053, 41.332355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385468, 32.291630, 41.323994>,  <44.485401, 32.509777, 41.318977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385468, 32.291630, 41.323994>,  <44.218910, 31.928053, 41.332355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385468, 32.291630, 41.323994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588922, 0.287162, 0.755453,
		0.692665, -0.302258, 0.654870,
		0.416396, 0.908943, -0.020901,
		44.510387, 32.564312, 41.317722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626041, 32.083595, 41.974525>,  <44.218910, 31.928053, 41.332355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626041, 32.083595, 41.974525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.561008, 32.457481, 41.848118>,  <44.521988, 32.681812, 41.772274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.561008, 32.457481, 41.848118>,  <44.626041, 32.083595, 41.974525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561008, 32.457481, 41.848118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415173, 0.225740, 0.881290,
		0.895096, 0.274489, 0.351367,
		-0.162587, 0.934718, -0.316020,
		44.512234, 32.737896, 41.753311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060604, 32.493710, 42.428108>,  <44.626041, 32.083595, 41.974525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060604, 32.493710, 42.428108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760429, 32.691677, 42.252880>,  <44.580326, 32.810459, 42.147743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760429, 32.691677, 42.252880>,  <45.060604, 32.493710, 42.428108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760429, 32.691677, 42.252880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400327, 0.187032, 0.897083,
		0.525915, 0.848573, 0.057773,
		-0.750434, 0.494917, -0.438070,
		44.535297, 32.840153, 42.121460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010918, 33.071037, 42.738228>,  <45.060604, 32.493710, 42.428108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010918, 33.071037, 42.738228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643059, 33.018726, 42.590096>,  <44.422344, 32.987339, 42.501217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643059, 33.018726, 42.590096>,  <45.010918, 33.071037, 42.738228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643059, 33.018726, 42.590096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383345, 0.503940, 0.774009,
		0.085397, 0.853780, -0.513582,
		-0.919649, -0.130781, -0.370328,
		44.367165, 32.979492, 42.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645866, 33.664688, 42.821312>,  <45.010918, 33.071037, 42.738228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645866, 33.664688, 42.821312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339520, 33.414093, 42.763401>,  <44.155712, 33.263737, 42.728657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339520, 33.414093, 42.763401>,  <44.645866, 33.664688, 42.821312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339520, 33.414093, 42.763401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517757, 0.467350, 0.716597,
		-0.381278, 0.623778, -0.682296,
		-0.765869, -0.626486, -0.144775,
		44.109760, 33.226147, 42.719967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055771, 34.052372, 42.837257>,  <44.645866, 33.664688, 42.821312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055771, 34.052372, 42.837257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889271, 33.693607, 42.896969>,  <43.789371, 33.478348, 42.932796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889271, 33.693607, 42.896969>,  <44.055771, 34.052372, 42.837257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889271, 33.693607, 42.896969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776978, 0.436146, 0.453962,
		-0.472274, 0.072972, -0.878426,
		-0.416248, -0.896912, 0.149283,
		43.764397, 33.424534, 42.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332001, 34.171028, 42.827457>,  <44.055771, 34.052372, 42.837257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332001, 34.171028, 42.827457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394093, 33.815491, 42.999908>,  <43.431347, 33.602169, 43.103378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394093, 33.815491, 42.999908>,  <43.332001, 34.171028, 42.827457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394093, 33.815491, 42.999908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641290, 0.241296, 0.728370,
		-0.751433, -0.389540, -0.532548,
		0.155227, -0.888839, 0.431126,
		43.440662, 33.548840, 43.129246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.041767, 37.128071, 39.405964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723736, 36.989399, 39.206902>,  <39.532917, 36.906197, 39.087463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723736, 36.989399, 39.206902>,  <40.041767, 37.128071, 39.405964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723736, 36.989399, 39.206902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381060, 0.352816, -0.854584,
		0.471848, -0.869099, -0.148412,
		-0.795080, -0.346680, -0.497655,
		39.485210, 36.885395, 39.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355537, 36.960651, 38.692745>,  <40.041767, 37.128071, 39.405964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355537, 36.960651, 38.692745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956532, 36.979622, 38.671867>,  <39.717129, 36.991005, 38.659340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956532, 36.979622, 38.671867>,  <40.355537, 36.960651, 38.692745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956532, 36.979622, 38.671867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061308, 0.217358, -0.974165,
		-0.034859, -0.974939, -0.219725,
		-0.997510, 0.047429, -0.052195,
		39.657280, 36.993851, 38.656208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169044, 36.554680, 38.141003>,  <40.355537, 36.960651, 38.692745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169044, 36.554680, 38.141003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841377, 36.780041, 38.183979>,  <39.644775, 36.915257, 38.209766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841377, 36.780041, 38.183979>,  <40.169044, 36.554680, 38.141003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841377, 36.780041, 38.183979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042298, 0.127474, -0.990940,
		-0.571990, -0.816292, -0.080592,
		-0.819169, 0.563398, 0.107441,
		39.595627, 36.949059, 38.216209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619034, 36.289158, 37.651615>,  <40.169044, 36.554680, 38.141003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619034, 36.289158, 37.651615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546074, 36.670292, 37.748634>,  <39.502296, 36.898972, 37.806847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546074, 36.670292, 37.748634>,  <39.619034, 36.289158, 37.651615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546074, 36.670292, 37.748634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097717, 0.263035, -0.959825,
		-0.978356, -0.151373, -0.141086,
		-0.182402, 0.952837, 0.242550,
		39.491352, 36.956142, 37.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269352, 36.559010, 37.051426>,  <39.619034, 36.289158, 37.651615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269352, 36.559010, 37.051426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395367, 36.868332, 37.271515>,  <39.470974, 37.053925, 37.403568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395367, 36.868332, 37.271515>,  <39.269352, 36.559010, 37.051426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395367, 36.868332, 37.271515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256064, 0.488986, -0.833861,
		-0.913884, 0.403589, -0.043968,
		0.315037, 0.773310, 0.550221,
		39.489876, 37.100327, 37.436581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018085, 37.110260, 36.749363>,  <39.269352, 36.559010, 37.051426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018085, 37.110260, 36.749363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297115, 37.294464, 36.968933>,  <39.464535, 37.404987, 37.100674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297115, 37.294464, 36.968933>,  <39.018085, 37.110260, 36.749363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297115, 37.294464, 36.968933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268331, 0.542450, -0.796082,
		-0.664369, 0.702621, 0.254830,
		0.697576, 0.460513, 0.548922,
		39.506390, 37.432617, 37.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818855, 37.838890, 36.762035>,  <39.018085, 37.110260, 36.749363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818855, 37.838890, 36.762035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208893, 37.801716, 36.842587>,  <39.442917, 37.779411, 36.890915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208893, 37.801716, 36.842587>,  <38.818855, 37.838890, 36.762035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208893, 37.801716, 36.842587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221383, 0.462441, -0.858568,
		-0.013335, 0.881767, 0.471498,
		0.975096, -0.092932, 0.201375,
		39.501423, 37.773834, 36.903000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128712, 38.449635, 36.799938>,  <38.818855, 37.838890, 36.762035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128712, 38.449635, 36.799938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427399, 38.208057, 36.688465>,  <39.606609, 38.063110, 36.621582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427399, 38.208057, 36.688465>,  <39.128712, 38.449635, 36.799938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427399, 38.208057, 36.688465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159925, 0.569716, -0.806131,
		0.645630, 0.557383, 0.522002,
		0.746717, -0.603943, -0.278687,
		39.651413, 38.026875, 36.604858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714119, 38.862316, 36.627312>,  <39.128712, 38.449635, 36.799938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714119, 38.862316, 36.627312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800457, 38.513405, 36.451790>,  <39.852261, 38.304058, 36.346478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800457, 38.513405, 36.451790>,  <39.714119, 38.862316, 36.627312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800457, 38.513405, 36.451790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170794, 0.476198, -0.862592,
		0.961375, 0.111238, 0.251763,
		0.215842, -0.872274, -0.438806,
		39.865211, 38.251724, 36.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356804, 38.951561, 36.358299>,  <39.714119, 38.862316, 36.627312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356804, 38.951561, 36.358299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189602, 38.636452, 36.177330>,  <40.089279, 38.447388, 36.068748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189602, 38.636452, 36.177330>,  <40.356804, 38.951561, 36.358299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189602, 38.636452, 36.177330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, 0.444651, -0.887305,
		0.900164, -0.426263, -0.089469,
		-0.418008, -0.787773, -0.452420,
		40.064201, 38.400120, 36.041603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795803, 38.787796, 35.749058>,  <40.356804, 38.951561, 36.358299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795803, 38.787796, 35.749058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466244, 38.584209, 35.649345>,  <40.268509, 38.462055, 35.589520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466244, 38.584209, 35.649345>,  <40.795803, 38.787796, 35.749058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466244, 38.584209, 35.649345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061887, 0.356427, -0.932271,
		0.563349, -0.783524, -0.262161,
		-0.823898, -0.508970, -0.249282,
		40.219074, 38.431519, 35.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970421, 38.451801, 35.211514>,  <40.795803, 38.787796, 35.749058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970421, 38.451801, 35.211514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572189, 38.458561, 35.174541>,  <40.333252, 38.462616, 35.152359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572189, 38.458561, 35.174541>,  <40.970421, 38.451801, 35.211514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572189, 38.458561, 35.174541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093885, 0.139543, -0.985755,
		-0.003761, -0.990072, -0.140512,
		-0.995576, 0.016899, -0.092428,
		40.273518, 38.463631, 35.146812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428322, 38.087303, 34.691120>,  <40.970421, 38.451801, 35.211514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428322, 38.087303, 34.691120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716686, 37.989067, 34.431900>,  <41.889706, 37.930126, 34.276367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716686, 37.989067, 34.431900>,  <41.428322, 38.087303, 34.691120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716686, 37.989067, 34.431900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611403, -0.665663, -0.427878,
		-0.326300, 0.704683, -0.630040,
		0.720912, -0.245592, -0.648051,
		41.932961, 37.915390, 34.237484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819916, 37.848213, 35.296894>,  <41.428322, 38.087303, 34.691120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819916, 37.848213, 35.296894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016052, 37.555164, 35.108078>,  <42.133736, 37.379333, 34.994789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016052, 37.555164, 35.108078>,  <41.819916, 37.848213, 35.296894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016052, 37.555164, 35.108078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362754, -0.664043, 0.653802,
		-0.792449, -0.149350, -0.591370,
		0.490340, -0.732627, -0.472043,
		42.163155, 37.335377, 34.966465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321362, 37.289722, 35.248932>,  <41.819916, 37.848213, 35.296894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321362, 37.289722, 35.248932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703171, 37.170803, 35.240036>,  <41.932259, 37.099453, 35.234699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703171, 37.170803, 35.240036>,  <41.321362, 37.289722, 35.248932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703171, 37.170803, 35.240036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231984, -0.787530, 0.570947,
		-0.187254, -0.539825, -0.820686,
		0.954526, -0.297298, -0.022238,
		41.989529, 37.081615, 35.233364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230968, 36.557129, 35.269680>,  <41.321362, 37.289722, 35.248932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230968, 36.557129, 35.269680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621979, 36.608742, 35.336357>,  <41.856586, 36.639709, 35.376362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621979, 36.608742, 35.336357>,  <41.230968, 36.557129, 35.269680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621979, 36.608742, 35.336357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027773, -0.705039, 0.708624,
		0.208958, -0.697331, -0.685614,
		0.977530, 0.129031, 0.166691,
		41.915237, 36.647449, 35.386364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495045, 36.006111, 34.974724>,  <41.230968, 36.557129, 35.269680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495045, 36.006111, 34.974724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704620, 36.156010, 35.280678>,  <41.830364, 36.245949, 35.464249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704620, 36.156010, 35.280678>,  <41.495045, 36.006111, 34.974724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704620, 36.156010, 35.280678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132587, -0.851181, 0.507850,
		0.841373, -0.367496, -0.396280,
		0.523939, 0.374750, 0.764886,
		41.861801, 36.268433, 35.510143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916073, 35.466938, 35.205662>,  <41.495045, 36.006111, 34.974724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916073, 35.466938, 35.205662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909496, 35.725491, 35.510799>,  <41.905552, 35.880623, 35.693882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909496, 35.725491, 35.510799>,  <41.916073, 35.466938, 35.205662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909496, 35.725491, 35.510799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166670, -0.754041, 0.635329,
		0.985876, -0.116698, 0.120127,
		-0.016439, 0.646377, 0.762841,
		41.904564, 35.919403, 35.739651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469418, 35.309475, 35.668262>,  <41.916073, 35.466938, 35.205662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469418, 35.309475, 35.668262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182568, 35.477543, 35.890682>,  <42.010460, 35.578384, 36.024136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182568, 35.477543, 35.890682>,  <42.469418, 35.309475, 35.668262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182568, 35.477543, 35.890682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032288, -0.776950, 0.628733,
		0.696198, 0.468833, 0.543603,
		-0.717123, 0.420171, 0.556049,
		41.967430, 35.603596, 36.057495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533474, 34.940651, 36.225449>,  <42.469418, 35.309475, 35.668262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533474, 34.940651, 36.225449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192757, 35.130150, 36.314903>,  <41.988327, 35.243851, 36.368576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192757, 35.130150, 36.314903>,  <42.533474, 34.940651, 36.225449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192757, 35.130150, 36.314903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279804, -0.772303, 0.570313,
		0.442897, 0.423216, 0.790399,
		-0.851793, 0.473747, 0.223633,
		41.937218, 35.272274, 36.381992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486294, 34.948856, 36.963810>,  <42.533474, 34.940651, 36.225449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486294, 34.948856, 36.963810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112717, 35.032906, 36.848160>,  <41.888569, 35.083336, 36.778770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112717, 35.032906, 36.848160>,  <42.486294, 34.948856, 36.963810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112717, 35.032906, 36.848160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352182, -0.678953, 0.644197,
		-0.060945, 0.703471, 0.708106,
		-0.933945, 0.210122, -0.289129,
		41.832535, 35.095943, 36.761421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170540, 34.962341, 37.595543>,  <42.486294, 34.948856, 36.963810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170540, 34.962341, 37.595543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896126, 34.873386, 37.318443>,  <41.731476, 34.820015, 37.152184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896126, 34.873386, 37.318443>,  <42.170540, 34.962341, 37.595543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896126, 34.873386, 37.318443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345891, -0.737969, 0.579448,
		-0.640087, 0.637138, 0.429353,
		-0.686038, -0.222388, -0.692745,
		41.690315, 34.806671, 37.110619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609531, 34.783573, 38.059258>,  <42.170540, 34.962341, 37.595543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609531, 34.783573, 38.059258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523983, 34.637085, 37.697010>,  <41.472652, 34.549191, 37.479664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523983, 34.637085, 37.697010>,  <41.609531, 34.783573, 38.059258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523983, 34.637085, 37.697010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539157, -0.728819, 0.422057,
		-0.814597, 0.578535, -0.041576,
		-0.213873, -0.366223, -0.905615,
		41.459820, 34.527218, 37.425327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850117, 34.631737, 38.019218>,  <41.609531, 34.783573, 38.059258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850117, 34.631737, 38.019218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033997, 34.387077, 37.761673>,  <41.144325, 34.240280, 37.607147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033997, 34.387077, 37.761673>,  <40.850117, 34.631737, 38.019218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033997, 34.387077, 37.761673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473544, -0.782165, 0.404937,
		-0.751285, 0.118746, -0.649208,
		0.459703, -0.611652, -0.643860,
		41.171906, 34.203583, 37.568516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373676, 34.215843, 37.966503>,  <40.850117, 34.631737, 38.019218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373676, 34.215843, 37.966503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698879, 34.039143, 37.814777>,  <40.894001, 33.933121, 37.723743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698879, 34.039143, 37.814777>,  <40.373676, 34.215843, 37.966503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698879, 34.039143, 37.814777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240254, -0.847924, 0.472549,
		-0.530380, -0.293052, -0.795498,
		0.813004, -0.441752, -0.379315,
		40.942780, 33.906616, 37.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188618, 33.504482, 37.632591>,  <40.373676, 34.215843, 37.966503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188618, 33.504482, 37.632591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572174, 33.514427, 37.745663>,  <40.802307, 33.520393, 37.813507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572174, 33.514427, 37.745663>,  <40.188618, 33.504482, 37.632591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572174, 33.514427, 37.745663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169139, -0.749799, 0.639683,
		0.227856, -0.661199, -0.714771,
		0.958892, 0.024860, 0.282680,
		40.859840, 33.521885, 37.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364063, 32.759617, 37.787735>,  <40.188618, 33.504482, 37.632591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364063, 32.759617, 37.787735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653419, 32.987064, 37.944389>,  <40.827034, 33.123535, 38.038380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653419, 32.987064, 37.944389>,  <40.364063, 32.759617, 37.787735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653419, 32.987064, 37.944389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013868, -0.555143, 0.831640,
		0.690299, -0.607032, -0.393700,
		0.723391, 0.568620, 0.391633,
		40.870438, 33.157650, 38.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872486, 32.247616, 38.034641>,  <40.364063, 32.759617, 37.787735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872486, 32.247616, 38.034641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927937, 32.588692, 38.236118>,  <40.961208, 32.793335, 38.357006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927937, 32.588692, 38.236118>,  <40.872486, 32.247616, 38.034641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927937, 32.588692, 38.236118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160801, -0.521237, 0.838126,
		0.977202, -0.035195, -0.209372,
		0.138630, 0.852686, 0.503695,
		40.969524, 32.844498, 38.387226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281502, 31.650398, 37.577137>,  <40.872486, 32.247616, 38.034641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281502, 31.650398, 37.577137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889305, 31.625444, 37.502583>,  <40.653988, 31.610472, 37.457851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889305, 31.625444, 37.502583>,  <41.281502, 31.650398, 37.577137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889305, 31.625444, 37.502583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132762, 0.489051, -0.862093,
		0.144934, -0.870021, -0.471229,
		-0.980494, -0.062385, -0.186386,
		40.595158, 31.606730, 37.446667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225327, 31.429789, 36.875080>,  <41.281502, 31.650398, 37.577137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225327, 31.429789, 36.875080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878460, 31.612545, 36.954346>,  <40.670338, 31.722198, 37.001904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878460, 31.612545, 36.954346>,  <41.225327, 31.429789, 36.875080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878460, 31.612545, 36.954346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047114, 0.471390, -0.880666,
		-0.495781, -0.754350, -0.430300,
		-0.867169, 0.456891, 0.198166,
		40.618309, 31.749613, 37.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824100, 31.315691, 36.239216>,  <41.225327, 31.429789, 36.875080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824100, 31.315691, 36.239216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654716, 31.619192, 36.437195>,  <40.553085, 31.801292, 36.555981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654716, 31.619192, 36.437195>,  <40.824100, 31.315691, 36.239216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654716, 31.619192, 36.437195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040071, 0.530129, -0.846970,
		-0.905026, -0.378495, -0.194087,
		-0.423465, 0.758753, 0.494947,
		40.527676, 31.846817, 36.585678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131355, 31.495852, 35.846294>,  <40.824100, 31.315691, 36.239216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131355, 31.495852, 35.846294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243244, 31.790709, 36.092342>,  <40.310375, 31.967623, 36.239971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243244, 31.790709, 36.092342>,  <40.131355, 31.495852, 35.846294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243244, 31.790709, 36.092342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264201, 0.675063, -0.688830,
		-0.923014, 0.030161, 0.383582,
		0.279718, 0.737143, 0.615124,
		40.327160, 32.011852, 36.276878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529991, 31.861813, 36.004631>,  <40.131355, 31.495852, 35.846294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529991, 31.861813, 36.004631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846104, 32.101871, 36.054085>,  <40.035770, 32.245907, 36.083755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846104, 32.101871, 36.054085>,  <39.529991, 31.861813, 36.004631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846104, 32.101871, 36.054085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368286, 0.626473, -0.686948,
		-0.489722, 0.497347, 0.716113,
		0.790277, 0.600148, 0.123631,
		40.083187, 32.281918, 36.091175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253647, 32.460732, 35.831474>,  <39.529991, 31.861813, 36.004631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253647, 32.460732, 35.831474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640419, 32.562653, 35.826962>,  <39.872482, 32.623806, 35.824253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640419, 32.562653, 35.826962>,  <39.253647, 32.460732, 35.831474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640419, 32.562653, 35.826962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217597, 0.801047, -0.557651,
		-0.133051, 0.541664, 0.829999,
		0.966928, 0.254801, -0.011284,
		39.930496, 32.639091, 35.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280144, 33.070335, 36.030437>,  <39.253647, 32.460732, 35.831474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280144, 33.070335, 36.030437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623280, 33.038044, 35.827423>,  <39.829163, 33.018669, 35.705612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623280, 33.038044, 35.827423>,  <39.280144, 33.070335, 36.030437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623280, 33.038044, 35.827423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221036, 0.833614, -0.506192,
		0.463957, 0.546416, 0.697261,
		0.857838, -0.080731, -0.507539,
		39.880630, 33.013824, 35.675159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551231, 33.765038, 36.106541>,  <39.280144, 33.070335, 36.030437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551231, 33.765038, 36.106541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728168, 33.613888, 35.781200>,  <39.834332, 33.523197, 35.585995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728168, 33.613888, 35.781200>,  <39.551231, 33.765038, 36.106541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728168, 33.613888, 35.781200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293940, 0.795729, -0.529542,
		0.847308, 0.473316, 0.240915,
		0.442344, -0.377871, -0.813355,
		39.860870, 33.500526, 35.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762409, 34.308395, 35.821087>,  <39.551231, 33.765038, 36.106541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762409, 34.308395, 35.821087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773579, 34.028183, 35.535858>,  <39.780281, 33.860054, 35.364719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773579, 34.028183, 35.535858>,  <39.762409, 34.308395, 35.821087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773579, 34.028183, 35.535858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170358, 0.699582, -0.693947,
		0.984986, 0.140856, -0.099806,
		0.027925, -0.700531, -0.713075,
		39.781956, 33.818024, 35.321934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206429, 34.559124, 35.298958>,  <39.762409, 34.308395, 35.821087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206429, 34.559124, 35.298958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958588, 34.317497, 35.098476>,  <39.809883, 34.172523, 34.978188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958588, 34.317497, 35.098476>,  <40.206429, 34.559124, 35.298958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958588, 34.317497, 35.098476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157451, 0.721213, -0.674582,
		0.768964, -0.339056, -0.541974,
		-0.619599, -0.604064, -0.501202,
		39.772709, 34.136276, 34.948116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295334, 34.729610, 34.521679>,  <40.206429, 34.559124, 35.298958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295334, 34.729610, 34.521679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944130, 34.550819, 34.590160>,  <39.733410, 34.443542, 34.631248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944130, 34.550819, 34.590160>,  <40.295334, 34.729610, 34.521679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944130, 34.550819, 34.590160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447574, 0.639915, -0.624649,
		0.169647, -0.625075, -0.761907,
		-0.878008, -0.446979, 0.171208,
		39.680729, 34.416725, 34.641521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184246, 34.454948, 33.854965>,  <40.295334, 34.729610, 34.521679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184246, 34.454948, 33.854965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861828, 34.549656, 34.071938>,  <39.668377, 34.606480, 34.202122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861828, 34.549656, 34.071938>,  <40.184246, 34.454948, 33.854965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861828, 34.549656, 34.071938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272475, 0.665150, -0.695221,
		-0.525405, -0.708179, -0.471627,
		-0.806044, 0.236766, 0.542434,
		39.620014, 34.620686, 34.234669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.782150, 28.827448, 39.695343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484360, 29.064137, 39.819031>,  <39.305687, 29.206150, 39.893246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484360, 29.064137, 39.819031>,  <39.782150, 28.827448, 39.695343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484360, 29.064137, 39.819031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091982, 0.549639, -0.830323,
		-0.661282, -0.589713, -0.463621,
		-0.744476, 0.591723, 0.309223,
		39.261017, 29.241653, 39.911797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627010, 29.178335, 39.121029>,  <39.782150, 28.827448, 39.695343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627010, 29.178335, 39.121029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406631, 29.388220, 39.380611>,  <39.274406, 29.514151, 39.536362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406631, 29.388220, 39.380611>,  <39.627010, 29.178335, 39.121029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406631, 29.388220, 39.380611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000609, 0.777868, -0.628428,
		-0.834543, -0.345832, -0.428880,
		-0.550943, 0.524711, 0.648953,
		39.241348, 29.545633, 39.575298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934620, 29.386030, 38.767952>,  <39.627010, 29.178335, 39.121029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934620, 29.386030, 38.767952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059319, 29.640030, 39.050678>,  <39.134136, 29.792431, 39.220314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059319, 29.640030, 39.050678>,  <38.934620, 29.386030, 38.767952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059319, 29.640030, 39.050678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070594, 0.726353, -0.683687,
		-0.947540, 0.263032, 0.181608,
		0.311743, 0.635000, 0.706818,
		39.152840, 29.830530, 39.262722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645725, 30.068542, 38.541245>,  <38.934620, 29.386030, 38.767952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645725, 30.068542, 38.541245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948120, 30.140909, 38.792881>,  <39.129559, 30.184330, 38.943863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948120, 30.140909, 38.792881>,  <38.645725, 30.068542, 38.541245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948120, 30.140909, 38.792881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313001, 0.744147, -0.590148,
		-0.574904, 0.643050, 0.505938,
		0.755987, 0.180919, 0.629088,
		39.174915, 30.195185, 38.981609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696747, 30.692122, 38.408279>,  <38.645725, 30.068542, 38.541245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696747, 30.692122, 38.408279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037430, 30.610613, 38.601391>,  <39.241840, 30.561708, 38.717258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037430, 30.610613, 38.601391>,  <38.696747, 30.692122, 38.408279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037430, 30.610613, 38.601391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507788, 0.548481, -0.664319,
		-0.129426, 0.810954, 0.570616,
		0.851704, -0.203772, 0.482780,
		39.292942, 30.549480, 38.746223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054497, 31.334175, 38.633339>,  <38.696747, 30.692122, 38.408279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054497, 31.334175, 38.633339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348572, 31.063608, 38.615665>,  <39.525017, 30.901268, 38.605061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348572, 31.063608, 38.615665>,  <39.054497, 31.334175, 38.633339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348572, 31.063608, 38.615665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498585, 0.583768, -0.640803,
		0.459245, 0.449083, 0.766433,
		0.735192, -0.676417, -0.044186,
		39.569130, 30.860683, 38.602409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640163, 31.737360, 38.704205>,  <39.054497, 31.334175, 38.633339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640163, 31.737360, 38.704205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759270, 31.391081, 38.543255>,  <39.830734, 31.183313, 38.446686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759270, 31.391081, 38.543255>,  <39.640163, 31.737360, 38.704205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759270, 31.391081, 38.543255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596120, 0.497826, -0.629928,
		0.745638, -0.052291, 0.664296,
		0.297764, -0.865699, -0.402371,
		39.848598, 31.131371, 38.422543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355579, 31.775375, 38.575096>,  <39.640163, 31.737360, 38.704205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355579, 31.775375, 38.575096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224358, 31.500288, 38.316044>,  <40.145622, 31.335236, 38.160614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224358, 31.500288, 38.316044>,  <40.355579, 31.775375, 38.575096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224358, 31.500288, 38.316044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539371, 0.426469, -0.726088,
		0.775537, -0.587511, 0.231028,
		-0.328058, -0.687718, -0.647628,
		40.125938, 31.293972, 38.121754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906918, 31.521578, 38.334995>,  <40.355579, 31.775375, 38.575096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906918, 31.521578, 38.334995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614841, 31.471151, 38.066391>,  <40.439598, 31.440895, 37.905228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614841, 31.471151, 38.066391>,  <40.906918, 31.521578, 38.334995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614841, 31.471151, 38.066391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555273, 0.463188, -0.690745,
		0.398115, -0.877248, -0.268215,
		-0.730189, -0.126064, -0.671514,
		40.395786, 31.433332, 37.864937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420380, 32.009674, 38.510933>,  <40.906918, 31.521578, 38.334995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420380, 32.009674, 38.510933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258881, 32.336441, 38.675682>,  <41.161980, 32.532501, 38.774532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258881, 32.336441, 38.675682>,  <41.420380, 32.009674, 38.510933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258881, 32.336441, 38.675682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105693, -0.405530, 0.907951,
		0.908744, 0.410117, 0.077390,
		-0.403749, 0.816915, 0.411869,
		41.137756, 32.581516, 38.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859192, 32.298889, 39.074039>,  <41.420380, 32.009674, 38.510933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859192, 32.298889, 39.074039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495586, 32.437748, 39.166294>,  <41.277424, 32.521061, 39.221645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495586, 32.437748, 39.166294>,  <41.859192, 32.298889, 39.074039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495586, 32.437748, 39.166294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014242, -0.527184, 0.849632,
		0.416532, 0.775608, 0.474271,
		-0.909009, 0.347145, 0.230635,
		41.222885, 32.541893, 39.235485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721672, 32.288929, 39.833336>,  <41.859192, 32.298889, 39.074039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721672, 32.288929, 39.833336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343807, 32.383602, 39.742470>,  <41.117088, 32.440407, 39.687950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343807, 32.383602, 39.742470>,  <41.721672, 32.288929, 39.833336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343807, 32.383602, 39.742470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266178, -0.148240, 0.952457,
		0.191759, 0.960211, 0.203036,
		-0.944658, 0.236686, -0.227161,
		41.060410, 32.454609, 39.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495052, 32.848690, 40.342815>,  <41.721672, 32.288929, 39.833336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495052, 32.848690, 40.342815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186802, 32.646683, 40.187332>,  <41.001850, 32.525478, 40.094044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186802, 32.646683, 40.187332>,  <41.495052, 32.848690, 40.342815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186802, 32.646683, 40.187332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311413, -0.233747, 0.921078,
		-0.556018, 0.830855, 0.022863,
		-0.770627, -0.505017, -0.388707,
		40.955612, 32.495178, 40.070721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827297, 33.067055, 40.660069>,  <41.495052, 32.848690, 40.342815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827297, 33.067055, 40.660069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708305, 32.714973, 40.512150>,  <40.636909, 32.503723, 40.423401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708305, 32.714973, 40.512150>,  <40.827297, 33.067055, 40.660069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708305, 32.714973, 40.512150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330675, -0.268364, 0.904785,
		-0.895633, 0.391439, -0.211227,
		-0.297483, -0.880202, -0.369795,
		40.619061, 32.450912, 40.401211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214806, 33.017895, 40.885891>,  <40.827297, 33.067055, 40.660069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214806, 33.017895, 40.885891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317368, 32.647049, 40.776558>,  <40.378906, 32.424541, 40.710957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317368, 32.647049, 40.776558>,  <40.214806, 33.017895, 40.885891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317368, 32.647049, 40.776558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350681, -0.352749, 0.867520,
		-0.900711, -0.126583, -0.415568,
		0.256405, -0.927116, -0.273335,
		40.394291, 32.368916, 40.694557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678780, 32.647503, 41.096821>,  <40.214806, 33.017895, 40.885891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678780, 32.647503, 41.096821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.972710, 32.378551, 41.061169>,  <40.149067, 32.217182, 41.039776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.972710, 32.378551, 41.061169>,  <39.678780, 32.647503, 41.096821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972710, 32.378551, 41.061169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294977, -0.435139, 0.850672,
		-0.610760, -0.598799, -0.518085,
		0.734821, -0.672379, -0.089133,
		40.193157, 32.176838, 41.034428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408947, 32.044712, 41.230404>,  <39.678780, 32.647503, 41.096821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408947, 32.044712, 41.230404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790409, 31.943844, 41.296078>,  <40.019287, 31.883322, 41.335480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790409, 31.943844, 41.296078>,  <39.408947, 32.044712, 41.230404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790409, 31.943844, 41.296078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292984, -0.653736, 0.697703,
		-0.068611, -0.713469, -0.697320,
		0.953652, -0.252174, 0.164182,
		40.076504, 31.868191, 41.345333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474068, 31.372274, 41.292622>,  <39.408947, 32.044712, 41.230404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474068, 31.372274, 41.292622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801838, 31.490067, 41.489323>,  <39.998501, 31.560741, 41.607342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801838, 31.490067, 41.489323>,  <39.474068, 31.372274, 41.292622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801838, 31.490067, 41.489323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088959, -0.782196, 0.616648,
		0.566236, -0.549045, -0.614757,
		0.819428, 0.294480, 0.491750,
		40.047665, 31.578411, 41.636848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944740, 30.786184, 41.330555>,  <39.474068, 31.372274, 41.292622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944740, 30.786184, 41.330555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031666, 31.038347, 41.628647>,  <40.083820, 31.189644, 41.807503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031666, 31.038347, 41.628647>,  <39.944740, 30.786184, 41.330555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031666, 31.038347, 41.628647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159889, -0.730171, 0.664293,
		0.962918, -0.263512, -0.057879,
		0.217310, 0.630406, 0.745228,
		40.096859, 31.227468, 41.852215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806023, 30.427343, 41.839825>,  <39.944740, 30.786184, 41.330555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806023, 30.427343, 41.839825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981518, 30.724373, 42.042248>,  <40.086815, 30.902590, 42.163704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981518, 30.724373, 42.042248>,  <39.806023, 30.427343, 41.839825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981518, 30.724373, 42.042248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066829, -0.534633, 0.842438,
		0.896127, -0.403429, -0.184939,
		0.438738, 0.742572, 0.506060,
		40.113140, 30.947144, 42.194065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542324, 30.392494, 42.094498>,  <39.806023, 30.427343, 41.839825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542324, 30.392494, 42.094498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384621, 30.658497, 42.348213>,  <40.289997, 30.818098, 42.500443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384621, 30.658497, 42.348213>,  <40.542324, 30.392494, 42.094498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384621, 30.658497, 42.348213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053896, -0.672276, 0.738336,
		0.917417, 0.325283, 0.229211,
		-0.394261, 0.665009, 0.634288,
		40.266342, 30.858000, 42.538498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831169, 30.242563, 42.717712>,  <40.542324, 30.392494, 42.094498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831169, 30.242563, 42.717712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.520393, 30.455269, 42.852528>,  <40.333927, 30.582893, 42.933418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.520393, 30.455269, 42.852528>,  <40.831169, 30.242563, 42.717712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520393, 30.455269, 42.852528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056638, -0.592207, 0.803793,
		0.627027, 0.605407, 0.490225,
		-0.776936, 0.531765, 0.337040,
		40.287312, 30.614798, 42.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018829, 30.504837, 43.361664>,  <40.831169, 30.242563, 42.717712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018829, 30.504837, 43.361664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.619328, 30.505411, 43.381603>,  <40.379627, 30.505754, 43.393566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.619328, 30.505411, 43.381603>,  <41.018829, 30.504837, 43.361664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619328, 30.505411, 43.381603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044599, -0.421379, 0.905787,
		0.022302, 0.906883, 0.420791,
		-0.998756, 0.001434, 0.049844,
		40.319702, 30.505842, 43.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.099323, 32.349792, 42.083031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293858, 32.028732, 41.944908>,  <33.410580, 31.836098, 41.862034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293858, 32.028732, 41.944908>,  <33.099323, 32.349792, 42.083031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293858, 32.028732, 41.944908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346358, 0.539907, -0.767162,
		0.802194, 0.253497, 0.540578,
		0.486335, -0.802646, -0.345309,
		33.439758, 31.787939, 41.841316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734135, 32.573635, 41.968800>,  <33.099323, 32.349792, 42.083031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734135, 32.573635, 41.968800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749458, 32.242672, 41.744682>,  <33.758652, 32.044094, 41.610214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749458, 32.242672, 41.744682>,  <33.734135, 32.573635, 41.968800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749458, 32.242672, 41.744682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552560, 0.484720, -0.678029,
		0.832592, -0.283618, 0.475764,
		0.038310, -0.827410, -0.560290,
		33.760952, 31.994450, 41.576595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283241, 32.651081, 41.684631>,  <33.734135, 32.573635, 41.968800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283241, 32.651081, 41.684631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137913, 32.356354, 41.456562>,  <34.050716, 32.179516, 41.319721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137913, 32.356354, 41.456562>,  <34.283241, 32.651081, 41.684631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137913, 32.356354, 41.456562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539072, 0.332891, -0.773683,
		0.759870, -0.588457, 0.276253,
		-0.363317, -0.736818, -0.570175,
		34.028919, 32.135307, 41.285511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851467, 32.318756, 41.358372>,  <34.283241, 32.651081, 41.684631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851467, 32.318756, 41.358372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514587, 32.255180, 41.152287>,  <34.312462, 32.217037, 41.028637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514587, 32.255180, 41.152287>,  <34.851467, 32.318756, 41.358372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514587, 32.255180, 41.152287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413557, 0.422686, -0.806416,
		0.345939, -0.892231, -0.290257,
		-0.842197, -0.158933, -0.515212,
		34.261929, 32.207500, 40.997723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064743, 32.088253, 40.637638>,  <34.851467, 32.318756, 41.358372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064743, 32.088253, 40.637638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691063, 32.229183, 40.615219>,  <34.466854, 32.313744, 40.601768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691063, 32.229183, 40.615219>,  <35.064743, 32.088253, 40.637638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691063, 32.229183, 40.615219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229283, 0.472578, -0.850940,
		-0.273323, -0.807796, -0.522264,
		-0.934197, 0.352328, -0.056047,
		34.410805, 32.334881, 40.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950962, 32.078995, 40.016579>,  <35.064743, 32.088253, 40.637638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950962, 32.078995, 40.016579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702568, 32.367832, 40.138531>,  <34.553532, 32.541138, 40.211700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702568, 32.367832, 40.138531>,  <34.950962, 32.078995, 40.016579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702568, 32.367832, 40.138531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222561, 0.535392, -0.814753,
		-0.751560, -0.438097, -0.493182,
		-0.620987, 0.722098, 0.304876,
		34.516273, 32.584461, 40.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654106, 32.282230, 39.444157>,  <34.950962, 32.078995, 40.016579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654106, 32.282230, 39.444157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529835, 32.575703, 39.685883>,  <34.455273, 32.751785, 39.830917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529835, 32.575703, 39.685883>,  <34.654106, 32.282230, 39.444157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529835, 32.575703, 39.685883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033073, 0.627048, -0.778278,
		-0.949940, -0.261780, -0.170545,
		-0.310678, 0.733677, 0.604316,
		34.436630, 32.795807, 39.867176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198471, 32.663330, 38.999119>,  <34.654106, 32.282230, 39.444157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198471, 32.663330, 38.999119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302025, 32.895382, 39.308033>,  <34.364155, 33.034615, 39.493382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302025, 32.895382, 39.308033>,  <34.198471, 32.663330, 38.999119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302025, 32.895382, 39.308033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005515, 0.798644, -0.601779,
		-0.965894, 0.160048, 0.203554,
		0.258880, 0.580132, 0.772288,
		34.379688, 33.069420, 39.539719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774574, 33.234669, 38.864899>,  <34.198471, 32.663330, 38.999119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774574, 33.234669, 38.864899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074337, 33.376453, 39.088596>,  <34.254192, 33.461525, 39.222816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074337, 33.376453, 39.088596>,  <33.774574, 33.234669, 38.864899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074337, 33.376453, 39.088596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064344, 0.801651, -0.594319,
		-0.658981, 0.481368, 0.577952,
		0.749402, 0.354458, 0.559246,
		34.299156, 33.482792, 39.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555321, 33.785847, 39.044392>,  <33.774574, 33.234669, 38.864899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555321, 33.785847, 39.044392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953545, 33.814327, 39.069023>,  <34.192478, 33.831417, 39.083801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953545, 33.814327, 39.069023>,  <33.555321, 33.785847, 39.044392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953545, 33.814327, 39.069023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014677, 0.763563, -0.645567,
		-0.092988, 0.641796, 0.761217,
		0.995559, 0.071202, 0.061583,
		34.252213, 33.835690, 39.087498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711296, 34.515923, 39.299381>,  <33.555321, 33.785847, 39.044392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711296, 34.515923, 39.299381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044449, 34.378635, 39.125710>,  <34.244339, 34.296261, 39.021507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044449, 34.378635, 39.125710>,  <33.711296, 34.515923, 39.299381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044449, 34.378635, 39.125710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086365, 0.855477, -0.510588,
		0.546672, 0.387761, 0.742153,
		0.832881, -0.343221, -0.434176,
		34.294312, 34.275669, 38.995457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152412, 34.994759, 39.214134>,  <33.711296, 34.515923, 39.299381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152412, 34.994759, 39.214134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317116, 34.736004, 38.957390>,  <34.415939, 34.580750, 38.803341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317116, 34.736004, 38.957390>,  <34.152412, 34.994759, 39.214134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317116, 34.736004, 38.957390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150028, 0.742854, -0.652427,
		0.898859, 0.172344, 0.402928,
		0.411758, -0.646890, -0.641864,
		34.440643, 34.541939, 38.764832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765076, 35.314114, 38.875210>,  <34.152412, 34.994759, 39.214134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765076, 35.314114, 38.875210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631420, 35.020908, 38.638214>,  <34.551228, 34.844986, 38.496017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631420, 35.020908, 38.638214>,  <34.765076, 35.314114, 38.875210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631420, 35.020908, 38.638214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073096, 0.646881, -0.759080,
		0.939684, -0.210331, -0.269730,
		-0.334141, -0.733011, -0.592489,
		34.531178, 34.801006, 38.460468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102024, 35.431400, 38.344379>,  <34.765076, 35.314114, 38.875210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102024, 35.431400, 38.344379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877884, 35.144272, 38.179096>,  <34.743401, 34.971996, 38.079926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877884, 35.144272, 38.179096>,  <35.102024, 35.431400, 38.344379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877884, 35.144272, 38.179096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157532, 0.397411, -0.904018,
		0.813136, -0.571660, -0.109610,
		-0.560351, -0.717823, -0.413204,
		34.709778, 34.928925, 38.055134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804928, 35.599571, 38.153172>,  <35.102024, 35.431400, 38.344379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804928, 35.599571, 38.153172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793587, 35.932049, 38.375275>,  <35.786781, 36.131535, 38.508537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793587, 35.932049, 38.375275>,  <35.804928, 35.599571, 38.153172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793587, 35.932049, 38.375275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128444, -0.553907, 0.822611,
		0.991311, -0.048000, 0.122464,
		-0.028348, 0.831194, 0.555260,
		35.785084, 36.181408, 38.541851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312515, 35.529564, 38.636883>,  <35.804928, 35.599571, 38.153172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312515, 35.529564, 38.636883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.090343, 35.807522, 38.819588>,  <35.957043, 35.974297, 38.929211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.090343, 35.807522, 38.819588>,  <36.312515, 35.529564, 38.636883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090343, 35.807522, 38.819588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063051, -0.512504, 0.856367,
		0.829173, 0.504447, 0.240845,
		-0.555425, 0.694890, 0.456760,
		35.923717, 36.015987, 38.956615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578876, 35.614616, 39.335342>,  <36.312515, 35.529564, 38.636883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578876, 35.614616, 39.335342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201244, 35.744804, 39.356441>,  <35.974667, 35.822918, 39.369102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201244, 35.744804, 39.356441>,  <36.578876, 35.614616, 39.335342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201244, 35.744804, 39.356441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065822, -0.342808, 0.937096,
		0.323084, 0.881220, 0.345062,
		-0.944079, 0.325474, 0.052752,
		35.918022, 35.842445, 39.372269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565346, 36.114376, 39.854645>,  <36.578876, 35.614616, 39.335342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565346, 36.114376, 39.854645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209377, 35.941856, 39.795292>,  <35.995796, 35.838345, 39.759682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209377, 35.941856, 39.795292>,  <36.565346, 36.114376, 39.854645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209377, 35.941856, 39.795292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038078, -0.253928, 0.966473,
		-0.454521, 0.865736, 0.209553,
		-0.889922, -0.431303, -0.148381,
		35.942402, 35.812466, 39.750778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326019, 36.027645, 40.498619>,  <36.565346, 36.114376, 39.854645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326019, 36.027645, 40.498619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016197, 35.830124, 40.340519>,  <35.830303, 35.711613, 40.245659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016197, 35.830124, 40.340519>,  <36.326019, 36.027645, 40.498619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016197, 35.830124, 40.340519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055240, -0.569697, 0.819996,
		-0.630086, 0.656969, 0.413986,
		-0.774558, -0.493799, -0.395249,
		35.783829, 35.681984, 40.221943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841927, 35.854259, 41.093407>,  <36.326019, 36.027645, 40.498619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841927, 35.854259, 41.093407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751694, 35.608418, 40.791050>,  <35.697552, 35.460911, 40.609638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751694, 35.608418, 40.791050>,  <35.841927, 35.854259, 41.093407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751694, 35.608418, 40.791050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268546, -0.706599, 0.654676,
		-0.936480, 0.350676, -0.005653,
		-0.225585, -0.614609, -0.755888,
		35.684017, 35.424034, 40.564285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176628, 35.622852, 41.238060>,  <35.841927, 35.854259, 41.093407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176628, 35.622852, 41.238060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319374, 35.335766, 40.998882>,  <35.405022, 35.163513, 40.855377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319374, 35.335766, 40.998882>,  <35.176628, 35.622852, 41.238060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319374, 35.335766, 40.998882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177763, -0.680566, 0.710795,
		-0.917085, -0.147368, -0.370455,
		0.356868, -0.717713, -0.597941,
		35.426434, 35.120453, 40.819500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707371, 35.089336, 41.343998>,  <35.176628, 35.622852, 41.238060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707371, 35.089336, 41.343998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048206, 34.931026, 41.207001>,  <35.252708, 34.836040, 41.124802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048206, 34.931026, 41.207001>,  <34.707371, 35.089336, 41.343998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048206, 34.931026, 41.207001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094383, -0.759836, 0.643227,
		-0.514816, -0.515761, -0.684803,
		0.852089, -0.395777, -0.342497,
		35.303833, 34.812294, 41.104252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562237, 34.345791, 41.167297>,  <34.707371, 35.089336, 41.343998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562237, 34.345791, 41.167297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944836, 34.421867, 41.255787>,  <35.174397, 34.467514, 41.308880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944836, 34.421867, 41.255787>,  <34.562237, 34.345791, 41.167297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944836, 34.421867, 41.255787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010214, -0.779651, 0.626131,
		0.291558, -0.596633, -0.747678,
		0.956499, 0.190190, 0.221220,
		35.231785, 34.478924, 41.322151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877773, 33.763966, 41.101658>,  <34.562237, 34.345791, 41.167297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877773, 33.763966, 41.101658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167503, 33.958954, 41.296688>,  <35.341339, 34.075947, 41.413708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167503, 33.958954, 41.296688>,  <34.877773, 33.763966, 41.101658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167503, 33.958954, 41.296688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002015, -0.708681, 0.705526,
		0.689460, -0.510045, -0.514295,
		0.724321, 0.487468, 0.487579,
		35.384800, 34.105194, 41.442963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372849, 33.257904, 41.311573>,  <34.877773, 33.763966, 41.101658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372849, 33.257904, 41.311573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441429, 33.572407, 41.549026>,  <35.482578, 33.761108, 41.691498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441429, 33.572407, 41.549026>,  <35.372849, 33.257904, 41.311573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441429, 33.572407, 41.549026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045089, -0.608185, 0.792514,
		0.984160, -0.109111, -0.139726,
		0.171452, 0.786261, 0.593631,
		35.492867, 33.808285, 41.727116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921780, 33.025120, 41.723331>,  <35.372849, 33.257904, 41.311573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921780, 33.025120, 41.723331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729366, 33.312599, 41.924164>,  <35.613918, 33.485085, 42.044662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729366, 33.312599, 41.924164>,  <35.921780, 33.025120, 41.723331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729366, 33.312599, 41.924164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020289, -0.563411, 0.825927,
		0.876467, 0.407486, 0.256438,
		-0.481034, 0.718695, 0.502079,
		35.585056, 33.528210, 42.074787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357338, 33.031094, 42.356213>,  <35.921780, 33.025120, 41.723331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357338, 33.031094, 42.356213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007034, 33.208641, 42.432137>,  <35.796852, 33.315170, 42.477692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007034, 33.208641, 42.432137>,  <36.357338, 33.031094, 42.356213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007034, 33.208641, 42.432137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033417, -0.447977, 0.893420,
		0.481589, 0.776078, 0.407153,
		-0.875760, 0.443868, 0.189807,
		35.744305, 33.341801, 42.489079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430862, 33.291412, 42.967098>,  <36.357338, 33.031094, 42.356213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430862, 33.291412, 42.967098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033012, 33.259346, 42.940903>,  <35.794300, 33.240105, 42.925186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033012, 33.259346, 42.940903>,  <36.430862, 33.291412, 42.967098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033012, 33.259346, 42.940903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007773, -0.573001, 0.819518,
		-0.103226, 0.815624, 0.569300,
		-0.994628, -0.080170, -0.065489,
		35.734623, 33.235294, 42.921257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952881, 33.778820, 43.135704>,  <36.430862, 33.291412, 42.967098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952881, 33.778820, 43.135704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327225, 33.641121, 43.105583>,  <37.551830, 33.558502, 43.087509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327225, 33.641121, 43.105583>,  <36.952881, 33.778820, 43.135704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327225, 33.641121, 43.105583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149737, 0.581919, -0.799343,
		0.318989, 0.736794, 0.596138,
		0.935855, -0.344245, -0.075301,
		37.607983, 33.537846, 43.082993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331345, 34.356998, 43.185101>,  <36.952881, 33.778820, 43.135704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331345, 34.356998, 43.185101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571953, 34.085945, 43.015873>,  <37.716316, 33.923313, 42.914337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571953, 34.085945, 43.015873>,  <37.331345, 34.356998, 43.185101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571953, 34.085945, 43.015873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312497, 0.686983, -0.656049,
		0.735201, 0.262420, 0.624993,
		0.601519, -0.677636, -0.423065,
		37.752407, 33.882656, 42.888954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964104, 34.743340, 42.934090>,  <37.331345, 34.356998, 43.185101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964104, 34.743340, 42.934090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962727, 34.413849, 42.707302>,  <37.961899, 34.216152, 42.571228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962727, 34.413849, 42.707302>,  <37.964104, 34.743340, 42.934090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962727, 34.413849, 42.707302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124150, 0.562237, -0.817604,
		0.992257, -0.073205, 0.100331,
		-0.003443, -0.823730, -0.566972,
		37.961693, 34.166729, 42.537212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503899, 34.768192, 42.654774>,  <37.964104, 34.743340, 42.934090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503899, 34.768192, 42.654774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313976, 34.518997, 42.406113>,  <38.200024, 34.369480, 42.256916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313976, 34.518997, 42.406113>,  <38.503899, 34.768192, 42.654774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313976, 34.518997, 42.406113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390264, 0.484067, -0.783181,
		0.788831, -0.614467, 0.013291,
		-0.474805, -0.622985, -0.621651,
		38.171535, 34.332100, 42.219616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999100, 34.537563, 42.135288>,  <38.503899, 34.768192, 42.654774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999100, 34.537563, 42.135288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683262, 34.414101, 41.923149>,  <38.493759, 34.340023, 41.795864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683262, 34.414101, 41.923149>,  <38.999100, 34.537563, 42.135288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683262, 34.414101, 41.923149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262963, 0.610698, -0.746927,
		0.554425, -0.729232, -0.401040,
		-0.789597, -0.308656, -0.530347,
		38.446384, 34.321503, 41.764046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267723, 34.267761, 41.483429>,  <38.999100, 34.537563, 42.135288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267723, 34.267761, 41.483429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886093, 34.360374, 41.407387>,  <38.657116, 34.415943, 41.361763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886093, 34.360374, 41.407387>,  <39.267723, 34.267761, 41.483429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886093, 34.360374, 41.407387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294075, 0.602773, -0.741745,
		-0.057145, -0.763583, -0.643176,
		-0.954072, 0.231529, -0.190105,
		38.599873, 34.429832, 41.350353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156040, 34.234673, 40.768280>,  <39.267723, 34.267761, 41.483429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156040, 34.234673, 40.768280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841084, 34.456158, 40.876667>,  <38.652111, 34.589050, 40.941700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841084, 34.456158, 40.876667>,  <39.156040, 34.234673, 40.768280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841084, 34.456158, 40.876667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132668, 0.581460, -0.802685,
		-0.602012, -0.596076, -0.531295,
		-0.787389, 0.553712, 0.270966,
		38.604866, 34.622272, 40.957958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815434, 34.338245, 40.201565>,  <39.156040, 34.234673, 40.768280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815434, 34.338245, 40.201565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707352, 34.637573, 40.443886>,  <38.642502, 34.817169, 40.589279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707352, 34.637573, 40.443886>,  <38.815434, 34.338245, 40.201565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707352, 34.637573, 40.443886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118091, 0.650221, -0.750512,
		-0.955532, -0.131254, -0.264065,
		-0.270208, 0.748322, 0.605807,
		38.626289, 34.862068, 40.625629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654713, 34.886555, 39.764400>,  <38.815434, 34.338245, 40.201565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654713, 34.886555, 39.764400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670509, 35.073536, 40.117653>,  <38.679989, 35.185726, 40.329605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670509, 35.073536, 40.117653>,  <38.654713, 34.886555, 39.764400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670509, 35.073536, 40.117653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052706, 0.881618, -0.469012,
		-0.997829, 0.065068, 0.010179,
		0.039491, 0.467457, 0.883133,
		38.682358, 35.213772, 40.382591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165993, 35.417656, 39.756371>,  <38.654713, 34.886555, 39.764400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165993, 35.417656, 39.756371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448147, 35.506691, 40.025555>,  <38.617439, 35.560112, 40.187065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448147, 35.506691, 40.025555>,  <38.165993, 35.417656, 39.756371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448147, 35.506691, 40.025555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152204, 0.879703, -0.450507,
		-0.692286, 0.420210, 0.586654,
		0.705389, 0.222589, 0.672964,
		38.659763, 35.573467, 40.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967854, 36.110260, 39.935905>,  <38.165993, 35.417656, 39.756371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967854, 36.110260, 39.935905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343937, 36.017628, 40.035801>,  <38.569588, 35.962048, 40.095737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343937, 36.017628, 40.035801>,  <37.967854, 36.110260, 39.935905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343937, 36.017628, 40.035801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319253, 0.854701, -0.409346,
		-0.118653, 0.464602, 0.877534,
		0.940212, -0.231585, 0.249738,
		38.625999, 35.948151, 40.110722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276592, 36.733852, 40.168114>,  <37.967854, 36.110260, 39.935905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276592, 36.733852, 40.168114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569035, 36.497303, 40.032021>,  <38.744499, 36.355373, 39.950363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569035, 36.497303, 40.032021>,  <38.276592, 36.733852, 40.168114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569035, 36.497303, 40.032021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283893, 0.717157, -0.636467,
		0.620390, 0.368736, 0.692206,
		0.731109, -0.591371, -0.340236,
		38.788368, 36.319893, 39.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690300, 37.181000, 39.943401>,  <38.276592, 36.733852, 40.168114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690300, 37.181000, 39.943401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.845646, 36.851040, 39.779099>,  <38.938854, 36.653065, 39.680519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.845646, 36.851040, 39.779099>,  <38.690300, 37.181000, 39.943401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845646, 36.851040, 39.779099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508831, 0.563592, -0.650734,
		0.768285, 0.043720, 0.638613,
		0.388367, -0.824896, -0.410753,
		38.962154, 36.603573, 39.655872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385685, 37.411991, 39.778172>,  <38.690300, 37.181000, 39.943401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385685, 37.411991, 39.778172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.274876, 37.096813, 39.558205>,  <39.208389, 36.907707, 39.426224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.274876, 37.096813, 39.558205>,  <39.385685, 37.411991, 39.778172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274876, 37.096813, 39.558205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246898, 0.494723, -0.833241,
		0.928601, -0.366598, 0.057493,
		-0.277022, -0.787943, -0.549913,
		39.191769, 36.860432, 39.393230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.410675, 40.990330, 30.883595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688330, 40.737316, 30.746141>,  <29.854921, 40.585510, 30.663670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688330, 40.737316, 30.746141>,  <29.410675, 40.990330, 30.883595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688330, 40.737316, 30.746141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690763, -0.719613, -0.070733,
		-0.202541, 0.286465, -0.936437,
		0.694135, -0.632530, -0.343631,
		29.896570, 40.547558, 30.643053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110641, 40.629894, 30.376984>,  <29.410675, 40.990330, 30.883595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110641, 40.629894, 30.376984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408255, 40.388119, 30.490873>,  <29.586823, 40.243053, 30.559206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408255, 40.388119, 30.490873>,  <29.110641, 40.629894, 30.376984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408255, 40.388119, 30.490873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636975, -0.770331, 0.029192,
		0.201686, -0.203081, -0.958165,
		0.744033, -0.604440, 0.284723,
		29.631464, 40.206787, 30.576290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969452, 39.989258, 30.018192>,  <29.110641, 40.629894, 30.376984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969452, 39.989258, 30.018192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177546, 39.939358, 30.356138>,  <29.302401, 39.909420, 30.558907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177546, 39.939358, 30.356138>,  <28.969452, 39.989258, 30.018192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177546, 39.939358, 30.356138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655928, -0.691893, 0.301733,
		0.546916, -0.711141, -0.441770,
		0.520232, -0.124746, 0.844865,
		29.333614, 39.901936, 30.609598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816151, 39.253555, 30.233057>,  <28.969452, 39.989258, 30.018192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816151, 39.253555, 30.233057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992237, 39.387775, 30.566191>,  <29.097889, 39.468307, 30.766071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992237, 39.387775, 30.566191>,  <28.816151, 39.253555, 30.233057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992237, 39.387775, 30.566191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381661, -0.769650, 0.511833,
		0.812738, -0.543178, -0.210746,
		0.440217, 0.335553, 0.832834,
		29.124302, 39.488441, 30.816042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292156, 38.662266, 30.529234>,  <28.816151, 39.253555, 30.233057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292156, 38.662266, 30.529234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189659, 38.920605, 30.816906>,  <29.128160, 39.075607, 30.989510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189659, 38.920605, 30.816906>,  <29.292156, 38.662266, 30.529234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189659, 38.920605, 30.816906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416738, -0.745138, 0.520672,
		0.872163, -0.166292, 0.460085,
		-0.256244, 0.645846, 0.719182,
		29.112785, 39.114357, 31.032661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329170, 38.303303, 31.200308>,  <29.292156, 38.662266, 30.529234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329170, 38.303303, 31.200308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128418, 38.625149, 31.327244>,  <29.007967, 38.818256, 31.403406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128418, 38.625149, 31.327244>,  <29.329170, 38.303303, 31.200308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128418, 38.625149, 31.327244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575178, -0.584490, 0.572312,
		0.645975, 0.104706, 0.756144,
		-0.501883, 0.804617, 0.317341,
		28.977854, 38.866535, 31.422445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278320, 38.201366, 31.894915>,  <29.329170, 38.303303, 31.200308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278320, 38.201366, 31.894915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994644, 38.469131, 31.806431>,  <28.824438, 38.629791, 31.753340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994644, 38.469131, 31.806431>,  <29.278320, 38.201366, 31.894915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994644, 38.469131, 31.806431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644570, -0.488532, 0.588103,
		0.285616, 0.559663, 0.777947,
		-0.709192, 0.669413, -0.221210,
		28.781887, 38.669956, 31.740068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889523, 38.281837, 32.569019>,  <29.278320, 38.201366, 31.894915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889523, 38.281837, 32.569019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657629, 38.391010, 32.261925>,  <28.518494, 38.456512, 32.077667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657629, 38.391010, 32.261925>,  <28.889523, 38.281837, 32.569019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657629, 38.391010, 32.261925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775598, -0.473613, 0.417300,
		-0.249716, 0.837377, 0.486254,
		-0.579733, 0.272931, -0.767736,
		28.483709, 38.472889, 32.031605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411327, 38.547001, 32.925362>,  <28.889523, 38.281837, 32.569019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411327, 38.547001, 32.925362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295052, 38.428783, 32.561348>,  <28.225286, 38.357853, 32.342941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295052, 38.428783, 32.561348>,  <28.411327, 38.547001, 32.925362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295052, 38.428783, 32.561348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643375, -0.643609, 0.414532,
		-0.708215, 0.705990, -0.003055,
		-0.290689, -0.295543, -0.910030,
		28.207846, 38.340122, 32.288338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623507, 38.684620, 32.845177>,  <28.411327, 38.547001, 32.925362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623507, 38.684620, 32.845177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747458, 38.404282, 32.588184>,  <27.821829, 38.236076, 32.433987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747458, 38.404282, 32.588184>,  <27.623507, 38.684620, 32.845177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747458, 38.404282, 32.588184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666388, -0.642089, 0.379011,
		-0.678161, 0.310697, -0.666007,
		0.309878, -0.700849, -0.642484,
		27.840422, 38.194027, 32.395439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120026, 38.187344, 33.122852>,  <27.623507, 38.684620, 32.845177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120026, 38.187344, 33.122852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315058, 37.953835, 32.863167>,  <27.432077, 37.813728, 32.707355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315058, 37.953835, 32.863167>,  <27.120026, 38.187344, 33.122852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315058, 37.953835, 32.863167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466512, -0.802737, 0.371457,
		-0.737991, 0.121748, -0.663737,
		0.487582, -0.583773, -0.649209,
		27.461332, 37.778702, 32.668404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596390, 37.606022, 32.920845>,  <27.120026, 38.187344, 33.122852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596390, 37.606022, 32.920845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970566, 37.490326, 32.839558>,  <27.195070, 37.420910, 32.790783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970566, 37.490326, 32.839558>,  <26.596390, 37.606022, 32.920845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970566, 37.490326, 32.839558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126740, -0.811101, 0.571010,
		-0.329989, -0.508388, -0.795392,
		0.935438, -0.289235, -0.203221,
		27.251198, 37.403557, 32.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507036, 36.981506, 32.913208>,  <26.596390, 37.606022, 32.920845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507036, 36.981506, 32.913208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901028, 37.030388, 32.962013>,  <27.137423, 37.059715, 32.991299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901028, 37.030388, 32.962013>,  <26.507036, 36.981506, 32.913208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901028, 37.030388, 32.962013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017834, -0.774772, 0.631989,
		0.171765, -0.620318, -0.765312,
		0.984976, 0.122202, 0.122016,
		27.196520, 37.067047, 32.998619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805408, 36.435951, 32.721409>,  <26.507036, 36.981506, 32.913208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805408, 36.435951, 32.721409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047329, 36.588806, 33.000889>,  <27.192482, 36.680519, 33.168579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047329, 36.588806, 33.000889>,  <26.805408, 36.435951, 32.721409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047329, 36.588806, 33.000889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155206, -0.803971, 0.574057,
		0.781105, -0.455635, -0.426934,
		0.604803, 0.382136, 0.698703,
		27.228769, 36.703445, 33.210499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280220, 35.904057, 33.079098>,  <26.805408, 36.435951, 32.721409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280220, 35.904057, 33.079098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295536, 36.217964, 33.326538>,  <27.304726, 36.406307, 33.475002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295536, 36.217964, 33.326538>,  <27.280220, 35.904057, 33.079098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295536, 36.217964, 33.326538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221449, -0.597000, 0.771071,
		0.974420, -0.166515, 0.150926,
		0.038291, 0.784770, 0.618603,
		27.307024, 36.453396, 33.512119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658125, 35.645325, 33.615318>,  <27.280220, 35.904057, 33.079098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658125, 35.645325, 33.615318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477524, 35.980156, 33.738895>,  <27.369164, 36.181053, 33.813042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477524, 35.980156, 33.738895>,  <27.658125, 35.645325, 33.615318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477524, 35.980156, 33.738895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183638, -0.426010, 0.885885,
		0.873167, 0.343247, 0.346065,
		-0.451505, 0.837077, 0.308944,
		27.342072, 36.231277, 33.831577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805899, 35.686684, 34.432968>,  <27.658125, 35.645325, 33.615318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805899, 35.686684, 34.432968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485411, 35.899002, 34.322475>,  <27.293118, 36.026394, 34.256180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485411, 35.899002, 34.322475>,  <27.805899, 35.686684, 34.432968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485411, 35.899002, 34.322475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471522, -0.275851, 0.837599,
		0.368394, 0.801351, 0.471299,
		-0.801219, 0.530794, -0.276233,
		27.245045, 36.058239, 34.239605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655375, 36.061562, 35.047428>,  <27.805899, 35.686684, 34.432968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655375, 36.061562, 35.047428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339270, 36.009411, 34.807934>,  <27.149607, 35.978119, 34.664238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339270, 36.009411, 34.807934>,  <27.655375, 36.061562, 35.047428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339270, 36.009411, 34.807934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588807, -0.109003, 0.800890,
		-0.169682, 0.985454, 0.009375,
		-0.790262, -0.130376, -0.598738,
		27.102190, 35.970299, 34.628311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254297, 35.967873, 35.553680>,  <27.655375, 36.061562, 35.047428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254297, 35.967873, 35.553680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629772, 35.900879, 35.674225>,  <28.855057, 35.860683, 35.746552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629772, 35.900879, 35.674225>,  <28.254297, 35.967873, 35.553680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629772, 35.900879, 35.674225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306723, 0.804834, -0.508098,
		-0.157449, 0.569379, 0.806857,
		0.938686, -0.167482, 0.301362,
		28.911377, 35.850636, 35.764633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645460, 36.642281, 35.686600>,  <28.254297, 35.967873, 35.553680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645460, 36.642281, 35.686600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941355, 36.384171, 35.610275>,  <29.118891, 36.229305, 35.564480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941355, 36.384171, 35.610275>,  <28.645460, 36.642281, 35.686600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941355, 36.384171, 35.610275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509239, 0.722196, -0.468090,
		0.439851, 0.249094, 0.862834,
		0.739734, -0.645279, -0.190810,
		29.163275, 36.190586, 35.553032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404409, 36.877949, 35.921898>,  <28.645460, 36.642281, 35.686600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404409, 36.877949, 35.921898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402142, 36.630718, 35.607460>,  <29.400780, 36.482380, 35.418797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402142, 36.630718, 35.607460>,  <29.404409, 36.877949, 35.921898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402142, 36.630718, 35.607460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666065, 0.584012, -0.463990,
		0.745872, -0.526223, 0.408368,
		-0.005671, -0.618077, -0.786097,
		29.400440, 36.445293, 35.371632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088631, 36.628483, 35.781826>,  <29.404409, 36.877949, 35.921898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088631, 36.628483, 35.781826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893484, 36.595264, 35.434242>,  <29.776396, 36.575333, 35.225693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893484, 36.595264, 35.434242>,  <30.088631, 36.628483, 35.781826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893484, 36.595264, 35.434242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624464, 0.662367, -0.413902,
		0.609942, -0.744563, -0.271288,
		-0.487868, -0.083046, -0.868958,
		29.747124, 36.570351, 35.173553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625978, 36.655357, 35.330494>,  <30.088631, 36.628483, 35.781826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625978, 36.655357, 35.330494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294928, 36.719398, 35.115311>,  <30.096296, 36.757824, 34.986198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294928, 36.719398, 35.115311>,  <30.625978, 36.655357, 35.330494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294928, 36.719398, 35.115311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508762, 0.618787, -0.598552,
		0.237054, -0.769072, -0.593577,
		-0.827627, 0.160100, -0.537961,
		30.046640, 36.767429, 34.953922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742655, 36.483906, 34.651505>,  <30.625978, 36.655357, 35.330494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742655, 36.483906, 34.651505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.434853, 36.737038, 34.617115>,  <30.250172, 36.888916, 34.596481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.434853, 36.737038, 34.617115>,  <30.742655, 36.483906, 34.651505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434853, 36.737038, 34.617115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495542, 0.506729, -0.705453,
		-0.402865, -0.585452, -0.703523,
		-0.769505, 0.632827, -0.085973,
		30.204000, 36.926888, 34.591324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806829, 36.721470, 33.922047>,  <30.742655, 36.483906, 34.651505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806829, 36.721470, 33.922047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519569, 36.974407, 34.038254>,  <30.347214, 37.126171, 34.107979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519569, 36.974407, 34.038254>,  <30.806829, 36.721470, 33.922047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519569, 36.974407, 34.038254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245613, 0.620937, -0.744387,
		-0.651105, -0.463225, -0.601237,
		-0.718148, 0.632345, 0.290521,
		30.304125, 37.164112, 34.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418779, 36.882915, 33.309006>,  <30.806829, 36.721470, 33.922047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418779, 36.882915, 33.309006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354298, 37.172016, 33.577824>,  <30.315609, 37.345478, 33.739113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354298, 37.172016, 33.577824>,  <30.418779, 36.882915, 33.309006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354298, 37.172016, 33.577824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232959, 0.689571, -0.685727,
		-0.959032, 0.046015, -0.279535,
		-0.161205, 0.722755, 0.672041,
		30.305937, 37.388844, 33.779434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972755, 37.436325, 32.994072>,  <30.418779, 36.882915, 33.309006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972755, 37.436325, 32.994072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180124, 37.608837, 33.289433>,  <30.304546, 37.712345, 33.466648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180124, 37.608837, 33.289433>,  <29.972755, 37.436325, 32.994072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180124, 37.608837, 33.289433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264458, 0.740304, -0.618071,
		-0.813204, 0.515697, 0.269734,
		0.518422, 0.431284, 0.738398,
		30.335651, 37.738224, 33.510952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703726, 38.227509, 33.101940>,  <29.972755, 37.436325, 32.994072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703726, 38.227509, 33.101940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081755, 38.164253, 33.216366>,  <30.308573, 38.126301, 33.285019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081755, 38.164253, 33.216366>,  <29.703726, 38.227509, 33.101940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081755, 38.164253, 33.216366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282521, 0.835320, -0.471617,
		-0.164373, 0.526531, 0.834114,
		0.945073, -0.158134, 0.286060,
		30.365276, 38.116814, 33.302185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902067, 38.993946, 33.228416>,  <29.703726, 38.227509, 33.101940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902067, 38.993946, 33.228416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244751, 38.788998, 33.252155>,  <30.450361, 38.666027, 33.266399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244751, 38.788998, 33.252155>,  <29.902067, 38.993946, 33.228416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244751, 38.788998, 33.252155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505189, 0.810298, -0.296986,
		0.104075, 0.284415, 0.953036,
		0.856710, -0.512372, 0.059351,
		30.501764, 38.635284, 33.269962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378838, 39.378887, 33.736446>,  <29.902067, 38.993946, 33.228416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378838, 39.378887, 33.736446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.596975, 39.157330, 33.484795>,  <30.727858, 39.024395, 33.333805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.596975, 39.157330, 33.484795>,  <30.378838, 39.378887, 33.736446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596975, 39.157330, 33.484795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678572, 0.732352, -0.056570,
		0.492078, -0.396060, 0.775239,
		0.545343, -0.553892, -0.629130,
		30.760578, 38.991161, 33.296055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970634, 39.537033, 33.908192>,  <30.378838, 39.378887, 33.736446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970634, 39.537033, 33.908192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051857, 39.388710, 33.545696>,  <31.100592, 39.299717, 33.328197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051857, 39.388710, 33.545696>,  <30.970634, 39.537033, 33.908192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051857, 39.388710, 33.545696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667185, 0.729813, -0.149122,
		0.716681, -0.574350, 0.395589,
		0.203058, -0.370804, -0.906241,
		31.112774, 39.277470, 33.273823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694811, 39.508186, 33.857441>,  <30.970634, 39.537033, 33.908192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694811, 39.508186, 33.857441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578903, 39.470634, 33.476448>,  <31.509359, 39.448105, 33.247852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578903, 39.470634, 33.476448>,  <31.694811, 39.508186, 33.857441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578903, 39.470634, 33.476448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571673, 0.781174, -0.250912,
		0.767609, -0.617214, -0.172691,
		-0.289768, -0.093880, -0.952481,
		31.491972, 39.442471, 33.190704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364342, 39.493313, 33.484795>,  <31.694811, 39.508186, 33.857441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364342, 39.493313, 33.484795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101124, 39.570522, 33.193668>,  <31.943193, 39.616848, 33.018993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101124, 39.570522, 33.193668>,  <32.364342, 39.493313, 33.484795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101124, 39.570522, 33.193668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544495, 0.789625, -0.282875,
		0.520103, -0.582437, -0.624708,
		-0.658042, 0.193026, -0.727820,
		31.903711, 39.628429, 32.975323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738922, 39.556160, 32.840221>,  <32.364342, 39.493313, 33.484795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738922, 39.556160, 32.840221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400803, 39.765770, 32.798531>,  <32.197929, 39.891537, 32.773518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400803, 39.765770, 32.798531>,  <32.738922, 39.556160, 32.840221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400803, 39.765770, 32.798531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520329, 0.763104, -0.383315,
		-0.121333, -0.378247, -0.917719,
		-0.845302, 0.524024, -0.104223,
		32.147213, 39.922977, 32.767265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912113, 39.917366, 32.245220>,  <32.738922, 39.556160, 32.840221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912113, 39.917366, 32.245220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.607353, 40.091820, 32.436760>,  <32.424500, 40.196491, 32.551685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.607353, 40.091820, 32.436760>,  <32.912113, 39.917366, 32.245220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607353, 40.091820, 32.436760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420448, 0.895401, -0.146562,
		-0.492682, 0.089666, -0.865577,
		-0.761897, 0.436139, 0.478848,
		32.378784, 40.222660, 32.580414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462986, 40.246689, 31.818260>,  <32.912113, 39.917366, 32.245220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462986, 40.246689, 31.818260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.394226, 40.429081, 32.167553>,  <32.352970, 40.538517, 32.377129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.394226, 40.429081, 32.167553>,  <32.462986, 40.246689, 31.818260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394226, 40.429081, 32.167553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312023, 0.865990, -0.390771,
		-0.934394, 0.205295, -0.291139,
		-0.171900, 0.455976, 0.873233,
		32.342655, 40.565872, 32.429523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302612, 40.894814, 31.600584>,  <32.462986, 40.246689, 31.818260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302612, 40.894814, 31.600584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.377892, 40.950226, 31.989510>,  <32.423058, 40.983471, 32.222866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.377892, 40.950226, 31.989510>,  <32.302612, 40.894814, 31.600584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377892, 40.950226, 31.989510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415880, 0.885624, -0.206673,
		-0.889734, 0.443260, 0.109058,
		0.188195, 0.138529, 0.972313,
		32.434349, 40.991783, 32.281204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192051, 41.548573, 31.752964>,  <32.302612, 40.894814, 31.600584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192051, 41.548573, 31.752964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447754, 41.442200, 32.041584>,  <32.601173, 41.378376, 32.214756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447754, 41.442200, 32.041584>,  <32.192051, 41.548573, 31.752964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447754, 41.442200, 32.041584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530796, 0.831522, -0.163791,
		-0.556425, 0.487699, 0.672712,
		0.639255, -0.265935, 0.721548,
		32.639530, 41.362419, 32.258049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335068, 42.200089, 32.176224>,  <32.192051, 41.548573, 31.752964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335068, 42.200089, 32.176224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.659958, 41.981281, 32.257278>,  <32.854893, 41.849998, 32.305912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.659958, 41.981281, 32.257278>,  <32.335068, 42.200089, 32.176224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659958, 41.981281, 32.257278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583335, 0.763788, -0.276312,
		-0.003624, 0.342632, 0.939463,
		0.812224, -0.547020, 0.202638,
		32.903625, 41.817177, 32.318069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791008, 42.616982, 32.590187>,  <32.335068, 42.200089, 32.176224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791008, 42.616982, 32.590187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028408, 42.337757, 32.429955>,  <33.170849, 42.170223, 32.333817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028408, 42.337757, 32.429955>,  <32.791008, 42.616982, 32.590187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028408, 42.337757, 32.429955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586851, 0.715960, -0.378163,
		0.550781, -0.010642, 0.834582,
		0.593503, -0.698060, -0.400582,
		33.206459, 42.128338, 32.309780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559628, 42.818623, 32.637039>,  <32.791008, 42.616982, 32.590187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559628, 42.818623, 32.637039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556507, 42.549316, 32.341293>,  <33.554634, 42.387733, 32.163845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556507, 42.549316, 32.341293>,  <33.559628, 42.818623, 32.637039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556507, 42.549316, 32.341293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625052, 0.573857, -0.529148,
		0.780544, -0.466266, 0.416349,
		-0.007799, -0.673263, -0.739362,
		33.554169, 42.347336, 32.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241665, 42.633667, 32.581810>,  <33.559628, 42.818623, 32.637039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241665, 42.633667, 32.581810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.036373, 42.586353, 32.241783>,  <33.913200, 42.557964, 32.037769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.036373, 42.586353, 32.241783>,  <34.241665, 42.633667, 32.581810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036373, 42.586353, 32.241783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656002, 0.584592, -0.477403,
		0.553409, -0.802659, -0.222434,
		-0.513225, -0.118283, -0.850064,
		33.882404, 42.550869, 31.986763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.648621, 30.756617, 44.578056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395901, 30.629528, 44.295246>,  <40.244270, 30.553274, 44.125561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395901, 30.629528, 44.295246>,  <40.648621, 30.756617, 44.578056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395901, 30.629528, 44.295246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423692, -0.622260, 0.658238,
		-0.649091, 0.715434, 0.258525,
		-0.631795, -0.317721, -0.707028,
		40.206364, 30.534212, 44.083138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947514, 30.758835, 44.842854>,  <40.648621, 30.756617, 44.578056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947514, 30.758835, 44.842854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935532, 30.505987, 44.533134>,  <39.928345, 30.354279, 44.347305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935532, 30.505987, 44.533134>,  <39.947514, 30.758835, 44.842854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935532, 30.505987, 44.533134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195511, -0.755974, 0.624724,
		-0.980244, 0.170094, -0.100944,
		-0.029951, -0.632117, -0.774294,
		39.926548, 30.316353, 44.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455585, 30.329973, 45.079205>,  <39.947514, 30.758835, 44.842854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455585, 30.329973, 45.079205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629791, 30.126987, 44.781799>,  <39.734314, 30.005196, 44.603355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629791, 30.126987, 44.781799>,  <39.455585, 30.329973, 45.079205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629791, 30.126987, 44.781799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152901, -0.855655, 0.494445,
		-0.887103, -0.101652, -0.450239,
		0.435511, -0.507465, -0.743511,
		39.760445, 29.974749, 44.558746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078598, 29.767977, 44.791824>,  <39.455585, 30.329973, 45.079205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078598, 29.767977, 44.791824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.451836, 29.670746, 44.685799>,  <39.675777, 29.612408, 44.622185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.451836, 29.670746, 44.685799>,  <39.078598, 29.767977, 44.791824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451836, 29.670746, 44.685799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085879, -0.866286, 0.492112,
		-0.349239, -0.436422, -0.829198,
		0.933090, -0.243075, -0.265061,
		39.731762, 29.597824, 44.606281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101131, 29.025181, 44.526741>,  <39.078598, 29.767977, 44.791824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101131, 29.025181, 44.526741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475845, 29.115288, 44.633835>,  <39.700676, 29.169352, 44.698090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475845, 29.115288, 44.633835>,  <39.101131, 29.025181, 44.526741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475845, 29.115288, 44.633835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007789, -0.751570, 0.659608,
		0.349809, -0.619998, -0.702307,
		0.936788, 0.225267, 0.267735,
		39.756882, 29.182867, 44.714157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368015, 28.437328, 44.698170>,  <39.101131, 29.025181, 44.526741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368015, 28.437328, 44.698170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655785, 28.642223, 44.885807>,  <39.828445, 28.765160, 44.998390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655785, 28.642223, 44.885807>,  <39.368015, 28.437328, 44.698170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655785, 28.642223, 44.885807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057068, -0.629491, 0.774910,
		0.692227, -0.584255, -0.423636,
		0.719420, 0.512237, 0.469093,
		39.871613, 28.795895, 45.026535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818096, 27.965412, 44.818203>,  <39.368015, 28.437328, 44.698170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818096, 27.965412, 44.818203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895679, 28.253786, 45.084328>,  <39.942230, 28.426809, 45.244003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895679, 28.253786, 45.084328>,  <39.818096, 27.965412, 44.818203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895679, 28.253786, 45.084328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127684, -0.653865, 0.745759,
		0.972664, -0.229597, -0.034772,
		0.193961, 0.720934, 0.665308,
		39.953869, 28.470066, 45.283920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207367, 27.628357, 45.357021>,  <39.818096, 27.965412, 44.818203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207367, 27.628357, 45.357021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050999, 27.959986, 45.516933>,  <39.957176, 28.158962, 45.612881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050999, 27.959986, 45.516933>,  <40.207367, 27.628357, 45.357021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050999, 27.959986, 45.516933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161534, -0.489396, 0.856971,
		0.906139, 0.270430, 0.325238,
		-0.390920, 0.829071, 0.399777,
		39.933723, 28.208708, 45.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390541, 27.577999, 46.029957>,  <40.207367, 27.628357, 45.357021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390541, 27.577999, 46.029957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089661, 27.841478, 46.022865>,  <39.909134, 27.999565, 46.018608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089661, 27.841478, 46.022865>,  <40.390541, 27.577999, 46.029957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089661, 27.841478, 46.022865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321127, -0.342945, 0.882760,
		0.575391, 0.669705, 0.469489,
		-0.752198, 0.658698, -0.017733,
		39.864002, 28.039087, 46.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380459, 27.880453, 46.730774>,  <40.390541, 27.577999, 46.029957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380459, 27.880453, 46.730774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030235, 27.969097, 46.559059>,  <39.820103, 28.022284, 46.456032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030235, 27.969097, 46.559059>,  <40.380459, 27.880453, 46.730774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030235, 27.969097, 46.559059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473614, -0.218417, 0.853220,
		0.095320, 0.950359, 0.296195,
		-0.875559, 0.221610, -0.429284,
		39.767567, 28.035580, 46.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137287, 28.376959, 47.221107>,  <40.380459, 27.880453, 46.730774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137287, 28.376959, 47.221107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858891, 28.213186, 46.985153>,  <39.691853, 28.114923, 46.843582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858891, 28.213186, 46.985153>,  <40.137287, 28.376959, 47.221107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858891, 28.213186, 46.985153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482664, -0.341466, 0.806497,
		-0.531629, 0.846030, 0.040040,
		-0.695993, -0.409431, -0.589881,
		39.650093, 28.090357, 46.808189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547237, 28.581644, 47.512482>,  <40.137287, 28.376959, 47.221107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547237, 28.581644, 47.512482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441540, 28.255514, 47.306408>,  <39.378120, 28.059835, 47.182762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441540, 28.255514, 47.306408>,  <39.547237, 28.581644, 47.512482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441540, 28.255514, 47.306408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635330, -0.254743, 0.729014,
		-0.725625, 0.519952, -0.450687,
		-0.264243, -0.815326, -0.515189,
		39.362267, 28.010916, 47.151852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978252, 28.782047, 48.025230>,  <39.547237, 28.581644, 47.512482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978252, 28.782047, 48.025230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726654, 28.513399, 47.868622>,  <38.575695, 28.352211, 47.774658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726654, 28.513399, 47.868622>,  <38.978252, 28.782047, 48.025230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726654, 28.513399, 47.868622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450109, 0.725249, -0.520976,
		0.633848, -0.151465, -0.758482,
		-0.628998, -0.671619, -0.391522,
		38.537956, 28.311913, 47.751163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899853, 28.883410, 47.323620>,  <38.978252, 28.782047, 48.025230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899853, 28.883410, 47.323620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552948, 28.695404, 47.389271>,  <38.344803, 28.582600, 47.428661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552948, 28.695404, 47.389271>,  <38.899853, 28.883410, 47.323620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552948, 28.695404, 47.389271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443323, 0.579089, -0.684193,
		0.226534, -0.666139, -0.710592,
		-0.867264, -0.470015, 0.164131,
		38.292770, 28.554399, 47.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211075, 29.244543, 47.151443>,  <38.899853, 28.883410, 47.323620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211075, 29.244543, 47.151443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144382, 29.585239, 47.350136>,  <38.104366, 29.789658, 47.469349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144382, 29.585239, 47.350136>,  <38.211075, 29.244543, 47.151443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144382, 29.585239, 47.350136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052814, 0.495343, -0.867091,
		-0.984587, -0.170803, -0.037604,
		-0.166729, 0.851740, 0.496729,
		38.094364, 29.840761, 47.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515167, 29.588009, 46.820480>,  <38.211075, 29.244543, 47.151443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515167, 29.588009, 46.820480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728554, 29.862755, 47.017914>,  <37.856586, 30.027603, 47.136375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728554, 29.862755, 47.017914>,  <37.515167, 29.588009, 46.820480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728554, 29.862755, 47.017914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090982, 0.626773, -0.773872,
		-0.840911, 0.367931, 0.396857,
		0.533471, 0.686864, 0.493586,
		37.888596, 30.068813, 47.165989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102795, 30.202806, 46.744213>,  <37.515167, 29.588009, 46.820480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102795, 30.202806, 46.744213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466549, 30.332352, 46.848614>,  <37.684803, 30.410080, 46.911255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466549, 30.332352, 46.848614>,  <37.102795, 30.202806, 46.744213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466549, 30.332352, 46.848614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013610, 0.650329, -0.759531,
		-0.415725, 0.687156, 0.595810,
		0.909389, 0.323865, 0.261006,
		37.739365, 30.429512, 46.926914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024025, 30.963264, 46.775208>,  <37.102795, 30.202806, 46.744213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024025, 30.963264, 46.775208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410629, 30.878714, 46.716988>,  <37.642590, 30.827982, 46.682056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410629, 30.878714, 46.716988>,  <37.024025, 30.963264, 46.775208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410629, 30.878714, 46.716988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025590, 0.643670, -0.764875,
		0.255364, 0.735532, 0.627521,
		0.966506, -0.211379, -0.145548,
		37.700581, 30.815300, 46.673325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285103, 31.605158, 46.667923>,  <37.024025, 30.963264, 46.775208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285103, 31.605158, 46.667923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554153, 31.352571, 46.513615>,  <37.715584, 31.201019, 46.421028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554153, 31.352571, 46.513615>,  <37.285103, 31.605158, 46.667923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554153, 31.352571, 46.513615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149916, 0.626808, -0.764615,
		0.724634, 0.456470, 0.516276,
		0.672630, -0.631464, -0.385775,
		37.755943, 31.163132, 46.397881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876469, 32.047020, 46.507282>,  <37.285103, 31.605158, 46.667923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876469, 32.047020, 46.507282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952976, 31.706665, 46.311565>,  <37.998878, 31.502453, 46.194134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952976, 31.706665, 46.311565>,  <37.876469, 32.047020, 46.507282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952976, 31.706665, 46.311565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217137, 0.522824, -0.824321,
		0.957219, 0.051422, 0.284758,
		0.191267, -0.850888, -0.489292,
		38.010357, 31.451399, 46.164780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525902, 32.083553, 46.235302>,  <37.876469, 32.047020, 46.507282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525902, 32.083553, 46.235302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.309807, 31.847368, 45.995468>,  <38.180149, 31.705658, 45.851570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.309807, 31.847368, 45.995468>,  <38.525902, 32.083553, 46.235302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309807, 31.847368, 45.995468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305317, 0.526419, -0.793514,
		0.784171, -0.611748, -0.104113,
		-0.540238, -0.590463, -0.599580,
		38.147736, 31.670229, 45.815594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891197, 31.960438, 45.551971>,  <38.525902, 32.083553, 46.235302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891197, 31.960438, 45.551971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521469, 31.833389, 45.467350>,  <38.299633, 31.757160, 45.416576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521469, 31.833389, 45.467350>,  <38.891197, 31.960438, 45.551971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521469, 31.833389, 45.467350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024081, 0.601786, -0.798294,
		0.380867, -0.732782, -0.563889,
		-0.924316, -0.317622, -0.211555,
		38.244175, 31.738102, 45.403885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952049, 31.972900, 44.866985>,  <38.891197, 31.960438, 45.551971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952049, 31.972900, 44.866985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560658, 31.942242, 44.943619>,  <38.325821, 31.923847, 44.989601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560658, 31.942242, 44.943619>,  <38.952049, 31.972900, 44.866985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560658, 31.942242, 44.943619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204223, 0.492666, -0.845916,
		-0.029554, -0.866837, -0.497716,
		-0.978478, -0.076645, 0.191588,
		38.267113, 31.919249, 45.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745037, 31.719248, 44.359261>,  <38.952049, 31.972900, 44.866985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745037, 31.719248, 44.359261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422726, 31.901623, 44.510437>,  <38.229340, 32.011047, 44.601143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422726, 31.901623, 44.510437>,  <38.745037, 31.719248, 44.359261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422726, 31.901623, 44.510437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042467, 0.592052, -0.804780,
		-0.590688, -0.664527, -0.457702,
		-0.805782, 0.455937, 0.377938,
		38.180992, 32.038403, 44.623817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322636, 31.756128, 43.872822>,  <38.745037, 31.719248, 44.359261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322636, 31.756128, 43.872822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178596, 32.065563, 44.081394>,  <38.092175, 32.251225, 44.206539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178596, 32.065563, 44.081394>,  <38.322636, 31.756128, 43.872822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178596, 32.065563, 44.081394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041575, 0.545068, -0.837360,
		-0.931989, -0.323207, -0.164114,
		-0.360094, 0.773588, 0.521435,
		38.070568, 32.297638, 44.237823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666359, 31.938540, 43.561893>,  <38.322636, 31.756128, 43.872822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666359, 31.938540, 43.561893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784714, 32.273254, 43.746174>,  <37.855728, 32.474083, 43.856743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784714, 32.273254, 43.746174>,  <37.666359, 31.938540, 43.561893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784714, 32.273254, 43.746174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200675, 0.525983, -0.826481,
		-0.933906, 0.152095, 0.323553,
		0.295887, 0.836785, 0.460697,
		37.873478, 32.524288, 43.884384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133602, 32.377869, 43.399662>,  <37.666359, 31.938540, 43.561893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133602, 32.377869, 43.399662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424305, 32.620525, 43.528538>,  <37.598724, 32.766121, 43.605865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424305, 32.620525, 43.528538>,  <37.133602, 32.377869, 43.399662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424305, 32.620525, 43.528538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237334, 0.661936, -0.710994,
		-0.644593, 0.440251, 0.625043,
		0.726755, 0.606646, 0.322193,
		37.642330, 32.802521, 43.625195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896694, 33.052361, 43.463058>,  <37.133602, 32.377869, 43.399662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896694, 33.052361, 43.463058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291519, 33.114143, 43.445858>,  <37.528416, 33.151211, 43.435539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291519, 33.114143, 43.445858>,  <36.896694, 33.052361, 43.463058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291519, 33.114143, 43.445858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141286, 0.711191, -0.688655,
		-0.075783, 0.685821, 0.723813,
		0.987064, 0.154453, -0.043000,
		37.587639, 33.160480, 43.432957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257660, 33.303371, 43.675945>,  <36.896694, 33.052361, 43.463058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257660, 33.303371, 43.675945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940807, 33.145065, 43.490086>,  <35.750694, 33.050083, 43.378571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940807, 33.145065, 43.490086>,  <36.257660, 33.303371, 43.675945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940807, 33.145065, 43.490086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250893, -0.482857, 0.838989,
		-0.556402, 0.781166, 0.283191,
		-0.792130, -0.395764, -0.464651,
		35.703167, 33.026337, 43.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739204, 33.464264, 44.161526>,  <36.257660, 33.303371, 43.675945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739204, 33.464264, 44.161526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580177, 33.176445, 43.933773>,  <35.484760, 33.003754, 43.797123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580177, 33.176445, 43.933773>,  <35.739204, 33.464264, 44.161526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580177, 33.176445, 43.933773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036785, -0.632527, 0.773664,
		-0.916836, 0.286638, 0.277940,
		-0.397565, -0.719548, -0.569379,
		35.460907, 32.960579, 43.762959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076977, 33.291626, 44.485500>,  <35.739204, 33.464264, 44.161526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076977, 33.291626, 44.485500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192032, 32.986851, 44.253387>,  <35.261063, 32.803986, 44.114120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192032, 32.986851, 44.253387>,  <35.076977, 33.291626, 44.485500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192032, 32.986851, 44.253387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075539, -0.585947, 0.806821,
		-0.954756, -0.275904, -0.110984,
		0.287635, -0.761934, -0.580278,
		35.278324, 32.758270, 44.079304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560822, 32.868797, 44.544498>,  <35.076977, 33.291626, 44.485500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560822, 32.868797, 44.544498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827721, 32.611145, 44.394897>,  <34.987862, 32.456554, 44.305138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827721, 32.611145, 44.394897>,  <34.560822, 32.868797, 44.544498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827721, 32.611145, 44.394897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237596, -0.659965, 0.712738,
		-0.705924, -0.386711, -0.593402,
		0.667248, -0.644128, -0.374004,
		35.027893, 32.417908, 44.282696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260185, 32.122543, 44.452873>,  <34.560822, 32.868797, 44.544498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260185, 32.122543, 44.452873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656406, 32.086250, 44.494019>,  <34.894138, 32.064476, 44.518707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656406, 32.086250, 44.494019>,  <34.260185, 32.122543, 44.452873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656406, 32.086250, 44.494019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137150, -0.665724, 0.733486,
		0.001931, -0.740662, -0.671875,
		0.990548, -0.090731, 0.102867,
		34.953571, 32.059032, 44.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288246, 31.447878, 44.605705>,  <34.260185, 32.122543, 44.452873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288246, 31.447878, 44.605705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676071, 31.520901, 44.670971>,  <34.908768, 31.564714, 44.710129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676071, 31.520901, 44.670971>,  <34.288246, 31.447878, 44.605705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676071, 31.520901, 44.670971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041329, -0.778854, 0.625843,
		0.241332, -0.600050, -0.762692,
		0.969562, 0.182557, 0.163163,
		34.966938, 31.575668, 44.719921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609768, 30.801104, 44.425865>,  <34.288246, 31.447878, 44.605705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609768, 30.801104, 44.425865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871204, 31.011538, 44.643509>,  <35.028065, 31.137798, 44.774094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871204, 31.011538, 44.643509>,  <34.609768, 30.801104, 44.425865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871204, 31.011538, 44.643509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170373, -0.802732, 0.571485,
		0.737425, -0.280814, -0.614287,
		0.653588, 0.526085, 0.544111,
		35.067280, 31.169363, 44.806744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705235, 30.157658, 44.043140>,  <34.609768, 30.801104, 44.425865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705235, 30.157658, 44.043140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308548, 30.107607, 44.054787>,  <34.070538, 30.077576, 44.061775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308548, 30.107607, 44.054787>,  <34.705235, 30.157658, 44.043140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308548, 30.107607, 44.054787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102669, 0.635683, -0.765092,
		0.077223, -0.761742, -0.643262,
		-0.991713, -0.125126, 0.029118,
		34.011032, 30.070068, 44.063522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471951, 30.036932, 43.401402>,  <34.705235, 30.157658, 44.043140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471951, 30.036932, 43.401402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112980, 30.128408, 43.552303>,  <33.897598, 30.183294, 43.642845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112980, 30.128408, 43.552303>,  <34.471951, 30.036932, 43.401402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112980, 30.128408, 43.552303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309426, 0.283235, -0.907763,
		-0.314449, -0.931386, -0.183420,
		-0.897428, 0.228690, 0.377258,
		33.843750, 30.197016, 43.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901566, 29.723282, 42.902607>,  <34.471951, 30.036932, 43.401402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901566, 29.723282, 42.902607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.687378, 29.990154, 43.109737>,  <33.558865, 30.150278, 43.234016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.687378, 29.990154, 43.109737>,  <33.901566, 29.723282, 42.902607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687378, 29.990154, 43.109737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207988, 0.490078, -0.846501,
		-0.818545, -0.560976, -0.123656,
		-0.535467, 0.667181, 0.517827,
		33.526737, 30.190308, 43.265087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224258, 29.814512, 42.537991>,  <33.901566, 29.723282, 42.902607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224258, 29.814512, 42.537991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284805, 30.158649, 42.732681>,  <33.321133, 30.365131, 42.849495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284805, 30.158649, 42.732681>,  <33.224258, 29.814512, 42.537991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284805, 30.158649, 42.732681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139140, 0.506041, -0.851213,
		-0.978636, 0.061122, 0.196305,
		0.151366, 0.860341, 0.486725,
		33.330215, 30.416752, 42.878700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728504, 30.324518, 42.294865>,  <33.224258, 29.814512, 42.537991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728504, 30.324518, 42.294865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990482, 30.575869, 42.462765>,  <33.147671, 30.726679, 42.563503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990482, 30.575869, 42.462765>,  <32.728504, 30.324518, 42.294865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990482, 30.575869, 42.462765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014246, 0.565629, -0.824537,
		-0.755538, 0.534051, 0.379411,
		0.654950, 0.628374, 0.419746,
		33.186966, 30.764381, 42.588688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452435, 31.017115, 42.178463>,  <32.728504, 30.324518, 42.294865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452435, 31.017115, 42.178463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847076, 31.056240, 42.230686>,  <33.083862, 31.079716, 42.262020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847076, 31.056240, 42.230686>,  <32.452435, 31.017115, 42.178463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847076, 31.056240, 42.230686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063601, 0.506337, -0.859987,
		-0.150226, 0.856770, 0.493333,
		0.986604, 0.097816, 0.130556,
		33.143059, 31.085585, 42.269852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525406, 31.732216, 42.210854>,  <32.452435, 31.017115, 42.178463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525406, 31.732216, 42.210854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885677, 31.579079, 42.128670>,  <33.101841, 31.487196, 42.079357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885677, 31.579079, 42.128670>,  <32.525406, 31.732216, 42.210854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885677, 31.579079, 42.128670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069593, 0.593891, -0.801530,
		0.428881, 0.707621, 0.561546,
		0.900676, -0.382841, -0.205463,
		33.155880, 31.464226, 42.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.224777, 26.647776, 46.023113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624474, 26.648750, 46.007553>,  <37.864292, 26.649336, 45.998215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624474, 26.648750, 46.007553>,  <37.224777, 26.647776, 46.023113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624474, 26.648750, 46.007553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038800, -0.033585, -0.998682,
		-0.003740, 0.999433, -0.033465,
		0.999240, 0.002437, -0.038904,
		37.924244, 26.649481, 45.995880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366608, 27.123520, 45.543056>,  <37.224777, 26.647776, 46.023113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366608, 27.123520, 45.543056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.676861, 26.873241, 45.576294>,  <37.863010, 26.723074, 45.596237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.676861, 26.873241, 45.576294>,  <37.366608, 27.123520, 45.543056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676861, 26.873241, 45.576294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164378, 0.073137, -0.983682,
		0.609407, 0.776632, 0.159577,
		0.775630, -0.625694, 0.083091,
		37.909550, 26.685534, 45.601223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889664, 27.487423, 45.342163>,  <37.366608, 27.123520, 45.543056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889664, 27.487423, 45.342163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967552, 27.099581, 45.282902>,  <38.014286, 26.866875, 45.247345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967552, 27.099581, 45.282902>,  <37.889664, 27.487423, 45.342163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967552, 27.099581, 45.282902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204590, 0.187869, -0.960650,
		0.959284, 0.156753, 0.234955,
		0.194725, -0.969605, -0.148150,
		38.025970, 26.808699, 45.238457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471107, 27.481922, 44.971397>,  <37.889664, 27.487423, 45.342163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471107, 27.481922, 44.971397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340199, 27.109798, 44.905163>,  <38.261654, 26.886524, 44.865421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340199, 27.109798, 44.905163>,  <38.471107, 27.481922, 44.971397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340199, 27.109798, 44.905163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221825, 0.094703, -0.970477,
		0.918524, -0.354342, 0.175372,
		-0.327272, -0.930308, -0.165588,
		38.242016, 26.830706, 44.855488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998394, 27.138882, 44.609646>,  <38.471107, 27.481922, 44.971397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998394, 27.138882, 44.609646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655807, 26.953308, 44.519115>,  <38.450256, 26.841963, 44.464798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655807, 26.953308, 44.519115>,  <38.998394, 27.138882, 44.609646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655807, 26.953308, 44.519115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233971, 0.041918, -0.971339,
		0.460127, -0.884876, 0.072647,
		-0.856470, -0.463936, -0.226323,
		38.398865, 26.814127, 44.451218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207150, 26.751968, 44.069752>,  <38.998394, 27.138882, 44.609646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207150, 26.751968, 44.069752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811577, 26.798155, 44.032497>,  <38.574234, 26.825867, 44.010147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811577, 26.798155, 44.032497>,  <39.207150, 26.751968, 44.069752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811577, 26.798155, 44.032497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108652, 0.136349, -0.984685,
		-0.100997, -0.983909, -0.147385,
		-0.988935, 0.115464, -0.093133,
		38.514896, 26.832794, 44.004559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047203, 26.400946, 43.471386>,  <39.207150, 26.751968, 44.069752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047203, 26.400946, 43.471386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.719124, 26.626663, 43.509014>,  <38.522278, 26.762093, 43.531593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.719124, 26.626663, 43.509014>,  <39.047203, 26.400946, 43.471386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719124, 26.626663, 43.509014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059760, 0.248056, -0.966901,
		-0.568951, -0.787427, -0.237177,
		-0.820197, 0.564293, 0.094075,
		38.473064, 26.795952, 43.537235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589584, 26.226418, 42.973911>,  <39.047203, 26.400946, 43.471386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589584, 26.226418, 42.973911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484512, 26.601976, 43.062881>,  <38.421471, 26.827312, 43.116264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484512, 26.601976, 43.062881>,  <38.589584, 26.226418, 42.973911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484512, 26.601976, 43.062881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128878, 0.262593, -0.956261,
		-0.956238, -0.222523, -0.189980,
		-0.262677, 0.938897, 0.222423,
		38.405708, 26.883646, 43.129608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211582, 26.407829, 42.400227>,  <38.589584, 26.226418, 42.973911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211582, 26.407829, 42.400227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.301788, 26.767681, 42.549793>,  <38.355911, 26.983591, 42.639534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.301788, 26.767681, 42.549793>,  <38.211582, 26.407829, 42.400227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301788, 26.767681, 42.549793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010761, 0.381479, -0.924315,
		-0.974181, 0.212468, 0.076347,
		0.225512, 0.899628, 0.373916,
		38.369442, 27.037569, 42.661968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039711, 26.769566, 41.849335>,  <38.211582, 26.407829, 42.400227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039711, 26.769566, 41.849335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200256, 27.038086, 42.098576>,  <38.296581, 27.199198, 42.248119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200256, 27.038086, 42.098576>,  <38.039711, 26.769566, 41.849335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200256, 27.038086, 42.098576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103000, 0.642910, -0.758984,
		-0.910110, 0.368807, 0.188895,
		0.401361, 0.671303, 0.623107,
		38.320663, 27.239477, 42.285507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687622, 27.370415, 41.675785>,  <38.039711, 26.769566, 41.849335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687622, 27.370415, 41.675785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035328, 27.448378, 41.857506>,  <38.243950, 27.495155, 41.966537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035328, 27.448378, 41.857506>,  <37.687622, 27.370415, 41.675785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035328, 27.448378, 41.857506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149869, 0.771842, -0.617899,
		-0.471083, 0.605204, 0.641724,
		0.869264, 0.194907, 0.454303,
		38.296108, 27.506849, 41.993797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673870, 28.143694, 41.726795>,  <37.687622, 27.370415, 41.675785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673870, 28.143694, 41.726795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.048340, 28.003580, 41.714909>,  <38.273022, 27.919512, 41.707779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.048340, 28.003580, 41.714909>,  <37.673870, 28.143694, 41.726795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048340, 28.003580, 41.714909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198001, 0.595232, -0.778778,
		0.290481, 0.723186, 0.626596,
		0.936171, -0.350287, -0.029712,
		38.329189, 27.898495, 41.705994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260845, 28.637959, 42.090565>,  <37.673870, 28.143694, 41.726795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260845, 28.637959, 42.090565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.900261, 28.729515, 41.943611>,  <36.683910, 28.784449, 41.855438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.900261, 28.729515, 41.943611>,  <37.260845, 28.637959, 42.090565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900261, 28.729515, 41.943611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432284, -0.432588, 0.791200,
		0.022175, 0.872053, 0.488910,
		-0.901465, 0.228892, -0.367382,
		36.629822, 28.798183, 41.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972347, 29.027662, 42.564350>,  <37.260845, 28.637959, 42.090565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972347, 29.027662, 42.564350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681015, 28.860781, 42.346916>,  <36.506218, 28.760653, 42.216457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681015, 28.860781, 42.346916>,  <36.972347, 29.027662, 42.564350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681015, 28.860781, 42.346916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352910, -0.451600, 0.819458,
		-0.587361, 0.788670, 0.181678,
		-0.728328, -0.417202, -0.543582,
		36.462517, 28.735620, 42.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336956, 29.081045, 42.921593>,  <36.972347, 29.027662, 42.564350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336956, 29.081045, 42.921593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261932, 28.799570, 42.647469>,  <36.216919, 28.630686, 42.482994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261932, 28.799570, 42.647469>,  <36.336956, 29.081045, 42.921593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261932, 28.799570, 42.647469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504262, -0.529753, 0.681969,
		-0.842936, 0.473483, -0.255484,
		-0.187557, -0.703687, -0.685308,
		36.205666, 28.588465, 42.441875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581139, 28.992706, 42.925011>,  <36.336956, 29.081045, 42.921593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581139, 28.992706, 42.925011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725235, 28.654432, 42.767509>,  <35.811691, 28.451468, 42.673008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725235, 28.654432, 42.767509>,  <35.581139, 28.992706, 42.925011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725235, 28.654432, 42.767509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419522, -0.523869, 0.741325,
		-0.833204, -0.101864, -0.543502,
		0.360238, -0.845686, -0.393756,
		35.833305, 28.400726, 42.649384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074253, 28.558430, 42.760262>,  <35.581139, 28.992706, 42.925011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074253, 28.558430, 42.760262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.391582, 28.319588, 42.807762>,  <35.581982, 28.176283, 42.836262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.391582, 28.319588, 42.807762>,  <35.074253, 28.558430, 42.760262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391582, 28.319588, 42.807762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493350, -0.516247, 0.700068,
		-0.356712, -0.613965, -0.704133,
		0.793324, -0.597107, 0.118748,
		35.629581, 28.140455, 42.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811420, 27.779139, 42.764538>,  <35.074253, 28.558430, 42.760262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811420, 27.779139, 42.764538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183479, 27.754107, 42.909260>,  <35.406715, 27.739088, 42.996094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183479, 27.754107, 42.909260>,  <34.811420, 27.779139, 42.764538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183479, 27.754107, 42.909260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327665, -0.586141, 0.740995,
		0.165698, -0.807789, -0.565705,
		0.930150, -0.062580, 0.361807,
		35.462524, 27.735332, 43.017803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994110, 27.103407, 42.790989>,  <34.811420, 27.779139, 42.764538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994110, 27.103407, 42.790989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215328, 27.297209, 43.062103>,  <35.348061, 27.413490, 43.224773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215328, 27.297209, 43.062103>,  <34.994110, 27.103407, 42.790989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215328, 27.297209, 43.062103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287677, -0.652440, 0.701116,
		0.781911, -0.582732, -0.221447,
		0.553044, 0.484505, 0.677789,
		35.381241, 27.442560, 43.265438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253876, 26.601727, 43.284649>,  <34.994110, 27.103407, 42.790989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253876, 26.601727, 43.284649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.307938, 26.942904, 43.486332>,  <35.340374, 27.147610, 43.607342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.307938, 26.942904, 43.486332>,  <35.253876, 26.601727, 43.284649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307938, 26.942904, 43.486332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307296, -0.447697, 0.839724,
		0.941967, -0.268436, 0.201595,
		0.135159, 0.852942, 0.504205,
		35.348484, 27.198786, 43.637592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545635, 26.347784, 44.007648>,  <35.253876, 26.601727, 43.284649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545635, 26.347784, 44.007648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398396, 26.717892, 44.044266>,  <35.310051, 26.939957, 44.066235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398396, 26.717892, 44.044266>,  <35.545635, 26.347784, 44.007648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398396, 26.717892, 44.044266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246496, -0.192044, 0.949926,
		0.896515, 0.327107, 0.298766,
		-0.368104, 0.925268, 0.091540,
		35.287964, 26.995472, 44.071728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833874, 26.648417, 44.610565>,  <35.545635, 26.347784, 44.007648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833874, 26.648417, 44.610565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.510021, 26.870651, 44.534859>,  <35.315712, 27.003992, 44.489433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.510021, 26.870651, 44.534859>,  <35.833874, 26.648417, 44.610565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510021, 26.870651, 44.534859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359462, -0.214439, 0.908187,
		0.463992, 0.803329, 0.373329,
		-0.809629, 0.555588, -0.189268,
		35.267132, 27.037327, 44.478077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668339, 26.967506, 45.316288>,  <35.833874, 26.648417, 44.610565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668339, 26.967506, 45.316288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338039, 27.015642, 45.095867>,  <35.139858, 27.044523, 44.963615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338039, 27.015642, 45.095867>,  <35.668339, 26.967506, 45.316288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338039, 27.015642, 45.095867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544045, -0.427732, 0.721845,
		-0.148833, 0.895859, 0.418671,
		-0.825750, 0.120341, -0.551048,
		35.090313, 27.051744, 44.930553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219173, 27.264273, 45.756203>,  <35.668339, 26.967506, 45.316288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219173, 27.264273, 45.756203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990009, 27.101826, 45.471432>,  <34.852512, 27.004358, 45.300568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990009, 27.101826, 45.471432>,  <35.219173, 27.264273, 45.756203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990009, 27.101826, 45.471432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624342, -0.346512, 0.700091,
		-0.531011, 0.845576, -0.055035,
		-0.572909, -0.406117, -0.711930,
		34.818138, 26.979990, 45.257854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567783, 27.462303, 45.947105>,  <35.219173, 27.264273, 45.756203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567783, 27.462303, 45.947105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526382, 27.143669, 45.708866>,  <34.501541, 26.952488, 45.565922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526382, 27.143669, 45.708866>,  <34.567783, 27.462303, 45.947105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526382, 27.143669, 45.708866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659105, -0.393533, 0.640869,
		-0.744895, 0.458895, -0.484301,
		-0.103503, -0.796585, -0.595600,
		34.495331, 26.904694, 45.530186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878563, 27.215448, 45.822830>,  <34.567783, 27.462303, 45.947105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878563, 27.215448, 45.822830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057434, 26.867085, 45.741295>,  <34.164757, 26.658066, 45.692375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057434, 26.867085, 45.741295>,  <33.878563, 27.215448, 45.822830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057434, 26.867085, 45.741295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598487, -0.460702, 0.655414,
		-0.664713, -0.171095, -0.727244,
		0.447180, -0.870908, -0.203836,
		34.191589, 26.605812, 45.680145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322220, 27.588444, 45.375343>,  <33.878563, 27.215448, 45.822830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322220, 27.588444, 45.375343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309750, 27.853411, 45.674740>,  <33.302269, 28.012390, 45.854378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309750, 27.853411, 45.674740>,  <33.322220, 27.588444, 45.375343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309750, 27.853411, 45.674740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073646, 0.748337, -0.659217,
		-0.996797, 0.034572, -0.072113,
		-0.031175, 0.662417, 0.748487,
		33.300396, 28.052135, 45.899284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719593, 28.073462, 45.311554>,  <33.322220, 27.588444, 45.375343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719593, 28.073462, 45.311554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038757, 28.215437, 45.506432>,  <33.230255, 28.300623, 45.623356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038757, 28.215437, 45.506432>,  <32.719593, 28.073462, 45.311554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038757, 28.215437, 45.506432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006624, 0.813361, -0.581721,
		-0.602739, 0.460934, 0.651341,
		0.797911, 0.354940, 0.487191,
		33.278130, 28.321918, 45.652588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677891, 28.789051, 45.298794>,  <32.719593, 28.073462, 45.311554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677891, 28.789051, 45.298794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062305, 28.750143, 45.402294>,  <33.292953, 28.726797, 45.464394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062305, 28.750143, 45.402294>,  <32.677891, 28.789051, 45.298794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062305, 28.750143, 45.402294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206744, 0.874267, -0.439219,
		-0.183491, 0.475599, 0.860312,
		0.961035, -0.097271, 0.258747,
		33.350616, 28.720963, 45.479919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802784, 29.460396, 45.502171>,  <32.677891, 28.789051, 45.298794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802784, 29.460396, 45.502171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149551, 29.290598, 45.397667>,  <33.357613, 29.188719, 45.334965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149551, 29.290598, 45.397667>,  <32.802784, 29.460396, 45.502171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149551, 29.290598, 45.397667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155606, 0.728426, -0.667220,
		0.473539, 0.537772, 0.697540,
		0.866918, -0.424496, -0.261258,
		33.409626, 29.163250, 45.319290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284348, 30.077591, 45.355728>,  <32.802784, 29.460396, 45.502171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284348, 30.077591, 45.355728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.468227, 29.759956, 45.196678>,  <33.578556, 29.569376, 45.101250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.468227, 29.759956, 45.196678>,  <33.284348, 30.077591, 45.355728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468227, 29.759956, 45.196678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438326, 0.592281, -0.676073,
		0.772362, 0.136505, 0.620341,
		0.459704, -0.794084, -0.397621,
		33.606140, 29.521730, 45.077393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875042, 30.249142, 45.234726>,  <33.284348, 30.077591, 45.355728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875042, 30.249142, 45.234726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826935, 29.949715, 44.973904>,  <33.798069, 29.770058, 44.817410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826935, 29.949715, 44.973904>,  <33.875042, 30.249142, 45.234726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826935, 29.949715, 44.973904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342785, 0.585117, -0.734940,
		0.931684, -0.311906, 0.186226,
		-0.120268, -0.748567, -0.652060,
		33.790855, 29.725145, 44.778286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532478, 30.183216, 44.850586>,  <33.875042, 30.249142, 45.234726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532478, 30.183216, 44.850586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244984, 30.013096, 44.630573>,  <34.072487, 29.911024, 44.498566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244984, 30.013096, 44.630573>,  <34.532478, 30.183216, 44.850586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244984, 30.013096, 44.630573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110253, 0.711367, -0.694119,
		0.686475, -0.559538, -0.464402,
		-0.718747, -0.425293, -0.550026,
		34.029362, 29.885506, 44.465565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270870, 30.288706, 44.717033>,  <34.532478, 30.183216, 44.850586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270870, 30.288706, 44.717033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267578, 30.600636, 44.967411>,  <35.265602, 30.787792, 45.117638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267578, 30.600636, 44.967411>,  <35.270870, 30.288706, 44.717033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267578, 30.600636, 44.967411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364629, -0.580528, 0.728034,
		0.931116, 0.234228, -0.279570,
		-0.008228, 0.779823, 0.625946,
		35.265110, 30.834583, 45.155193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926044, 30.425947, 44.953201>,  <35.270870, 30.288706, 44.717033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926044, 30.425947, 44.953201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678631, 30.568518, 45.233311>,  <35.530182, 30.654060, 45.401375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678631, 30.568518, 45.233311>,  <35.926044, 30.425947, 44.953201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678631, 30.568518, 45.233311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445188, -0.575399, 0.686092,
		0.647479, 0.736121, 0.197224,
		-0.618530, 0.356428, 0.700271,
		35.493073, 30.675446, 45.443394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254749, 30.337778, 45.561783>,  <35.926044, 30.425947, 44.953201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254749, 30.337778, 45.561783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890656, 30.392458, 45.718136>,  <35.672199, 30.425266, 45.811947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890656, 30.392458, 45.718136>,  <36.254749, 30.337778, 45.561783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890656, 30.392458, 45.718136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293854, -0.451841, 0.842312,
		0.291759, 0.881563, 0.371112,
		-0.910234, 0.136699, 0.390879,
		35.617584, 30.433468, 45.835400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373024, 30.405077, 46.260429>,  <36.254749, 30.337778, 45.561783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373024, 30.405077, 46.260429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976719, 30.354736, 46.280659>,  <35.738937, 30.324532, 46.292797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976719, 30.354736, 46.280659>,  <36.373024, 30.405077, 46.260429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976719, 30.354736, 46.280659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115669, -0.589292, 0.799597,
		-0.070829, 0.798058, 0.598403,
		-0.990759, -0.125851, 0.050571,
		35.679493, 30.316980, 46.295830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165886, 30.616392, 47.048817>,  <36.373024, 30.405077, 46.260429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165886, 30.616392, 47.048817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917786, 30.351435, 46.880756>,  <35.768925, 30.192459, 46.779922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917786, 30.351435, 46.880756>,  <36.165886, 30.616392, 47.048817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917786, 30.351435, 46.880756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042010, -0.506805, 0.861036,
		-0.783280, 0.551707, 0.286518,
		-0.620248, -0.662396, -0.420148,
		35.731712, 30.152716, 46.754711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744278, 30.239586, 47.627113>,  <36.165886, 30.616392, 47.048817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744278, 30.239586, 47.627113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678455, 29.993917, 47.318382>,  <35.638962, 29.846516, 47.133144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678455, 29.993917, 47.318382>,  <35.744278, 30.239586, 47.627113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678455, 29.993917, 47.318382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157470, -0.788815, 0.594116,
		-0.973717, -0.023774, 0.226517,
		-0.164556, -0.614170, -0.771827,
		35.629089, 29.809666, 47.086834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364727, 29.773487, 47.944363>,  <35.744278, 30.239586, 47.627113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364727, 29.773487, 47.944363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509876, 29.597786, 47.615635>,  <35.596966, 29.492365, 47.418400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509876, 29.597786, 47.615635>,  <35.364727, 29.773487, 47.944363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509876, 29.597786, 47.615635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117156, -0.853424, 0.507880,
		-0.924445, -0.280576, -0.258222,
		0.362871, -0.439254, -0.821815,
		35.618736, 29.466009, 47.369091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025940, 29.056913, 47.864632>,  <35.364727, 29.773487, 47.944363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025940, 29.056913, 47.864632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.371716, 29.051348, 47.663616>,  <35.579182, 29.048008, 47.543007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.371716, 29.051348, 47.663616>,  <35.025940, 29.056913, 47.864632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371716, 29.051348, 47.663616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236151, -0.871232, 0.430335,
		-0.443813, -0.490675, -0.749845,
		0.864444, -0.013912, -0.502537,
		35.631050, 29.047174, 47.512856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013535, 28.417585, 47.513569>,  <35.025940, 29.056913, 47.864632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013535, 28.417585, 47.513569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.396313, 28.528519, 47.547852>,  <35.625980, 28.595079, 47.568420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.396313, 28.528519, 47.547852>,  <35.013535, 28.417585, 47.513569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396313, 28.528519, 47.547852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228776, -0.902310, 0.365375,
		0.178666, -0.330035, -0.926906,
		0.956943, 0.277334, 0.085708,
		35.683395, 28.611719, 47.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.702000, 37.518547, 34.222286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081112, 37.593124, 34.325787>,  <37.308578, 37.637871, 34.387886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081112, 37.593124, 34.325787>,  <36.702000, 37.518547, 34.222286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081112, 37.593124, 34.325787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269687, 0.035459, 0.962295,
		0.170238, -0.981826, 0.083889,
		0.947781, 0.186443, 0.258749,
		37.365448, 37.649055, 34.403412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010712, 36.934986, 34.630711>,  <36.702000, 37.518547, 34.222286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010712, 36.934986, 34.630711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214642, 37.265743, 34.725643>,  <37.336998, 37.464199, 34.782604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214642, 37.265743, 34.725643>,  <37.010712, 36.934986, 34.630711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214642, 37.265743, 34.725643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249929, -0.121610, 0.960597,
		0.823173, -0.549052, 0.144664,
		0.509825, 0.826894, 0.237330,
		37.367588, 37.513813, 34.796841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435150, 36.721634, 35.146088>,  <37.010712, 36.934986, 34.630711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435150, 36.721634, 35.146088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440460, 37.119251, 35.189350>,  <37.443645, 37.357822, 35.215309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440460, 37.119251, 35.189350>,  <37.435150, 36.721634, 35.146088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440460, 37.119251, 35.189350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146478, -0.105068, 0.983618,
		0.989125, -0.028903, 0.144211,
		0.013278, 0.994045, 0.108159,
		37.444443, 37.417465, 35.221798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767616, 36.792942, 35.833138>,  <37.435150, 36.721634, 35.146088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767616, 36.792942, 35.833138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581654, 37.131207, 35.728287>,  <37.470078, 37.334167, 35.665375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581654, 37.131207, 35.728287>,  <37.767616, 36.792942, 35.833138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581654, 37.131207, 35.728287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274560, 0.143768, 0.950762,
		0.841711, 0.513987, 0.165346,
		-0.464908, 0.845664, -0.262131,
		37.442181, 37.384907, 35.649647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942932, 37.330662, 36.405933>,  <37.767616, 36.792942, 35.833138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942932, 37.330662, 36.405933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611435, 37.459949, 36.223194>,  <37.412537, 37.537521, 36.113552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611435, 37.459949, 36.223194>,  <37.942932, 37.330662, 36.405933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611435, 37.459949, 36.223194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430430, 0.153553, 0.889467,
		0.357641, 0.933783, 0.011866,
		-0.828747, 0.323218, -0.456846,
		37.362812, 37.556915, 36.086140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734505, 37.891621, 36.854031>,  <37.942932, 37.330662, 36.405933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734505, 37.891621, 36.854031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410896, 37.781635, 36.646229>,  <37.216732, 37.715645, 36.521545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410896, 37.781635, 36.646229>,  <37.734505, 37.891621, 36.854031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410896, 37.781635, 36.646229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553164, 0.057311, 0.831099,
		-0.198746, 0.959746, -0.198463,
		-0.809018, -0.274960, -0.519507,
		37.168190, 37.699146, 36.490376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225578, 38.261116, 37.086231>,  <37.734505, 37.891621, 36.854031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225578, 38.261116, 37.086231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041374, 37.944973, 36.924606>,  <36.930851, 37.755287, 36.827633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041374, 37.944973, 36.924606>,  <37.225578, 38.261116, 37.086231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041374, 37.944973, 36.924606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578603, -0.077935, 0.811877,
		-0.673162, 0.607671, -0.421412,
		-0.460512, -0.790356, -0.404063,
		36.903221, 37.707867, 36.803387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508072, 38.193512, 37.482361>,  <37.225578, 38.261116, 37.086231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508072, 38.193512, 37.482361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499729, 37.844257, 37.287548>,  <36.494724, 37.634705, 37.170662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499729, 37.844257, 37.287548>,  <36.508072, 38.193512, 37.482361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499729, 37.844257, 37.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552830, -0.395817, 0.733286,
		-0.833033, 0.284541, -0.474440,
		-0.020858, -0.873136, -0.487031,
		36.493473, 37.582317, 37.141438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855091, 37.923801, 37.535347>,  <36.508072, 38.193512, 37.482361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855091, 37.923801, 37.535347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093575, 37.609497, 37.469471>,  <36.236664, 37.420914, 37.429947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093575, 37.609497, 37.469471>,  <35.855091, 37.923801, 37.535347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093575, 37.609497, 37.469471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472048, -0.509027, 0.719766,
		-0.649394, -0.351387, -0.674400,
		0.596204, -0.785760, -0.164688,
		36.272434, 37.373768, 37.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399590, 37.371002, 37.392693>,  <35.855091, 37.923801, 37.535347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399590, 37.371002, 37.392693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738171, 37.181480, 37.489876>,  <35.941319, 37.067768, 37.548187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738171, 37.181480, 37.489876>,  <35.399590, 37.371002, 37.392693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738171, 37.181480, 37.489876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483131, -0.491590, 0.724516,
		-0.223842, -0.730650, -0.645016,
		0.846451, -0.473804, 0.242961,
		35.992107, 37.039337, 37.562763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244522, 36.701843, 37.543751>,  <35.399590, 37.371002, 37.392693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244522, 36.701843, 37.543751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603031, 36.710159, 37.720955>,  <35.818138, 36.715149, 37.827278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603031, 36.710159, 37.720955>,  <35.244522, 36.701843, 37.543751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603031, 36.710159, 37.720955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329131, -0.638346, 0.695835,
		0.297259, -0.769468, -0.565292,
		0.896276, 0.020788, 0.443010,
		35.871914, 36.716396, 37.853859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472164, 36.086170, 37.687347>,  <35.244522, 36.701843, 37.543751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472164, 36.086170, 37.687347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647961, 36.307529, 37.970360>,  <35.753437, 36.440346, 38.140167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647961, 36.307529, 37.970360>,  <35.472164, 36.086170, 37.687347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647961, 36.307529, 37.970360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160169, -0.726776, 0.667939,
		0.883853, -0.406876, -0.230772,
		0.439487, 0.553398, 0.707532,
		35.779808, 36.473549, 38.182621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272568, 35.567348, 37.356319>,  <35.472164, 36.086170, 37.687347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272568, 35.567348, 37.356319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982468, 35.302143, 37.430534>,  <34.808407, 35.143021, 37.475063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982468, 35.302143, 37.430534>,  <35.272568, 35.567348, 37.356319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982468, 35.302143, 37.430534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307799, 0.071183, -0.948785,
		0.615854, -0.745212, -0.255701,
		-0.725248, -0.663017, 0.185537,
		34.764893, 35.103237, 37.486195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391739, 34.840710, 36.888752>,  <35.272568, 35.567348, 37.356319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391739, 34.840710, 36.888752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010689, 34.920818, 36.980309>,  <34.782059, 34.968884, 37.035244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010689, 34.920818, 36.980309>,  <35.391739, 34.840710, 36.888752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010689, 34.920818, 36.980309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263920, -0.170293, -0.949392,
		-0.151158, -0.964827, 0.215082,
		-0.952626, 0.200272, 0.228896,
		34.724899, 34.980900, 37.048977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999607, 34.319923, 36.561459>,  <35.391739, 34.840710, 36.888752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999607, 34.319923, 36.561459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751194, 34.627586, 36.621742>,  <34.602146, 34.812183, 36.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751194, 34.627586, 36.621742>,  <34.999607, 34.319923, 36.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751194, 34.627586, 36.621742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303635, -0.058825, -0.950971,
		-0.722580, -0.636347, 0.270076,
		-0.621034, 0.769157, 0.150712,
		34.564884, 34.858334, 36.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301556, 34.142418, 36.374638>,  <34.999607, 34.319923, 36.561459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301556, 34.142418, 36.374638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280701, 34.541744, 36.384762>,  <34.268188, 34.781342, 36.390835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280701, 34.541744, 36.384762>,  <34.301556, 34.142418, 36.374638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280701, 34.541744, 36.384762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450365, -0.000881, -0.892844,
		-0.891321, -0.057947, 0.449654,
		-0.052134, 0.998319, 0.025312,
		34.265060, 34.841240, 36.392357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639233, 34.407600, 36.067589>,  <34.301556, 34.142418, 36.374638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639233, 34.407600, 36.067589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834755, 34.756233, 36.052528>,  <33.952068, 34.965412, 36.043491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834755, 34.756233, 36.052528>,  <33.639233, 34.407600, 36.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834755, 34.756233, 36.052528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277476, 0.114411, -0.953896,
		-0.827086, 0.476721, 0.297767,
		0.488810, 0.871577, -0.037651,
		33.981400, 35.017708, 36.041233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185577, 34.887386, 35.700958>,  <33.639233, 34.407600, 36.067589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185577, 34.887386, 35.700958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552471, 35.045856, 35.684361>,  <33.772610, 35.140938, 35.674404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552471, 35.045856, 35.684361>,  <33.185577, 34.887386, 35.700958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552471, 35.045856, 35.684361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173352, 0.303223, -0.937019,
		-0.358639, 0.866663, 0.346805,
		0.917239, 0.396171, -0.041490,
		33.827644, 35.164707, 35.671913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121990, 35.583256, 35.584404>,  <33.185577, 34.887386, 35.700958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121990, 35.583256, 35.584404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484222, 35.477840, 35.451462>,  <33.701561, 35.414589, 35.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484222, 35.477840, 35.451462>,  <33.121990, 35.583256, 35.584404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484222, 35.477840, 35.451462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244165, 0.316833, -0.916515,
		0.346842, 0.911133, 0.222572,
		0.905585, -0.263542, -0.332358,
		33.755898, 35.398777, 35.351753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369556, 36.114594, 35.185287>,  <33.121990, 35.583256, 35.584404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369556, 36.114594, 35.185287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570187, 35.799133, 35.043053>,  <33.690567, 35.609856, 34.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570187, 35.799133, 35.043053>,  <33.369556, 36.114594, 35.185287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570187, 35.799133, 35.043053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234392, 0.271770, -0.933382,
		0.832753, 0.551513, -0.048540,
		0.501580, -0.788654, -0.355588,
		33.720661, 35.562538, 34.936375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763741, 36.454918, 34.691277>,  <33.369556, 36.114594, 35.185287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763741, 36.454918, 34.691277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825397, 36.071812, 34.594181>,  <33.862392, 35.841946, 34.535923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825397, 36.071812, 34.594181>,  <33.763741, 36.454918, 34.691277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825397, 36.071812, 34.594181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032222, 0.240669, -0.970072,
		0.987523, 0.157347, 0.006235,
		0.154139, -0.957768, -0.242737,
		33.871639, 35.784481, 34.521358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422527, 36.390026, 34.436356>,  <33.763741, 36.454918, 34.691277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422527, 36.390026, 34.436356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207367, 36.080662, 34.302197>,  <34.078270, 35.895042, 34.221703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207367, 36.080662, 34.302197>,  <34.422527, 36.390026, 34.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207367, 36.080662, 34.302197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187976, 0.277801, -0.942068,
		0.821782, -0.569788, -0.004046,
		-0.537903, -0.773414, -0.335398,
		34.045998, 35.848637, 34.201576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798424, 36.162399, 33.745121>,  <34.422527, 36.390026, 34.436356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798424, 36.162399, 33.745121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431740, 36.003071, 33.732605>,  <34.211727, 35.907475, 33.725098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431740, 36.003071, 33.732605>,  <34.798424, 36.162399, 33.745121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431740, 36.003071, 33.732605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070693, 0.238769, -0.968500,
		0.393245, -0.885623, -0.247041,
		-0.916712, -0.398322, -0.031288,
		34.156727, 35.883575, 33.723217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783424, 35.761688, 33.156101>,  <34.798424, 36.162399, 33.745121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783424, 35.761688, 33.156101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428066, 35.904636, 33.271362>,  <34.214851, 35.990406, 33.340519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428066, 35.904636, 33.271362>,  <34.783424, 35.761688, 33.156101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428066, 35.904636, 33.271362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185975, 0.293699, -0.937632,
		-0.419717, -0.886580, -0.194458,
		-0.888398, 0.357375, 0.288152,
		34.161549, 36.011848, 33.357807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442188, 35.876549, 32.753563>,  <34.783424, 35.761688, 33.156101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442188, 35.876549, 32.753563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411945, 35.480022, 32.710522>,  <35.393799, 35.242107, 32.684696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411945, 35.480022, 32.710522>,  <35.442188, 35.876549, 32.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411945, 35.480022, 32.710522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515839, 0.053466, -0.855015,
		0.853342, -0.120155, 0.507316,
		-0.075610, -0.991314, -0.107605,
		35.389263, 35.182629, 32.678242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146038, 35.692265, 32.516556>,  <35.442188, 35.876549, 32.753563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146038, 35.692265, 32.516556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908947, 35.410137, 32.361012>,  <35.766693, 35.240860, 32.267685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908947, 35.410137, 32.361012>,  <36.146038, 35.692265, 32.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908947, 35.410137, 32.361012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611326, -0.079646, -0.787361,
		0.524365, -0.704407, 0.478385,
		-0.592724, -0.705314, -0.388859,
		35.731129, 35.198544, 32.244354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862545, 35.494816, 32.314915>,  <36.146038, 35.692265, 32.516556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862545, 35.494816, 32.314915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200165, 35.369427, 32.488960>,  <37.402737, 35.294193, 32.593388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200165, 35.369427, 32.488960>,  <36.862545, 35.494816, 32.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200165, 35.369427, 32.488960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283823, -0.949535, -0.133520,
		0.455008, -0.010798, -0.890422,
		0.844045, -0.313474, 0.435111,
		37.453377, 35.275383, 32.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000679, 34.731647, 32.577183>,  <36.862545, 35.494816, 32.314915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000679, 34.731647, 32.577183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116367, 34.861855, 32.937271>,  <37.185780, 34.939980, 33.153324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116367, 34.861855, 32.937271>,  <37.000679, 34.731647, 32.577183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116367, 34.861855, 32.937271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806504, 0.589438, 0.045974,
		-0.515658, -0.739326, 0.433006,
		0.289220, 0.325514, 0.900218,
		37.203133, 34.959507, 33.207336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676422, 34.978561, 33.255535>,  <37.000679, 34.731647, 32.577183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676422, 34.978561, 33.255535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025799, 35.054867, 33.434734>,  <37.235424, 35.100651, 33.542255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025799, 35.054867, 33.434734>,  <36.676422, 34.978561, 33.255535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025799, 35.054867, 33.434734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226969, -0.654492, 0.721198,
		0.430787, -0.731609, -0.528367,
		0.873446, 0.190760, 0.447999,
		37.287834, 35.112095, 33.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024940, 34.335152, 33.469898>,  <36.676422, 34.978561, 33.255535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024940, 34.335152, 33.469898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238556, 34.566986, 33.716110>,  <37.366726, 34.706089, 33.863838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238556, 34.566986, 33.716110>,  <37.024940, 34.335152, 33.469898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238556, 34.566986, 33.716110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057052, -0.701678, 0.710206,
		0.843530, -0.414398, -0.341660,
		0.534043, 0.579588, 0.615529,
		37.398769, 34.740864, 33.900768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362926, 33.791111, 33.894024>,  <37.024940, 34.335152, 33.469898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362926, 33.791111, 33.894024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367222, 34.125370, 34.113689>,  <37.369801, 34.325924, 34.245487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367222, 34.125370, 34.113689>,  <37.362926, 33.791111, 33.894024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367222, 34.125370, 34.113689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145934, -0.544622, 0.825887,
		0.989236, 0.071269, -0.127800,
		0.010743, 0.835648, 0.549161,
		37.370445, 34.376064, 34.278439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767387, 33.580532, 34.513924>,  <37.362926, 33.791111, 33.894024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767387, 33.580532, 34.513924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537178, 33.890064, 34.619724>,  <37.399052, 34.075783, 34.683205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537178, 33.890064, 34.619724>,  <37.767387, 33.580532, 34.513924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537178, 33.890064, 34.619724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386354, -0.542348, 0.746049,
		0.720769, 0.327175, 0.611105,
		-0.575520, 0.773832, 0.264502,
		37.364521, 34.122215, 34.699074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820919, 33.612309, 35.268894>,  <37.767387, 33.580532, 34.513924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820919, 33.612309, 35.268894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488697, 33.795269, 35.141800>,  <37.289364, 33.905045, 35.065544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488697, 33.795269, 35.141800>,  <37.820919, 33.612309, 35.268894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488697, 33.795269, 35.141800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514466, -0.411618, 0.752260,
		0.213302, 0.788259, 0.577192,
		-0.830558, 0.457404, -0.317733,
		37.239529, 33.932491, 35.046478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525864, 33.786583, 35.874466>,  <37.820919, 33.612309, 35.268894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525864, 33.786583, 35.874466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222492, 33.794228, 35.613873>,  <37.040470, 33.798813, 35.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222492, 33.794228, 35.613873>,  <37.525864, 33.786583, 35.874466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222492, 33.794228, 35.613873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568335, -0.508689, 0.646708,
		-0.319043, 0.860738, 0.396663,
		-0.758424, 0.019110, -0.651481,
		36.994965, 33.799961, 35.418427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928589, 34.004368, 36.262634>,  <37.525864, 33.786583, 35.874466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928589, 34.004368, 36.262634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789764, 33.824493, 35.933434>,  <36.706470, 33.716568, 35.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789764, 33.824493, 35.933434>,  <36.928589, 34.004368, 36.262634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789764, 33.824493, 35.933434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593134, -0.574509, 0.564031,
		-0.726458, 0.683904, -0.067334,
		-0.347059, -0.449683, -0.823004,
		36.685646, 33.689587, 35.686531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262360, 34.160744, 36.305725>,  <36.928589, 34.004368, 36.262634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262360, 34.160744, 36.305725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324818, 33.831036, 36.088028>,  <36.362293, 33.633213, 35.957409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324818, 33.831036, 36.088028>,  <36.262360, 34.160744, 36.305725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324818, 33.831036, 36.088028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608774, -0.514216, 0.604132,
		-0.777826, 0.236990, -0.582085,
		0.156144, -0.824268, -0.544244,
		36.371662, 33.583755, 35.924755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660904, 33.809071, 36.328121>,  <36.262360, 34.160744, 36.305725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660904, 33.809071, 36.328121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905224, 33.513145, 36.215267>,  <36.051815, 33.335590, 36.147552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905224, 33.513145, 36.215267>,  <35.660904, 33.809071, 36.328121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905224, 33.513145, 36.215267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441469, -0.614005, 0.654295,
		-0.657294, -0.275083, -0.701637,
		0.610794, -0.739816, -0.282141,
		36.088463, 33.291203, 36.130627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153889, 33.189880, 36.451023>,  <35.660904, 33.809071, 36.328121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153889, 33.189880, 36.451023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526340, 33.051067, 36.406181>,  <35.749813, 32.967781, 36.379276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526340, 33.051067, 36.406181>,  <35.153889, 33.189880, 36.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526340, 33.051067, 36.406181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211126, -0.763601, 0.610196,
		-0.297362, -0.544502, -0.784279,
		0.931129, -0.347031, -0.112107,
		35.805679, 32.946957, 36.372547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078327, 32.462399, 36.508053>,  <35.153889, 33.189880, 36.451023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078327, 32.462399, 36.508053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473866, 32.503792, 36.550907>,  <35.711189, 32.528625, 36.576622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473866, 32.503792, 36.550907>,  <35.078327, 32.462399, 36.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473866, 32.503792, 36.550907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006683, -0.749384, 0.662102,
		0.148802, -0.654000, -0.741716,
		0.988844, 0.103479, 0.107140,
		35.770519, 32.534836, 36.583050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356651, 31.769405, 36.486263>,  <35.078327, 32.462399, 36.508053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356651, 31.769405, 36.486263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583839, 32.033745, 36.682503>,  <35.720150, 32.192348, 36.800247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583839, 32.033745, 36.682503>,  <35.356651, 31.769405, 36.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583839, 32.033745, 36.682503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143798, -0.666584, 0.731428,
		0.810392, -0.344880, -0.473627,
		0.567967, 0.660850, 0.490602,
		35.754230, 32.231998, 36.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719528, 31.301060, 36.863564>,  <35.356651, 31.769405, 36.486263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719528, 31.301060, 36.863564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890472, 31.633953, 37.004841>,  <35.993042, 31.833689, 37.089607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890472, 31.633953, 37.004841>,  <35.719528, 31.301060, 36.863564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890472, 31.633953, 37.004841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505127, -0.543807, 0.670164,
		0.749804, -0.107996, -0.652787,
		0.427365, 0.832233, 0.353197,
		36.018681, 31.883623, 37.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294464, 31.028606, 37.074467>,  <35.719528, 31.301060, 36.863564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294464, 31.028606, 37.074467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240631, 31.361897, 37.288990>,  <36.208332, 31.561871, 37.417702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240631, 31.361897, 37.288990>,  <36.294464, 31.028606, 37.074467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240631, 31.361897, 37.288990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558122, -0.383472, 0.735833,
		0.818773, 0.398351, -0.413434,
		-0.134579, 0.833226, 0.536304,
		36.200256, 31.611864, 37.449883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893036, 31.213741, 37.269344>,  <36.294464, 31.028606, 37.074467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893036, 31.213741, 37.269344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625450, 31.351974, 37.532570>,  <36.464897, 31.434914, 37.690506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625450, 31.351974, 37.532570>,  <36.893036, 31.213741, 37.269344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625450, 31.351974, 37.532570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535301, -0.390248, 0.749106,
		0.515687, 0.853393, 0.076073,
		-0.668969, 0.345582, 0.658068,
		36.424759, 31.455648, 37.729992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254459, 31.484650, 37.844662>,  <36.893036, 31.213741, 37.269344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254459, 31.484650, 37.844662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895374, 31.460533, 38.019238>,  <36.679924, 31.446064, 38.123985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895374, 31.460533, 38.019238>,  <37.254459, 31.484650, 37.844662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895374, 31.460533, 38.019238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427298, -0.360609, 0.829082,
		0.107399, 0.930766, 0.349484,
		-0.897709, -0.060292, 0.436444,
		36.626060, 31.442446, 38.150169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300079, 31.701807, 38.525406>,  <37.254459, 31.484650, 37.844662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300079, 31.701807, 38.525406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972015, 31.472958, 38.527149>,  <36.775177, 31.335648, 38.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972015, 31.472958, 38.527149>,  <37.300079, 31.701807, 38.525406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972015, 31.472958, 38.527149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276789, -0.390098, 0.878187,
		-0.500730, 0.721457, 0.478299,
		-0.820157, -0.572122, 0.004357,
		36.725967, 31.301321, 38.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217880, 31.654493, 39.286964>,  <37.300079, 31.701807, 38.525406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217880, 31.654493, 39.286964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953602, 31.387260, 39.150059>,  <36.795036, 31.226921, 39.067913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953602, 31.387260, 39.150059>,  <37.217880, 31.654493, 39.286964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953602, 31.387260, 39.150059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095099, -0.377789, 0.920995,
		-0.744606, 0.641046, 0.186069,
		-0.660695, -0.668083, -0.342267,
		36.755394, 31.186836, 39.047379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650078, 31.641991, 39.771481>,  <37.217880, 31.654493, 39.286964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650078, 31.641991, 39.771481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646988, 31.290535, 39.580513>,  <36.645134, 31.079660, 39.465931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646988, 31.290535, 39.580513>,  <36.650078, 31.641991, 39.771481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646988, 31.290535, 39.580513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011986, -0.477319, 0.878648,
		-0.999898, 0.012506, -0.006846,
		-0.007721, -0.878641, -0.477421,
		36.644672, 31.026943, 39.437286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141441, 31.180748, 40.072380>,  <36.650078, 31.641991, 39.771481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141441, 31.180748, 40.072380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398697, 30.943008, 39.879250>,  <36.553051, 30.800365, 39.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398697, 30.943008, 39.879250>,  <36.141441, 31.180748, 40.072380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398697, 30.943008, 39.879250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071305, -0.674273, 0.735032,
		-0.762424, -0.438298, -0.476030,
		0.643137, -0.594349, -0.482829,
		36.591637, 30.764704, 39.734402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761826, 30.508018, 40.044662>,  <36.141441, 31.180748, 40.072380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761826, 30.508018, 40.044662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147564, 30.428961, 39.974270>,  <36.379009, 30.381525, 39.932034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147564, 30.428961, 39.974270>,  <35.761826, 30.508018, 40.044662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147564, 30.428961, 39.974270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001039, -0.662154, 0.749367,
		-0.264633, -0.722834, -0.638341,
		0.964348, -0.197645, -0.175979,
		36.436867, 30.369667, 39.921474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818951, 29.794859, 39.947781>,  <35.761826, 30.508018, 40.044662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818951, 29.794859, 39.947781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180019, 29.909241, 40.076412>,  <36.396660, 29.977869, 40.153591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180019, 29.909241, 40.076412>,  <35.818951, 29.794859, 39.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180019, 29.909241, 40.076412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040777, -0.687088, 0.725429,
		0.428393, -0.667938, -0.608555,
		0.902672, 0.285953, 0.321581,
		36.450821, 29.995028, 40.172886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233028, 29.204689, 39.873695>,  <35.818951, 29.794859, 39.947781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233028, 29.204689, 39.873695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390583, 29.460869, 40.137417>,  <36.485115, 29.614576, 40.295650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390583, 29.460869, 40.137417>,  <36.233028, 29.204689, 39.873695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390583, 29.460869, 40.137417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122147, -0.747397, 0.653053,
		0.911008, -0.176696, -0.372617,
		0.393885, 0.640450, 0.659301,
		36.508747, 29.653004, 40.335209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620590, 28.785658, 40.169865>,  <36.233028, 29.204689, 39.873695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620590, 28.785658, 40.169865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648956, 29.093189, 40.424068>,  <36.665977, 29.277708, 40.576591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648956, 29.093189, 40.424068>,  <36.620590, 28.785658, 40.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648956, 29.093189, 40.424068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087322, -0.639456, 0.763853,
		0.993653, 0.001325, -0.112483,
		0.070915, 0.768827, 0.635513,
		36.670231, 29.323837, 40.614723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135418, 28.649591, 40.639050>,  <36.620590, 28.785658, 40.169865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135418, 28.649591, 40.639050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898323, 28.912666, 40.825001>,  <36.756065, 29.070511, 40.936573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898323, 28.912666, 40.825001>,  <37.135418, 28.649591, 40.639050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898323, 28.912666, 40.825001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038131, -0.599476, 0.799484,
		0.804495, 0.456155, 0.380408,
		-0.592734, 0.657686, 0.464882,
		36.720501, 29.109972, 40.964466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418301, 28.687534, 41.314316>,  <37.135418, 28.649591, 40.639050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418301, 28.687534, 41.314316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031754, 28.790396, 41.315296>,  <36.799824, 28.852112, 41.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031754, 28.790396, 41.315296>,  <37.418301, 28.687534, 41.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031754, 28.790396, 41.315296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167091, -0.635097, 0.754144,
		0.195485, 0.728371, 0.656705,
		-0.966368, 0.257154, 0.002448,
		36.741844, 28.867542, 41.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039352, 28.757963, 41.771008>,  <37.418301, 28.687534, 41.314316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039352, 28.757963, 41.771008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273495, 28.472933, 41.616299>,  <38.413979, 28.301914, 41.523472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273495, 28.472933, 41.616299>,  <38.039352, 28.757963, 41.771008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273495, 28.472933, 41.616299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325094, 0.643293, -0.693172,
		0.742749, 0.280011, 0.608208,
		0.585352, -0.712578, -0.386776,
		38.449100, 28.259159, 41.500267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678181, 29.086428, 41.797100>,  <38.039352, 28.757963, 41.771008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678181, 29.086428, 41.797100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708813, 28.801092, 41.518452>,  <38.727192, 28.629890, 41.351261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708813, 28.801092, 41.518452>,  <38.678181, 29.086428, 41.797100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708813, 28.801092, 41.518452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307617, 0.681494, -0.664031,
		0.948423, -0.163439, 0.271626,
		0.076582, -0.713339, -0.696622,
		38.731789, 28.587090, 41.309464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186852, 29.386902, 41.435097>,  <38.678181, 29.086428, 41.797100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186852, 29.386902, 41.435097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066975, 29.077147, 41.212204>,  <38.995049, 28.891293, 41.078468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066975, 29.077147, 41.212204>,  <39.186852, 29.386902, 41.435097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066975, 29.077147, 41.212204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402994, 0.426658, -0.809666,
		0.864743, -0.467211, 0.184209,
		-0.299691, -0.774388, -0.557233,
		38.977066, 28.844830, 41.045033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709755, 29.165894, 41.078293>,  <39.186852, 29.386902, 41.435097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709755, 29.165894, 41.078293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392384, 29.026417, 40.878738>,  <39.201962, 28.942730, 40.759007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392384, 29.026417, 40.878738>,  <39.709755, 29.165894, 41.078293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392384, 29.026417, 40.878738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271904, 0.530260, -0.803052,
		0.544546, -0.772817, -0.325919,
		-0.793435, -0.348680, -0.498883,
		39.154354, 28.921810, 40.729073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941288, 28.815062, 40.424957>,  <39.709755, 29.165894, 41.078293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941288, 28.815062, 40.424957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565403, 28.947760, 40.391750>,  <39.339874, 29.027378, 40.371826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565403, 28.947760, 40.391750>,  <39.941288, 28.815062, 40.424957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565403, 28.947760, 40.391750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264028, 0.549526, -0.792660,
		-0.217341, -0.766789, -0.603985,
		-0.939708, 0.331746, -0.083019,
		39.283489, 29.047283, 40.366844>
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
