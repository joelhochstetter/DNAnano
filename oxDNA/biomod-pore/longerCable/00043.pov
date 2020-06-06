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
	<24.013830, 34.605934, 34.999325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276894, 34.904583, 35.039391>,  <24.434732, 35.083775, 35.063431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276894, 34.904583, 35.039391>,  <24.013830, 34.605934, 34.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276894, 34.904583, 35.039391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753212, -0.649546, -0.103734,
		-0.012389, 0.143667, -0.989549,
		0.657661, 0.746625, 0.100164,
		24.474192, 35.128571, 35.069439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635553, 34.296242, 34.612785>,  <24.013830, 34.605934, 34.999325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635553, 34.296242, 34.612785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747000, 34.597752, 34.850842>,  <24.813868, 34.778660, 34.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747000, 34.597752, 34.850842>,  <24.635553, 34.296242, 34.612785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747000, 34.597752, 34.850842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931024, -0.364081, 0.025265,
		0.235724, 0.547050, -0.803225,
		0.278618, 0.753778, 0.595140,
		24.830585, 34.823883, 35.029385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292622, 34.808048, 34.354805>,  <24.635553, 34.296242, 34.612785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292622, 34.808048, 34.354805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256184, 34.772442, 34.751549>,  <25.234320, 34.751080, 34.989594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256184, 34.772442, 34.751549>,  <25.292622, 34.808048, 34.354805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256184, 34.772442, 34.751549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915311, -0.399856, 0.048182,
		0.392311, 0.912245, 0.117900,
		-0.091096, -0.089013, 0.991856,
		25.228855, 34.745739, 35.049107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490414, 35.444698, 34.052040>,  <25.292622, 34.808048, 34.354805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490414, 35.444698, 34.052040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866978, 35.573715, 34.091454>,  <26.092916, 35.651127, 34.115101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866978, 35.573715, 34.091454>,  <25.490414, 35.444698, 34.052040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866978, 35.573715, 34.091454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327698, 0.943888, 0.041103,
		-0.079751, -0.070986, 0.994284,
		0.941411, 0.322546, 0.098538,
		26.149401, 35.670479, 34.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648682, 35.985847, 34.556667>,  <25.490414, 35.444698, 34.052040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648682, 35.985847, 34.556667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987539, 36.064503, 34.359211>,  <26.190853, 36.111698, 34.240738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987539, 36.064503, 34.359211>,  <25.648682, 35.985847, 34.556667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987539, 36.064503, 34.359211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208845, 0.977458, 0.030970,
		0.488600, 0.076858, 0.869116,
		0.847145, 0.196643, -0.493637,
		26.241682, 36.123497, 34.211121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042366, 36.420166, 34.993660>,  <25.648682, 35.985847, 34.556667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042366, 36.420166, 34.993660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060469, 36.475174, 34.597874>,  <26.071329, 36.508179, 34.360401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060469, 36.475174, 34.597874>,  <26.042366, 36.420166, 34.993660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060469, 36.475174, 34.597874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304967, 0.945099, 0.117404,
		0.951287, 0.296442, 0.084708,
		0.045254, 0.137518, -0.989465,
		26.074045, 36.516430, 34.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166767, 37.037628, 34.689209>,  <26.042366, 36.420166, 34.993660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166767, 37.037628, 34.689209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547628, 37.050545, 34.810776>,  <26.776146, 37.058292, 34.883717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547628, 37.050545, 34.810776>,  <26.166767, 37.037628, 34.689209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547628, 37.050545, 34.810776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018617, 0.986430, -0.163122,
		-0.305056, 0.160975, 0.938631,
		0.952153, 0.032287, 0.303913,
		26.833275, 37.060230, 34.901951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333584, 37.573677, 35.139942>,  <26.166767, 37.037628, 34.689209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333584, 37.573677, 35.139942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702755, 37.500046, 35.004696>,  <26.924257, 37.455868, 34.923546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702755, 37.500046, 35.004696>,  <26.333584, 37.573677, 35.139942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702755, 37.500046, 35.004696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130475, 0.975861, -0.175135,
		0.362194, 0.117520, 0.924664,
		0.922925, -0.184078, -0.338118,
		26.979633, 37.444824, 34.903259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705122, 37.914688, 35.495110>,  <26.333584, 37.573677, 35.139942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705122, 37.914688, 35.495110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919523, 37.859596, 35.161949>,  <27.048164, 37.826542, 34.962051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919523, 37.859596, 35.161949>,  <26.705122, 37.914688, 35.495110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919523, 37.859596, 35.161949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109600, 0.989605, -0.093106,
		0.837070, -0.041381, 0.545529,
		0.536006, -0.137726, -0.832904,
		27.080324, 37.818279, 34.912079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283110, 38.328445, 35.568645>,  <26.705122, 37.914688, 35.495110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283110, 38.328445, 35.568645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300348, 38.258556, 35.175175>,  <27.310692, 38.216621, 34.939095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300348, 38.258556, 35.175175>,  <27.283110, 38.328445, 35.568645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300348, 38.258556, 35.175175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355681, 0.922763, -0.148321,
		0.933613, -0.343483, 0.101911,
		0.043094, -0.174722, -0.983674,
		27.313276, 38.206139, 34.880074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900875, 38.609188, 35.374165>,  <27.283110, 38.328445, 35.568645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900875, 38.609188, 35.374165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693630, 38.584446, 35.032936>,  <27.569283, 38.569599, 34.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693630, 38.584446, 35.032936>,  <27.900875, 38.609188, 35.374165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693630, 38.584446, 35.032936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299416, 0.921155, -0.248642,
		0.801192, -0.384248, -0.458743,
		-0.518114, -0.061856, -0.853072,
		27.538197, 38.565887, 34.777016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336830, 38.837223, 34.739861>,  <27.900875, 38.609188, 35.374165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336830, 38.837223, 34.739861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946453, 38.898960, 34.678265>,  <27.712227, 38.936001, 34.641308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946453, 38.898960, 34.678265>,  <28.336830, 38.837223, 34.739861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946453, 38.898960, 34.678265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200333, 0.913522, -0.354041,
		0.086031, -0.376373, -0.922465,
		-0.975943, 0.154342, -0.153992,
		27.653669, 38.945263, 34.632069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313814, 39.401726, 34.163021>,  <28.336830, 38.837223, 34.739861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313814, 39.401726, 34.163021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964130, 39.395088, 34.357128>,  <27.754320, 39.391106, 34.473591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964130, 39.395088, 34.357128>,  <28.313814, 39.401726, 34.163021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964130, 39.395088, 34.357128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215883, 0.908478, -0.357858,
		-0.434914, -0.417604, -0.797783,
		-0.874211, -0.016590, 0.485263,
		27.701868, 39.390110, 34.502708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597754, 39.550110, 33.776871>,  <28.313814, 39.401726, 34.163021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597754, 39.550110, 33.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615898, 39.679619, 34.154888>,  <27.626785, 39.757324, 34.381699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615898, 39.679619, 34.154888>,  <27.597754, 39.550110, 33.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615898, 39.679619, 34.154888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281089, 0.911936, -0.298934,
		-0.958609, -0.252082, 0.132376,
		0.045362, 0.323770, 0.945048,
		27.629507, 39.776749, 34.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933569, 39.843460, 34.030708>,  <27.597754, 39.550110, 33.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933569, 39.843460, 34.030708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212860, 40.016731, 34.258686>,  <27.380434, 40.120693, 34.395473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212860, 40.016731, 34.258686>,  <26.933569, 39.843460, 34.030708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212860, 40.016731, 34.258686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331641, 0.901293, -0.278721,
		-0.634423, 0.005593, 0.772966,
		0.698228, 0.433174, 0.569946,
		27.422329, 40.146683, 34.429668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829653, 39.154713, 33.788502>,  <26.933569, 39.843460, 34.030708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829653, 39.154713, 33.788502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127058, 39.012314, 34.014938>,  <27.305500, 38.926872, 34.150799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127058, 39.012314, 34.014938>,  <26.829653, 39.154713, 33.788502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127058, 39.012314, 34.014938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478917, -0.874280, 0.079207,
		0.466721, -0.330000, -0.820531,
		0.743512, -0.355999, 0.566087,
		27.350111, 38.905514, 34.184765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829369, 38.485912, 33.655010>,  <26.829653, 39.154713, 33.788502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829369, 38.485912, 33.655010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069202, 38.486694, 33.975132>,  <27.213102, 38.487164, 34.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069202, 38.486694, 33.975132>,  <26.829369, 38.485912, 33.655010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069202, 38.486694, 33.975132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369138, -0.886597, 0.278717,
		0.710095, -0.462539, -0.530870,
		0.599585, 0.001951, 0.800309,
		27.249079, 38.487278, 34.215225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228817, 37.910343, 33.599415>,  <26.829369, 38.485912, 33.655010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228817, 37.910343, 33.599415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254608, 38.001232, 33.988098>,  <27.270082, 38.055767, 34.221306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254608, 38.001232, 33.988098>,  <27.228817, 37.910343, 33.599415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254608, 38.001232, 33.988098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069253, -0.970365, 0.231507,
		0.995513, -0.082221, -0.046832,
		0.064479, 0.227225, 0.971705,
		27.273952, 38.069401, 34.279610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885658, 37.533485, 33.966614>,  <27.228817, 37.910343, 33.599415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885658, 37.533485, 33.966614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613903, 37.629990, 34.243809>,  <27.450850, 37.687893, 34.410126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613903, 37.629990, 34.243809>,  <27.885658, 37.533485, 33.966614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613903, 37.629990, 34.243809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009390, -0.947184, 0.320554,
		0.733721, 0.211272, 0.645769,
		-0.679386, 0.241261, 0.692985,
		27.410088, 37.702370, 34.451706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124746, 37.134548, 34.460789>,  <27.885658, 37.533485, 33.966614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124746, 37.134548, 34.460789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756512, 37.231594, 34.583202>,  <27.535570, 37.289822, 34.656651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756512, 37.231594, 34.583202>,  <28.124746, 37.134548, 34.460789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756512, 37.231594, 34.583202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087890, -0.892231, 0.442943,
		0.380518, 0.380871, 0.842700,
		-0.920588, 0.242613, 0.306035,
		27.480335, 37.304379, 34.675014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121721, 37.050854, 35.117523>,  <28.124746, 37.134548, 34.460789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121721, 37.050854, 35.117523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739605, 37.010826, 35.006237>,  <27.510334, 36.986809, 34.939465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739605, 37.010826, 35.006237>,  <28.121721, 37.050854, 35.117523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739605, 37.010826, 35.006237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051449, -0.870366, 0.489710,
		-0.291153, 0.482130, 0.826305,
		-0.955292, -0.100068, -0.278215,
		27.453018, 36.980804, 34.922771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883659, 36.881927, 35.772873>,  <28.121721, 37.050854, 35.117523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883659, 36.881927, 35.772873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691998, 36.772339, 35.439323>,  <27.577000, 36.706585, 35.239193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691998, 36.772339, 35.439323>,  <27.883659, 36.881927, 35.772873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691998, 36.772339, 35.439323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017326, -0.952806, 0.303086,
		-0.877558, 0.130778, 0.461290,
		-0.479157, -0.273968, -0.833877,
		27.548250, 36.690147, 35.189159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279854, 36.496983, 35.879440>,  <27.883659, 36.881927, 35.772873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279854, 36.496983, 35.879440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421444, 36.377747, 35.524849>,  <27.506399, 36.306206, 35.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421444, 36.377747, 35.524849>,  <27.279854, 36.496983, 35.879440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421444, 36.377747, 35.524849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056869, -0.952953, 0.297736,
		-0.933523, -0.054979, -0.354276,
		0.353977, -0.298091, -0.886477,
		27.527637, 36.288319, 35.258907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795071, 36.184341, 35.361073>,  <27.279854, 36.496983, 35.879440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795071, 36.184341, 35.361073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164909, 36.032459, 35.373371>,  <27.386812, 35.941330, 35.380749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164909, 36.032459, 35.373371>,  <26.795071, 36.184341, 35.361073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164909, 36.032459, 35.373371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371484, -0.880812, 0.293548,
		-0.084378, -0.282836, -0.955450,
		0.924597, -0.379703, 0.030748,
		27.442289, 35.918549, 35.382595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832487, 35.752563, 34.902870>,  <26.795071, 36.184341, 35.361073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832487, 35.752563, 34.902870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075148, 35.686821, 35.213989>,  <27.220743, 35.647377, 35.400661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075148, 35.686821, 35.213989>,  <26.832487, 35.752563, 34.902870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075148, 35.686821, 35.213989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396374, -0.910637, 0.116733,
		0.689104, -0.379114, -0.617583,
		0.606649, -0.164353, 0.777795,
		27.257143, 35.637516, 35.447327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710340, 35.138306, 34.945076>,  <26.832487, 35.752563, 34.902870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710340, 35.138306, 34.945076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892925, 35.177795, 35.298775>,  <27.002476, 35.201488, 35.510994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892925, 35.177795, 35.298775>,  <26.710340, 35.138306, 34.945076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892925, 35.177795, 35.298775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448558, -0.832753, 0.324528,
		0.768398, -0.544772, -0.335838,
		0.456464, 0.098724, 0.884248,
		27.029865, 35.207413, 35.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220509, 34.517429, 35.027138>,  <26.710340, 35.138306, 34.945076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220509, 34.517429, 35.027138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077513, 34.669441, 35.368378>,  <26.991714, 34.760647, 35.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077513, 34.669441, 35.368378>,  <27.220509, 34.517429, 35.027138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077513, 34.669441, 35.368378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261065, -0.917712, 0.299414,
		0.896686, -0.115677, 0.427285,
		-0.357490, 0.380030, 0.853099,
		26.970266, 34.783451, 35.624306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581951, 34.186409, 35.579372>,  <27.220509, 34.517429, 35.027138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581951, 34.186409, 35.579372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221914, 34.312885, 35.699272>,  <27.005892, 34.388771, 35.771214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221914, 34.312885, 35.699272>,  <27.581951, 34.186409, 35.579372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221914, 34.312885, 35.699272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212301, -0.919080, 0.331994,
		0.380472, 0.235188, 0.894387,
		-0.900094, 0.316194, 0.299754,
		26.951885, 34.407742, 35.789200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473274, 33.974648, 36.353630>,  <27.581951, 34.186409, 35.579372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473274, 33.974648, 36.353630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123489, 34.048489, 36.174191>,  <26.913618, 34.092793, 36.066528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123489, 34.048489, 36.174191>,  <27.473274, 33.974648, 36.353630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123489, 34.048489, 36.174191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387612, -0.821935, 0.417348,
		-0.291678, 0.538837, 0.790303,
		-0.874461, 0.184600, -0.448600,
		26.861151, 34.103870, 36.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964437, 33.649597, 36.871189>,  <27.473274, 33.974648, 36.353630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964437, 33.649597, 36.871189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785780, 33.650185, 36.513306>,  <26.678585, 33.650536, 36.298576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785780, 33.650185, 36.513306>,  <26.964437, 33.649597, 36.871189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785780, 33.650185, 36.513306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432253, -0.875906, 0.214350,
		-0.783368, 0.482480, 0.391851,
		-0.446644, 0.001464, -0.894710,
		26.651787, 33.650623, 36.244892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219370, 33.451977, 37.002365>,  <26.964437, 33.649597, 36.871189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219370, 33.451977, 37.002365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300835, 33.401299, 36.614040>,  <26.349712, 33.370892, 36.381046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300835, 33.401299, 36.614040>,  <26.219370, 33.451977, 37.002365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300835, 33.401299, 36.614040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504196, -0.863561, 0.006930,
		-0.839231, 0.488067, -0.239754,
		0.203660, -0.126699, -0.970809,
		26.361933, 33.363289, 36.322796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552378, 33.220047, 36.680653>,  <26.219370, 33.451977, 37.002365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552378, 33.220047, 36.680653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876842, 33.079357, 36.493763>,  <26.071522, 32.994942, 36.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876842, 33.079357, 36.493763>,  <25.552378, 33.220047, 36.680653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876842, 33.079357, 36.493763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437199, -0.895337, -0.085019,
		-0.388421, 0.273236, -0.880040,
		0.811163, -0.351729, -0.467226,
		26.120192, 32.973839, 36.353596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391029, 33.072224, 35.982414>,  <25.552378, 33.220047, 36.680653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391029, 33.072224, 35.982414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717426, 32.851902, 36.052578>,  <25.913265, 32.719707, 36.094677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717426, 32.851902, 36.052578>,  <25.391029, 33.072224, 35.982414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717426, 32.851902, 36.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503129, -0.826143, -0.253672,
		0.284637, 0.118741, -0.951253,
		0.815992, -0.550807, 0.175409,
		25.962223, 32.686661, 36.105202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442595, 32.681999, 35.386875>,  <25.391029, 33.072224, 35.982414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442595, 32.681999, 35.386875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656910, 32.493786, 35.667309>,  <25.785500, 32.380856, 35.835571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656910, 32.493786, 35.667309>,  <25.442595, 32.681999, 35.386875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656910, 32.493786, 35.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655695, -0.755005, -0.005623,
		0.531971, -0.456687, -0.713053,
		0.535791, -0.470536, 0.701088,
		25.817648, 32.352627, 35.877636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649485, 32.065441, 35.145500>,  <25.442595, 32.681999, 35.386875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649485, 32.065441, 35.145500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629498, 32.039726, 35.544170>,  <25.617506, 32.024296, 35.783375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629498, 32.039726, 35.544170>,  <25.649485, 32.065441, 35.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629498, 32.039726, 35.544170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580584, -0.810125, -0.081361,
		0.812666, -0.582722, 0.003152,
		-0.049965, -0.064289, 0.996679,
		25.614508, 32.020439, 35.843174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149414, 31.498465, 35.024433>,  <25.649485, 32.065441, 35.145500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149414, 31.498465, 35.024433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367004, 31.198309, 35.174637>,  <25.497559, 31.018215, 35.264759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367004, 31.198309, 35.174637>,  <25.149414, 31.498465, 35.024433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367004, 31.198309, 35.174637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640330, 0.660440, 0.392168,
		-0.542280, 0.027120, 0.839760,
		0.543976, -0.750389, 0.375509,
		25.530197, 30.973192, 35.287289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098770, 31.449080, 35.725994>,  <25.149414, 31.498465, 35.024433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098770, 31.449080, 35.725994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452606, 31.289225, 35.629837>,  <25.664907, 31.193312, 35.572144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452606, 31.289225, 35.629837>,  <25.098770, 31.449080, 35.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452606, 31.289225, 35.629837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452359, 0.609863, 0.650722,
		-0.113449, -0.684365, 0.720260,
		0.884591, -0.399640, -0.240390,
		25.717983, 31.169333, 35.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424416, 31.130178, 36.312630>,  <25.098770, 31.449080, 35.725994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424416, 31.130178, 36.312630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655771, 31.293428, 36.030098>,  <25.794584, 31.391378, 35.860580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655771, 31.293428, 36.030098>,  <25.424416, 31.130178, 36.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655771, 31.293428, 36.030098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256106, 0.731230, 0.632228,
		0.774519, -0.546567, 0.318410,
		0.578386, 0.408126, -0.706330,
		25.829288, 31.415865, 35.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888323, 31.507870, 36.742466>,  <25.424416, 31.130178, 36.312630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888323, 31.507870, 36.742466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928856, 31.638889, 36.366711>,  <25.953175, 31.717501, 36.141258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928856, 31.638889, 36.366711>,  <25.888323, 31.507870, 36.742466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928856, 31.638889, 36.366711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347314, 0.873188, 0.341931,
		0.932258, -0.360910, -0.025281,
		0.101331, 0.327548, -0.939385,
		25.959255, 31.737154, 36.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620176, 31.801847, 36.729046>,  <25.888323, 31.507870, 36.742466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620176, 31.801847, 36.729046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380070, 31.944271, 36.442577>,  <26.236006, 32.029724, 36.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380070, 31.944271, 36.442577>,  <26.620176, 31.801847, 36.729046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380070, 31.944271, 36.442577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406944, 0.906834, 0.109768,
		0.688531, -0.225550, -0.689240,
		-0.600268, 0.356061, -0.716170,
		26.199989, 32.051090, 36.227726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058065, 32.052269, 36.277901>,  <26.620176, 31.801847, 36.729046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058065, 32.052269, 36.277901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719917, 32.247517, 36.191097>,  <26.517029, 32.364666, 36.139015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719917, 32.247517, 36.191097>,  <27.058065, 32.052269, 36.277901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719917, 32.247517, 36.191097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448416, 0.869217, 0.208292,
		0.290299, 0.078773, -0.953688,
		-0.845370, 0.488116, -0.217010,
		26.466307, 32.393951, 36.125996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187506, 32.491676, 35.737049>,  <27.058065, 32.052269, 36.277901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187506, 32.491676, 35.737049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884649, 32.638992, 35.952866>,  <26.702936, 32.727383, 36.082355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884649, 32.638992, 35.952866>,  <27.187506, 32.491676, 35.737049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884649, 32.638992, 35.952866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526201, 0.833268, 0.169639,
		-0.387107, 0.412348, -0.824693,
		-0.757140, 0.368286, 0.539541,
		26.657507, 32.749477, 36.114727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851360, 33.189354, 35.528904>,  <27.187506, 32.491676, 35.737049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851360, 33.189354, 35.528904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809950, 33.158337, 35.925545>,  <26.785103, 33.139725, 36.163528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809950, 33.158337, 35.925545>,  <26.851360, 33.189354, 35.528904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809950, 33.158337, 35.925545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507884, 0.853063, 0.119738,
		-0.855182, 0.516013, -0.048930,
		-0.103527, -0.077547, 0.991599,
		26.778893, 33.135071, 36.223026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255535, 32.940514, 35.248444>,  <26.851360, 33.189354, 35.528904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255535, 32.940514, 35.248444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219582, 33.132187, 35.597683>,  <26.198009, 33.247192, 35.807228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219582, 33.132187, 35.597683>,  <26.255535, 32.940514, 35.248444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219582, 33.132187, 35.597683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343050, 0.837898, -0.424551,
		-0.935007, 0.261357, -0.239698,
		-0.089883, 0.479187, 0.873099,
		26.192617, 33.275944, 35.859612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951195, 33.574329, 35.093208>,  <26.255535, 32.940514, 35.248444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951195, 33.574329, 35.093208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138233, 33.639259, 35.440773>,  <26.250456, 33.678215, 35.649311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138233, 33.639259, 35.440773>,  <25.951195, 33.574329, 35.093208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138233, 33.639259, 35.440773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104961, 0.965845, -0.236913,
		-0.877690, 0.201981, 0.434585,
		0.467594, 0.162321, 0.868912,
		26.278511, 33.687954, 35.701447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766645, 34.221638, 35.417095>,  <25.951195, 33.574329, 35.093208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766645, 34.221638, 35.417095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104755, 34.172390, 35.625076>,  <26.307621, 34.142841, 35.749863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104755, 34.172390, 35.625076>,  <25.766645, 34.221638, 35.417095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104755, 34.172390, 35.625076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242411, 0.955550, -0.167814,
		-0.476177, 0.267891, 0.837550,
		0.845276, -0.123122, 0.519951,
		26.358337, 34.135452, 35.781063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710922, 34.742146, 35.907028>,  <25.766645, 34.221638, 35.417095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710922, 34.742146, 35.907028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089935, 34.620819, 35.866661>,  <26.317343, 34.548023, 35.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089935, 34.620819, 35.866661>,  <25.710922, 34.742146, 35.907028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089935, 34.620819, 35.866661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249337, 0.898836, -0.360451,
		0.200035, 0.316377, 0.927303,
		0.947532, -0.303314, -0.100914,
		26.374195, 34.529823, 35.836388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150391, 35.309113, 36.330769>,  <25.710922, 34.742146, 35.907028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150391, 35.309113, 36.330769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283836, 35.101173, 36.016201>,  <26.363905, 34.976410, 35.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283836, 35.101173, 36.016201>,  <26.150391, 35.309113, 36.330769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283836, 35.101173, 36.016201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341797, 0.844153, -0.413013,
		0.878564, -0.131008, 0.459306,
		0.333616, -0.519848, -0.786421,
		26.383921, 34.945217, 35.780273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808908, 35.351143, 36.786545>,  <26.150391, 35.309113, 36.330769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808908, 35.351143, 36.786545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914032, 35.130215, 36.470097>,  <26.977106, 34.997658, 36.280228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914032, 35.130215, 36.470097>,  <26.808908, 35.351143, 36.786545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914032, 35.130215, 36.470097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483207, 0.785054, -0.387558,
		0.835130, -0.280423, 0.473203,
		0.262810, -0.552316, -0.791124,
		26.992874, 34.964520, 36.232758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570574, 35.412334, 36.754818>,  <26.808908, 35.351143, 36.786545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570574, 35.412334, 36.754818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424009, 35.342457, 36.389256>,  <27.336071, 35.300529, 36.169918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424009, 35.342457, 36.389256>,  <27.570574, 35.412334, 36.754818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424009, 35.342457, 36.389256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577160, 0.727744, -0.370507,
		0.729821, -0.663225, -0.165813,
		-0.366399, -0.174703, -0.913910,
		27.314085, 35.290051, 36.115082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198637, 35.409695, 36.382809>,  <27.570574, 35.412334, 36.754818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198637, 35.409695, 36.382809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897629, 35.495464, 36.133736>,  <27.717024, 35.546925, 35.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897629, 35.495464, 36.133736>,  <28.198637, 35.409695, 36.382809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897629, 35.495464, 36.133736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448461, 0.859258, -0.246084,
		0.482282, -0.464434, -0.742768,
		-0.752520, 0.214421, -0.622686,
		27.671873, 35.559792, 35.946930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334204, 35.090763, 35.774719>,  <28.198637, 35.409695, 36.382809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334204, 35.090763, 35.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529182, 34.986290, 35.441448>,  <28.646170, 34.923607, 35.241486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529182, 34.986290, 35.441448>,  <28.334204, 35.090763, 35.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529182, 34.986290, 35.441448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612481, 0.577800, -0.539457,
		0.622304, 0.773261, 0.121678,
		0.487446, -0.261181, -0.833175,
		28.675417, 34.907936, 35.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646078, 35.753952, 35.487785>,  <28.334204, 35.090763, 35.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646078, 35.753952, 35.487785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641928, 35.471954, 35.204128>,  <28.639439, 35.302757, 35.033936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641928, 35.471954, 35.204128>,  <28.646078, 35.753952, 35.487785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641928, 35.471954, 35.204128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142877, 0.702945, -0.696746,
		0.989686, 0.094092, -0.108020,
		-0.010374, -0.704993, -0.709139,
		28.638815, 35.260456, 34.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209557, 35.944981, 35.014114>,  <28.646078, 35.753952, 35.487785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209557, 35.944981, 35.014114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924574, 35.712322, 34.857094>,  <28.753584, 35.572727, 34.762882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924574, 35.712322, 34.857094>,  <29.209557, 35.944981, 35.014114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924574, 35.712322, 34.857094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105671, 0.641962, -0.759420,
		0.693717, -0.499570, -0.518832,
		-0.712453, -0.581648, -0.392550,
		28.710838, 35.537827, 34.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844191, 35.858700, 35.373409>,  <29.209557, 35.944981, 35.014114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844191, 35.858700, 35.373409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134243, 36.031513, 35.587898>,  <30.308275, 36.135201, 35.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134243, 36.031513, 35.587898>,  <29.844191, 35.858700, 35.373409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134243, 36.031513, 35.587898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662561, 0.225588, 0.714228,
		0.187602, -0.873190, 0.449827,
		0.725133, 0.432029, 0.536222,
		30.351784, 36.161121, 35.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911680, 35.704006, 36.110329>,  <29.844191, 35.858700, 35.373409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911680, 35.704006, 36.110329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025042, 36.085022, 36.065884>,  <30.093058, 36.313633, 36.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025042, 36.085022, 36.065884>,  <29.911680, 35.704006, 36.110329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025042, 36.085022, 36.065884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677456, 0.280859, 0.679832,
		0.678776, -0.117394, 0.724902,
		0.283404, 0.952542, -0.111111,
		30.110064, 36.370785, 36.032551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963535, 36.018749, 36.762230>,  <29.911680, 35.704006, 36.110329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963535, 36.018749, 36.762230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864634, 36.295330, 36.490715>,  <29.805292, 36.461281, 36.327805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864634, 36.295330, 36.490715>,  <29.963535, 36.018749, 36.762230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864634, 36.295330, 36.490715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799945, 0.249638, 0.545682,
		0.546766, 0.677916, 0.491403,
		-0.247253, 0.691456, -0.678789,
		29.790457, 36.502766, 36.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589457, 36.501949, 37.239201>,  <29.963535, 36.018749, 36.762230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589457, 36.501949, 37.239201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526114, 36.606258, 36.858273>,  <29.488108, 36.668842, 36.629715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526114, 36.606258, 36.858273>,  <29.589457, 36.501949, 37.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526114, 36.606258, 36.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880645, 0.398876, 0.255662,
		0.446528, 0.879146, 0.166480,
		-0.158359, 0.260770, -0.952324,
		29.478605, 36.684490, 36.572575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478275, 37.232357, 37.152733>,  <29.589457, 36.501949, 37.239201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478275, 37.232357, 37.152733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279409, 37.015251, 36.881962>,  <29.160089, 36.884987, 36.719498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279409, 37.015251, 36.881962>,  <29.478275, 37.232357, 37.152733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279409, 37.015251, 36.881962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860922, 0.405596, 0.307090,
		0.107880, 0.735456, -0.668929,
		-0.497167, -0.542767, -0.676926,
		29.130259, 36.852421, 36.678883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774977, 37.154942, 37.394855>,  <29.478275, 37.232357, 37.152733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774977, 37.154942, 37.394855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083643, 36.991867, 37.590130>,  <29.268843, 36.894024, 37.707294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083643, 36.991867, 37.590130>,  <28.774977, 37.154942, 37.394855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083643, 36.991867, 37.590130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287156, 0.908187, 0.304530,
		-0.567516, -0.094810, 0.817886,
		0.771665, -0.407686, 0.488185,
		29.315142, 36.869560, 37.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766275, 37.159325, 38.063477>,  <28.774977, 37.154942, 37.394855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766275, 37.159325, 38.063477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138136, 37.210323, 37.925205>,  <29.361252, 37.240921, 37.842243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138136, 37.210323, 37.925205>,  <28.766275, 37.159325, 38.063477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138136, 37.210323, 37.925205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035151, 0.903250, 0.427673,
		0.366764, -0.409737, 0.835225,
		0.929650, 0.127496, -0.345682,
		29.417030, 37.248573, 37.821499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215750, 37.348541, 38.668240>,  <28.766275, 37.159325, 38.063477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215750, 37.348541, 38.668240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379040, 37.491562, 38.332264>,  <29.477015, 37.577374, 38.130676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379040, 37.491562, 38.332264>,  <29.215750, 37.348541, 38.668240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379040, 37.491562, 38.332264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139508, 0.884859, 0.444480,
		0.902157, -0.298627, 0.311342,
		0.408228, 0.357556, -0.839943,
		29.501509, 37.598827, 38.080280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841331, 37.599792, 38.797424>,  <29.215750, 37.348541, 38.668240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841331, 37.599792, 38.797424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701653, 37.804630, 38.483528>,  <29.617846, 37.927532, 38.295189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701653, 37.804630, 38.483528>,  <29.841331, 37.599792, 38.797424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701653, 37.804630, 38.483528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235488, 0.858544, 0.455463,
		0.906976, -0.025750, -0.420395,
		-0.349199, 0.512092, -0.784743,
		29.596893, 37.958260, 38.248104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289381, 37.908806, 38.241013>,  <29.841331, 37.599792, 38.797424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289381, 37.908806, 38.241013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600088, 37.849533, 38.485855>,  <30.786512, 37.813969, 38.632759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600088, 37.849533, 38.485855>,  <30.289381, 37.908806, 38.241013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600088, 37.849533, 38.485855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390666, -0.648962, -0.652861,
		0.493976, 0.746251, -0.446203,
		0.776768, -0.148181, 0.612107,
		30.833118, 37.805080, 38.669487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976364, 38.229637, 37.944832>,  <30.289381, 37.908806, 38.241013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976364, 38.229637, 37.944832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971136, 37.893787, 38.162037>,  <30.967999, 37.692280, 38.292358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971136, 37.893787, 38.162037>,  <30.976364, 38.229637, 37.944832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971136, 37.893787, 38.162037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498078, -0.476359, -0.724569,
		0.867034, 0.260991, 0.424424,
		-0.013072, -0.839622, 0.543013,
		30.967215, 37.641899, 38.324940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626358, 37.950615, 38.151524>,  <30.976364, 38.229637, 37.944832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626358, 37.950615, 38.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346601, 37.672390, 38.085747>,  <31.178747, 37.505455, 38.046280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346601, 37.672390, 38.085747>,  <31.626358, 37.950615, 38.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346601, 37.672390, 38.085747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358870, -0.142776, -0.922403,
		0.618112, -0.704134, 0.349474,
		-0.699392, -0.695564, -0.164441,
		31.136784, 37.463722, 38.036415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972004, 37.451096, 37.690704>,  <31.626358, 37.950615, 38.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972004, 37.451096, 37.690704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591179, 37.356941, 37.612553>,  <31.362684, 37.300449, 37.565662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591179, 37.356941, 37.612553>,  <31.972004, 37.451096, 37.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591179, 37.356941, 37.612553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199178, 0.007753, -0.979933,
		0.232179, -0.971871, 0.039502,
		-0.952062, -0.235388, -0.195375,
		31.305561, 37.286324, 37.553940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787880, 36.675663, 37.487911>,  <31.972004, 37.451096, 37.690704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787880, 36.675663, 37.487911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629517, 36.999348, 37.314278>,  <31.534498, 37.193558, 37.210098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629517, 36.999348, 37.314278>,  <31.787880, 36.675663, 37.487911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629517, 36.999348, 37.314278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479838, -0.220740, -0.849135,
		-0.782952, -0.544468, -0.300899,
		-0.395906, 0.809214, -0.434085,
		31.510744, 37.242111, 37.184052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440315, 36.486568, 37.009274>,  <31.787880, 36.675663, 37.487911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440315, 36.486568, 37.009274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492401, 36.857738, 36.869560>,  <31.523653, 37.080441, 36.785732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492401, 36.857738, 36.869560>,  <31.440315, 36.486568, 37.009274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492401, 36.857738, 36.869560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398789, -0.371547, -0.838404,
		-0.907751, -0.030118, -0.418427,
		0.130214, 0.927926, -0.349283,
		31.531466, 37.136116, 36.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215046, 36.378300, 36.445507>,  <31.440315, 36.486568, 37.009274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215046, 36.378300, 36.445507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446877, 36.701641, 36.404217>,  <31.585976, 36.895645, 36.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446877, 36.701641, 36.404217>,  <31.215046, 36.378300, 36.445507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446877, 36.701641, 36.404217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330839, -0.349166, -0.876714,
		-0.744739, 0.473971, -0.469804,
		0.579576, 0.808353, -0.103230,
		31.620749, 36.944145, 36.373249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999882, 36.829887, 35.845051>,  <31.215046, 36.378300, 36.445507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999882, 36.829887, 35.845051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380405, 36.949257, 35.875916>,  <31.608719, 37.020878, 35.894436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380405, 36.949257, 35.875916>,  <30.999882, 36.829887, 35.845051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380405, 36.949257, 35.875916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050195, 0.097006, -0.994017,
		-0.304123, 0.949491, 0.077304,
		0.951309, 0.298423, 0.077162,
		31.665798, 37.038784, 35.899063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024027, 37.392990, 35.426392>,  <30.999882, 36.829887, 35.845051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024027, 37.392990, 35.426392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407238, 37.281483, 35.453136>,  <31.637165, 37.214577, 35.469185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407238, 37.281483, 35.453136>,  <31.024027, 37.392990, 35.426392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407238, 37.281483, 35.453136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100576, 0.108433, -0.989003,
		0.268451, 0.954218, 0.131919,
		0.958028, -0.278767, 0.066862,
		31.694647, 37.197853, 35.473194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429203, 37.798809, 34.948563>,  <31.024027, 37.392990, 35.426392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429203, 37.798809, 34.948563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685949, 37.500168, 35.018520>,  <31.839996, 37.320984, 35.060493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685949, 37.500168, 35.018520>,  <31.429203, 37.798809, 34.948563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685949, 37.500168, 35.018520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217116, -0.041798, -0.975250,
		0.735439, 0.663951, 0.135272,
		0.641864, -0.746607, 0.174895,
		31.878510, 37.276184, 35.070988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096085, 37.907890, 34.665062>,  <31.429203, 37.798809, 34.948563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096085, 37.907890, 34.665062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129368, 37.510384, 34.694733>,  <32.149338, 37.271881, 34.712536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129368, 37.510384, 34.694733>,  <32.096085, 37.907890, 34.665062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129368, 37.510384, 34.694733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497410, -0.023079, -0.867209,
		0.863516, 0.109053, 0.492389,
		0.083208, -0.993768, 0.074174,
		32.154331, 37.212254, 34.716984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689449, 37.736813, 34.313824>,  <32.096085, 37.907890, 34.665062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689449, 37.736813, 34.313824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519997, 37.374519, 34.308441>,  <32.418324, 37.157143, 34.305210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519997, 37.374519, 34.308441>,  <32.689449, 37.736813, 34.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519997, 37.374519, 34.308441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301895, -0.127164, -0.944822,
		0.854047, -0.404320, 0.327307,
		-0.423632, -0.905735, -0.013458,
		32.392906, 37.102798, 34.304405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193741, 37.197197, 33.999729>,  <32.689449, 37.736813, 34.313824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193741, 37.197197, 33.999729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823742, 37.055794, 33.943985>,  <32.601742, 36.970951, 33.910538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823742, 37.055794, 33.943985>,  <33.193741, 37.197197, 33.999729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823742, 37.055794, 33.943985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228741, -0.225169, -0.947088,
		0.303422, -0.907928, 0.289141,
		-0.924993, -0.353506, -0.139359,
		32.546246, 36.949741, 33.902176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314137, 36.739090, 33.466999>,  <33.193741, 37.197197, 33.999729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314137, 36.739090, 33.466999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916870, 36.781212, 33.487099>,  <32.678509, 36.806484, 33.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916870, 36.781212, 33.487099>,  <33.314137, 36.739090, 33.466999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916870, 36.781212, 33.487099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060064, -0.092238, -0.993924,
		-0.100066, -0.990149, 0.097934,
		-0.993166, 0.105341, 0.050242,
		32.618919, 36.812805, 33.502171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028503, 36.228958, 32.923065>,  <33.314137, 36.739090, 33.466999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028503, 36.228958, 32.923065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716667, 36.467449, 32.999748>,  <32.529568, 36.610546, 33.045757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716667, 36.467449, 32.999748>,  <33.028503, 36.228958, 32.923065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716667, 36.467449, 32.999748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331583, -0.133259, -0.933967,
		-0.531314, -0.791676, 0.301587,
		-0.779588, 0.596231, 0.191704,
		32.482792, 36.646317, 33.057259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615990, 35.895512, 32.520615>,  <33.028503, 36.228958, 32.923065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615990, 35.895512, 32.520615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437424, 36.244503, 32.600113>,  <32.330284, 36.453896, 32.647812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437424, 36.244503, 32.600113>,  <32.615990, 35.895512, 32.520615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437424, 36.244503, 32.600113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298963, 0.063916, -0.952122,
		-0.843405, -0.484461, 0.232305,
		-0.446418, 0.872475, 0.198743,
		32.303497, 36.506245, 32.659737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915432, 35.829018, 32.442356>,  <32.615990, 35.895512, 32.520615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915432, 35.829018, 32.442356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001228, 36.214195, 32.376965>,  <32.052708, 36.445301, 32.337730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001228, 36.214195, 32.376965>,  <31.915432, 35.829018, 32.442356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001228, 36.214195, 32.376965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418235, -0.060707, -0.906308,
		-0.882651, 0.262771, 0.389717,
		0.214493, 0.962946, -0.163483,
		32.065575, 36.503078, 32.327919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313648, 36.123058, 31.996223>,  <31.915432, 35.829018, 32.442356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313648, 36.123058, 31.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604561, 36.389774, 31.931162>,  <31.779108, 36.549805, 31.892126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604561, 36.389774, 31.931162>,  <31.313648, 36.123058, 31.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604561, 36.389774, 31.931162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409081, 0.230843, -0.882816,
		-0.551105, 0.708592, 0.440659,
		0.727280, 0.666789, -0.162653,
		31.822744, 36.589809, 31.882366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907566, 36.712566, 31.915556>,  <31.313648, 36.123058, 31.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907566, 36.712566, 31.915556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260742, 36.708809, 31.727800>,  <31.472649, 36.706554, 31.615147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260742, 36.708809, 31.727800>,  <30.907566, 36.712566, 31.915556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260742, 36.708809, 31.727800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438929, 0.338282, -0.832410,
		0.166603, 0.940998, 0.294561,
		0.882941, -0.009390, -0.469390,
		31.525625, 36.705994, 31.586983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727072, 37.174072, 31.363474>,  <30.907566, 36.712566, 31.915556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727072, 37.174072, 31.363474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087603, 37.043129, 31.250023>,  <31.303921, 36.964561, 31.181952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087603, 37.043129, 31.250023>,  <30.727072, 37.174072, 31.363474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087603, 37.043129, 31.250023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195584, 0.276663, -0.940853,
		0.386469, 0.903489, 0.185337,
		0.901326, -0.327361, -0.283630,
		31.358000, 36.944920, 31.164934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070684, 37.705132, 31.005512>,  <30.727072, 37.174072, 31.363474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070684, 37.705132, 31.005512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172594, 37.336262, 30.889109>,  <31.233740, 37.114941, 30.819265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172594, 37.336262, 30.889109>,  <31.070684, 37.705132, 31.005512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172594, 37.336262, 30.889109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089346, 0.277205, -0.956648,
		0.962865, 0.269728, -0.011768,
		0.254773, -0.922173, -0.291010,
		31.249025, 37.059608, 30.801805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473370, 37.866089, 30.482313>,  <31.070684, 37.705132, 31.005512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473370, 37.866089, 30.482313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445742, 37.472130, 30.418814>,  <31.429165, 37.235752, 30.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445742, 37.472130, 30.418814>,  <31.473370, 37.866089, 30.482313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445742, 37.472130, 30.418814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066393, 0.163312, -0.984338,
		0.995400, -0.057447, -0.076671,
		-0.069069, -0.984901, -0.158747,
		31.425020, 37.176659, 30.371189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872799, 37.709885, 29.827061>,  <31.473370, 37.866089, 30.482313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872799, 37.709885, 29.827061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626215, 37.398258, 29.872738>,  <31.478266, 37.211285, 29.900145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626215, 37.398258, 29.872738>,  <31.872799, 37.709885, 29.827061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626215, 37.398258, 29.872738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112810, -0.056145, -0.992029,
		0.779265, -0.624427, -0.053275,
		-0.616458, -0.779063, 0.114193,
		31.441277, 37.164539, 29.906996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105762, 37.125961, 29.349031>,  <31.872799, 37.709885, 29.827061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105762, 37.125961, 29.349031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717911, 37.073280, 29.431471>,  <31.485201, 37.041672, 29.480934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717911, 37.073280, 29.431471>,  <32.105762, 37.125961, 29.349031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717911, 37.073280, 29.431471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226793, 0.168627, -0.959234,
		0.091573, -0.976842, -0.193373,
		-0.969629, -0.131695, 0.206100,
		31.427023, 37.033772, 29.493301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881369, 36.516655, 28.909006>,  <32.105762, 37.125961, 29.349031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881369, 36.516655, 28.909006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552689, 36.708454, 29.032221>,  <31.355480, 36.823536, 29.106150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552689, 36.708454, 29.032221>,  <31.881369, 36.516655, 28.909006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552689, 36.708454, 29.032221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320354, 0.058420, -0.945495,
		-0.471363, -0.875593, 0.105607,
		-0.821700, 0.479503, 0.308037,
		31.306179, 36.852306, 29.124632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444950, 36.270462, 28.470699>,  <31.881369, 36.516655, 28.909006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444950, 36.270462, 28.470699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224268, 36.573452, 28.610329>,  <31.091858, 36.755245, 28.694107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224268, 36.573452, 28.610329>,  <31.444950, 36.270462, 28.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224268, 36.573452, 28.610329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407359, 0.120491, -0.905285,
		-0.727789, -0.641651, 0.242088,
		-0.551707, 0.757473, 0.349074,
		31.058756, 36.800694, 28.715052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726299, 36.129662, 28.313282>,  <31.444950, 36.270462, 28.470699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726299, 36.129662, 28.313282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738266, 36.527912, 28.348673>,  <30.745445, 36.766865, 28.369907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738266, 36.527912, 28.348673>,  <30.726299, 36.129662, 28.313282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738266, 36.527912, 28.348673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297844, 0.093376, -0.950037,
		-0.954146, 0.002069, 0.299336,
		0.029917, 0.995629, 0.088478,
		30.747240, 36.826599, 28.375216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986261, 36.364426, 28.161297>,  <30.726299, 36.129662, 28.313282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986261, 36.364426, 28.161297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248590, 36.658142, 28.091196>,  <30.405989, 36.834373, 28.049135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248590, 36.658142, 28.091196>,  <29.986261, 36.364426, 28.161297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248590, 36.658142, 28.091196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364731, 0.104945, -0.925180,
		-0.660960, 0.670674, 0.336644,
		0.655823, 0.734291, -0.175251,
		30.445337, 36.878429, 28.038620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565531, 37.025661, 27.913172>,  <29.986261, 36.364426, 28.161297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565531, 37.025661, 27.913172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941114, 37.064323, 27.781101>,  <30.166464, 37.087521, 27.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941114, 37.064323, 27.781101>,  <29.565531, 37.025661, 27.913172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941114, 37.064323, 27.781101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341592, 0.375991, -0.861363,
		0.040891, 0.921569, 0.386055,
		0.938958, 0.096651, -0.330175,
		30.222801, 37.093319, 27.682049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482231, 37.583820, 27.364218>,  <29.565531, 37.025661, 27.913172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482231, 37.583820, 27.364218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856043, 37.447582, 27.322948>,  <30.080330, 37.365837, 27.298187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856043, 37.447582, 27.322948>,  <29.482231, 37.583820, 27.364218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856043, 37.447582, 27.322948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028311, 0.217839, -0.975574,
		0.354755, 0.914625, 0.193935,
		0.934530, -0.340600, -0.103174,
		30.136402, 37.345402, 27.291996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846195, 38.194645, 27.206451>,  <29.482231, 37.583820, 27.364218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846195, 38.194645, 27.206451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014284, 37.873383, 27.037527>,  <30.115137, 37.680626, 26.936172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014284, 37.873383, 27.037527>,  <29.846195, 38.194645, 27.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014284, 37.873383, 27.037527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234602, 0.353414, -0.905572,
		0.876569, 0.479618, -0.039910,
		0.420224, -0.803159, -0.422311,
		30.140350, 37.632435, 26.910833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338127, 38.490219, 26.618292>,  <29.846195, 38.194645, 27.206451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338127, 38.490219, 26.618292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217796, 38.119038, 26.530289>,  <30.145597, 37.896328, 26.477488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217796, 38.119038, 26.530289>,  <30.338127, 38.490219, 26.618292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217796, 38.119038, 26.530289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076040, 0.253298, -0.964395,
		0.950642, -0.273387, -0.146761,
		-0.300828, -0.927955, -0.220008,
		30.127548, 37.840652, 26.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741726, 38.142738, 26.067865>,  <30.338127, 38.490219, 26.618292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741726, 38.142738, 26.067865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377653, 37.977512, 26.055559>,  <30.159208, 37.878376, 26.048176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377653, 37.977512, 26.055559>,  <30.741726, 38.142738, 26.067865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377653, 37.977512, 26.055559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123947, 0.342481, -0.931313,
		0.395230, -0.843851, -0.362918,
		-0.910182, -0.413065, -0.030766,
		30.104599, 37.853596, 26.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716267, 37.870522, 25.428778>,  <30.741726, 38.142738, 26.067865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716267, 37.870522, 25.428778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321869, 37.876816, 25.495188>,  <30.085230, 37.880592, 25.535034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321869, 37.876816, 25.495188>,  <30.716267, 37.870522, 25.428778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321869, 37.876816, 25.495188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152608, 0.316317, -0.936298,
		-0.067254, -0.948523, -0.309486,
		-0.985996, 0.015740, 0.166026,
		30.026070, 37.881538, 25.544996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450769, 37.469521, 24.835964>,  <30.716267, 37.870522, 25.428778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450769, 37.469521, 24.835964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164640, 37.691803, 25.005438>,  <29.992964, 37.825172, 25.107122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164640, 37.691803, 25.005438>,  <30.450769, 37.469521, 24.835964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164640, 37.691803, 25.005438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228913, 0.386508, -0.893426,
		-0.660239, -0.736072, -0.149268,
		-0.715320, 0.555706, 0.423684,
		29.950045, 37.858513, 25.132544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992290, 37.491753, 24.355742>,  <30.450769, 37.469521, 24.835964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992290, 37.491753, 24.355742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858234, 37.806210, 24.563459>,  <29.777800, 37.994884, 24.688089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858234, 37.806210, 24.563459>,  <29.992290, 37.491753, 24.355742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858234, 37.806210, 24.563459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143055, 0.502320, -0.852766,
		-0.931244, -0.360085, -0.055888,
		-0.335142, 0.786138, 0.519294,
		29.757692, 38.042049, 24.719248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350168, 37.741405, 23.964924>,  <29.992290, 37.491753, 24.355742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350168, 37.741405, 23.964924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489946, 38.053890, 24.171844>,  <29.573812, 38.241379, 24.295998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489946, 38.053890, 24.171844>,  <29.350168, 37.741405, 23.964924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489946, 38.053890, 24.171844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048659, 0.536231, -0.842667,
		-0.935693, 0.319636, 0.149370,
		0.349443, 0.781210, 0.517301,
		29.594780, 38.288254, 24.327034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014454, 38.277157, 23.801697>,  <29.350168, 37.741405, 23.964924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014454, 38.277157, 23.801697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333279, 38.469837, 23.947386>,  <29.524574, 38.585445, 24.034800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333279, 38.469837, 23.947386>,  <29.014454, 38.277157, 23.801697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333279, 38.469837, 23.947386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078453, 0.515417, -0.853341,
		-0.598779, 0.708740, 0.373029,
		0.797062, 0.481697, 0.364224,
		29.572397, 38.614346, 24.056654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901176, 39.079868, 23.705444>,  <29.014454, 38.277157, 23.801697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901176, 39.079868, 23.705444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292017, 39.004723, 23.745413>,  <29.526522, 38.959637, 23.769394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292017, 39.004723, 23.745413>,  <28.901176, 39.079868, 23.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292017, 39.004723, 23.745413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204989, 0.705112, -0.678820,
		0.057070, 0.683757, 0.727475,
		0.977099, -0.187864, 0.099922,
		29.585146, 38.948364, 23.775389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244463, 39.775230, 23.729788>,  <28.901176, 39.079868, 23.705444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244463, 39.775230, 23.729788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517691, 39.500015, 23.631788>,  <29.681627, 39.334885, 23.572989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517691, 39.500015, 23.631788>,  <29.244463, 39.775230, 23.729788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517691, 39.500015, 23.631788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410493, 0.639124, -0.650397,
		0.604081, 0.343695, 0.718999,
		0.683068, -0.688036, -0.244998,
		29.722610, 39.293606, 23.558289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905460, 40.150341, 23.662636>,  <29.244463, 39.775230, 23.729788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905460, 40.150341, 23.662636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971392, 39.810684, 23.461918>,  <30.010950, 39.606892, 23.341488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971392, 39.810684, 23.461918>,  <29.905460, 40.150341, 23.662636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971392, 39.810684, 23.461918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416440, 0.521094, -0.745009,
		0.894097, -0.086168, 0.439507,
		0.164828, -0.849138, -0.501793,
		30.020840, 39.555943, 23.311380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563953, 40.255924, 23.504856>,  <29.905460, 40.150341, 23.662636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563953, 40.255924, 23.504856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410337, 39.973225, 23.267197>,  <30.318169, 39.803604, 23.124601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410337, 39.973225, 23.267197>,  <30.563953, 40.255924, 23.504856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410337, 39.973225, 23.267197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249570, 0.540085, -0.803756,
		0.888948, -0.456956, -0.031030,
		-0.384040, -0.706753, -0.594150,
		30.295126, 39.761200, 23.088951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059305, 40.185234, 22.931328>,  <30.563953, 40.255924, 23.504856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059305, 40.185234, 22.931328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709063, 40.039452, 22.804533>,  <30.498917, 39.951981, 22.728456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709063, 40.039452, 22.804533>,  <31.059305, 40.185234, 22.931328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709063, 40.039452, 22.804533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097865, 0.508788, -0.855311,
		0.472999, -0.779941, -0.409833,
		-0.875611, -0.364453, -0.316985,
		30.446381, 39.930115, 22.709436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138212, 40.043621, 22.223593>,  <31.059305, 40.185234, 22.931328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138212, 40.043621, 22.223593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740507, 40.070877, 22.256569>,  <30.501884, 40.087231, 22.276354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740507, 40.070877, 22.256569>,  <31.138212, 40.043621, 22.223593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740507, 40.070877, 22.256569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053221, 0.353381, -0.933964,
		-0.092776, -0.932994, -0.347727,
		-0.994263, 0.068143, 0.082441,
		30.442228, 40.091320, 22.281301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860653, 39.808769, 21.630413>,  <31.138212, 40.043621, 22.223593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860653, 39.808769, 21.630413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543848, 40.004585, 21.776323>,  <30.353765, 40.122074, 21.863871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543848, 40.004585, 21.776323>,  <30.860653, 39.808769, 21.630413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543848, 40.004585, 21.776323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182140, 0.380815, -0.906535,
		-0.582701, -0.784428, -0.212445,
		-0.792013, 0.489544, 0.364777,
		30.306244, 40.151447, 21.885756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227921, 39.711720, 21.211573>,  <30.860653, 39.808769, 21.630413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227921, 39.711720, 21.211573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133715, 40.057972, 21.388306>,  <30.077190, 40.265724, 21.494345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133715, 40.057972, 21.388306>,  <30.227921, 39.711720, 21.211573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133715, 40.057972, 21.388306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382540, 0.335354, -0.860930,
		-0.893418, -0.371780, 0.252158,
		-0.235514, 0.865631, 0.441832,
		30.063061, 40.317661, 21.520855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483480, 39.809917, 21.037930>,  <30.227921, 39.711720, 21.211573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483480, 39.809917, 21.037930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634550, 40.164276, 21.145664>,  <29.725193, 40.376892, 21.210306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634550, 40.164276, 21.145664>,  <29.483480, 39.809917, 21.037930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634550, 40.164276, 21.145664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556477, 0.449653, -0.698674,
		-0.740064, 0.113991, 0.662805,
		0.377675, 0.885900, 0.269339,
		29.747852, 40.430046, 21.226465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910660, 40.287186, 20.945631>,  <29.483480, 39.809917, 21.037930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910660, 40.287186, 20.945631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251001, 40.497215, 20.938217>,  <29.455206, 40.623234, 20.933769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251001, 40.497215, 20.938217>,  <28.910660, 40.287186, 20.945631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251001, 40.497215, 20.938217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403487, 0.630415, -0.663156,
		-0.336523, 0.571727, 0.748252,
		0.850853, 0.525077, -0.018535,
		29.506258, 40.654739, 20.932657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854570, 41.012238, 21.105228>,  <28.910660, 40.287186, 20.945631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854570, 41.012238, 21.105228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162367, 40.945118, 20.858742>,  <29.347046, 40.904846, 20.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162367, 40.945118, 20.858742>,  <28.854570, 41.012238, 21.105228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162367, 40.945118, 20.858742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313442, 0.741443, -0.593310,
		0.556448, 0.649696, 0.517939,
		0.769493, -0.167802, -0.616216,
		29.393215, 40.894779, 20.673878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006561, 41.804821, 21.286049>,  <28.854570, 41.012238, 21.105228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006561, 41.804821, 21.286049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043634, 42.203083, 21.282482>,  <29.065878, 42.442039, 21.280342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043634, 42.203083, 21.282482>,  <29.006561, 41.804821, 21.286049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043634, 42.203083, 21.282482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084926, -0.001017, -0.996387,
		-0.992067, 0.093106, 0.084462,
		0.092683, 0.995656, -0.008916,
		29.071440, 42.501781, 21.279808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469034, 41.951729, 20.772812>,  <29.006561, 41.804821, 21.286049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469034, 41.951729, 20.772812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696997, 42.278572, 20.807535>,  <28.833775, 42.474678, 20.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696997, 42.278572, 20.807535>,  <28.469034, 41.951729, 20.772812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696997, 42.278572, 20.807535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342202, -0.139961, -0.929144,
		-0.747064, 0.559231, -0.359382,
		0.569906, 0.817112, 0.086810,
		28.867968, 42.523705, 20.833578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344280, 42.428333, 20.256842>,  <28.469034, 41.951729, 20.772812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344280, 42.428333, 20.256842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725618, 42.487492, 20.362106>,  <28.954422, 42.522987, 20.425264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725618, 42.487492, 20.362106>,  <28.344280, 42.428333, 20.256842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725618, 42.487492, 20.362106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290263, -0.209650, -0.933699,
		-0.082920, 0.966526, -0.242799,
		0.953348, 0.147898, 0.263162,
		29.011623, 42.531860, 20.441055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693514, 43.027386, 20.064932>,  <28.344280, 42.428333, 20.256842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693514, 43.027386, 20.064932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984110, 42.756058, 20.108913>,  <29.158468, 42.593262, 20.135302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984110, 42.756058, 20.108913>,  <28.693514, 43.027386, 20.064932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984110, 42.756058, 20.108913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088785, -0.066008, -0.993861,
		0.681416, 0.731794, 0.012271,
		0.726492, -0.678322, 0.109952,
		29.202057, 42.552563, 20.141899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357357, 43.157074, 19.789228>,  <28.693514, 43.027386, 20.064932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357357, 43.157074, 19.789228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302507, 42.761681, 19.763596>,  <29.269598, 42.524445, 19.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302507, 42.761681, 19.763596>,  <29.357357, 43.157074, 19.789228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302507, 42.761681, 19.763596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101176, 0.050380, -0.993592,
		0.985373, -0.142728, 0.093102,
		-0.137123, -0.988479, -0.064084,
		29.261370, 42.465137, 19.744370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876614, 43.110897, 20.313986>,  <29.357357, 43.157074, 19.789228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876614, 43.110897, 20.313986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488274, 43.029507, 20.364651>,  <29.255270, 42.980671, 20.395050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488274, 43.029507, 20.364651>,  <29.876614, 43.110897, 20.313986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488274, 43.029507, 20.364651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084549, 0.203737, 0.975368,
		-0.224273, 0.957647, -0.180594,
		-0.970852, -0.203480, 0.126661,
		29.197018, 42.968464, 20.402649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586992, 43.655640, 20.836088>,  <29.876614, 43.110897, 20.313986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586992, 43.655640, 20.836088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358149, 43.327766, 20.824663>,  <29.220842, 43.131042, 20.817808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358149, 43.327766, 20.824663>,  <29.586992, 43.655640, 20.836088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358149, 43.327766, 20.824663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107289, 0.040268, 0.993412,
		-0.813131, 0.571403, -0.110980,
		-0.572108, -0.819681, -0.028562,
		29.186516, 43.081863, 20.816095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909990, 43.755661, 21.212477>,  <29.586992, 43.655640, 20.836088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909990, 43.755661, 21.212477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972752, 43.361000, 21.229904>,  <29.010408, 43.124203, 21.240360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972752, 43.361000, 21.229904>,  <28.909990, 43.755661, 21.212477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972752, 43.361000, 21.229904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030551, 0.048942, 0.998334,
		-0.987142, -0.155309, 0.037822,
		0.156901, -0.986653, 0.043568,
		29.019821, 43.065002, 21.242975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651560, 43.697147, 21.889877>,  <28.909990, 43.755661, 21.212477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651560, 43.697147, 21.889877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853689, 43.358025, 21.825539>,  <28.974968, 43.154552, 21.786936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853689, 43.358025, 21.825539>,  <28.651560, 43.697147, 21.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853689, 43.358025, 21.825539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053308, -0.155372, 0.986417,
		-0.861281, -0.507036, -0.033318,
		0.505325, -0.847806, -0.160849,
		29.005287, 43.103683, 21.777285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392632, 43.350307, 22.423767>,  <28.651560, 43.697147, 21.889877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392632, 43.350307, 22.423767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694994, 43.117985, 22.302925>,  <28.876411, 42.978592, 22.230419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694994, 43.117985, 22.302925>,  <28.392632, 43.350307, 22.423767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694994, 43.117985, 22.302925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154664, -0.289963, 0.944458,
		-0.636152, -0.760644, -0.129354,
		0.755903, -0.580812, -0.302105,
		28.921764, 42.943741, 22.212294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253387, 42.680191, 22.588869>,  <28.392632, 43.350307, 22.423767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253387, 42.680191, 22.588869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646915, 42.745010, 22.558289>,  <28.883032, 42.783901, 22.539940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646915, 42.745010, 22.558289>,  <28.253387, 42.680191, 22.588869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646915, 42.745010, 22.558289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137700, -0.410822, 0.901257,
		0.114637, -0.897199, -0.426488,
		0.983818, 0.162045, -0.076449,
		28.942060, 42.793625, 22.535355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528547, 42.077965, 22.767252>,  <28.253387, 42.680191, 22.588869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528547, 42.077965, 22.767252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827242, 42.339478, 22.816166>,  <29.006458, 42.496387, 22.845514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827242, 42.339478, 22.816166>,  <28.528547, 42.077965, 22.767252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827242, 42.339478, 22.816166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121290, -0.314625, 0.941435,
		0.653969, -0.688170, -0.314240,
		0.746735, 0.653784, 0.122287,
		29.051262, 42.535614, 22.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993517, 41.694618, 23.087385>,  <28.528547, 42.077965, 22.767252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993517, 41.694618, 23.087385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125988, 42.063995, 23.164915>,  <29.205471, 42.285622, 23.211433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125988, 42.063995, 23.164915>,  <28.993517, 41.694618, 23.087385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125988, 42.063995, 23.164915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199704, -0.269362, 0.942105,
		0.922193, -0.273297, -0.273623,
		0.331178, 0.923446, 0.193825,
		29.225342, 42.341030, 23.223063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680578, 41.652973, 23.352654>,  <28.993517, 41.694618, 23.087385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680578, 41.652973, 23.352654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514551, 41.998169, 23.467871>,  <29.414934, 42.205288, 23.537001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514551, 41.998169, 23.467871>,  <29.680578, 41.652973, 23.352654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514551, 41.998169, 23.467871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090637, -0.275807, 0.956930,
		0.905265, 0.423298, 0.036260,
		-0.415067, 0.862989, 0.288045,
		29.390032, 42.257065, 23.554285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099266, 42.013943, 23.965418>,  <29.680578, 41.652973, 23.352654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099266, 42.013943, 23.965418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758148, 42.220982, 23.993250>,  <29.553478, 42.345203, 24.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758148, 42.220982, 23.993250>,  <30.099266, 42.013943, 23.965418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758148, 42.220982, 23.993250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008198, -0.146484, 0.989179,
		0.522184, 0.842995, 0.129164,
		-0.852793, 0.517592, 0.069581,
		29.502310, 42.376259, 24.014124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270302, 42.596478, 24.377634>,  <30.099266, 42.013943, 23.965418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270302, 42.596478, 24.377634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878702, 42.517643, 24.398489>,  <29.643742, 42.470345, 24.411001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878702, 42.517643, 24.398489>,  <30.270302, 42.596478, 24.377634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878702, 42.517643, 24.398489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067100, -0.070025, 0.995286,
		-0.192502, 0.977883, 0.081778,
		-0.979000, -0.197082, 0.052136,
		29.585003, 42.458519, 24.414129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980423, 43.005779, 24.941517>,  <30.270302, 42.596478, 24.377634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980423, 43.005779, 24.941517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695461, 42.733425, 24.873554>,  <29.524485, 42.570011, 24.832777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695461, 42.733425, 24.873554>,  <29.980423, 43.005779, 24.941517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695461, 42.733425, 24.873554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069753, -0.172212, 0.982587,
		-0.698293, 0.711852, 0.075191,
		-0.712405, -0.680889, -0.169908,
		29.481739, 42.529160, 24.822582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549782, 43.130806, 25.488300>,  <29.980423, 43.005779, 24.941517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549782, 43.130806, 25.488300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485687, 42.765625, 25.338186>,  <29.447229, 42.546516, 25.248117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485687, 42.765625, 25.338186>,  <29.549782, 43.130806, 25.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485687, 42.765625, 25.338186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044234, -0.386457, 0.921246,
		-0.986087, 0.131018, 0.102309,
		-0.160238, -0.912954, -0.375284,
		29.437616, 42.491737, 25.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932230, 42.843758, 25.893118>,  <29.549782, 43.130806, 25.488300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932230, 42.843758, 25.893118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163736, 42.549458, 25.752434>,  <29.302641, 42.372879, 25.668024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163736, 42.549458, 25.752434>,  <28.932230, 42.843758, 25.893118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163736, 42.549458, 25.752434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022150, -0.416944, 0.908662,
		-0.815192, -0.533694, -0.225017,
		0.578767, -0.735750, -0.351710,
		29.337366, 42.328732, 25.646921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652241, 42.260944, 26.232721>,  <28.932230, 42.843758, 25.893118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652241, 42.260944, 26.232721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009123, 42.143593, 26.095375>,  <29.223251, 42.073181, 26.012968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009123, 42.143593, 26.095375>,  <28.652241, 42.260944, 26.232721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009123, 42.143593, 26.095375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188883, -0.448205, 0.873748,
		-0.410235, -0.844419, -0.344477,
		0.892206, -0.293376, -0.343365,
		29.276785, 42.055580, 25.992365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756100, 41.663330, 26.582556>,  <28.652241, 42.260944, 26.232721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756100, 41.663330, 26.582556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127577, 41.752262, 26.463827>,  <29.350462, 41.805622, 26.392590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127577, 41.752262, 26.463827>,  <28.756100, 41.663330, 26.582556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127577, 41.752262, 26.463827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364439, -0.398898, 0.841466,
		0.068680, -0.889635, -0.451478,
		0.928691, 0.222329, -0.296822,
		29.406183, 41.818962, 26.374781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158499, 40.992943, 26.549671>,  <28.756100, 41.663330, 26.582556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158499, 40.992943, 26.549671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383713, 41.316063, 26.619471>,  <29.518841, 41.509933, 26.661350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383713, 41.316063, 26.619471>,  <29.158499, 40.992943, 26.549671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383713, 41.316063, 26.619471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210135, -0.344141, 0.915101,
		0.799273, -0.478563, -0.363510,
		0.563033, 0.807802, 0.174500,
		29.552622, 41.558403, 26.671820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742191, 40.749863, 26.944561>,  <29.158499, 40.992943, 26.549671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742191, 40.749863, 26.944561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734486, 41.146606, 26.994917>,  <29.729862, 41.384651, 27.025129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734486, 41.146606, 26.994917>,  <29.742191, 40.749863, 26.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734486, 41.146606, 26.994917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192550, -0.119873, 0.973938,
		0.981098, 0.043003, -0.188673,
		-0.019265, 0.991857, 0.125888,
		29.728706, 41.444164, 27.032682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338209, 41.030163, 27.286322>,  <29.742191, 40.749863, 26.944561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338209, 41.030163, 27.286322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078154, 41.324184, 27.363281>,  <29.922121, 41.500599, 27.409456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078154, 41.324184, 27.363281>,  <30.338209, 41.030163, 27.286322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078154, 41.324184, 27.363281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260498, -0.022239, 0.965218,
		0.713765, 0.677645, -0.177021,
		-0.650139, 0.735052, 0.192399,
		29.883112, 41.544701, 27.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667618, 41.548977, 27.808863>,  <30.338209, 41.030163, 27.286322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667618, 41.548977, 27.808863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274757, 41.608894, 27.854368>,  <30.039042, 41.644844, 27.881672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274757, 41.608894, 27.854368>,  <30.667618, 41.548977, 27.808863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274757, 41.608894, 27.854368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113798, -0.008386, 0.993469,
		0.149770, 0.988682, -0.008810,
		-0.982150, 0.149794, 0.113766,
		29.980112, 41.653831, 27.888498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586205, 42.060566, 28.305000>,  <30.667618, 41.548977, 27.808863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586205, 42.060566, 28.305000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233877, 41.871189, 28.303581>,  <30.022480, 41.757565, 28.302731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233877, 41.871189, 28.303581>,  <30.586205, 42.060566, 28.305000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233877, 41.871189, 28.303581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098355, -0.190302, 0.976786,
		-0.463126, 0.860022, 0.214187,
		-0.880818, -0.473441, -0.003546,
		29.969631, 41.729156, 28.302517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340939, 42.115013, 29.036901>,  <30.586205, 42.060566, 28.305000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340939, 42.115013, 29.036901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089802, 41.836994, 28.896776>,  <29.939119, 41.670181, 28.812700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089802, 41.836994, 28.896776>,  <30.340939, 42.115013, 29.036901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089802, 41.836994, 28.896776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170840, -0.316044, 0.933236,
		-0.759359, 0.645774, 0.079684,
		-0.627843, -0.695049, -0.350315,
		29.901449, 41.628479, 28.791681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659367, 42.269730, 29.256012>,  <30.340939, 42.115013, 29.036901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659367, 42.269730, 29.256012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681244, 41.875969, 29.189114>,  <29.694370, 41.639713, 29.148975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681244, 41.875969, 29.189114>,  <29.659367, 42.269730, 29.256012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681244, 41.875969, 29.189114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264153, -0.175792, 0.948325,
		-0.962929, -0.007688, -0.269646,
		0.054692, -0.984397, -0.167244,
		29.697651, 41.580650, 29.138941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913509, 41.985245, 29.396191>,  <29.659367, 42.269730, 29.256012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913509, 41.985245, 29.396191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166880, 41.678890, 29.440361>,  <29.318901, 41.495079, 29.466864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166880, 41.678890, 29.440361>,  <28.913509, 41.985245, 29.396191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166880, 41.678890, 29.440361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358543, -0.164032, 0.918989,
		-0.685727, -0.621702, -0.378504,
		0.633424, -0.765886, 0.110426,
		29.356907, 41.449123, 29.473488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555605, 41.513340, 29.821430>,  <28.913509, 41.985245, 29.396191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555605, 41.513340, 29.821430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925341, 41.363628, 29.851118>,  <29.147182, 41.273800, 29.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925341, 41.363628, 29.851118>,  <28.555605, 41.513340, 29.821430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925341, 41.363628, 29.851118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216574, -0.354482, 0.909636,
		-0.314154, -0.856886, -0.408722,
		0.924339, -0.374284, 0.074217,
		29.202642, 41.251343, 29.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341101, 40.878666, 30.038347>,  <28.555605, 41.513340, 29.821430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341101, 40.878666, 30.038347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725245, 40.960224, 30.114384>,  <28.955730, 41.009159, 30.160006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725245, 40.960224, 30.114384>,  <28.341101, 40.878666, 30.038347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725245, 40.960224, 30.114384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055494, -0.528426, 0.847164,
		0.273179, -0.824132, -0.496165,
		0.960361, 0.203894, 0.190089,
		29.013353, 41.021393, 30.171410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622129, 40.235851, 30.266132>,  <28.341101, 40.878666, 30.038347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622129, 40.235851, 30.266132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901711, 40.494450, 30.388445>,  <29.069460, 40.649609, 30.461832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901711, 40.494450, 30.388445>,  <28.622129, 40.235851, 30.266132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901711, 40.494450, 30.388445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091128, -0.504594, 0.858534,
		0.709339, -0.572209, -0.411601,
		0.698952, 0.646500, 0.305784,
		29.111397, 40.688400, 30.480181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143559, 39.879822, 30.782131>,  <28.622129, 40.235851, 30.266132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143559, 39.879822, 30.782131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269403, 40.252285, 30.855856>,  <29.344910, 40.475761, 30.900091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269403, 40.252285, 30.855856>,  <29.143559, 39.879822, 30.782131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269403, 40.252285, 30.855856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277666, -0.275957, 0.920190,
		0.907701, -0.238324, -0.345369,
		0.314611, 0.931155, 0.184312,
		29.363787, 40.531631, 30.911150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838463, 39.822529, 31.032173>,  <29.143559, 39.879822, 30.782131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838463, 39.822529, 31.032173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677103, 40.157578, 31.179504>,  <29.580288, 40.358604, 31.267902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677103, 40.157578, 31.179504>,  <29.838463, 39.822529, 31.032173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677103, 40.157578, 31.179504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234152, -0.294634, 0.926479,
		0.884558, 0.459985, -0.077275,
		-0.403399, 0.837618, 0.368327,
		29.556084, 40.408863, 31.290003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204691, 39.952499, 31.515825>,  <29.838463, 39.822529, 31.032173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204691, 39.952499, 31.515825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907787, 40.197964, 31.623503>,  <29.729645, 40.345242, 31.688108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907787, 40.197964, 31.623503>,  <30.204691, 39.952499, 31.515825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907787, 40.197964, 31.623503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164799, -0.222212, 0.960970,
		0.649531, 0.757653, 0.063808,
		-0.742261, 0.613664, 0.269194,
		29.685108, 40.382061, 31.704262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473228, 40.369324, 31.966871>,  <30.204691, 39.952499, 31.515825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473228, 40.369324, 31.966871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083721, 40.378967, 32.057377>,  <29.850018, 40.384754, 32.111679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083721, 40.378967, 32.057377>,  <30.473228, 40.369324, 31.966871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083721, 40.378967, 32.057377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199857, -0.384779, 0.901112,
		0.108783, 0.922694, 0.369868,
		-0.973768, 0.024105, 0.226264,
		29.791592, 40.386200, 32.125256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458302, 40.706257, 32.586117>,  <30.473228, 40.369324, 31.966871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458302, 40.706257, 32.586117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102810, 40.523083, 32.594677>,  <29.889515, 40.413177, 32.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102810, 40.523083, 32.594677>,  <30.458302, 40.706257, 32.586117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102810, 40.523083, 32.594677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157115, -0.260398, 0.952632,
		-0.430670, 0.849993, 0.303372,
		-0.888728, -0.457934, 0.021401,
		29.836191, 40.385704, 32.601097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056429, 41.159443, 33.156372>,  <30.458302, 40.706257, 32.586117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056429, 41.159443, 33.156372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876253, 40.807346, 33.096672>,  <29.768148, 40.596088, 33.060852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876253, 40.807346, 33.096672>,  <30.056429, 41.159443, 33.156372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876253, 40.807346, 33.096672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038416, -0.186128, 0.981774,
		-0.891981, 0.436494, 0.117654,
		-0.450437, -0.880244, -0.149254,
		29.741121, 40.543274, 33.051895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600475, 40.983685, 33.764462>,  <30.056429, 41.159443, 33.156372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600475, 40.983685, 33.764462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638525, 40.615204, 33.613544>,  <29.661354, 40.394115, 33.522995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638525, 40.615204, 33.613544>,  <29.600475, 40.983685, 33.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638525, 40.615204, 33.613544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059559, -0.383595, 0.921579,
		-0.993682, -0.065192, -0.091354,
		0.095122, -0.921197, -0.377289,
		29.667061, 40.338844, 33.500359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190916, 40.623051, 34.211060>,  <29.600475, 40.983685, 33.764462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190916, 40.623051, 34.211060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434862, 40.353355, 34.044464>,  <29.581230, 40.191540, 33.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434862, 40.353355, 34.044464>,  <29.190916, 40.623051, 34.211060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434862, 40.353355, 34.044464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151895, -0.416348, 0.896427,
		-0.777811, -0.609964, -0.151504,
		0.609867, -0.674239, -0.416491,
		29.617823, 40.151085, 33.919518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989029, 39.940571, 34.521381>,  <29.190916, 40.623051, 34.211060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989029, 39.940571, 34.521381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359503, 39.903152, 34.375267>,  <29.581787, 39.880703, 34.287598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359503, 39.903152, 34.375267>,  <28.989029, 39.940571, 34.521381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359503, 39.903152, 34.375267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258152, -0.548809, 0.795089,
		-0.274848, -0.830697, -0.484149,
		0.926183, -0.093544, -0.365285,
		29.637358, 39.875088, 34.265682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113731, 39.196354, 34.538216>,  <28.989029, 39.940571, 34.521381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113731, 39.196354, 34.538216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470526, 39.376884, 34.527912>,  <29.684603, 39.485203, 34.521729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470526, 39.376884, 34.527912>,  <29.113731, 39.196354, 34.538216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470526, 39.376884, 34.527912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286500, -0.520315, 0.804481,
		0.349678, -0.724968, -0.593419,
		0.891988, 0.451324, -0.025761,
		29.738123, 39.512283, 34.520184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602236, 38.756332, 34.694046>,  <29.113731, 39.196354, 34.538216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602236, 38.756332, 34.694046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821585, 39.081909, 34.770767>,  <29.953194, 39.277256, 34.816799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821585, 39.081909, 34.770767>,  <29.602236, 38.756332, 34.694046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821585, 39.081909, 34.770767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191094, -0.345272, 0.918842,
		0.814109, -0.467212, -0.344876,
		0.548370, 0.813941, 0.191807,
		29.986095, 39.326092, 34.828308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233133, 38.520958, 34.931244>,  <29.602236, 38.756332, 34.694046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233133, 38.520958, 34.931244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195724, 38.892872, 35.073650>,  <30.173279, 39.116020, 35.159096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195724, 38.892872, 35.073650>,  <30.233133, 38.520958, 34.931244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195724, 38.892872, 35.073650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271492, -0.320217, 0.907609,
		0.957886, 0.181538, -0.222482,
		-0.093523, 0.929788, 0.356017,
		30.167667, 39.171806, 35.180454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805647, 38.430195, 35.373753>,  <30.233133, 38.520958, 34.931244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805647, 38.430195, 35.373753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592258, 38.748363, 35.488796>,  <30.464226, 38.939262, 35.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592258, 38.748363, 35.488796>,  <30.805647, 38.430195, 35.373753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592258, 38.748363, 35.488796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310437, -0.132171, 0.941361,
		0.786789, 0.591472, -0.176418,
		-0.533471, 0.795419, 0.287605,
		30.432217, 38.986988, 35.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253761, 38.792393, 35.778614>,  <30.805647, 38.430195, 35.373753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253761, 38.792393, 35.778614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888546, 38.931961, 35.863106>,  <30.669416, 39.015701, 35.913799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888546, 38.931961, 35.863106>,  <31.253761, 38.792393, 35.778614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888546, 38.931961, 35.863106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170852, -0.143074, 0.974853,
		0.370366, 0.926167, 0.071018,
		-0.913038, 0.348919, 0.211228,
		30.614635, 39.036636, 35.926476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292620, 39.324684, 36.232800>,  <31.253761, 38.792393, 35.778614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292620, 39.324684, 36.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940262, 39.141552, 36.280827>,  <30.728848, 39.031673, 36.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940262, 39.141552, 36.280827>,  <31.292620, 39.324684, 36.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940262, 39.141552, 36.280827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215233, -0.161536, 0.963110,
		-0.421549, 0.874239, 0.240836,
		-0.880892, -0.457834, 0.120070,
		30.675995, 39.004200, 36.316849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815895, 39.932617, 36.104347>,  <31.292620, 39.324684, 36.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815895, 39.932617, 36.104347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184509, 39.799469, 36.184315>,  <32.405678, 39.719582, 36.232296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184509, 39.799469, 36.184315>,  <31.815895, 39.932617, 36.104347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184509, 39.799469, 36.184315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359783, 0.538372, -0.762045,
		0.146033, 0.774179, 0.615891,
		0.921537, -0.332871, 0.199917,
		32.460972, 39.699608, 36.244289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219463, 40.480427, 36.094124>,  <31.815895, 39.932617, 36.104347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219463, 40.480427, 36.094124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479542, 40.187771, 36.012196>,  <32.635590, 40.012177, 35.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479542, 40.187771, 36.012196>,  <32.219463, 40.480427, 36.094124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479542, 40.187771, 36.012196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236150, 0.450844, -0.860798,
		0.722135, 0.511318, 0.465913,
		0.650196, -0.731637, -0.204822,
		32.674599, 39.968281, 35.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692101, 40.803532, 35.761230>,  <32.219463, 40.480427, 36.094124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692101, 40.803532, 35.761230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786007, 40.425282, 35.671185>,  <32.842350, 40.198330, 35.617157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786007, 40.425282, 35.671185>,  <32.692101, 40.803532, 35.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786007, 40.425282, 35.671185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430287, 0.308758, -0.848246,
		0.871631, 0.102271, 0.479376,
		0.234762, -0.945626, -0.225117,
		32.856434, 40.141594, 35.603649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408592, 40.774200, 35.514774>,  <32.692101, 40.803532, 35.761230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408592, 40.774200, 35.514774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237621, 40.435635, 35.387726>,  <33.135040, 40.232494, 35.311497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237621, 40.435635, 35.387726>,  <33.408592, 40.774200, 35.514774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237621, 40.435635, 35.387726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137912, 0.286176, -0.948200,
		0.893471, -0.449086, -0.005587,
		-0.427422, -0.846419, -0.317625,
		33.109394, 40.181709, 35.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826157, 40.465576, 34.954029>,  <33.408592, 40.774200, 35.514774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826157, 40.465576, 34.954029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452782, 40.327877, 34.913639>,  <33.228756, 40.245258, 34.889404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452782, 40.327877, 34.913639>,  <33.826157, 40.465576, 34.954029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452782, 40.327877, 34.913639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004388, 0.292395, -0.956288,
		0.358722, -0.892188, -0.274442,
		-0.933434, -0.344246, -0.100974,
		33.172752, 40.224606, 34.883347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917633, 40.122936, 34.404118>,  <33.826157, 40.465576, 34.954029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917633, 40.122936, 34.404118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526455, 40.195923, 34.444775>,  <33.291748, 40.239716, 34.469170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526455, 40.195923, 34.444775>,  <33.917633, 40.122936, 34.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526455, 40.195923, 34.444775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054825, 0.245323, -0.967890,
		-0.201546, -0.952114, -0.229908,
		-0.977943, 0.182469, 0.101643,
		33.233070, 40.250664, 34.475269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637470, 39.891628, 33.788200>,  <33.917633, 40.122936, 34.404118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637470, 39.891628, 33.788200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310493, 40.086182, 33.911629>,  <33.114307, 40.202915, 33.985687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310493, 40.086182, 33.911629>,  <33.637470, 39.891628, 33.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310493, 40.086182, 33.911629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156253, 0.328381, -0.931531,
		-0.554411, -0.809689, -0.192434,
		-0.817443, 0.486383, 0.308574,
		33.065262, 40.232098, 34.004200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113869, 39.766376, 33.313313>,  <33.637470, 39.891628, 33.788200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113869, 39.766376, 33.313313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025204, 40.121162, 33.475376>,  <32.972004, 40.334034, 33.572613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025204, 40.121162, 33.475376>,  <33.113869, 39.766376, 33.313313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025204, 40.121162, 33.475376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170911, 0.373726, -0.911657,
		-0.960029, -0.271325, 0.068752,
		-0.221661, 0.886968, 0.405161,
		32.958706, 40.387253, 33.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483089, 39.924480, 33.054379>,  <33.113869, 39.766376, 33.313313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483089, 39.924480, 33.054379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627625, 40.278046, 33.173126>,  <32.714344, 40.490185, 33.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627625, 40.278046, 33.173126>,  <32.483089, 39.924480, 33.054379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627625, 40.278046, 33.173126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308560, 0.413792, -0.856485,
		-0.879901, 0.217879, 0.422260,
		0.361338, 0.883915, 0.296867,
		32.736027, 40.543221, 33.262188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999702, 40.437229, 32.852612>,  <32.483089, 39.924480, 33.054379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999702, 40.437229, 32.852612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321751, 40.669483, 32.901024>,  <32.514980, 40.808834, 32.930069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321751, 40.669483, 32.901024>,  <31.999702, 40.437229, 32.852612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321751, 40.669483, 32.901024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135474, 0.378690, -0.915555,
		-0.577431, 0.720737, 0.383552,
		0.805121, 0.580631, 0.121026,
		32.563286, 40.843674, 32.937332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818083, 41.114189, 32.581097>,  <31.999702, 40.437229, 32.852612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818083, 41.114189, 32.581097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217884, 41.101612, 32.580471>,  <32.457764, 41.094067, 32.580093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217884, 41.101612, 32.580471>,  <31.818083, 41.114189, 32.581097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217884, 41.101612, 32.580471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012567, 0.444104, -0.895887,
		0.028866, 0.895423, 0.444279,
		0.999504, -0.031443, -0.001567,
		32.517735, 41.092178, 32.580002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037060, 41.767632, 32.604568>,  <31.818083, 41.114189, 32.581097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037060, 41.767632, 32.604568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325455, 41.545731, 32.438477>,  <32.498493, 41.412590, 32.338821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325455, 41.545731, 32.438477>,  <32.037060, 41.767632, 32.604568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325455, 41.545731, 32.438477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166968, 0.442492, -0.881091,
		0.672528, 0.704589, 0.226406,
		0.720991, -0.554756, -0.415233,
		32.541752, 41.379303, 32.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290909, 42.258190, 32.029392>,  <32.037060, 41.767632, 32.604568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290909, 42.258190, 32.029392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456230, 41.902958, 31.948908>,  <32.555424, 41.689819, 31.900618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456230, 41.902958, 31.948908>,  <32.290909, 42.258190, 32.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456230, 41.902958, 31.948908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080134, 0.255582, -0.963461,
		0.907060, 0.382079, 0.176798,
		0.413304, -0.888084, -0.201211,
		32.580223, 41.636532, 31.888544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900547, 42.355347, 31.648170>,  <32.290909, 42.258190, 32.029392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900547, 42.355347, 31.648170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793659, 41.980633, 31.557819>,  <32.729527, 41.755802, 31.503609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793659, 41.980633, 31.557819>,  <32.900547, 42.355347, 31.648170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793659, 41.980633, 31.557819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186877, 0.179575, -0.965831,
		0.945342, -0.300299, 0.127079,
		-0.267218, -0.936789, -0.225879,
		32.713493, 41.699596, 31.490055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449932, 42.198879, 31.267416>,  <32.900547, 42.355347, 31.648170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449932, 42.198879, 31.267416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146225, 41.950344, 31.190010>,  <32.964001, 41.801224, 31.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146225, 41.950344, 31.190010>,  <33.449932, 42.198879, 31.267416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146225, 41.950344, 31.190010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109705, 0.170898, -0.979162,
		0.641466, -0.764675, -0.061592,
		-0.759267, -0.621342, -0.193514,
		32.918446, 41.763943, 31.131956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682903, 41.599274, 30.792732>,  <33.449932, 42.198879, 31.267416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682903, 41.599274, 30.792732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289360, 41.663136, 30.760412>,  <33.053234, 41.701454, 30.741020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289360, 41.663136, 30.760412>,  <33.682903, 41.599274, 30.792732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289360, 41.663136, 30.760412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086459, 0.028818, -0.995839,
		-0.156664, -0.986752, -0.042157,
		-0.983860, 0.159657, -0.080798,
		32.994202, 41.711033, 30.736172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585960, 41.346630, 30.028053>,  <33.682903, 41.599274, 30.792732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585960, 41.346630, 30.028053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259583, 41.546913, 30.143654>,  <33.063755, 41.667084, 30.213015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259583, 41.546913, 30.143654>,  <33.585960, 41.346630, 30.028053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259583, 41.546913, 30.143654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208181, 0.211881, -0.954865,
		-0.539345, -0.839283, -0.068645,
		-0.815946, 0.500711, 0.288999,
		33.014797, 41.697128, 30.230354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052361, 40.997971, 29.742556>,  <33.585960, 41.346630, 30.028053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052361, 40.997971, 29.742556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872089, 41.348274, 29.811758>,  <32.763927, 41.558456, 29.853279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872089, 41.348274, 29.811758>,  <33.052361, 40.997971, 29.742556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872089, 41.348274, 29.811758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233934, 0.071165, -0.969645,
		-0.861489, -0.477470, 0.172797,
		-0.450680, 0.875761, 0.173004,
		32.736885, 41.611004, 29.863659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291447, 40.953228, 29.509750>,  <33.052361, 40.997971, 29.742556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291447, 40.953228, 29.509750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390968, 41.340618, 29.514574>,  <32.450680, 41.573051, 29.517467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390968, 41.340618, 29.514574>,  <32.291447, 40.953228, 29.509750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390968, 41.340618, 29.514574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367319, 0.105869, -0.924050,
		-0.896200, 0.225477, 0.382082,
		0.248802, 0.968480, 0.012058,
		32.465611, 41.631161, 29.518192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688730, 41.298191, 29.195353>,  <32.291447, 40.953228, 29.509750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688730, 41.298191, 29.195353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002396, 41.544067, 29.161297>,  <32.190594, 41.691593, 29.140863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002396, 41.544067, 29.161297>,  <31.688730, 41.298191, 29.195353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002396, 41.544067, 29.161297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277509, 0.224642, -0.934090,
		-0.555047, 0.756106, 0.346737,
		0.784163, 0.614687, -0.085139,
		32.237644, 41.728474, 29.135756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379829, 42.031399, 29.035021>,  <31.688730, 41.298191, 29.195353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379829, 42.031399, 29.035021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761774, 42.015278, 28.917299>,  <31.990940, 42.005608, 28.846666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761774, 42.015278, 28.917299>,  <31.379829, 42.031399, 29.035021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761774, 42.015278, 28.917299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273321, 0.268850, -0.923588,
		0.116345, 0.962339, 0.245700,
		0.954861, -0.040300, -0.294306,
		32.048233, 42.003189, 28.829008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492573, 42.650475, 28.639681>,  <31.379829, 42.031399, 29.035021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492573, 42.650475, 28.639681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807589, 42.432423, 28.524714>,  <31.996599, 42.301590, 28.455732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807589, 42.432423, 28.524714>,  <31.492573, 42.650475, 28.639681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807589, 42.432423, 28.524714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121345, 0.320089, -0.939584,
		0.604196, 0.774839, 0.185934,
		0.787542, -0.545131, -0.287420,
		32.043850, 42.268883, 28.438488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643856, 42.976704, 27.991562>,  <31.492573, 42.650475, 28.639681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643856, 42.976704, 27.991562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836817, 42.626541, 27.979212>,  <31.952593, 42.416443, 27.971802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836817, 42.626541, 27.979212>,  <31.643856, 42.976704, 27.991562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836817, 42.626541, 27.979212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087472, -0.013069, -0.996081,
		0.871573, 0.483211, -0.082878,
		0.482400, -0.875407, -0.030877,
		31.981537, 42.363918, 27.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320858, 43.080780, 27.512291>,  <31.643856, 42.976704, 27.991562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320858, 43.080780, 27.512291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202347, 42.699059, 27.527851>,  <32.131241, 42.470024, 27.537188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202347, 42.699059, 27.527851>,  <32.320858, 43.080780, 27.512291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202347, 42.699059, 27.527851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017638, -0.046188, -0.998777,
		0.954938, -0.295234, 0.030517,
		-0.296282, -0.954308, 0.038899,
		32.113461, 42.412766, 27.539520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790569, 42.711510, 27.064268>,  <32.320858, 43.080780, 27.512291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790569, 42.711510, 27.064268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459938, 42.490143, 27.105244>,  <32.261559, 42.357323, 27.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459938, 42.490143, 27.105244>,  <32.790569, 42.711510, 27.064268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459938, 42.490143, 27.105244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042758, -0.243237, -0.969024,
		0.561191, -0.796597, 0.224718,
		-0.826581, -0.553416, 0.102441,
		32.211964, 42.324120, 27.135977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948875, 42.264706, 26.533848>,  <32.790569, 42.711510, 27.064268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948875, 42.264706, 26.533848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560081, 42.216705, 26.614689>,  <32.326805, 42.187904, 26.663193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560081, 42.216705, 26.614689>,  <32.948875, 42.264706, 26.533848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560081, 42.216705, 26.614689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153046, -0.329458, -0.931684,
		0.178391, -0.936513, 0.301862,
		-0.971984, -0.120005, 0.202102,
		32.268486, 42.180702, 26.675320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774220, 41.588539, 26.366671>,  <32.948875, 42.264706, 26.533848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774220, 41.588539, 26.366671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435215, 41.798901, 26.337944>,  <32.231812, 41.925117, 26.320709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435215, 41.798901, 26.337944>,  <32.774220, 41.588539, 26.366671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435215, 41.798901, 26.337944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112277, -0.309864, -0.944128,
		-0.518772, -0.792093, 0.321658,
		-0.847508, 0.525902, -0.071815,
		32.180962, 41.956673, 26.316401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211216, 41.170769, 26.060345>,  <32.774220, 41.588539, 26.366671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211216, 41.170769, 26.060345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089577, 41.543755, 25.982340>,  <32.016594, 41.767548, 25.935537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089577, 41.543755, 25.982340>,  <32.211216, 41.170769, 26.060345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089577, 41.543755, 25.982340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186858, -0.259114, -0.947599,
		-0.934136, -0.251722, 0.253034,
		-0.304096, 0.932468, -0.195011,
		31.998348, 41.823494, 25.923836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689201, 41.071117, 25.576273>,  <32.211216, 41.170769, 26.060345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689201, 41.071117, 25.576273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780058, 41.455944, 25.515839>,  <31.834572, 41.686840, 25.479578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780058, 41.455944, 25.515839>,  <31.689201, 41.071117, 25.576273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780058, 41.455944, 25.515839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128314, -0.124222, -0.983923,
		-0.965371, 0.242877, 0.095231,
		0.227143, 0.962070, -0.151085,
		31.848200, 41.744564, 25.470512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339621, 41.262798, 25.101170>,  <31.689201, 41.071117, 25.576273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339621, 41.262798, 25.101170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606140, 41.559513, 25.070705>,  <31.766052, 41.737541, 25.052427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606140, 41.559513, 25.070705>,  <31.339621, 41.262798, 25.101170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606140, 41.559513, 25.070705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108816, -0.004315, -0.994052,
		-0.737702, 0.670624, 0.077843,
		0.666300, 0.741785, -0.076158,
		31.806030, 41.782047, 25.047857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044933, 41.741020, 24.639660>,  <31.339621, 41.262798, 25.101170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044933, 41.741020, 24.639660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411465, 41.901005, 24.631939>,  <31.631384, 41.996994, 24.627306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411465, 41.901005, 24.631939>,  <31.044933, 41.741020, 24.639660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411465, 41.901005, 24.631939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087675, 0.153370, -0.984272,
		-0.390711, 0.903609, 0.175604,
		0.916329, 0.399961, -0.019301,
		31.686363, 42.020992, 24.626148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010643, 42.378647, 24.328716>,  <31.044933, 41.741020, 24.639660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010643, 42.378647, 24.328716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398859, 42.287266, 24.298100>,  <31.631788, 42.232437, 24.279730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398859, 42.287266, 24.298100>,  <31.010643, 42.378647, 24.328716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398859, 42.287266, 24.298100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002497, 0.327208, -0.944949,
		0.240923, 0.916920, 0.318139,
		0.970541, -0.228455, -0.076542,
		31.690022, 42.218731, 24.275137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431370, 42.987270, 23.948942>,  <31.010643, 42.378647, 24.328716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431370, 42.987270, 23.948942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632818, 42.645351, 23.898830>,  <31.753687, 42.440201, 23.868763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632818, 42.645351, 23.898830>,  <31.431370, 42.987270, 23.948942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632818, 42.645351, 23.898830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053583, 0.175637, -0.982996,
		0.862262, 0.488343, 0.134257,
		0.503620, -0.854794, -0.125278,
		31.783905, 42.388912, 23.861246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046333, 43.206264, 23.562006>,  <31.431370, 42.987270, 23.948942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046333, 43.206264, 23.562006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062012, 42.807472, 23.535212>,  <32.071419, 42.568195, 23.519135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062012, 42.807472, 23.535212>,  <32.046333, 43.206264, 23.562006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062012, 42.807472, 23.535212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157053, 0.072352, -0.984936,
		0.986812, 0.028083, 0.159415,
		0.039194, -0.996984, -0.066987,
		32.073769, 42.508377, 23.515116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727871, 43.056030, 23.295614>,  <32.046333, 43.206264, 23.562006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727871, 43.056030, 23.295614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458736, 42.773960, 23.206160>,  <32.297256, 42.604717, 23.152487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458736, 42.773960, 23.206160>,  <32.727871, 43.056030, 23.295614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458736, 42.773960, 23.206160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340188, -0.026486, -0.939984,
		0.656932, -0.708536, 0.257714,
		-0.672839, -0.705177, -0.223636,
		32.256886, 42.562408, 23.139069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058819, 42.776302, 22.678541>,  <32.727871, 43.056030, 23.295614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058819, 42.776302, 22.678541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708958, 42.583210, 22.660894>,  <32.499039, 42.467354, 22.650307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708958, 42.583210, 22.660894>,  <33.058819, 42.776302, 22.678541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708958, 42.583210, 22.660894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091210, -0.074509, -0.993040,
		0.476085, -0.872593, 0.109200,
		-0.874657, -0.482732, -0.044117,
		32.446560, 42.438389, 22.647659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124767, 42.266235, 22.211107>,  <33.058819, 42.776302, 22.678541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124767, 42.266235, 22.211107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729984, 42.321926, 22.243448>,  <32.493114, 42.355339, 22.262852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729984, 42.321926, 22.243448>,  <33.124767, 42.266235, 22.211107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729984, 42.321926, 22.243448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084219, -0.018460, -0.996276,
		-0.137215, -0.990088, 0.029945,
		-0.986955, 0.139226, 0.080851,
		32.433899, 42.363693, 22.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834042, 41.768528, 21.849709>,  <33.124767, 42.266235, 22.211107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834042, 41.768528, 21.849709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549423, 42.048325, 21.876265>,  <32.378651, 42.216202, 21.892199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549423, 42.048325, 21.876265>,  <32.834042, 41.768528, 21.849709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549423, 42.048325, 21.876265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066358, 0.027165, -0.997426,
		-0.699498, -0.714121, 0.027088,
		-0.711547, 0.699495, 0.066389,
		32.335960, 42.258175, 21.896181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536072, 41.113659, 21.452938>,  <32.834042, 41.768528, 21.849709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536072, 41.113659, 21.452938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895145, 40.982212, 21.335522>,  <33.110592, 40.903343, 21.265072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895145, 40.982212, 21.335522>,  <32.536072, 41.113659, 21.452938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895145, 40.982212, 21.335522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348257, 0.121000, 0.929557,
		-0.269950, -0.936680, 0.223063,
		0.897689, -0.328617, -0.293542,
		33.164452, 40.883629, 21.247459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714752, 40.679100, 21.963957>,  <32.536072, 41.113659, 21.452938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714752, 40.679100, 21.963957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082424, 40.734913, 21.816637>,  <33.303028, 40.768402, 21.728245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082424, 40.734913, 21.816637>,  <32.714752, 40.679100, 21.963957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082424, 40.734913, 21.816637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384365, -0.113854, 0.916134,
		0.085900, -0.983650, -0.158284,
		0.919176, 0.139534, -0.368300,
		33.358177, 40.776772, 21.706146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165932, 40.010353, 22.085270>,  <32.714752, 40.679100, 21.963957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165932, 40.010353, 22.085270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403976, 40.325249, 22.020649>,  <33.546803, 40.514187, 21.981876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403976, 40.325249, 22.020649>,  <33.165932, 40.010353, 22.085270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403976, 40.325249, 22.020649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530955, -0.234256, 0.814377,
		0.603262, -0.570425, -0.557396,
		0.595114, 0.787235, -0.161552,
		33.582512, 40.561420, 21.972183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702312, 39.858650, 22.553495>,  <33.165932, 40.010353, 22.085270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702312, 39.858650, 22.553495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776081, 40.238438, 22.451916>,  <33.820343, 40.466312, 22.390968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776081, 40.238438, 22.451916>,  <33.702312, 39.858650, 22.553495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776081, 40.238438, 22.451916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568600, 0.107681, 0.815536,
		0.801675, -0.294796, -0.520012,
		0.184421, 0.949473, -0.253947,
		33.831406, 40.523281, 22.375732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449677, 39.998421, 22.537331>,  <33.702312, 39.858650, 22.553495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449677, 39.998421, 22.537331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271687, 40.349598, 22.607996>,  <34.164894, 40.560307, 22.650396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271687, 40.349598, 22.607996>,  <34.449677, 39.998421, 22.537331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271687, 40.349598, 22.607996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466658, 0.058942, 0.882472,
		0.764349, 0.475119, -0.435928,
		-0.444974, 0.877945, 0.176666,
		34.138195, 40.612980, 22.660995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899231, 40.292503, 22.879778>,  <34.449677, 39.998421, 22.537331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899231, 40.292503, 22.879778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620560, 40.567890, 22.960426>,  <34.453358, 40.733124, 23.008816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620560, 40.567890, 22.960426>,  <34.899231, 40.292503, 22.879778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620560, 40.567890, 22.960426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358738, 0.090953, 0.928997,
		0.621246, 0.719542, -0.310344,
		-0.696679, 0.688467, 0.201623,
		34.411556, 40.774429, 23.020914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142765, 40.780724, 23.375671>,  <34.899231, 40.292503, 22.879778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142765, 40.780724, 23.375671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758770, 40.889328, 23.403124>,  <34.528374, 40.954491, 23.419596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758770, 40.889328, 23.403124>,  <35.142765, 40.780724, 23.375671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758770, 40.889328, 23.403124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078605, 0.026024, 0.996566,
		0.268795, 0.962083, -0.046325,
		-0.959985, 0.271513, 0.068629,
		34.470776, 40.970783, 23.423712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029549, 41.509514, 23.784288>,  <35.142765, 40.780724, 23.375671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029549, 41.509514, 23.784288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677719, 41.319355, 23.791842>,  <34.466621, 41.205261, 23.796373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677719, 41.319355, 23.791842>,  <35.029549, 41.509514, 23.784288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677719, 41.319355, 23.791842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040645, 0.114629, 0.992577,
		-0.474030, 0.872273, -0.120146,
		-0.879570, -0.475394, 0.018884,
		34.413849, 41.176735, 23.797506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605373, 41.929066, 24.123384>,  <35.029549, 41.509514, 23.784288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605373, 41.929066, 24.123384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450233, 41.563843, 24.173832>,  <34.357151, 41.344711, 24.204102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450233, 41.563843, 24.173832>,  <34.605373, 41.929066, 24.123384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450233, 41.563843, 24.173832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037262, 0.121186, 0.991930,
		-0.920970, 0.389417, -0.012980,
		-0.387847, -0.913054, 0.126120,
		34.333878, 41.289925, 24.211668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180260, 42.009365, 24.655926>,  <34.605373, 41.929066, 24.123384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180260, 42.009365, 24.655926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268456, 41.620037, 24.681318>,  <34.321373, 41.386440, 24.696554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268456, 41.620037, 24.681318>,  <34.180260, 42.009365, 24.655926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268456, 41.620037, 24.681318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087325, 0.084519, 0.992588,
		-0.971473, -0.213308, 0.103631,
		0.220485, -0.973322, 0.063481,
		34.334602, 41.328041, 24.700363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731606, 41.822510, 25.161880>,  <34.180260, 42.009365, 24.655926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731606, 41.822510, 25.161880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985836, 41.514969, 25.133869>,  <34.138374, 41.330444, 25.117062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985836, 41.514969, 25.133869>,  <33.731606, 41.822510, 25.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985836, 41.514969, 25.133869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099605, -0.171611, 0.980117,
		-0.765582, -0.615968, -0.185654,
		0.635580, -0.768852, -0.070029,
		34.176510, 41.284313, 25.112860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428589, 41.326553, 25.564545>,  <33.731606, 41.822510, 25.161880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428589, 41.326553, 25.564545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812523, 41.217499, 25.538033>,  <34.042881, 41.152065, 25.522125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812523, 41.217499, 25.538033>,  <33.428589, 41.326553, 25.564545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812523, 41.217499, 25.538033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010017, -0.202783, 0.979173,
		-0.280397, -0.940505, -0.191906,
		0.959832, -0.272635, -0.066281,
		34.100471, 41.135708, 25.518148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634483, 40.565617, 25.852818>,  <33.428589, 41.326553, 25.564545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634483, 40.565617, 25.852818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935005, 40.827641, 25.884909>,  <34.115318, 40.984856, 25.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935005, 40.827641, 25.884909>,  <33.634483, 40.565617, 25.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935005, 40.827641, 25.884909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121363, -0.256633, 0.958859,
		0.648700, -0.710659, -0.272310,
		0.751306, 0.655060, 0.080229,
		34.160397, 41.024158, 25.908978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181042, 40.189793, 26.134727>,  <33.634483, 40.565617, 25.852818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181042, 40.189793, 26.134727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232925, 40.580418, 26.203440>,  <34.264057, 40.814793, 26.244667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232925, 40.580418, 26.203440>,  <34.181042, 40.189793, 26.134727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232925, 40.580418, 26.203440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067400, -0.164160, 0.984129,
		0.989259, -0.139230, 0.044527,
		0.129710, 0.976559, 0.171780,
		34.271839, 40.873386, 26.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607285, 40.229668, 26.621649>,  <34.181042, 40.189793, 26.134727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607285, 40.229668, 26.621649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443657, 40.593494, 26.650923>,  <34.345478, 40.811790, 26.668488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443657, 40.593494, 26.650923>,  <34.607285, 40.229668, 26.621649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443657, 40.593494, 26.650923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091966, -0.120888, 0.988397,
		0.907856, 0.397595, 0.133100,
		-0.409072, 0.909563, 0.073184,
		34.320934, 40.866364, 26.672878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955875, 40.462357, 27.301842>,  <34.607285, 40.229668, 26.621649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955875, 40.462357, 27.301842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606941, 40.642414, 27.225529>,  <34.397579, 40.750450, 27.179741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606941, 40.642414, 27.225529>,  <34.955875, 40.462357, 27.301842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606941, 40.642414, 27.225529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383291, -0.387424, 0.838445,
		0.303509, 0.804531, 0.510501,
		-0.872336, 0.450146, -0.190783,
		34.345242, 40.777458, 27.168293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786182, 40.638969, 27.900709>,  <34.955875, 40.462357, 27.301842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786182, 40.638969, 27.900709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426693, 40.674381, 27.728916>,  <34.210999, 40.695629, 27.625841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426693, 40.674381, 27.728916>,  <34.786182, 40.638969, 27.900709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426693, 40.674381, 27.728916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438421, -0.201262, 0.875946,
		-0.008889, 0.975529, 0.219693,
		-0.898726, 0.088532, -0.429481,
		34.157074, 40.700939, 27.600071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381596, 41.196159, 28.238182>,  <34.786182, 40.638969, 27.900709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381596, 41.196159, 28.238182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089622, 40.985813, 28.063519>,  <33.914440, 40.859608, 27.958721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089622, 40.985813, 28.063519>,  <34.381596, 41.196159, 28.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089622, 40.985813, 28.063519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309274, -0.315610, 0.897073,
		-0.609550, 0.789848, 0.067739,
		-0.729930, -0.525862, -0.436659,
		33.870644, 40.828056, 27.932520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766491, 41.311718, 28.545227>,  <34.381596, 41.196159, 28.238182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766491, 41.311718, 28.545227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692947, 40.962246, 28.365055>,  <33.648823, 40.752563, 28.256952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692947, 40.962246, 28.365055>,  <33.766491, 41.311718, 28.545227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692947, 40.962246, 28.365055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259116, -0.398953, 0.879600,
		-0.948186, 0.278434, -0.153033,
		-0.183858, -0.873677, -0.450428,
		33.637791, 40.700142, 28.229927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170475, 41.092449, 28.759453>,  <33.766491, 41.311718, 28.545227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170475, 41.092449, 28.759453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394131, 40.784252, 28.637011>,  <33.528324, 40.599335, 28.563545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394131, 40.784252, 28.637011>,  <33.170475, 41.092449, 28.759453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394131, 40.784252, 28.637011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008068, -0.364143, 0.931308,
		-0.829032, -0.523203, -0.197391,
		0.559142, -0.770492, -0.306107,
		33.561874, 40.553104, 28.545177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807487, 40.595570, 29.010954>,  <33.170475, 41.092449, 28.759453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807487, 40.595570, 29.010954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156460, 40.407806, 28.956511>,  <33.365841, 40.295147, 28.923845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156460, 40.407806, 28.956511>,  <32.807487, 40.595570, 29.010954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156460, 40.407806, 28.956511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118951, -0.474045, 0.872429,
		-0.474045, -0.744943, -0.469407,
		-0.872429, 0.469407, 0.136107,
		33.418190, 40.266983, 28.915678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766434, 40.062820, 29.474207>,  <32.807487, 40.595570, 29.010954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766434, 40.062820, 29.474207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156387, 40.036690, 29.389040>,  <33.390358, 40.021011, 29.337940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156387, 40.036690, 29.389040>,  <32.766434, 40.062820, 29.474207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156387, 40.036690, 29.389040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183511, -0.306076, 0.934153,
		-0.126188, -0.949763, -0.286402,
		0.974885, -0.065321, -0.212915,
		33.448853, 40.017094, 29.325165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017914, 39.449116, 29.815447>,  <32.766434, 40.062820, 29.474207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017914, 39.449116, 29.815447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354321, 39.656776, 29.754545>,  <33.556164, 39.781372, 29.718004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354321, 39.656776, 29.754545>,  <33.017914, 39.449116, 29.815447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354321, 39.656776, 29.754545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406008, -0.419638, 0.811826,
		0.357568, -0.744572, -0.563700,
		0.841013, 0.519150, -0.152253,
		33.606625, 39.812523, 29.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501713, 38.992645, 29.956100>,  <33.017914, 39.449116, 29.815447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501713, 38.992645, 29.956100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692646, 39.341125, 30.001986>,  <33.807205, 39.550213, 30.029516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692646, 39.341125, 30.001986>,  <33.501713, 38.992645, 29.956100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692646, 39.341125, 30.001986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477620, -0.366805, 0.798332,
		0.737588, -0.326277, -0.591192,
		0.477329, 0.871205, 0.114714,
		33.835846, 39.602486, 30.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193768, 38.817593, 30.298492>,  <33.501713, 38.992645, 29.956100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193768, 38.817593, 30.298492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128735, 39.205994, 30.368605>,  <34.089714, 39.439034, 30.410671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128735, 39.205994, 30.368605>,  <34.193768, 38.817593, 30.298492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128735, 39.205994, 30.368605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428638, -0.090499, 0.898933,
		0.888727, 0.221283, -0.401494,
		-0.162584, 0.971001, 0.175279,
		34.079960, 39.497295, 30.421188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795361, 39.067245, 30.681580>,  <34.193768, 38.817593, 30.298492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795361, 39.067245, 30.681580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541737, 39.367390, 30.756340>,  <34.389561, 39.547474, 30.801195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541737, 39.367390, 30.756340>,  <34.795361, 39.067245, 30.681580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541737, 39.367390, 30.756340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313207, 0.028219, 0.949265,
		0.707015, 0.660428, -0.252910,
		-0.634059, 0.750359, 0.186899,
		34.351521, 39.592499, 30.812410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173717, 39.578487, 30.993736>,  <34.795361, 39.067245, 30.681580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173717, 39.578487, 30.993736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802216, 39.657822, 31.119007>,  <34.579315, 39.705421, 31.194170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802216, 39.657822, 31.119007>,  <35.173717, 39.578487, 30.993736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802216, 39.657822, 31.119007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345876, 0.159695, 0.924590,
		0.133365, 0.967037, -0.216917,
		-0.928754, 0.198334, 0.313177,
		34.523590, 39.717323, 31.212961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230984, 40.196743, 31.377224>,  <35.173717, 39.578487, 30.993736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230984, 40.196743, 31.377224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886269, 40.023594, 31.483015>,  <34.679440, 39.919704, 31.546490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886269, 40.023594, 31.483015>,  <35.230984, 40.196743, 31.377224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886269, 40.023594, 31.483015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235632, 0.120118, 0.964390,
		-0.449229, 0.893415, -0.001516,
		-0.861783, -0.432875, 0.264478,
		34.627735, 39.893730, 31.562359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038681, 40.650162, 31.948359>,  <35.230984, 40.196743, 31.377224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038681, 40.650162, 31.948359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825329, 40.312523, 31.970291>,  <34.697319, 40.109940, 31.983450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825329, 40.312523, 31.970291>,  <35.038681, 40.650162, 31.948359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825329, 40.312523, 31.970291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121574, 0.140649, 0.982567,
		-0.837093, 0.517416, -0.177640,
		-0.533381, -0.844096, 0.054831,
		34.665314, 40.059296, 31.986740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604904, 40.803276, 32.492413>,  <35.038681, 40.650162, 31.948359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604904, 40.803276, 32.492413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669617, 40.412613, 32.435902>,  <34.708443, 40.178215, 32.401997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669617, 40.412613, 32.435902>,  <34.604904, 40.803276, 32.492413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669617, 40.412613, 32.435902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302883, -0.087111, 0.949038,
		-0.939196, -0.196324, 0.281722,
		0.161778, -0.976662, -0.141277,
		34.718151, 40.119614, 32.393517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399124, 40.541061, 33.059490>,  <34.604904, 40.803276, 32.492413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399124, 40.541061, 33.059490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619839, 40.241402, 32.912899>,  <34.752266, 40.061607, 32.824944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619839, 40.241402, 32.912899>,  <34.399124, 40.541061, 33.059490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619839, 40.241402, 32.912899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545447, -0.008249, 0.838105,
		-0.630890, -0.662349, 0.404070,
		0.551784, -0.749151, -0.366480,
		34.785374, 40.016655, 32.802956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295734, 40.116547, 33.639950>,  <34.399124, 40.541061, 33.059490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295734, 40.116547, 33.639950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622623, 39.999176, 33.441536>,  <34.818756, 39.928753, 33.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622623, 39.999176, 33.441536>,  <34.295734, 40.116547, 33.639950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622623, 39.999176, 33.441536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505604, -0.048063, 0.861426,
		-0.276609, -0.954772, 0.109082,
		0.817222, -0.293430, -0.496031,
		34.867790, 39.911148, 33.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654087, 39.616955, 34.131229>,  <34.295734, 40.116547, 33.639950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654087, 39.616955, 34.131229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929092, 39.689808, 33.850044>,  <35.094093, 39.733521, 33.681332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929092, 39.689808, 33.850044>,  <34.654087, 39.616955, 34.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929092, 39.689808, 33.850044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716461, -0.012320, 0.697518,
		0.118383, -0.983196, -0.138964,
		0.687509, 0.182137, -0.702964,
		35.135345, 39.744450, 33.639156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164322, 39.046738, 34.209846>,  <34.654087, 39.616955, 34.131229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164322, 39.046738, 34.209846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343937, 39.352413, 34.024647>,  <35.451706, 39.535820, 33.913525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343937, 39.352413, 34.024647>,  <35.164322, 39.046738, 34.209846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343937, 39.352413, 34.024647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785166, -0.090152, 0.612689,
		0.426472, -0.638655, -0.640500,
		0.449039, 0.764194, -0.463003,
		35.478649, 39.581673, 33.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765888, 38.786575, 34.124180>,  <35.164322, 39.046738, 34.209846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765888, 38.786575, 34.124180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833252, 39.172974, 34.045700>,  <35.873672, 39.404812, 33.998611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833252, 39.172974, 34.045700>,  <35.765888, 38.786575, 34.124180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833252, 39.172974, 34.045700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814816, -0.024418, 0.579206,
		0.554719, -0.257410, -0.791219,
		0.168413, 0.965994, -0.196197,
		35.883778, 39.462772, 33.986839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485462, 38.883247, 34.014530>,  <35.765888, 38.786575, 34.124180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485462, 38.883247, 34.014530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361446, 39.251457, 34.109615>,  <36.287037, 39.472385, 34.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361446, 39.251457, 34.109615>,  <36.485462, 38.883247, 34.014530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361446, 39.251457, 34.109615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756209, 0.087231, 0.648490,
		0.576217, 0.380815, -0.723156,
		-0.310036, 0.920528, 0.237711,
		36.268436, 39.527615, 34.180927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116428, 39.319027, 33.887905>,  <36.485462, 38.883247, 34.014530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116428, 39.319027, 33.887905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875332, 39.533749, 34.124054>,  <36.730675, 39.662582, 34.265743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875332, 39.533749, 34.124054>,  <37.116428, 39.319027, 33.887905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875332, 39.533749, 34.124054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763608, 0.173378, 0.621967,
		0.231521, 0.825698, -0.514414,
		-0.602745, 0.536809, 0.590368,
		36.694508, 39.694790, 34.301163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458076, 39.919067, 34.010067>,  <37.116428, 39.319027, 33.887905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458076, 39.919067, 34.010067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205276, 39.896488, 34.319229>,  <37.053596, 39.882938, 34.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205276, 39.896488, 34.319229>,  <37.458076, 39.919067, 34.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205276, 39.896488, 34.319229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738337, 0.259140, 0.622659,
		-0.235443, 0.964188, -0.122096,
		-0.632001, -0.056452, 0.772909,
		37.015675, 39.879551, 34.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523441, 40.533325, 34.308781>,  <37.458076, 39.919067, 34.010067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523441, 40.533325, 34.308781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363575, 40.285534, 34.579041>,  <37.267654, 40.136860, 34.741196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363575, 40.285534, 34.579041>,  <37.523441, 40.533325, 34.308781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363575, 40.285534, 34.579041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452761, 0.507489, 0.733118,
		-0.797039, 0.598915, 0.077648,
		-0.399670, -0.619480, 0.675654,
		37.243675, 40.099689, 34.781738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384850, 40.995708, 34.970043>,  <37.523441, 40.533325, 34.308781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384850, 40.995708, 34.970043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427654, 40.619610, 35.099339>,  <37.453339, 40.393951, 35.176918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427654, 40.619610, 35.099339>,  <37.384850, 40.995708, 34.970043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427654, 40.619610, 35.099339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503421, 0.331593, 0.797880,
		-0.857389, 0.077344, 0.508825,
		0.107012, -0.940247, 0.323240,
		37.459759, 40.337536, 35.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137341, 40.956360, 35.620598>,  <37.384850, 40.995708, 34.970043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137341, 40.956360, 35.620598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424824, 40.688576, 35.545471>,  <37.597313, 40.527905, 35.500393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424824, 40.688576, 35.545471>,  <37.137341, 40.956360, 35.620598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424824, 40.688576, 35.545471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517409, 0.334495, 0.787655,
		-0.464480, -0.663276, 0.586790,
		0.718711, -0.669461, -0.187818,
		37.640438, 40.487736, 35.489124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236641, 40.690727, 36.249275>,  <37.137341, 40.956360, 35.620598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236641, 40.690727, 36.249275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566746, 40.584915, 36.049686>,  <37.764809, 40.521427, 35.929935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566746, 40.584915, 36.049686>,  <37.236641, 40.690727, 36.249275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566746, 40.584915, 36.049686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563444, 0.325565, 0.759301,
		-0.038412, -0.907762, 0.417724,
		0.825261, -0.264530, -0.498967,
		37.814323, 40.505558, 35.899998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557697, 40.297386, 36.711323>,  <37.236641, 40.690727, 36.249275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557697, 40.297386, 36.711323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867046, 40.366547, 36.467358>,  <38.052658, 40.408043, 36.320976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867046, 40.366547, 36.467358>,  <37.557697, 40.297386, 36.711323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867046, 40.366547, 36.467358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599925, 0.111336, 0.792271,
		0.204887, -0.978627, -0.017621,
		0.773376, 0.172897, -0.609915,
		38.099060, 40.418415, 36.284382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179016, 40.197361, 37.109734>,  <37.557697, 40.297386, 36.711323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179016, 40.197361, 37.109734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343166, 40.408195, 36.812069>,  <38.441654, 40.534698, 36.633472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343166, 40.408195, 36.812069>,  <38.179016, 40.197361, 37.109734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343166, 40.408195, 36.812069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845366, 0.086139, 0.527196,
		0.341980, -0.845434, -0.410233,
		0.410372, 0.527088, -0.744159,
		38.466278, 40.566322, 36.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905697, 39.902260, 37.107410>,  <38.179016, 40.197361, 37.109734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905697, 39.902260, 37.107410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911198, 40.247337, 36.905193>,  <38.914497, 40.454384, 36.783863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911198, 40.247337, 36.905193>,  <38.905697, 39.902260, 37.107410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911198, 40.247337, 36.905193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853487, 0.253275, 0.455425,
		0.520933, -0.437733, -0.732816,
		0.013751, 0.862695, -0.505538,
		38.915321, 40.506145, 36.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632156, 40.028805, 36.949718>,  <38.905697, 39.902260, 37.107410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632156, 40.028805, 36.949718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466228, 40.392117, 36.927990>,  <39.366673, 40.610104, 36.914955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466228, 40.392117, 36.927990>,  <39.632156, 40.028805, 36.949718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466228, 40.392117, 36.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743892, 0.372909, 0.554584,
		0.523974, 0.189646, -0.830353,
		-0.414821, 0.908280, -0.054319,
		39.341782, 40.664600, 36.911694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188587, 40.598755, 36.792301>,  <39.632156, 40.028805, 36.949718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188587, 40.598755, 36.792301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881088, 40.787216, 36.965294>,  <39.696587, 40.900291, 37.069088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881088, 40.787216, 36.965294>,  <40.188587, 40.598755, 36.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881088, 40.787216, 36.965294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630995, 0.448529, 0.632982,
		0.104249, 0.759499, -0.642100,
		-0.768750, 0.471150, 0.432482,
		39.650463, 40.928562, 37.095039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329685, 41.341629, 36.839130>,  <40.188587, 40.598755, 36.792301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329685, 41.341629, 36.839130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050564, 41.263191, 37.114700>,  <39.883091, 41.216129, 37.280041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050564, 41.263191, 37.114700>,  <40.329685, 41.341629, 36.839130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050564, 41.263191, 37.114700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550698, 0.468162, 0.691055,
		-0.458041, 0.861609, -0.218695,
		-0.697804, -0.196097, 0.688924,
		39.841221, 41.204361, 37.321377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186089, 42.075939, 37.164036>,  <40.329685, 41.341629, 36.839130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186089, 42.075939, 37.164036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102215, 41.757683, 37.391361>,  <40.051891, 41.566727, 37.527756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102215, 41.757683, 37.391361>,  <40.186089, 42.075939, 37.164036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102215, 41.757683, 37.391361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397459, 0.461690, 0.793012,
		-0.893342, 0.392163, 0.219428,
		-0.209682, -0.795645, 0.568316,
		40.039310, 41.518990, 37.561855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784588, 42.276550, 37.757492>,  <40.186089, 42.075939, 37.164036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784588, 42.276550, 37.757492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982616, 41.945568, 37.863495>,  <40.101433, 41.746979, 37.927097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982616, 41.945568, 37.863495>,  <39.784588, 42.276550, 37.757492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982616, 41.945568, 37.863495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426320, 0.497109, 0.755734,
		-0.757071, -0.261163, 0.598863,
		0.495070, -0.827452, 0.265008,
		40.131138, 41.697334, 37.942997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844337, 42.345402, 38.454174>,  <39.784588, 42.276550, 37.757492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844337, 42.345402, 38.454174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132275, 42.090240, 38.344700>,  <40.305038, 41.937145, 38.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132275, 42.090240, 38.344700>,  <39.844337, 42.345402, 38.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132275, 42.090240, 38.344700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597474, 0.368702, 0.712099,
		-0.353342, -0.676120, 0.646538,
		0.719844, -0.637904, -0.273686,
		40.348228, 41.898869, 38.262592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859837, 41.989540, 39.027702>,  <39.844337, 42.345402, 38.454174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859837, 41.989540, 39.027702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203320, 41.952042, 38.826172>,  <40.409409, 41.929543, 38.705254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203320, 41.952042, 38.826172>,  <39.859837, 41.989540, 39.027702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203320, 41.952042, 38.826172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512399, 0.140557, 0.847166,
		-0.008606, -0.985624, 0.168735,
		0.858704, -0.093750, -0.503823,
		40.460930, 41.923916, 38.675026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231522, 41.650688, 39.499142>,  <39.859837, 41.989540, 39.027702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231522, 41.650688, 39.499142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532547, 41.783379, 39.271595>,  <40.713161, 41.862991, 39.135067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532547, 41.783379, 39.271595>,  <40.231522, 41.650688, 39.499142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532547, 41.783379, 39.271595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640445, -0.167677, 0.749476,
		0.153235, -0.928355, -0.338639,
		0.752562, 0.331725, -0.568867,
		40.758316, 41.882896, 39.100937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896900, 41.334072, 39.751686>,  <40.231522, 41.650688, 39.499142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896900, 41.334072, 39.751686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031811, 41.646618, 39.541653>,  <41.112759, 41.834145, 39.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031811, 41.646618, 39.541653>,  <40.896900, 41.334072, 39.751686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031811, 41.646618, 39.541653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818032, 0.032784, 0.574238,
		0.465905, -0.623210, -0.628126,
		0.337278, 0.781367, -0.525080,
		41.132996, 41.881027, 39.384129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584873, 41.241199, 39.578312>,  <40.896900, 41.334072, 39.751686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584873, 41.241199, 39.578312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549110, 41.638290, 39.546070>,  <41.527653, 41.876545, 39.526726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549110, 41.638290, 39.546070>,  <41.584873, 41.241199, 39.578312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549110, 41.638290, 39.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894667, 0.115610, 0.431516,
		0.437697, -0.033536, -0.898497,
		-0.089404, 0.992728, -0.080606,
		41.522289, 41.936108, 39.521889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087803, 41.343758, 39.115231>,  <41.584873, 41.241199, 39.578312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087803, 41.343758, 39.115231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970104, 41.681648, 39.294052>,  <41.899487, 41.884384, 39.401344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970104, 41.681648, 39.294052>,  <42.087803, 41.343758, 39.115231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970104, 41.681648, 39.294052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946947, 0.194405, 0.255926,
		0.129279, 0.498640, -0.857114,
		-0.294242, 0.844728, 0.447053,
		41.881832, 41.935066, 39.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479588, 41.875942, 38.956154>,  <42.087803, 41.343758, 39.115231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479588, 41.875942, 38.956154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347023, 42.010403, 39.308784>,  <42.267483, 42.091080, 39.520363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347023, 42.010403, 39.308784>,  <42.479588, 41.875942, 38.956154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347023, 42.010403, 39.308784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941329, 0.054675, 0.333031,
		0.063747, 0.940221, -0.334545,
		-0.331414, 0.336147, 0.881572,
		42.247601, 42.111248, 39.573257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074970, 42.207592, 39.146420>,  <42.479588, 41.875942, 38.956154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074970, 42.207592, 39.146420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881714, 42.238659, 39.495255>,  <42.765759, 42.257298, 39.704556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881714, 42.238659, 39.495255>,  <43.074970, 42.207592, 39.146420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881714, 42.238659, 39.495255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850148, 0.279765, 0.446071,
		-0.209337, 0.956922, -0.201193,
		-0.483142, 0.077665, 0.872091,
		42.736771, 42.261959, 39.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150700, 42.883236, 39.517292>,  <43.074970, 42.207592, 39.146420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150700, 42.883236, 39.517292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077873, 42.619503, 39.809082>,  <43.034180, 42.461262, 39.984158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077873, 42.619503, 39.809082>,  <43.150700, 42.883236, 39.517292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077873, 42.619503, 39.809082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821635, 0.305528, 0.481215,
		-0.540156, 0.686975, 0.486104,
		-0.182064, -0.659332, 0.729475,
		43.023254, 42.421703, 40.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453548, 43.224453, 39.978241>,  <43.150700, 42.883236, 39.517292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453548, 43.224453, 39.978241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401829, 42.873470, 40.163002>,  <43.370796, 42.662880, 40.273857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401829, 42.873470, 40.163002>,  <43.453548, 43.224453, 39.978241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401829, 42.873470, 40.163002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944299, 0.033203, 0.327409,
		-0.302624, 0.478503, 0.824290,
		-0.129297, -0.877458, 0.461899,
		43.363041, 42.610233, 40.301571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921627, 43.207378, 40.544880>,  <43.453548, 43.224453, 39.978241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921627, 43.207378, 40.544880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850163, 42.852089, 40.375580>,  <43.807281, 42.638916, 40.274002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850163, 42.852089, 40.375580>,  <43.921627, 43.207378, 40.544880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850163, 42.852089, 40.375580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936203, -0.285793, 0.204567,
		-0.302662, -0.359697, 0.882618,
		-0.178664, -0.888223, -0.423248,
		43.796562, 42.585621, 40.248604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460121, 42.564289, 40.279877>,  <43.921627, 43.207378, 40.544880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460121, 42.564289, 40.279877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463215, 42.254452, 40.532845>,  <44.465073, 42.068550, 40.684624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463215, 42.254452, 40.532845>,  <44.460121, 42.564289, 40.279877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463215, 42.254452, 40.532845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949043, -0.204942, -0.239408,
		0.315052, -0.598338, -0.736705,
		0.007735, -0.774591, 0.632416,
		44.465534, 42.022076, 40.722569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227654, 41.859142, 39.942810>,  <44.460121, 42.564289, 40.279877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227654, 41.859142, 39.942810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148781, 41.936604, 40.327229>,  <44.101460, 41.983082, 40.557880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148781, 41.936604, 40.327229>,  <44.227654, 41.859142, 39.942810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148781, 41.936604, 40.327229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978796, 0.016605, -0.204164,
		-0.055496, -0.980928, 0.186280,
		-0.197178, 0.193660, 0.961050,
		44.089626, 41.994701, 40.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759888, 41.415821, 40.245201>,  <44.227654, 41.859142, 39.942810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759888, 41.415821, 40.245201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741455, 41.772919, 40.424480>,  <43.730396, 41.987179, 40.532047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741455, 41.772919, 40.424480>,  <43.759888, 41.415821, 40.245201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741455, 41.772919, 40.424480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949561, 0.100165, -0.297155,
		-0.310177, -0.439285, 0.843101,
		-0.046086, 0.892746, 0.448197,
		43.727631, 42.040741, 40.558941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301270, 41.377266, 40.807907>,  <43.759888, 41.415821, 40.245201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301270, 41.377266, 40.807907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298038, 41.753902, 40.673244>,  <43.296101, 41.979885, 40.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298038, 41.753902, 40.673244>,  <43.301270, 41.377266, 40.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298038, 41.753902, 40.673244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981184, -0.072412, -0.178984,
		-0.192908, 0.328877, 0.924460,
		-0.008079, 0.941593, -0.336657,
		43.295616, 42.036381, 40.572247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662380, 40.870148, 40.789711>,  <43.301270, 41.377266, 40.807907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662380, 40.870148, 40.789711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308701, 40.806614, 40.965420>,  <42.096493, 40.768494, 41.070843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308701, 40.806614, 40.965420>,  <42.662380, 40.870148, 40.789711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308701, 40.806614, 40.965420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338297, -0.866212, 0.367739,
		0.322090, 0.473759, 0.819640,
		-0.884202, -0.158836, 0.439269,
		42.043442, 40.758965, 41.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679001, 41.673767, 41.039349>,  <42.662380, 40.870148, 40.789711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679001, 41.673767, 41.039349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792675, 41.903152, 40.732002>,  <42.860882, 42.040783, 40.547596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792675, 41.903152, 40.732002>,  <42.679001, 41.673767, 41.039349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792675, 41.903152, 40.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939913, 0.008478, -0.341310,
		-0.189214, 0.819190, 0.541411,
		0.284188, 0.573459, -0.768363,
		42.877930, 42.075191, 40.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159676, 42.199123, 40.933037>,  <42.679001, 41.673767, 41.039349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159676, 42.199123, 40.933037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329750, 42.203621, 40.571022>,  <42.431793, 42.206318, 40.353813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329750, 42.203621, 40.571022>,  <42.159676, 42.199123, 40.933037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329750, 42.203621, 40.571022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904534, -0.030328, -0.425321,
		-0.032229, 0.999476, -0.002728,
		0.425182, 0.011240, -0.905038,
		42.457306, 42.206993, 40.299511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824104, 42.678070, 40.672997>,  <42.159676, 42.199123, 40.933037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824104, 42.678070, 40.672997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 42.493984, 40.344917>,  <42.041584, 42.383533, 40.148067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 42.493984, 40.344917>,  <41.824104, 42.678070, 40.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960030, 42.493984, 40.344917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888444, 0.129023, -0.440477,
		0.308539, 0.878382, -0.365033,
		0.339810, -0.460215, -0.820202,
		42.061974, 42.355919, 40.098858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701378, 43.145954, 40.207066>,  <41.824104, 42.678070, 40.672997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701378, 43.145954, 40.207066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705215, 42.786140, 40.032372>,  <41.707520, 42.570251, 39.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705215, 42.786140, 40.032372>,  <41.701378, 43.145954, 40.207066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705215, 42.786140, 40.032372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686142, 0.311789, -0.657264,
		0.727404, 0.305972, -0.614218,
		0.009598, -0.899538, -0.436737,
		41.708096, 42.516277, 39.901352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310680, 43.186951, 39.512531>,  <41.701378, 43.145954, 40.207066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310680, 43.186951, 39.512531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384647, 42.793858, 39.515205>,  <41.429028, 42.558002, 39.516811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384647, 42.793858, 39.515205>,  <41.310680, 43.186951, 39.512531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384647, 42.793858, 39.515205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557078, -0.110423, -0.823086,
		0.809611, 0.148476, -0.567877,
		0.184915, -0.982732, 0.006687,
		41.440121, 42.499039, 39.517212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414299, 43.013947, 38.736294>,  <41.310680, 43.186951, 39.512531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414299, 43.013947, 38.736294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339314, 42.669132, 38.924652>,  <41.294323, 42.462242, 39.037666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339314, 42.669132, 38.924652>,  <41.414299, 43.013947, 38.736294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339314, 42.669132, 38.924652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481397, -0.337249, -0.809024,
		0.856220, -0.378355, -0.351759,
		-0.187468, -0.862039, 0.470898,
		41.283073, 42.410522, 39.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371368, 42.450897, 38.243896>,  <41.414299, 43.013947, 38.736294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371368, 42.450897, 38.243896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229355, 42.199654, 38.520859>,  <41.144146, 42.048908, 38.687035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229355, 42.199654, 38.520859>,  <41.371368, 42.450897, 38.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229355, 42.199654, 38.520859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448784, -0.535216, -0.715637,
		0.820086, -0.564819, -0.091864,
		-0.355038, -0.628111, 0.692405,
		41.122845, 42.011219, 38.728580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316353, 41.811073, 38.051178>,  <41.371368, 42.450897, 38.243896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316353, 41.811073, 38.051178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046894, 41.734890, 38.336811>,  <40.885220, 41.689178, 38.508190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046894, 41.734890, 38.336811>,  <41.316353, 41.811073, 38.051178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046894, 41.734890, 38.336811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574524, -0.472823, -0.668102,
		0.464883, -0.860327, 0.209094,
		-0.673650, -0.190460, 0.714086,
		40.844799, 41.677753, 38.551037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223831, 41.018864, 38.114697>,  <41.316353, 41.811073, 38.051178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223831, 41.018864, 38.114697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922836, 41.268509, 38.198826>,  <40.742237, 41.418297, 38.249306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922836, 41.268509, 38.198826>,  <41.223831, 41.018864, 38.114697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922836, 41.268509, 38.198826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522911, -0.372019, -0.766920,
		-0.400412, -0.687074, 0.606300,
		-0.752486, 0.624125, 0.210318,
		40.697090, 41.455742, 38.261925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745525, 40.566807, 38.126141>,  <41.223831, 41.018864, 38.114697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745525, 40.566807, 38.126141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544739, 40.912014, 38.103436>,  <40.424267, 41.119141, 38.089813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544739, 40.912014, 38.103436>,  <40.745525, 40.566807, 38.126141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544739, 40.912014, 38.103436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618765, -0.404199, -0.673612,
		-0.604284, -0.303010, 0.736903,
		-0.501967, 0.863022, -0.056759,
		40.394150, 41.170921, 38.086407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074017, 40.394341, 38.227222>,  <40.745525, 40.566807, 38.126141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074017, 40.394341, 38.227222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087395, 40.718758, 37.993614>,  <40.095421, 40.913410, 37.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087395, 40.718758, 37.993614>,  <40.074017, 40.394341, 38.227222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087395, 40.718758, 37.993614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476764, -0.500634, -0.722538,
		-0.878395, 0.302605, 0.369936,
		0.033441, 0.811046, -0.584025,
		40.097427, 40.962070, 37.818405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404324, 40.753105, 38.477295>,  <40.074017, 40.394341, 38.227222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404324, 40.753105, 38.477295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591045, 41.007988, 38.231998>,  <39.703079, 41.160915, 38.084820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591045, 41.007988, 38.231998>,  <39.404324, 40.753105, 38.477295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591045, 41.007988, 38.231998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509742, -0.372780, -0.775369,
		-0.722671, 0.674543, 0.150792,
		0.466808, 0.637202, -0.613240,
		39.731087, 41.199150, 38.048027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886024, 41.135876, 38.170708>,  <39.404324, 40.753105, 38.477295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886024, 41.135876, 38.170708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190781, 41.136421, 37.911625>,  <39.373634, 41.136749, 37.756176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190781, 41.136421, 37.911625>,  <38.886024, 41.135876, 38.170708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190781, 41.136421, 37.911625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610884, -0.330851, -0.719276,
		-0.215274, 0.943682, -0.251239,
		0.761891, 0.001364, -0.647704,
		39.419350, 41.136829, 37.717312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614586, 41.560890, 37.679096>,  <38.886024, 41.135876, 38.170708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614586, 41.560890, 37.679096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914207, 41.357723, 37.508945>,  <39.093979, 41.235825, 37.406857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914207, 41.357723, 37.508945>,  <38.614586, 41.560890, 37.679096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914207, 41.357723, 37.508945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597270, -0.239863, -0.765333,
		0.286695, 0.827336, -0.483033,
		0.749049, -0.507919, -0.425375,
		39.138924, 41.205349, 37.381332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734592, 41.847298, 37.007759>,  <38.614586, 41.560890, 37.679096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734592, 41.847298, 37.007759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857750, 41.467525, 37.032379>,  <38.931644, 41.239662, 37.047150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857750, 41.467525, 37.032379>,  <38.734592, 41.847298, 37.007759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857750, 41.467525, 37.032379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608147, -0.246145, -0.754699,
		0.731681, 0.194938, -0.653178,
		0.307896, -0.949427, 0.061548,
		38.950119, 41.182697, 37.050842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780025, 41.738552, 36.325771>,  <38.734592, 41.847298, 37.007759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780025, 41.738552, 36.325771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832581, 41.368687, 36.468731>,  <38.864113, 41.146767, 36.554504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832581, 41.368687, 36.468731>,  <38.780025, 41.738552, 36.325771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832581, 41.368687, 36.468731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538056, -0.369312, -0.757697,
		0.832607, -0.092751, -0.546043,
		0.131383, -0.924666, 0.357397,
		38.871994, 41.091286, 36.575951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682938, 41.404411, 35.735039>,  <38.780025, 41.738552, 36.325771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682938, 41.404411, 35.735039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690243, 41.096367, 35.990101>,  <38.694626, 40.911541, 36.143139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690243, 41.096367, 35.990101>,  <38.682938, 41.404411, 35.735039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690243, 41.096367, 35.990101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360453, -0.599942, -0.714244,
		0.932599, -0.216802, -0.288542,
		0.018259, -0.770109, 0.637652,
		38.695721, 40.865334, 36.181396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084785, 40.830441, 35.449020>,  <38.682938, 41.404411, 35.735039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084785, 40.830441, 35.449020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801785, 40.704269, 35.701984>,  <38.631985, 40.628567, 35.853764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801785, 40.704269, 35.701984>,  <39.084785, 40.830441, 35.449020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801785, 40.704269, 35.701984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393187, -0.567885, -0.723125,
		0.587231, -0.760270, 0.277758,
		-0.707505, -0.315431, 0.632408,
		38.589535, 40.609642, 35.891708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905174, 40.131962, 35.252506>,  <39.084785, 40.830441, 35.449020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905174, 40.131962, 35.252506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574944, 40.255322, 35.441528>,  <38.376804, 40.329338, 35.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574944, 40.255322, 35.441528>,  <38.905174, 40.131962, 35.252506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574944, 40.255322, 35.441528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561613, -0.530510, -0.634941,
		0.054880, -0.789588, 0.611179,
		-0.825578, 0.308401, 0.472558,
		38.327271, 40.347843, 35.583294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566158, 39.563828, 35.442471>,  <38.905174, 40.131962, 35.252506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566158, 39.563828, 35.442471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292450, 39.854588, 35.419151>,  <38.128227, 40.029041, 35.405159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292450, 39.854588, 35.419151>,  <38.566158, 39.563828, 35.442471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292450, 39.854588, 35.419151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527773, -0.548815, -0.648272,
		-0.503219, -0.412827, 0.759174,
		-0.684270, 0.726894, -0.058296,
		38.087170, 40.072655, 35.401661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194920, 39.566132, 35.848362>,  <38.566158, 39.563828, 35.442471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194920, 39.566132, 35.848362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137943, 39.960209, 35.886524>,  <39.103756, 40.196655, 35.909420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137943, 39.960209, 35.886524>,  <39.194920, 39.566132, 35.848362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137943, 39.960209, 35.886524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301411, -0.048637, 0.952253,
		0.942795, 0.164398, -0.290021,
		-0.142443, 0.985194, 0.095406,
		39.095211, 40.255768, 35.915146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655327, 39.738567, 36.257488>,  <39.194920, 39.566132, 35.848362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655327, 39.738567, 36.257488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401463, 40.046410, 36.285515>,  <39.249142, 40.231113, 36.302330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401463, 40.046410, 36.285515>,  <39.655327, 39.738567, 36.257488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401463, 40.046410, 36.285515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021110, -0.073364, 0.997082,
		0.772499, 0.634292, 0.030315,
		-0.634665, 0.769604, 0.070064,
		39.211063, 40.277290, 36.306534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111946, 39.344631, 35.823772>,  <39.655327, 39.738567, 36.257488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111946, 39.344631, 35.823772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321270, 39.306122, 35.485096>,  <40.446865, 39.283016, 35.281891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321270, 39.306122, 35.485096>,  <40.111946, 39.344631, 35.823772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321270, 39.306122, 35.485096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585345, 0.762703, 0.275054,
		0.619291, -0.639543, 0.455482,
		0.523306, -0.096275, -0.846689,
		40.478260, 39.277241, 35.231091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713402, 39.195969, 36.173946>,  <40.111946, 39.344631, 35.823772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713402, 39.195969, 36.173946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765770, 39.379543, 35.822437>,  <40.797192, 39.489689, 35.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765770, 39.379543, 35.822437>,  <40.713402, 39.195969, 36.173946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765770, 39.379543, 35.822437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806366, 0.466367, 0.363696,
		0.576743, -0.756226, -0.309015,
		0.130922, 0.458938, -0.878769,
		40.805046, 39.517223, 35.558807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332233, 39.098495, 35.806202>,  <40.713402, 39.195969, 36.173946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332233, 39.098495, 35.806202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208874, 39.448322, 35.656528>,  <41.134857, 39.658218, 35.566723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208874, 39.448322, 35.656528>,  <41.332233, 39.098495, 35.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208874, 39.448322, 35.656528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632040, 0.482368, 0.606504,
		0.710927, -0.049458, -0.701525,
		-0.308397, 0.874571, -0.374188,
		41.116356, 39.710693, 35.544273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920666, 39.500942, 35.605335>,  <41.332233, 39.098495, 35.806202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920666, 39.500942, 35.605335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593853, 39.708809, 35.705254>,  <41.397766, 39.833530, 35.765205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593853, 39.708809, 35.705254>,  <41.920666, 39.500942, 35.605335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593853, 39.708809, 35.705254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483330, 0.381043, 0.788161,
		0.314395, 0.764692, -0.562496,
		-0.817036, 0.519665, 0.249800,
		41.348743, 39.864708, 35.780193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453430, 39.456268, 35.051167>,  <41.920666, 39.500942, 35.605335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453430, 39.456268, 35.051167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374481, 39.182541, 35.331955>,  <42.327114, 39.018307, 35.500427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374481, 39.182541, 35.331955>,  <42.453430, 39.456268, 35.051167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374481, 39.182541, 35.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569001, -0.503128, -0.650461,
		0.798300, -0.527801, -0.290074,
		-0.197370, -0.684315, 0.701967,
		42.315269, 38.977245, 35.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633144, 38.644760, 34.985718>,  <42.453430, 39.456268, 35.051167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633144, 38.644760, 34.985718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288536, 38.763428, 35.150528>,  <42.081772, 38.834629, 35.249413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288536, 38.763428, 35.150528>,  <42.633144, 38.644760, 34.985718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288536, 38.763428, 35.150528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501459, -0.370161, -0.781997,
		-0.079478, -0.880323, 0.467669,
		-0.861523, 0.296669, 0.412026,
		42.030079, 38.852428, 35.274136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298450, 38.039680, 35.230682>,  <42.633144, 38.644760, 34.985718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298450, 38.039680, 35.230682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060894, 38.346409, 35.133293>,  <41.918358, 38.530445, 35.074860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060894, 38.346409, 35.133293>,  <42.298450, 38.039680, 35.230682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060894, 38.346409, 35.133293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546510, -0.606589, -0.577388,
		-0.590431, -0.209858, 0.779327,
		-0.593900, 0.766818, -0.243459,
		41.882725, 38.576454, 35.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750095, 37.929005, 34.644714>,  <42.298450, 38.039680, 35.230682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750095, 37.929005, 34.644714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678116, 37.547890, 34.742550>,  <42.634930, 37.319221, 34.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678116, 37.547890, 34.742550>,  <42.750095, 37.929005, 34.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678116, 37.547890, 34.742550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481801, 0.302150, 0.822541,
		-0.857606, 0.030170, -0.513422,
		-0.179947, -0.952783, 0.244590,
		42.624130, 37.262054, 34.815926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210072, 37.337543, 34.728279>,  <42.750095, 37.929005, 34.644714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210072, 37.337543, 34.728279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187038, 37.185341, 35.097473>,  <43.173218, 37.094021, 35.318989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187038, 37.185341, 35.097473>,  <43.210072, 37.337543, 34.728279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187038, 37.185341, 35.097473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052405, -0.924397, -0.377815,
		0.996964, 0.026612, 0.073172,
		-0.057586, -0.380502, 0.922985,
		43.169762, 37.071190, 35.374371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621590, 36.783199, 34.735554>,  <43.210072, 37.337543, 34.728279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621590, 36.783199, 34.735554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319626, 36.734116, 34.993252>,  <43.138447, 36.704666, 35.147873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319626, 36.734116, 34.993252>,  <43.621590, 36.783199, 34.735554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319626, 36.734116, 34.993252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294784, -0.814023, -0.500468,
		0.585846, -0.567722, 0.578340,
		-0.754909, -0.122712, 0.644247,
		43.093155, 36.697304, 35.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885170, 36.403393, 34.089001>,  <43.621590, 36.783199, 34.735554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885170, 36.403393, 34.089001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988125, 36.093094, 33.858536>,  <44.049896, 35.906914, 33.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988125, 36.093094, 33.858536>,  <43.885170, 36.403393, 34.089001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988125, 36.093094, 33.858536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952613, 0.303732, 0.016605,
		0.162117, -0.553133, 0.817167,
		0.257385, -0.775752, -0.576162,
		44.065342, 35.860367, 33.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345535, 35.861706, 34.244820>,  <43.885170, 36.403393, 34.089001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345535, 35.861706, 34.244820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666149, 35.986416, 34.448914>,  <44.858517, 36.061241, 34.571369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666149, 35.986416, 34.448914>,  <44.345535, 35.861706, 34.244820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666149, 35.986416, 34.448914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486132, -0.836621, -0.252468,
		0.348157, 0.450402, -0.822146,
		0.801537, 0.311773, 0.510230,
		44.906609, 36.079948, 34.601982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007603, 35.881214, 33.786545>,  <44.345535, 35.861706, 34.244820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007603, 35.881214, 33.786545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077057, 35.810780, 34.174122>,  <45.118729, 35.768520, 34.406666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077057, 35.810780, 34.174122>,  <45.007603, 35.881214, 33.786545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077057, 35.810780, 34.174122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489753, -0.838154, -0.240084,
		0.854395, 0.516229, -0.059299,
		0.173640, -0.176085, 0.968939,
		45.129150, 35.757954, 34.464802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684628, 35.948692, 33.943810>,  <45.007603, 35.881214, 33.786545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684628, 35.948692, 33.943810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482990, 35.678688, 34.159309>,  <45.362007, 35.516685, 34.288609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482990, 35.678688, 34.159309>,  <45.684628, 35.948692, 33.943810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482990, 35.678688, 34.159309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479582, -0.737573, -0.475382,
		0.718254, 0.018737, 0.695528,
		-0.504095, -0.675008, 0.538751,
		45.331760, 35.476185, 34.320934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147503, 35.352566, 34.134228>,  <45.684628, 35.948692, 33.943810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147503, 35.352566, 34.134228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759525, 35.255257, 34.136280>,  <45.526737, 35.196873, 34.137512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759525, 35.255257, 34.136280>,  <46.147503, 35.352566, 34.134228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759525, 35.255257, 34.136280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169305, -0.689896, -0.703832,
		0.174762, -0.681810, 0.710348,
		-0.969946, -0.243268, 0.005134,
		45.468540, 35.182278, 34.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473549, 34.733215, 34.123219>,  <46.147503, 35.352566, 34.134228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473549, 34.733215, 34.123219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807217, 34.559319, 34.258961>,  <47.007416, 34.454979, 34.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807217, 34.559319, 34.258961>,  <46.473549, 34.733215, 34.123219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807217, 34.559319, 34.258961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437087, 0.896376, 0.073924,
		-0.336328, 0.086663, 0.937749,
		0.834169, -0.434741, 0.339355,
		47.057468, 34.428898, 34.360767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783665, 35.166813, 34.731327>,  <46.473549, 34.733215, 34.123219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783665, 35.166813, 34.731327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.061905, 34.921444, 34.581738>,  <47.228848, 34.774223, 34.491985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.061905, 34.921444, 34.581738>,  <46.783665, 35.166813, 34.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.061905, 34.921444, 34.581738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716255, 0.632606, 0.294600,
		0.055865, -0.472785, 0.879405,
		0.695599, -0.613420, -0.373975,
		47.270584, 34.737419, 34.469543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258636, 35.173237, 35.245941>,  <46.783665, 35.166813, 34.731327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258636, 35.173237, 35.245941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440994, 35.097492, 34.898079>,  <47.550407, 35.052048, 34.689362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440994, 35.097492, 34.898079>,  <47.258636, 35.173237, 35.245941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440994, 35.097492, 34.898079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852268, 0.374488, 0.365237,
		0.256516, -0.907691, 0.332111,
		0.455893, -0.189359, -0.869658,
		47.577763, 35.040684, 34.637180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834255, 34.653793, 35.375202>,  <47.258636, 35.173237, 35.245941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834255, 34.653793, 35.375202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880241, 34.895893, 35.060127>,  <47.907833, 35.041153, 34.871082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880241, 34.895893, 35.060127>,  <47.834255, 34.653793, 35.375202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.880241, 34.895893, 35.060127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988740, 0.006744, 0.149494,
		0.095793, -0.796007, -0.597659,
		0.114967, 0.605250, -0.787690,
		47.914730, 35.077469, 34.823822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.661491, 37.589951, 27.520895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291084, 37.448059, 27.469275>,  <34.068840, 37.362923, 27.438303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291084, 37.448059, 27.469275>,  <34.661491, 37.589951, 27.520895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291084, 37.448059, 27.469275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156083, 0.048550, 0.986550,
		-0.343697, 0.933706, -0.100326,
		-0.926019, -0.354733, -0.129049,
		34.013279, 37.341640, 27.430559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290443, 37.931282, 27.974064>,  <34.661491, 37.589951, 27.520895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290443, 37.931282, 27.974064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034405, 37.634933, 27.892693>,  <33.880783, 37.457123, 27.843870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034405, 37.634933, 27.892693>,  <34.290443, 37.931282, 27.974064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034405, 37.634933, 27.892693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181505, -0.111460, 0.977053,
		-0.746547, 0.662331, -0.063127,
		-0.640097, -0.740874, -0.203427,
		33.842377, 37.412670, 27.831665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682171, 38.063305, 28.324490>,  <34.290443, 37.931282, 27.974064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682171, 38.063305, 28.324490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694420, 37.669857, 28.253439>,  <33.701771, 37.433788, 28.210808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694420, 37.669857, 28.253439>,  <33.682171, 38.063305, 28.324490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694420, 37.669857, 28.253439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022554, -0.178345, 0.983710,
		-0.999276, -0.026122, -0.027646,
		0.030627, -0.983621, -0.177626,
		33.703609, 37.374771, 28.200151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094734, 37.812023, 28.636192>,  <33.682171, 38.063305, 28.324490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094734, 37.812023, 28.636192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327847, 37.489334, 28.597071>,  <33.467716, 37.295723, 28.573597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327847, 37.489334, 28.597071>,  <33.094734, 37.812023, 28.636192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327847, 37.489334, 28.597071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195943, -0.256304, 0.946528,
		-0.788651, -0.532456, -0.307441,
		0.582783, -0.806721, -0.097804,
		33.502682, 37.247318, 28.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769093, 37.456718, 29.044683>,  <33.094734, 37.812023, 28.636192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769093, 37.456718, 29.044683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125824, 37.282955, 28.994183>,  <33.339863, 37.178699, 28.963882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125824, 37.282955, 28.994183>,  <32.769093, 37.456718, 29.044683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125824, 37.282955, 28.994183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034589, -0.343750, 0.938424,
		-0.451056, -0.832543, -0.321590,
		0.891825, -0.434406, -0.126253,
		33.393372, 37.152634, 28.956306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747684, 36.774578, 29.405621>,  <32.769093, 37.456718, 29.044683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747684, 36.774578, 29.405621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.135895, 36.855118, 29.352634>,  <33.368820, 36.903442, 29.320843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.135895, 36.855118, 29.352634>,  <32.747684, 36.774578, 29.405621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135895, 36.855118, 29.352634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189109, -0.295444, 0.936457,
		0.149418, -0.933901, -0.324811,
		0.970522, 0.201349, -0.132464,
		33.427052, 36.915524, 29.312895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085262, 36.135376, 29.654795>,  <32.747684, 36.774578, 29.405621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085262, 36.135376, 29.654795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.343906, 36.440289, 29.666193>,  <33.499092, 36.623238, 29.673033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.343906, 36.440289, 29.666193>,  <33.085262, 36.135376, 29.654795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343906, 36.440289, 29.666193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346308, -0.326634, 0.879421,
		0.679678, -0.558777, -0.475191,
		0.646613, 0.762285, 0.028497,
		33.537891, 36.668976, 29.674742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661129, 35.880825, 30.113657>,  <33.085262, 36.135376, 29.654795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661129, 35.880825, 30.113657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735298, 36.273697, 30.101395>,  <33.779800, 36.509418, 30.094036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735298, 36.273697, 30.101395>,  <33.661129, 35.880825, 30.113657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735298, 36.273697, 30.101395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344479, -0.035752, 0.938113,
		0.920300, -0.184511, -0.344969,
		0.185426, 0.982180, -0.030657,
		33.790924, 36.568352, 30.092197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275845, 35.866665, 30.401897>,  <33.661129, 35.880825, 30.113657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275845, 35.866665, 30.401897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126152, 36.236954, 30.423735>,  <34.036335, 36.459129, 30.436836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126152, 36.236954, 30.423735>,  <34.275845, 35.866665, 30.401897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126152, 36.236954, 30.423735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471451, 0.139234, 0.870832,
		0.798550, 0.351634, -0.488541,
		-0.374236, 0.925725, 0.054593,
		34.013882, 36.514671, 30.440113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823677, 36.309113, 30.613926>,  <34.275845, 35.866665, 30.401897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823677, 36.309113, 30.613926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503574, 36.531338, 30.704201>,  <34.311512, 36.664673, 30.758366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503574, 36.531338, 30.704201>,  <34.823677, 36.309113, 30.613926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503574, 36.531338, 30.704201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418424, 0.247749, 0.873809,
		0.429546, 0.793704, -0.430726,
		-0.800257, 0.555567, 0.225685,
		34.263496, 36.698009, 30.771906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009331, 37.034863, 30.771408>,  <34.823677, 36.309113, 30.613926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009331, 37.034863, 30.771408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650043, 36.975632, 30.936949>,  <34.434471, 36.940094, 31.036274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650043, 36.975632, 30.936949>,  <35.009331, 37.034863, 30.771408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650043, 36.975632, 30.936949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343000, 0.352654, 0.870624,
		-0.274865, 0.923964, -0.265971,
		-0.898221, -0.148076, 0.413851,
		34.380577, 36.931210, 31.061104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712910, 37.717937, 31.120104>,  <35.009331, 37.034863, 30.771408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712910, 37.717937, 31.120104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538765, 37.403206, 31.295082>,  <34.434277, 37.214367, 31.400070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538765, 37.403206, 31.295082>,  <34.712910, 37.717937, 31.120104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538765, 37.403206, 31.295082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323867, 0.316493, 0.891595,
		-0.839980, 0.529845, 0.117036,
		-0.435366, -0.786827, 0.437447,
		34.408154, 37.167156, 31.426317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457016, 37.978523, 31.729124>,  <34.712910, 37.717937, 31.120104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457016, 37.978523, 31.729124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462402, 37.584732, 31.799110>,  <34.465633, 37.348457, 31.841103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462402, 37.584732, 31.799110>,  <34.457016, 37.978523, 31.729124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462402, 37.584732, 31.799110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161182, 0.174830, 0.971316,
		-0.986833, 0.015120, 0.161035,
		0.013467, -0.984482, 0.174965,
		34.466442, 37.289387, 31.851601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283405, 37.944832, 32.386040>,  <34.457016, 37.978523, 31.729124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283405, 37.944832, 32.386040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427719, 37.573624, 32.348938>,  <34.514309, 37.350899, 32.326675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427719, 37.573624, 32.348938>,  <34.283405, 37.944832, 32.386040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427719, 37.573624, 32.348938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287375, 0.016004, 0.957684,
		-0.887271, -0.372173, 0.272465,
		0.360785, -0.928025, -0.092754,
		34.535954, 37.295216, 32.321114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024078, 37.677750, 32.917484>,  <34.283405, 37.944832, 32.386040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024078, 37.677750, 32.917484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314415, 37.414497, 32.837471>,  <34.488617, 37.256546, 32.789463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314415, 37.414497, 32.837471>,  <34.024078, 37.677750, 32.917484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314415, 37.414497, 32.837471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110384, -0.175588, 0.978256,
		-0.678948, -0.732138, -0.054802,
		0.725841, -0.658135, -0.200032,
		34.532166, 37.217056, 32.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936520, 37.139320, 33.422832>,  <34.024078, 37.677750, 32.917484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936520, 37.139320, 33.422832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301434, 37.047535, 33.287140>,  <34.520382, 36.992466, 33.205723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301434, 37.047535, 33.287140>,  <33.936520, 37.139320, 33.422832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301434, 37.047535, 33.287140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257304, -0.323319, 0.910637,
		-0.318594, -0.918059, -0.235934,
		0.912301, -0.229416, -0.339227,
		34.575119, 36.978695, 33.185368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197575, 36.537052, 33.816860>,  <33.936520, 37.139320, 33.422832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197575, 36.537052, 33.816860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539825, 36.698250, 33.686943>,  <34.745178, 36.794968, 33.608994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539825, 36.698250, 33.686943>,  <34.197575, 36.537052, 33.816860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539825, 36.698250, 33.686943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466640, -0.329133, 0.820925,
		0.223925, -0.853973, -0.469668,
		0.855631, 0.402992, -0.324797,
		34.796516, 36.819149, 33.589504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790249, 35.937656, 33.870407>,  <34.197575, 36.537052, 33.816860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790249, 35.937656, 33.870407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940083, 36.308441, 33.878727>,  <35.029984, 36.530910, 33.883720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940083, 36.308441, 33.878727>,  <34.790249, 35.937656, 33.870407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940083, 36.308441, 33.878727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447779, -0.200499, 0.871375,
		0.811899, -0.317089, -0.490177,
		0.374583, 0.926960, 0.020799,
		35.052456, 36.586529, 33.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498482, 35.897362, 34.119537>,  <34.790249, 35.937656, 33.870407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498482, 35.897362, 34.119537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419163, 36.284027, 34.184341>,  <35.371571, 36.516026, 34.223225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419163, 36.284027, 34.184341>,  <35.498482, 35.897362, 34.119537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419163, 36.284027, 34.184341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528085, -0.033885, 0.848515,
		0.825715, 0.253814, -0.503759,
		-0.198296, 0.966659, 0.162014,
		35.359673, 36.574024, 34.232944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064934, 36.164196, 34.431156>,  <35.498482, 35.897362, 34.119537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064934, 36.164196, 34.431156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829121, 36.477123, 34.511593>,  <35.687634, 36.664879, 34.559853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829121, 36.477123, 34.511593>,  <36.064934, 36.164196, 34.431156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829121, 36.477123, 34.511593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536496, 0.193124, 0.821508,
		0.603844, 0.592185, -0.533562,
		-0.589529, 0.782317, 0.201088,
		35.652264, 36.711819, 34.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441189, 36.774837, 34.578381>,  <36.064934, 36.164196, 34.431156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441189, 36.774837, 34.578381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096531, 36.854664, 34.765034>,  <35.889736, 36.902561, 34.877026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096531, 36.854664, 34.765034>,  <36.441189, 36.774837, 34.578381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096531, 36.854664, 34.765034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507479, 0.349441, 0.787626,
		-0.005876, 0.915458, -0.402370,
		-0.861644, 0.199567, 0.466629,
		35.838039, 36.914536, 34.905022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610596, 37.343262, 34.961193>,  <36.441189, 36.774837, 34.578381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610596, 37.343262, 34.961193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301632, 37.149738, 35.125782>,  <36.116253, 37.033623, 35.224533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301632, 37.149738, 35.125782>,  <36.610596, 37.343262, 34.961193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301632, 37.149738, 35.125782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383868, 0.160510, 0.909331,
		-0.505988, 0.860328, 0.061739,
		-0.772413, -0.483810, 0.411468,
		36.069908, 37.004597, 35.249222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860954, 37.420376, 34.262569>,  <36.610596, 37.343262, 34.961193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860954, 37.420376, 34.262569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205399, 37.622253, 34.287155>,  <37.412064, 37.743382, 34.301907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205399, 37.622253, 34.287155>,  <36.860954, 37.420376, 34.262569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205399, 37.622253, 34.287155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015223, 0.095249, -0.995337,
		-0.508194, 0.858028, 0.074337,
		0.861108, 0.504693, 0.061467,
		37.463730, 37.773663, 34.305595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793823, 37.999260, 33.797642>,  <36.860954, 37.420376, 34.262569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793823, 37.999260, 33.797642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187717, 37.948215, 33.845001>,  <37.424053, 37.917587, 33.873417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187717, 37.948215, 33.845001>,  <36.793823, 37.999260, 33.797642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187717, 37.948215, 33.845001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137633, 0.154308, -0.978390,
		0.106588, 0.979747, 0.169516,
		0.984732, -0.127615, 0.118398,
		37.483135, 37.909931, 33.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117565, 38.440258, 33.309448>,  <36.793823, 37.999260, 33.797642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117565, 38.440258, 33.309448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376816, 38.148663, 33.397552>,  <37.532368, 37.973705, 33.450417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376816, 38.148663, 33.397552>,  <37.117565, 38.440258, 33.309448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376816, 38.148663, 33.397552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302829, -0.018666, -0.952862,
		0.698733, 0.684276, 0.208660,
		0.648126, -0.728984, 0.220261,
		37.571255, 37.929966, 33.463631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603340, 38.647446, 32.812363>,  <37.117565, 38.440258, 33.309448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603340, 38.647446, 32.812363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699665, 38.280815, 32.940048>,  <37.757462, 38.060837, 33.016659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699665, 38.280815, 32.940048>,  <37.603340, 38.647446, 32.812363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699665, 38.280815, 32.940048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408588, -0.202595, -0.889950,
		0.880378, 0.344739, 0.325715,
		0.240812, -0.916575, 0.319216,
		37.771908, 38.005844, 33.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219349, 38.499847, 32.558811>,  <37.603340, 38.647446, 32.812363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219349, 38.499847, 32.558811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064907, 38.140610, 32.643047>,  <37.972244, 37.925068, 32.693588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064907, 38.140610, 32.643047>,  <38.219349, 38.499847, 32.558811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064907, 38.140610, 32.643047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391028, -0.366109, -0.844430,
		0.835478, -0.243690, 0.492537,
		-0.386101, -0.898098, 0.210586,
		37.949078, 37.871181, 32.706223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762791, 37.890278, 32.547653>,  <38.219349, 38.499847, 32.558811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762791, 37.890278, 32.547653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399033, 37.747978, 32.461449>,  <38.180779, 37.662598, 32.409725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399033, 37.747978, 32.461449>,  <38.762791, 37.890278, 32.547653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399033, 37.747978, 32.461449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349207, -0.371544, -0.860238,
		0.225955, -0.857554, 0.462109,
		-0.909395, -0.355746, -0.215511,
		38.126213, 37.641254, 32.396793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933784, 37.331017, 32.175465>,  <38.762791, 37.890278, 32.547653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933784, 37.331017, 32.175465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542580, 37.329540, 32.092056>,  <38.307858, 37.328655, 32.042011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542580, 37.329540, 32.092056>,  <38.933784, 37.331017, 32.175465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542580, 37.329540, 32.092056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179262, -0.525841, -0.831478,
		-0.106576, -0.850574, 0.514941,
		-0.978012, -0.003694, -0.208518,
		38.249176, 37.328430, 32.029499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665535, 36.661026, 31.823969>,  <38.933784, 37.331017, 32.175465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665535, 36.661026, 31.823969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408421, 36.944740, 31.708210>,  <38.254154, 37.114967, 31.638754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408421, 36.944740, 31.708210>,  <38.665535, 36.661026, 31.823969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408421, 36.944740, 31.708210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137886, -0.264487, -0.954481,
		-0.753538, -0.653427, 0.072207,
		-0.642782, 0.709281, -0.289399,
		38.215588, 37.157524, 31.621389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169514, 36.335884, 31.341537>,  <38.665535, 36.661026, 31.823969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169514, 36.335884, 31.341537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099171, 36.725574, 31.285025>,  <38.056965, 36.959389, 31.251118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099171, 36.725574, 31.285025>,  <38.169514, 36.335884, 31.341537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099171, 36.725574, 31.285025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125563, -0.164545, -0.978345,
		-0.976376, -0.154306, 0.151262,
		-0.175854, 0.974225, -0.141282,
		38.046413, 37.017841, 31.242640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665253, 36.327713, 30.827208>,  <38.169514, 36.335884, 31.341537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665253, 36.327713, 30.827208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804657, 36.702129, 30.846708>,  <37.888298, 36.926777, 30.858410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804657, 36.702129, 30.846708>,  <37.665253, 36.327713, 30.827208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804657, 36.702129, 30.846708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249380, 0.142739, -0.957828,
		-0.903522, 0.321652, 0.283175,
		0.348508, 0.936037, 0.048754,
		37.909210, 36.982941, 30.861334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132515, 36.887661, 30.551712>,  <37.665253, 36.327713, 30.827208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132515, 36.887661, 30.551712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501305, 37.040852, 30.528757>,  <37.722580, 37.132767, 30.514984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501305, 37.040852, 30.528757>,  <37.132515, 36.887661, 30.551712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501305, 37.040852, 30.528757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185296, 0.306168, -0.933770,
		-0.340040, 0.871546, 0.353243,
		0.921975, 0.382973, -0.057385,
		37.777897, 37.155743, 30.511541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043839, 37.543716, 30.420525>,  <37.132515, 36.887661, 30.551712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043839, 37.543716, 30.420525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419003, 37.505817, 30.287054>,  <37.644100, 37.483078, 30.206972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419003, 37.505817, 30.287054>,  <37.043839, 37.543716, 30.420525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419003, 37.505817, 30.287054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312387, 0.187404, -0.931286,
		0.150766, 0.977703, 0.146172,
		0.937915, -0.094745, -0.333676,
		37.700378, 37.477394, 30.186951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098644, 38.089668, 29.964365>,  <37.043839, 37.543716, 30.420525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098644, 38.089668, 29.964365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404961, 37.853748, 29.861841>,  <37.588749, 37.712196, 29.800327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404961, 37.853748, 29.861841>,  <37.098644, 38.089668, 29.964365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404961, 37.853748, 29.861841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191214, 0.171702, -0.966414,
		0.614004, 0.789081, 0.018709,
		0.765791, -0.589805, -0.256309,
		37.634697, 37.676807, 29.784948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540005, 38.446835, 29.573566>,  <37.098644, 38.089668, 29.964365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540005, 38.446835, 29.573566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604858, 38.065243, 29.472668>,  <37.643768, 37.836288, 29.412128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604858, 38.065243, 29.472668>,  <37.540005, 38.446835, 29.573566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604858, 38.065243, 29.472668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119594, 0.234749, -0.964671,
		0.979495, 0.186571, -0.076031,
		0.162132, -0.953983, -0.252248,
		37.653500, 37.779049, 29.396994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014805, 38.405697, 28.917892>,  <37.540005, 38.446835, 29.573566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014805, 38.405697, 28.917892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814457, 38.059849, 28.933695>,  <37.694248, 37.852341, 28.943176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814457, 38.059849, 28.933695>,  <38.014805, 38.405697, 28.917892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814457, 38.059849, 28.933695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269721, 0.112550, -0.956338,
		0.822425, -0.489655, -0.289579,
		-0.500868, -0.864622, 0.039507,
		37.664196, 37.800461, 28.945547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972370, 38.195759, 28.218105>,  <38.014805, 38.405697, 28.917892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972370, 38.195759, 28.218105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685921, 37.966801, 28.377871>,  <37.514053, 37.829426, 28.473730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685921, 37.966801, 28.377871>,  <37.972370, 38.195759, 28.218105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685921, 37.966801, 28.377871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520325, 0.056381, -0.852105,
		0.465224, -0.818035, -0.338208,
		-0.716121, -0.572399, 0.399414,
		37.471085, 37.795082, 28.497694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774239, 37.637009, 27.810495>,  <37.972370, 38.195759, 28.218105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774239, 37.637009, 27.810495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449020, 37.662510, 28.041977>,  <37.253891, 37.677811, 28.180866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449020, 37.662510, 28.041977>,  <37.774239, 37.637009, 27.810495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449020, 37.662510, 28.041977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581280, -0.032834, -0.813041,
		-0.032834, -0.997425, 0.063754,
		0.813041, -0.063754, -0.578705,
		37.205109, 37.681637, 28.215588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319981, 37.108196, 27.614357>,  <37.774239, 37.637009, 27.810495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319981, 37.108196, 27.614357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083824, 37.383018, 27.783773>,  <36.942131, 37.547913, 27.885424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083824, 37.383018, 27.783773>,  <37.319981, 37.108196, 27.614357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083824, 37.383018, 27.783773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657816, -0.105541, -0.745747,
		-0.467671, -0.718895, 0.514270,
		-0.590391, 0.687060, 0.423543,
		36.906708, 37.589138, 27.910837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.577820, 36.866673, 27.600283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573124, 37.262531, 27.657488>,  <36.570305, 37.500046, 27.691811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573124, 37.262531, 27.657488>,  <36.577820, 36.866673, 27.600283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573124, 37.262531, 27.657488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705996, 0.093082, -0.702073,
		-0.708119, -0.109208, 0.697597,
		-0.011739, 0.989651, 0.143014,
		36.569603, 37.559425, 27.700392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882286, 36.979412, 27.257420>,  <36.577820, 36.866673, 27.600283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882286, 36.979412, 27.257420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048843, 37.339069, 27.311308>,  <36.148781, 37.554863, 27.343641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048843, 37.339069, 27.311308>,  <35.882286, 36.979412, 27.257420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048843, 37.339069, 27.311308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631346, 0.392586, -0.668789,
		-0.654229, 0.193426, 0.731144,
		0.416398, 0.899145, 0.134722,
		36.173763, 37.608814, 27.351725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360004, 37.515621, 27.404947>,  <35.882286, 36.979412, 27.257420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360004, 37.515621, 27.404947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675900, 37.696789, 27.239450>,  <35.865437, 37.805489, 27.140152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675900, 37.696789, 27.239450>,  <35.360004, 37.515621, 27.404947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675900, 37.696789, 27.239450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549548, 0.222616, -0.805257,
		-0.272614, 0.863309, 0.424710,
		0.789733, 0.452923, -0.413742,
		35.912819, 37.832664, 27.115328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064732, 38.037308, 27.029297>,  <35.360004, 37.515621, 27.404947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064732, 38.037308, 27.029297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427452, 38.009590, 26.862965>,  <35.645084, 37.992958, 26.763166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427452, 38.009590, 26.862965>,  <35.064732, 38.037308, 27.029297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427452, 38.009590, 26.862965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395857, 0.199212, -0.896444,
		0.144957, 0.977503, 0.153214,
		0.906799, -0.069294, -0.415829,
		35.699493, 37.988800, 26.738216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007004, 38.419506, 26.495140>,  <35.064732, 38.037308, 27.029297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007004, 38.419506, 26.495140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358265, 38.245655, 26.415197>,  <35.569023, 38.141346, 26.367231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358265, 38.245655, 26.415197>,  <35.007004, 38.419506, 26.495140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358265, 38.245655, 26.415197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235817, -0.029803, -0.971340,
		0.416212, 0.900119, -0.128664,
		0.878156, -0.434624, -0.199859,
		35.621712, 38.115269, 26.355240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437614, 38.827930, 26.127764>,  <35.007004, 38.419506, 26.495140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437614, 38.827930, 26.127764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584423, 38.466438, 26.039612>,  <35.672508, 38.249542, 25.986721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584423, 38.466438, 26.039612>,  <35.437614, 38.827930, 26.127764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584423, 38.466438, 26.039612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022439, 0.245444, -0.969151,
		0.929940, 0.350759, 0.110363,
		0.367026, -0.903729, -0.220378,
		35.694530, 38.195320, 25.973499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978256, 38.903912, 25.638935>,  <35.437614, 38.827930, 26.127764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978256, 38.903912, 25.638935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825241, 38.537060, 25.594139>,  <35.733433, 38.316948, 25.567261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825241, 38.537060, 25.594139>,  <35.978256, 38.903912, 25.638935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825241, 38.537060, 25.594139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008952, 0.124883, -0.992131,
		0.923898, -0.378521, -0.055982,
		-0.382534, -0.917129, -0.111990,
		35.710480, 38.261921, 25.560541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301521, 38.711544, 25.023096>,  <35.978256, 38.903912, 25.638935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301521, 38.711544, 25.023096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994759, 38.468517, 25.105759>,  <35.810699, 38.322701, 25.155355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994759, 38.468517, 25.105759>,  <36.301521, 38.711544, 25.023096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994759, 38.468517, 25.105759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270351, 0.013819, -0.962662,
		0.582029, -0.794146, -0.174855,
		-0.766911, -0.607569, 0.206655,
		35.764687, 38.286247, 25.167755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454590, 38.195248, 24.547247>,  <36.301521, 38.711544, 25.023096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454590, 38.195248, 24.547247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070145, 38.168068, 24.654314>,  <35.839478, 38.151760, 24.718554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070145, 38.168068, 24.654314>,  <36.454590, 38.195248, 24.547247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070145, 38.168068, 24.654314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265399, -0.040609, -0.963283,
		0.076325, -0.996862, 0.020996,
		-0.961113, -0.067950, 0.267666,
		35.781811, 38.147682, 24.734613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231010, 37.607063, 24.133144>,  <36.454590, 38.195248, 24.547247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231010, 37.607063, 24.133144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917320, 37.833385, 24.235018>,  <35.729107, 37.969177, 24.296141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917320, 37.833385, 24.235018>,  <36.231010, 37.607063, 24.133144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917320, 37.833385, 24.235018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338271, -0.045766, -0.939935,
		-0.520162, -0.823269, 0.227286,
		-0.784222, 0.565803, 0.254682,
		35.682053, 38.003128, 24.311422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741016, 37.239159, 23.843456>,  <36.231010, 37.607063, 24.133144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741016, 37.239159, 23.843456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587910, 37.604206, 23.900894>,  <35.496044, 37.823235, 23.935358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587910, 37.604206, 23.900894>,  <35.741016, 37.239159, 23.843456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587910, 37.604206, 23.900894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365581, -0.006883, -0.930754,
		-0.848432, -0.408761, 0.336270,
		-0.382771, 0.912615, 0.143596,
		35.473080, 37.877991, 23.943974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972965, 37.205887, 23.708366>,  <35.741016, 37.239159, 23.843456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972965, 37.205887, 23.708366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080811, 37.591045, 23.703569>,  <35.145519, 37.822140, 23.700691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080811, 37.591045, 23.703569>,  <34.972965, 37.205887, 23.708366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080811, 37.591045, 23.703569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288976, 0.069023, -0.954845,
		-0.918586, 0.260906, 0.296863,
		0.269615, 0.962894, -0.011992,
		35.161694, 37.879913, 23.699972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472313, 37.548908, 23.316198>,  <34.972965, 37.205887, 23.708366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472313, 37.548908, 23.316198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797768, 37.781448, 23.313757>,  <34.993038, 37.920971, 23.312292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797768, 37.781448, 23.313757>,  <34.472313, 37.548908, 23.316198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797768, 37.781448, 23.313757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130633, 0.172583, -0.976294,
		-0.566512, 0.795142, 0.216362,
		0.813633, 0.581347, -0.006102,
		35.041859, 37.955853, 23.311926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231018, 38.308270, 23.110933>,  <34.472313, 37.548908, 23.316198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231018, 38.308270, 23.110933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617859, 38.304131, 23.009256>,  <34.849964, 38.301647, 22.948250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617859, 38.304131, 23.009256>,  <34.231018, 38.308270, 23.110933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617859, 38.304131, 23.009256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238450, 0.311394, -0.919878,
		0.088672, 0.950225, 0.298681,
		0.967098, -0.010347, -0.254193,
		34.907990, 38.301025, 22.932999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266827, 38.865658, 22.616932>,  <34.231018, 38.308270, 23.110933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266827, 38.865658, 22.616932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607273, 38.662373, 22.564295>,  <34.811543, 38.540401, 22.532713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607273, 38.662373, 22.564295>,  <34.266827, 38.865658, 22.616932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607273, 38.662373, 22.564295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116493, 0.061580, -0.991281,
		0.511888, 0.859025, -0.006792,
		0.851117, -0.508216, -0.131592,
		34.862610, 38.509907, 22.524817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625092, 39.265144, 22.106596>,  <34.266827, 38.865658, 22.616932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625092, 39.265144, 22.106596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753273, 38.886745, 22.087017>,  <34.830181, 38.659706, 22.075270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753273, 38.886745, 22.087017>,  <34.625092, 39.265144, 22.106596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753273, 38.886745, 22.087017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039306, 0.038347, -0.998491,
		0.946450, 0.321890, -0.024895,
		0.320449, -0.946000, -0.048946,
		34.849407, 38.602947, 22.072332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954033, 39.298450, 21.537544>,  <34.625092, 39.265144, 22.106596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954033, 39.298450, 21.537544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947533, 38.901947, 21.589918>,  <34.943630, 38.664043, 21.621342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947533, 38.901947, 21.589918>,  <34.954033, 39.298450, 21.537544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947533, 38.901947, 21.589918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085532, -0.129093, -0.987937,
		0.996203, -0.027256, -0.082686,
		-0.016253, -0.991258, 0.130934,
		34.942657, 38.604568, 21.629198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394680, 39.077854, 20.947741>,  <34.954033, 39.298450, 21.537544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394680, 39.077854, 20.947741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192940, 38.756996, 21.075615>,  <35.071896, 38.564480, 21.152340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192940, 38.756996, 21.075615>,  <35.394680, 39.077854, 20.947741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192940, 38.756996, 21.075615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269985, -0.205172, -0.940751,
		0.820208, -0.560775, -0.113089,
		-0.504348, -0.802144, 0.319685,
		35.041634, 38.516354, 21.171520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592274, 38.430088, 20.501549>,  <35.394680, 39.077854, 20.947741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592274, 38.430088, 20.501549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225697, 38.337757, 20.632303>,  <35.005749, 38.282360, 20.710756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225697, 38.337757, 20.632303>,  <35.592274, 38.430088, 20.501549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225697, 38.337757, 20.632303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302381, -0.135594, -0.943493,
		0.262108, -0.963500, 0.054466,
		-0.916441, -0.230828, 0.326885,
		34.950764, 38.268509, 20.730370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299026, 37.932972, 20.036806>,  <35.592274, 38.430088, 20.501549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299026, 37.932972, 20.036806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968132, 38.051182, 20.227947>,  <34.769596, 38.122108, 20.342632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968132, 38.051182, 20.227947>,  <35.299026, 37.932972, 20.036806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968132, 38.051182, 20.227947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522488, -0.091888, -0.847681,
		-0.206602, -0.950906, 0.230421,
		-0.827238, 0.295525, 0.477853,
		34.719959, 38.139839, 20.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664928, 37.486786, 19.931177>,  <35.299026, 37.932972, 20.036806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664928, 37.486786, 19.931177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480915, 37.829704, 20.023626>,  <34.370506, 38.035454, 20.079096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480915, 37.829704, 20.023626>,  <34.664928, 37.486786, 19.931177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480915, 37.829704, 20.023626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504739, -0.038344, -0.862420,
		-0.730487, -0.513395, 0.450350,
		-0.460031, 0.857296, 0.231121,
		34.342907, 38.086891, 20.092962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972702, 37.328098, 20.009029>,  <34.664928, 37.486786, 19.931177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972702, 37.328098, 20.009029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980591, 37.722229, 19.941212>,  <33.985325, 37.958706, 19.900520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980591, 37.722229, 19.941212>,  <33.972702, 37.328098, 20.009029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980591, 37.722229, 19.941212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675539, -0.111878, -0.728787,
		-0.737060, 0.128909, 0.663419,
		0.019726, 0.985325, -0.169544,
		33.986507, 38.017826, 19.890348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323269, 37.831310, 20.149778>,  <33.972702, 37.328098, 20.009029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323269, 37.831310, 20.149778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571278, 37.917076, 19.847889>,  <33.720081, 37.968536, 19.666756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571278, 37.917076, 19.847889>,  <33.323269, 37.831310, 20.149778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571278, 37.917076, 19.847889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693508, -0.300078, -0.654981,
		-0.366910, 0.929506, -0.037358,
		0.620019, 0.214411, -0.754722,
		33.757282, 37.981400, 19.621473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879688, 38.004459, 19.586966>,  <33.323269, 37.831310, 20.149778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879688, 38.004459, 19.586966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228657, 37.898987, 19.422354>,  <33.438038, 37.835705, 19.323587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228657, 37.898987, 19.422354>,  <32.879688, 38.004459, 19.586966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228657, 37.898987, 19.422354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482952, -0.594447, -0.642954,
		-0.075097, 0.759675, -0.645953,
		0.872421, -0.263680, -0.411527,
		33.490383, 37.819881, 19.298895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285748, 38.471165, 19.745211>,  <32.879688, 38.004459, 19.586966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285748, 38.471165, 19.745211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898140, 38.383606, 19.790970>,  <31.665575, 38.331070, 19.818426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898140, 38.383606, 19.790970>,  <32.285748, 38.471165, 19.745211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898140, 38.383606, 19.790970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088587, 0.124326, 0.988279,
		-0.230555, 0.967795, -0.101083,
		-0.969019, -0.218898, 0.114398,
		31.607435, 38.317936, 19.825289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971039, 39.008949, 20.138330>,  <32.285748, 38.471165, 19.745211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971039, 39.008949, 20.138330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762117, 38.671322, 20.186922>,  <31.636765, 38.468746, 20.216076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762117, 38.671322, 20.186922>,  <31.971039, 39.008949, 20.138330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762117, 38.671322, 20.186922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268374, -0.027484, 0.962923,
		-0.809429, 0.535538, 0.240880,
		-0.522302, -0.844064, 0.121478,
		31.605427, 38.418102, 20.223366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590282, 39.105606, 20.745136>,  <31.971039, 39.008949, 20.138330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590282, 39.105606, 20.745136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.575075, 38.706753, 20.718979>,  <31.565950, 38.467442, 20.703283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.575075, 38.706753, 20.718979>,  <31.590282, 39.105606, 20.745136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575075, 38.706753, 20.718979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082446, -0.068349, 0.994249,
		-0.995870, 0.032407, 0.084809,
		-0.038017, -0.997135, -0.065394,
		31.563669, 38.407612, 20.699360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157639, 38.906506, 21.278917>,  <31.590282, 39.105606, 20.745136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157639, 38.906506, 21.278917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349119, 38.569283, 21.180859>,  <31.464006, 38.366947, 21.122023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349119, 38.569283, 21.180859>,  <31.157639, 38.906506, 21.278917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349119, 38.569283, 21.180859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008943, -0.274520, 0.961540,
		-0.877933, -0.462481, -0.123873,
		0.478700, -0.843060, -0.245146,
		31.492729, 38.316364, 21.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752436, 38.341564, 21.565870>,  <31.157639, 38.906506, 21.278917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752436, 38.341564, 21.565870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139938, 38.257191, 21.513691>,  <31.372440, 38.206566, 21.482384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139938, 38.257191, 21.513691>,  <30.752436, 38.341564, 21.565870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139938, 38.257191, 21.513691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086614, -0.205117, 0.974897,
		-0.232401, -0.955736, -0.180438,
		0.968756, -0.210939, -0.130449,
		31.430565, 38.193913, 21.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837616, 37.708931, 21.986534>,  <30.752436, 38.341564, 21.565870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837616, 37.708931, 21.986534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193895, 37.875656, 21.913958>,  <31.407663, 37.975689, 21.870411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193895, 37.875656, 21.913958>,  <30.837616, 37.708931, 21.986534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193895, 37.875656, 21.913958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218841, -0.043313, 0.974799,
		0.398448, -0.907961, -0.129795,
		0.890701, 0.416811, -0.181441,
		31.461105, 38.000698, 21.859526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255287, 37.217342, 22.247154>,  <30.837616, 37.708931, 21.986534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255287, 37.217342, 22.247154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478586, 37.548817, 22.230967>,  <31.612566, 37.747700, 22.221254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478586, 37.548817, 22.230967>,  <31.255287, 37.217342, 22.247154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478586, 37.548817, 22.230967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315272, -0.166763, 0.934234,
		0.767438, -0.534294, -0.354357,
		0.558249, 0.828686, -0.040467,
		31.646061, 37.797421, 22.218826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804331, 37.020882, 22.500557>,  <31.255287, 37.217342, 22.247154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804331, 37.020882, 22.500557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854036, 37.415745, 22.540701>,  <31.883860, 37.652664, 22.564787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854036, 37.415745, 22.540701>,  <31.804331, 37.020882, 22.500557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854036, 37.415745, 22.540701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466265, -0.147375, 0.872283,
		0.875874, -0.061600, -0.478592,
		0.124265, 0.987161, 0.100360,
		31.891315, 37.711891, 22.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429813, 37.044418, 22.846416>,  <31.804331, 37.020882, 22.500557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429813, 37.044418, 22.846416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313103, 37.423836, 22.895626>,  <32.243076, 37.651485, 22.925152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313103, 37.423836, 22.895626>,  <32.429813, 37.044418, 22.846416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313103, 37.423836, 22.895626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406041, 0.006377, 0.913833,
		0.866024, 0.316588, -0.387007,
		-0.291776, 0.948542, 0.123025,
		32.225571, 37.708397, 22.932533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081585, 37.463623, 23.021484>,  <32.429813, 37.044418, 22.846416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081585, 37.463623, 23.021484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733192, 37.601933, 23.161104>,  <32.524158, 37.684917, 23.244877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733192, 37.601933, 23.161104>,  <33.081585, 37.463623, 23.021484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733192, 37.601933, 23.161104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379657, 0.022709, 0.924849,
		0.311863, 0.938043, -0.151055,
		-0.870978, 0.345775, 0.349052,
		32.471901, 37.705666, 23.265820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307945, 37.974369, 23.504328>,  <33.081585, 37.463623, 23.021484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307945, 37.974369, 23.504328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929409, 37.873844, 23.585598>,  <32.702286, 37.813530, 23.634361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929409, 37.873844, 23.585598>,  <33.307945, 37.974369, 23.504328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929409, 37.873844, 23.585598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214719, -0.019090, 0.976489,
		-0.241523, 0.967718, 0.072027,
		-0.946342, -0.251310, 0.203177,
		32.645508, 37.798450, 23.646551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140732, 38.360134, 24.120546>,  <33.307945, 37.974369, 23.504328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140732, 38.360134, 24.120546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831020, 38.108669, 24.091497>,  <32.645191, 37.957790, 24.074068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831020, 38.108669, 24.091497>,  <33.140732, 38.360134, 24.120546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831020, 38.108669, 24.091497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075895, -0.206169, 0.975569,
		-0.628276, 0.749852, 0.207345,
		-0.774280, -0.628662, -0.072621,
		32.598736, 37.920071, 24.069712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873352, 38.569984, 24.653713>,  <33.140732, 38.360134, 24.120546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873352, 38.569984, 24.653713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726025, 38.206051, 24.577255>,  <32.637627, 37.987690, 24.531380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726025, 38.206051, 24.577255>,  <32.873352, 38.569984, 24.653713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726025, 38.206051, 24.577255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273168, -0.302435, 0.913188,
		-0.888662, 0.284131, 0.359931,
		-0.368320, -0.909837, -0.191146,
		32.615528, 37.933102, 24.519911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473125, 38.365520, 25.208500>,  <32.873352, 38.569984, 24.653713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473125, 38.365520, 25.208500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564491, 38.021748, 25.025545>,  <32.619312, 37.815483, 24.915773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564491, 38.021748, 25.025545>,  <32.473125, 38.365520, 25.208500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564491, 38.021748, 25.025545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338592, -0.370349, 0.864984,
		-0.912787, -0.352445, 0.206403,
		0.228418, -0.859432, -0.457385,
		32.633018, 37.763916, 24.888330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222801, 37.925575, 25.757908>,  <32.473125, 38.365520, 25.208500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222801, 37.925575, 25.757908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464382, 37.726788, 25.508667>,  <32.609333, 37.607513, 25.359123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464382, 37.726788, 25.508667>,  <32.222801, 37.925575, 25.757908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464382, 37.726788, 25.508667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504369, -0.367028, 0.781603,
		-0.617130, -0.786327, 0.028988,
		0.603956, -0.496971, -0.623103,
		32.645569, 37.577698, 25.321735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284821, 37.227020, 25.988535>,  <32.222801, 37.925575, 25.757908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284821, 37.227020, 25.988535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624905, 37.291420, 25.788044>,  <32.828953, 37.330059, 25.667749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624905, 37.291420, 25.788044>,  <32.284821, 37.227020, 25.988535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624905, 37.291420, 25.788044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523916, -0.352064, 0.775605,
		-0.051592, -0.922025, -0.383677,
		0.850206, 0.160999, -0.501227,
		32.879967, 37.339722, 25.637676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557121, 36.565762, 26.012245>,  <32.284821, 37.227020, 25.988535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557121, 36.565762, 26.012245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846321, 36.835506, 25.952234>,  <33.019840, 36.997353, 25.916227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846321, 36.835506, 25.952234>,  <32.557121, 36.565762, 26.012245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846321, 36.835506, 25.952234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396159, -0.226790, 0.889733,
		0.565978, -0.702710, -0.431124,
		0.722998, 0.674363, -0.150027,
		33.063221, 37.037815, 25.907227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121517, 36.290398, 26.169941>,  <32.557121, 36.565762, 26.012245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121517, 36.290398, 26.169941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228577, 36.674263, 26.204369>,  <33.292812, 36.904583, 26.225025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228577, 36.674263, 26.204369>,  <33.121517, 36.290398, 26.169941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228577, 36.674263, 26.204369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559354, -0.227492, 0.797101,
		0.784530, -0.165200, -0.597680,
		0.267649, 0.959665, 0.086069,
		33.308872, 36.962162, 26.230190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857704, 36.330715, 26.242844>,  <33.121517, 36.290398, 26.169941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857704, 36.330715, 26.242844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724991, 36.664421, 26.418991>,  <33.645363, 36.864643, 26.524679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724991, 36.664421, 26.418991>,  <33.857704, 36.330715, 26.242844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724991, 36.664421, 26.418991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547827, -0.209637, 0.809900,
		0.767986, 0.509959, -0.387477,
		-0.331786, 0.834262, 0.440368,
		33.625454, 36.914700, 26.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430241, 36.526596, 26.600590>,  <33.857704, 36.330715, 26.242844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430241, 36.526596, 26.600590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126263, 36.730133, 26.762360>,  <33.943874, 36.852257, 26.859421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126263, 36.730133, 26.762360>,  <34.430241, 36.526596, 26.600590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126263, 36.730133, 26.762360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398091, -0.127482, 0.908445,
		0.513814, 0.851367, -0.105687,
		-0.759947, 0.508844, 0.404424,
		33.898277, 36.882786, 26.883686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.924610, 37.203671, 29.762625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559258, 37.306374, 29.889000>,  <38.340046, 37.367996, 29.964825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559258, 37.306374, 29.889000>,  <38.924610, 37.203671, 29.762625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559258, 37.306374, 29.889000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329557, 0.010666, 0.944076,
		0.239027, 0.966417, -0.094357,
		-0.913378, 0.256756, 0.315940,
		38.285244, 37.383400, 29.983782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964863, 37.679592, 30.328434>,  <38.924610, 37.203671, 29.762625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964863, 37.679592, 30.328434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595627, 37.537331, 30.386976>,  <38.374084, 37.451973, 30.422102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595627, 37.537331, 30.386976>,  <38.964863, 37.679592, 30.328434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595627, 37.537331, 30.386976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105859, 0.130881, 0.985730,
		-0.369735, 0.925408, -0.083165,
		-0.923087, -0.355655, 0.146354,
		38.318699, 37.430634, 30.430882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583080, 38.099449, 30.756529>,  <38.964863, 37.679592, 30.328434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583080, 38.099449, 30.756529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393169, 37.749287, 30.792866>,  <38.279224, 37.539188, 30.814667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393169, 37.749287, 30.792866>,  <38.583080, 38.099449, 30.756529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393169, 37.749287, 30.792866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155695, 0.185129, 0.970302,
		-0.866227, 0.446530, -0.224191,
		-0.474773, -0.875408, 0.090841,
		38.250736, 37.486664, 30.820118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877792, 38.287106, 31.038908>,  <38.583080, 38.099449, 30.756529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877792, 38.287106, 31.038908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943527, 37.896641, 31.095617>,  <37.982967, 37.662361, 31.129642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943527, 37.896641, 31.095617>,  <37.877792, 38.287106, 31.038908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943527, 37.896641, 31.095617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292663, 0.089002, 0.952064,
		-0.941987, -0.197954, -0.271060,
		0.164340, -0.976162, 0.141773,
		37.992828, 37.603790, 31.138149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378933, 38.139015, 31.462088>,  <37.877792, 38.287106, 31.038908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378933, 38.139015, 31.462088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624504, 37.830158, 31.527689>,  <37.771847, 37.644844, 31.567051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624504, 37.830158, 31.527689>,  <37.378933, 38.139015, 31.462088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624504, 37.830158, 31.527689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269320, -0.009591, 0.963003,
		-0.741999, -0.635382, -0.213841,
		0.613926, -0.772139, 0.164005,
		37.808681, 37.598518, 31.576891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004665, 37.648754, 31.897490>,  <37.378933, 38.139015, 31.462088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004665, 37.648754, 31.897490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386658, 37.531658, 31.916723>,  <37.615852, 37.461399, 31.928263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386658, 37.531658, 31.916723>,  <37.004665, 37.648754, 31.897490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386658, 37.531658, 31.916723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071176, -0.068743, 0.995092,
		-0.288001, -0.953717, -0.086484,
		0.954981, -0.292743, 0.048084,
		37.673153, 37.443836, 31.931149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998653, 36.991989, 32.278042>,  <37.004665, 37.648754, 31.897490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998653, 36.991989, 32.278042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347279, 37.181934, 32.326843>,  <37.556454, 37.295902, 32.356125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347279, 37.181934, 32.326843>,  <36.998653, 36.991989, 32.278042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347279, 37.181934, 32.326843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159963, 0.040188, 0.986305,
		0.463454, -0.879143, 0.110986,
		0.871563, 0.474861, 0.122005,
		37.608749, 37.324394, 32.363445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444572, 36.707947, 32.806576>,  <36.998653, 36.991989, 32.278042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444572, 36.707947, 32.806576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608009, 37.071987, 32.778938>,  <37.706070, 37.290409, 32.762356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608009, 37.071987, 32.778938>,  <37.444572, 36.707947, 32.806576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608009, 37.071987, 32.778938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031365, 0.061658, 0.997604,
		0.912178, -0.409780, -0.003352,
		0.408591, 0.910098, -0.069095,
		37.730587, 37.345016, 32.758209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901550, 36.728359, 33.306202>,  <37.444572, 36.707947, 32.806576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901550, 36.728359, 33.306202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866917, 37.118690, 33.225941>,  <37.846134, 37.352890, 33.177784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866917, 37.118690, 33.225941>,  <37.901550, 36.728359, 33.306202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866917, 37.118690, 33.225941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096169, 0.192283, 0.976616,
		0.991592, 0.103858, 0.077195,
		-0.086587, 0.975828, -0.200654,
		37.840942, 37.411438, 33.165745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514740, 37.079510, 33.600746>,  <37.901550, 36.728359, 33.306202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514740, 37.079510, 33.600746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221378, 37.350990, 33.585304>,  <38.045361, 37.513878, 33.576038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221378, 37.350990, 33.585304>,  <38.514740, 37.079510, 33.600746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221378, 37.350990, 33.585304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047656, 0.107980, 0.993010,
		0.678124, 0.726435, -0.111537,
		-0.733401, 0.678699, -0.038605,
		38.001358, 37.554600, 33.573723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718246, 37.626484, 34.037827>,  <38.514740, 37.079510, 33.600746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718246, 37.626484, 34.037827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329559, 37.706020, 33.986874>,  <38.096348, 37.753742, 33.956303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329559, 37.706020, 33.986874>,  <38.718246, 37.626484, 34.037827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329559, 37.706020, 33.986874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047145, 0.365231, 0.929722,
		0.231390, 0.909434, -0.345527,
		-0.971718, 0.198839, -0.127386,
		38.038044, 37.765671, 33.948658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638298, 38.278542, 34.185776>,  <38.718246, 37.626484, 34.037827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638298, 38.278542, 34.185776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279575, 38.115124, 34.253685>,  <38.064342, 38.017071, 34.294430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279575, 38.115124, 34.253685>,  <38.638298, 38.278542, 34.185776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279575, 38.115124, 34.253685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094281, 0.198446, 0.975567,
		-0.432256, 0.890903, -0.139450,
		-0.896808, -0.408548, 0.169774,
		38.010532, 37.992561, 34.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198158, 38.765652, 34.611557>,  <38.638298, 38.278542, 34.185776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198158, 38.765652, 34.611557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.074203, 38.389553, 34.668003>,  <37.999832, 38.163895, 34.701870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.074203, 38.389553, 34.668003>,  <38.198158, 38.765652, 34.611557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074203, 38.389553, 34.668003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065824, 0.126846, 0.989736,
		-0.948493, 0.315992, 0.022583,
		-0.309884, -0.940244, 0.141113,
		37.981239, 38.107479, 34.710339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667381, 38.661819, 35.146858>,  <38.198158, 38.765652, 34.611557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667381, 38.661819, 35.146858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852848, 38.307541, 35.137501>,  <37.964127, 38.094971, 35.131886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852848, 38.307541, 35.137501>,  <37.667381, 38.661819, 35.146858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852848, 38.307541, 35.137501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148192, 0.051490, 0.987617,
		-0.873529, -0.461392, 0.155128,
		0.463666, -0.885701, -0.023397,
		37.991947, 38.041832, 35.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352066, 39.151226, 35.607952>,  <37.667381, 38.661819, 35.146858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352066, 39.151226, 35.607952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387711, 39.534046, 35.497601>,  <37.409100, 39.763741, 35.431389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387711, 39.534046, 35.497601>,  <37.352066, 39.151226, 35.607952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387711, 39.534046, 35.497601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717118, -0.130570, -0.684612,
		-0.691231, 0.258846, 0.674684,
		0.089115, 0.957053, -0.275877,
		37.414444, 39.821163, 35.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734589, 39.280701, 35.603508>,  <37.352066, 39.151226, 35.607952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734589, 39.280701, 35.603508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.876186, 39.578869, 35.377575>,  <36.961143, 39.757771, 35.242016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.876186, 39.578869, 35.377575>,  <36.734589, 39.280701, 35.603508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876186, 39.578869, 35.377575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715612, -0.172962, -0.676745,
		-0.602153, 0.643767, 0.472203,
		0.353993, 0.745418, -0.564837,
		36.982384, 39.802494, 35.208122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219566, 39.691185, 35.551704>,  <36.734589, 39.280701, 35.603508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219566, 39.691185, 35.551704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452354, 39.802124, 35.245922>,  <36.592026, 39.868687, 35.062454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452354, 39.802124, 35.245922>,  <36.219566, 39.691185, 35.551704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452354, 39.802124, 35.245922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794287, -0.007738, -0.607493,
		-0.174404, 0.960738, 0.215792,
		0.581972, 0.277350, -0.764451,
		36.626945, 39.885330, 35.016586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928154, 40.313313, 35.149002>,  <36.219566, 39.691185, 35.551704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928154, 40.313313, 35.149002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.168728, 40.159416, 34.868931>,  <36.313072, 40.067078, 34.700890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.168728, 40.159416, 34.868931>,  <35.928154, 40.313313, 35.149002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168728, 40.159416, 34.868931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735934, 0.074286, -0.672966,
		0.310932, 0.920030, -0.238467,
		0.601433, -0.384743, -0.700179,
		36.349159, 40.043995, 34.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995636, 40.759838, 34.508568>,  <35.928154, 40.313313, 35.149002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995636, 40.759838, 34.508568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072411, 40.380276, 34.408375>,  <36.118473, 40.152538, 34.348259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072411, 40.380276, 34.408375>,  <35.995636, 40.759838, 34.508568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072411, 40.380276, 34.408375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726792, 0.034079, -0.686011,
		0.659496, 0.313714, -0.683117,
		0.191932, -0.948906, -0.250480,
		36.129990, 40.095604, 34.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996979, 40.751232, 33.795128>,  <35.995636, 40.759838, 34.508568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996979, 40.751232, 33.795128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939793, 40.361744, 33.866043>,  <35.905483, 40.128052, 33.908592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939793, 40.361744, 33.866043>,  <35.996979, 40.751232, 33.795128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939793, 40.361744, 33.866043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675621, -0.034891, -0.736423,
		0.723256, -0.225062, -0.652877,
		-0.142961, -0.973719, 0.177291,
		35.896904, 40.069630, 33.919231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127422, 40.485828, 33.162678>,  <35.996979, 40.751232, 33.795128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127422, 40.485828, 33.162678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.915489, 40.223118, 33.377312>,  <35.788330, 40.065491, 33.506092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.915489, 40.223118, 33.377312>,  <36.127422, 40.485828, 33.162678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915489, 40.223118, 33.377312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613388, -0.140176, -0.777243,
		0.585690, -0.740944, -0.328588,
		-0.529833, -0.656775, 0.536585,
		35.756538, 40.026085, 33.538288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053661, 39.893784, 32.781422>,  <36.127422, 40.485828, 33.162678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053661, 39.893784, 32.781422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.765129, 39.831367, 33.051338>,  <35.592010, 39.793919, 33.213287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.765129, 39.831367, 33.051338>,  <36.053661, 39.893784, 32.781422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765129, 39.831367, 33.051338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644679, -0.204813, -0.736505,
		0.253131, -0.966283, 0.047140,
		-0.721327, -0.156042, 0.674787,
		35.548729, 39.784554, 33.253773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856270, 39.277287, 32.688660>,  <36.053661, 39.893784, 32.781422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856270, 39.277287, 32.688660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552071, 39.470966, 32.861725>,  <35.369553, 39.587173, 32.965565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552071, 39.470966, 32.861725>,  <35.856270, 39.277287, 32.688660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552071, 39.470966, 32.861725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593403, -0.247681, -0.765851,
		-0.263661, -0.839171, 0.475685,
		-0.760497, 0.484197, 0.432663,
		35.323921, 39.616226, 32.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185783, 38.807735, 32.694378>,  <35.856270, 39.277287, 32.688660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185783, 38.807735, 32.694378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073875, 39.190178, 32.729237>,  <35.006729, 39.419643, 32.750153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073875, 39.190178, 32.729237>,  <35.185783, 38.807735, 32.694378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073875, 39.190178, 32.729237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594587, -0.101279, -0.797627,
		-0.753787, -0.274970, 0.596822,
		-0.279769, 0.956103, 0.087150,
		34.989944, 39.477009, 32.755383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701996, 38.796886, 32.310768>,  <35.185783, 38.807735, 32.694378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701996, 38.796886, 32.310768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725052, 39.195004, 32.341927>,  <34.738888, 39.433872, 32.360622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725052, 39.195004, 32.341927>,  <34.701996, 38.796886, 32.310768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725052, 39.195004, 32.341927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618565, 0.096849, -0.779742,
		-0.783616, -0.003234, 0.621237,
		0.057644, 0.995294, 0.077892,
		34.742344, 39.493591, 32.365295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033669, 39.001671, 32.334808>,  <34.701996, 38.796886, 32.310768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033669, 39.001671, 32.334808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250656, 39.308804, 32.198475>,  <34.380848, 39.493084, 32.116676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250656, 39.308804, 32.198475>,  <34.033669, 39.001671, 32.334808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250656, 39.308804, 32.198475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630243, 0.103713, -0.769440,
		-0.555450, 0.632203, 0.540181,
		0.542465, 0.767830, -0.340834,
		34.413395, 39.539154, 32.096226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569801, 39.267277, 31.983398>,  <34.033669, 39.001671, 32.334808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569801, 39.267277, 31.983398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.900333, 39.455124, 31.859047>,  <34.098652, 39.567833, 31.784435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.900333, 39.455124, 31.859047>,  <33.569801, 39.267277, 31.983398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900333, 39.455124, 31.859047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427080, 0.162666, -0.889462,
		-0.367136, 0.867756, 0.334979,
		0.826326, 0.469616, -0.310880,
		34.148232, 39.596008, 31.765783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380428, 39.977093, 31.717127>,  <33.569801, 39.267277, 31.983398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380428, 39.977093, 31.717127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721279, 39.878109, 31.532671>,  <33.925789, 39.818718, 31.421997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721279, 39.878109, 31.532671>,  <33.380428, 39.977093, 31.717127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721279, 39.878109, 31.532671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409309, 0.233958, -0.881890,
		0.326119, 0.940228, 0.098075,
		0.852123, -0.247458, -0.461141,
		33.976917, 39.803871, 31.394329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549870, 40.754902, 31.843737>,  <33.380428, 39.977093, 31.717127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549870, 40.754902, 31.843737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229763, 40.950653, 31.982346>,  <33.037697, 41.068104, 32.065510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229763, 40.950653, 31.982346>,  <33.549870, 40.754902, 31.843737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229763, 40.950653, 31.982346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280819, -0.204737, 0.937669,
		0.529823, 0.847697, 0.026417,
		-0.800268, 0.489380, 0.346524,
		32.989681, 41.097466, 32.086304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841370, 41.093212, 32.511562>,  <33.549870, 40.754902, 31.843737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841370, 41.093212, 32.511562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.442894, 41.058727, 32.516945>,  <33.203808, 41.038036, 32.520172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.442894, 41.058727, 32.516945>,  <33.841370, 41.093212, 32.511562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442894, 41.058727, 32.516945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043885, -0.361779, 0.931230,
		-0.075417, 0.928269, 0.364183,
		-0.996186, -0.086213, 0.013453,
		33.144039, 41.032864, 32.520981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605644, 41.493935, 33.157318>,  <33.841370, 41.093212, 32.511562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605644, 41.493935, 33.157318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.291145, 41.259007, 33.080509>,  <33.102448, 41.118050, 33.034424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.291145, 41.259007, 33.080509>,  <33.605644, 41.493935, 33.157318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291145, 41.259007, 33.080509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020306, -0.335153, 0.941945,
		-0.617577, 0.736703, 0.275439,
		-0.786248, -0.587317, -0.192023,
		33.055271, 41.082813, 33.022903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101841, 41.662071, 33.763588>,  <33.605644, 41.493935, 33.157318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101841, 41.662071, 33.763588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.973480, 41.321213, 33.598240>,  <32.896465, 41.116699, 33.499031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.973480, 41.321213, 33.598240>,  <33.101841, 41.662071, 33.763588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973480, 41.321213, 33.598240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120546, -0.396154, 0.910237,
		-0.939409, 0.341927, 0.024405,
		-0.320903, -0.852143, -0.413369,
		32.877209, 41.065571, 33.474228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515385, 41.508160, 34.037815>,  <33.101841, 41.662071, 33.763588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515385, 41.508160, 34.037815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.641075, 41.153263, 33.902718>,  <32.716492, 40.940327, 33.821659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.641075, 41.153263, 33.902718>,  <32.515385, 41.508160, 34.037815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641075, 41.153263, 33.902718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139717, -0.395109, 0.907947,
		-0.939010, -0.238115, -0.248117,
		0.314229, -0.887238, -0.337742,
		32.735344, 40.887093, 33.801395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161922, 41.078728, 34.395824>,  <32.515385, 41.508160, 34.037815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161922, 41.078728, 34.395824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.446072, 40.830730, 34.262566>,  <32.616562, 40.681934, 34.182610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.446072, 40.830730, 34.262566>,  <32.161922, 41.078728, 34.395824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446072, 40.830730, 34.262566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019015, -0.490072, 0.871475,
		-0.703572, -0.612734, -0.359921,
		0.710369, -0.619989, -0.333150,
		32.659184, 40.644733, 34.162621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890497, 40.529118, 34.481781>,  <32.161922, 41.078728, 34.395824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890497, 40.529118, 34.481781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283382, 40.455265, 34.495476>,  <32.519112, 40.410954, 34.503693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283382, 40.455265, 34.495476>,  <31.890497, 40.529118, 34.481781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283382, 40.455265, 34.495476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103427, -0.379751, 0.919289,
		-0.156723, -0.906478, -0.392092,
		0.982212, -0.184626, 0.034239,
		32.578045, 40.399876, 34.505749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946268, 39.856098, 34.739998>,  <31.890497, 40.529118, 34.481781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946268, 39.856098, 34.739998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.332981, 39.951767, 34.776051>,  <32.565010, 40.009167, 34.797684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.332981, 39.951767, 34.776051>,  <31.946268, 39.856098, 34.739998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332981, 39.951767, 34.776051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057996, -0.548728, 0.833987,
		0.248926, -0.801058, -0.544372,
		0.966784, 0.239172, 0.090135,
		32.623016, 40.023518, 34.803089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401016, 39.221004, 34.807327>,  <31.946268, 39.856098, 34.739998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401016, 39.221004, 34.807327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620483, 39.514359, 34.967880>,  <32.752163, 39.690372, 35.064213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620483, 39.514359, 34.967880>,  <32.401016, 39.221004, 34.807327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620483, 39.514359, 34.967880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051679, -0.508937, 0.859251,
		0.834441, -0.450701, -0.317138,
		0.548669, 0.733384, 0.401386,
		32.785084, 39.734375, 35.088295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985241, 38.871262, 35.235390>,  <32.401016, 39.221004, 34.807327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985241, 38.871262, 35.235390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.959217, 39.256184, 35.341019>,  <32.943604, 39.487137, 35.404396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.959217, 39.256184, 35.341019>,  <32.985241, 38.871262, 35.235390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959217, 39.256184, 35.341019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096311, -0.257343, 0.961509,
		0.993223, 0.087986, -0.075939,
		-0.065057, 0.962306, 0.264073,
		32.939701, 39.544876, 35.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579525, 39.044613, 35.688171>,  <32.985241, 38.871262, 35.235390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579525, 39.044613, 35.688171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.305588, 39.316269, 35.793823>,  <33.141224, 39.479263, 35.857212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.305588, 39.316269, 35.793823>,  <33.579525, 39.044613, 35.688171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305588, 39.316269, 35.793823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200289, -0.173072, 0.964329,
		0.700624, 0.713316, -0.017496,
		-0.684844, 0.679136, 0.264128,
		33.100136, 39.520008, 35.873062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755901, 39.205952, 36.355942>,  <33.579525, 39.044613, 35.688171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755901, 39.205952, 36.355942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389809, 39.365726, 36.334778>,  <33.170155, 39.461594, 36.322079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389809, 39.365726, 36.334778>,  <33.755901, 39.205952, 36.355942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389809, 39.365726, 36.334778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059341, -0.003751, 0.998231,
		0.398534, 0.916752, 0.027136,
		-0.915232, 0.399439, -0.052906,
		33.115238, 39.485558, 36.318905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.313019, 42.234444, 28.508902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933113, 42.149139, 28.600529>,  <32.705170, 42.097958, 28.655504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933113, 42.149139, 28.600529>,  <33.313019, 42.234444, 28.508902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933113, 42.149139, 28.600529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235318, -0.004049, 0.971910,
		-0.206346, 0.976986, 0.054031,
		-0.949761, -0.213264, 0.229067,
		32.648186, 42.085159, 28.669249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186050, 42.608768, 29.083317>,  <33.313019, 42.234444, 28.508902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186050, 42.608768, 29.083317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880516, 42.351276, 29.101923>,  <32.697197, 42.196781, 29.113087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880516, 42.351276, 29.101923>,  <33.186050, 42.608768, 29.083317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880516, 42.351276, 29.101923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111784, -0.060970, 0.991860,
		-0.635659, 0.762816, 0.118530,
		-0.763834, -0.643735, 0.046514,
		32.651367, 42.158157, 29.115877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742847, 42.891090, 29.590988>,  <33.186050, 42.608768, 29.083317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742847, 42.891090, 29.590988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667843, 42.500225, 29.550987>,  <32.622841, 42.265705, 29.526987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667843, 42.500225, 29.550987>,  <32.742847, 42.891090, 29.590988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667843, 42.500225, 29.550987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204228, -0.138366, 0.969095,
		-0.960797, 0.161291, 0.225509,
		-0.187509, -0.977159, -0.100002,
		32.611591, 42.207077, 29.520987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254490, 42.829327, 30.030407>,  <32.742847, 42.891090, 29.590988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254490, 42.829327, 30.030407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397488, 42.458321, 29.986750>,  <32.483284, 42.235718, 29.960556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397488, 42.458321, 29.986750>,  <32.254490, 42.829327, 30.030407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397488, 42.458321, 29.986750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010210, -0.120739, 0.992632,
		-0.933861, -0.353742, -0.052633,
		0.357491, -0.927517, -0.109142,
		32.504734, 42.180065, 29.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893059, 42.402809, 30.533857>,  <32.254490, 42.829327, 30.030407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893059, 42.402809, 30.533857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213703, 42.179867, 30.447350>,  <32.406090, 42.046101, 30.395445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213703, 42.179867, 30.447350>,  <31.893059, 42.402809, 30.533857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213703, 42.179867, 30.447350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062821, -0.281217, 0.957586,
		-0.594540, -0.781195, -0.190412,
		0.801608, -0.557361, -0.216271,
		32.454185, 42.012657, 30.382469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687275, 41.760925, 30.631313>,  <31.893059, 42.402809, 30.533857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687275, 41.760925, 30.631313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086121, 41.748898, 30.659193>,  <32.325428, 41.741680, 30.675920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086121, 41.748898, 30.659193>,  <31.687275, 41.760925, 30.631313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086121, 41.748898, 30.659193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074751, -0.548740, 0.832644,
		0.013206, -0.835452, -0.549405,
		0.997115, -0.030072, 0.069698,
		32.385254, 41.739876, 30.680101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824905, 41.115932, 30.900675>,  <31.687275, 41.760925, 30.631313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824905, 41.115932, 30.900675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162144, 41.317963, 30.974533>,  <32.364487, 41.439178, 31.018848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162144, 41.317963, 30.974533>,  <31.824905, 41.115932, 30.900675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162144, 41.317963, 30.974533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107979, -0.495359, 0.861951,
		0.526812, -0.706769, -0.472172,
		0.843095, 0.505071, 0.184645,
		32.415073, 41.469482, 31.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162655, 40.572979, 31.205481>,  <31.824905, 41.115932, 30.900675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162655, 40.572979, 31.205481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352539, 40.914005, 31.292925>,  <32.466469, 41.118622, 31.345390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352539, 40.914005, 31.292925>,  <32.162655, 40.572979, 31.205481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352539, 40.914005, 31.292925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252659, -0.369927, 0.894046,
		0.843099, -0.369178, -0.391015,
		0.474709, 0.852562, 0.218609,
		32.494953, 41.169773, 31.358507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862045, 40.411549, 31.507917>,  <32.162655, 40.572979, 31.205481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862045, 40.411549, 31.507917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768490, 40.776638, 31.641924>,  <32.712357, 40.995689, 31.722328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768490, 40.776638, 31.641924>,  <32.862045, 40.411549, 31.507917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768490, 40.776638, 31.641924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220662, -0.285748, 0.932554,
		0.946892, 0.292040, -0.134570,
		-0.233890, 0.912722, 0.335014,
		32.698322, 41.050453, 31.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385746, 40.480663, 30.991932>,  <32.862045, 40.411549, 31.507917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385746, 40.480663, 30.991932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680538, 40.215599, 30.938650>,  <33.857414, 40.056561, 30.906681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680538, 40.215599, 30.938650>,  <33.385746, 40.480663, 30.991932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680538, 40.215599, 30.938650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043258, 0.150425, -0.987675,
		0.674527, 0.733660, 0.082195,
		0.736981, -0.662658, -0.133203,
		33.901634, 40.016800, 30.898689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884502, 40.794571, 30.639671>,  <33.385746, 40.480663, 30.991932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884502, 40.794571, 30.639671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943245, 40.403149, 30.581892>,  <33.978493, 40.168297, 30.547224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943245, 40.403149, 30.581892>,  <33.884502, 40.794571, 30.639671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943245, 40.403149, 30.581892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083517, 0.157777, -0.983936,
		0.985625, 0.132438, 0.104897,
		0.146861, -0.978553, -0.144448,
		33.987305, 40.109581, 30.538557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535152, 40.714111, 30.123901>,  <33.884502, 40.794571, 30.639671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535152, 40.714111, 30.123901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314823, 40.381924, 30.090656>,  <34.182625, 40.182610, 30.070709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314823, 40.381924, 30.090656>,  <34.535152, 40.714111, 30.123901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314823, 40.381924, 30.090656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038408, 0.074251, -0.996499,
		0.833737, -0.552088, -0.009003,
		-0.550824, -0.830473, -0.083110,
		34.149574, 40.132782, 30.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686695, 40.521442, 29.507975>,  <34.535152, 40.714111, 30.123901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686695, 40.521442, 29.507975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360039, 40.297600, 29.564453>,  <34.164043, 40.163296, 29.598339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360039, 40.297600, 29.564453>,  <34.686695, 40.521442, 29.507975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360039, 40.297600, 29.564453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196019, 0.038833, -0.979831,
		0.542834, -0.827850, -0.141406,
		-0.816645, -0.559604, 0.141194,
		34.115044, 40.129719, 29.606812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695358, 40.016117, 29.070059>,  <34.686695, 40.521442, 29.507975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695358, 40.016117, 29.070059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 39.984322, 29.152071>,  <34.071022, 39.965244, 29.201279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 39.984322, 29.152071>,  <34.695358, 40.016117, 29.070059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305149, 39.984322, 29.152071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212644, 0.103419, -0.971641,
		0.056028, -0.991457, -0.117790,
		-0.975522, -0.079486, 0.205033,
		34.012493, 39.960476, 29.213581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441647, 39.596889, 28.553009>,  <34.695358, 40.016117, 29.070059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441647, 39.596889, 28.553009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123913, 39.808765, 28.671984>,  <33.933273, 39.935890, 28.743368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123913, 39.808765, 28.671984>,  <34.441647, 39.596889, 28.553009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123913, 39.808765, 28.671984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284620, 0.108055, -0.952531,
		-0.536682, -0.841283, 0.064928,
		-0.794332, 0.529686, 0.297437,
		33.885612, 39.967670, 28.761215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787098, 39.351517, 28.317924>,  <34.441647, 39.596889, 28.553009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787098, 39.351517, 28.317924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782249, 39.748966, 28.362768>,  <33.779343, 39.987434, 28.389673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782249, 39.748966, 28.362768>,  <33.787098, 39.351517, 28.317924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782249, 39.748966, 28.362768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251692, 0.105474, -0.962043,
		-0.967731, -0.039875, 0.248808,
		-0.012118, 0.993622, 0.112107,
		33.778614, 40.047054, 28.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353210, 39.571850, 27.694235>,  <33.787098, 39.351517, 28.317924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353210, 39.571850, 27.694235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461525, 39.924900, 27.847933>,  <33.526512, 40.136730, 27.940151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461525, 39.924900, 27.847933>,  <33.353210, 39.571850, 27.694235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461525, 39.924900, 27.847933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077215, 0.417786, -0.905258,
		-0.959539, 0.215458, 0.181282,
		0.270782, 0.882628, 0.384246,
		33.542759, 40.189690, 27.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102726, 40.072018, 27.185024>,  <33.353210, 39.571850, 27.694235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102726, 40.072018, 27.185024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337215, 40.286251, 27.428167>,  <33.477909, 40.414791, 27.574053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337215, 40.286251, 27.428167>,  <33.102726, 40.072018, 27.185024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337215, 40.286251, 27.428167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218692, 0.617832, -0.755286,
		-0.780075, 0.575699, 0.245059,
		0.586223, 0.535587, 0.607856,
		33.513081, 40.446926, 27.610525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035824, 40.761757, 26.959850>,  <33.102726, 40.072018, 27.185024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035824, 40.761757, 26.959850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368107, 40.771938, 27.182299>,  <33.567478, 40.778046, 27.315767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368107, 40.771938, 27.182299>,  <33.035824, 40.761757, 26.959850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368107, 40.771938, 27.182299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480057, 0.473086, -0.738739,
		-0.281896, 0.880649, 0.380779,
		0.830711, 0.025452, 0.556123,
		33.617321, 40.779575, 27.349136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255520, 41.466663, 26.984776>,  <33.035824, 40.761757, 26.959850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255520, 41.466663, 26.984776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590672, 41.256626, 27.044428>,  <33.791763, 41.130604, 27.080219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590672, 41.256626, 27.044428>,  <33.255520, 41.466663, 26.984776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590672, 41.256626, 27.044428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383601, 0.372051, -0.845238,
		0.388342, 0.765414, 0.513159,
		0.837879, -0.525090, 0.149131,
		33.842033, 41.099098, 27.089167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830124, 42.004753, 26.769640>,  <33.255520, 41.466663, 26.984776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830124, 42.004753, 26.769640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009838, 41.647633, 26.756685>,  <34.117668, 41.433361, 26.748913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009838, 41.647633, 26.756685>,  <33.830124, 42.004753, 26.769640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009838, 41.647633, 26.756685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394479, 0.230778, -0.889454,
		0.801578, 0.386844, 0.455876,
		0.449287, -0.892800, -0.032385,
		34.144623, 41.379791, 26.746969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521912, 42.124290, 26.550287>,  <33.830124, 42.004753, 26.769640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521912, 42.124290, 26.550287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430523, 41.747154, 26.453249>,  <34.375690, 41.520874, 26.395027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430523, 41.747154, 26.453249>,  <34.521912, 42.124290, 26.550287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430523, 41.747154, 26.453249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262160, 0.180398, -0.948013,
		0.937589, -0.280193, 0.205959,
		-0.228472, -0.942840, -0.242595,
		34.361980, 41.464302, 26.380470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034477, 41.942917, 26.066534>,  <34.521912, 42.124290, 26.550287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034477, 41.942917, 26.066534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738842, 41.676563, 26.025835>,  <34.561462, 41.516750, 26.001415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738842, 41.676563, 26.025835>,  <35.034477, 41.942917, 26.066534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738842, 41.676563, 26.025835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103264, 0.037262, -0.993956,
		0.665646, -0.745128, 0.041222,
		-0.739088, -0.665880, -0.101748,
		34.517117, 41.476799, 25.995310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.046267, 36.548546, 26.232738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.164732, 36.926064, 26.291433>,  <30.235811, 37.152576, 26.326651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.164732, 36.926064, 26.291433>,  <30.046267, 36.548546, 26.232738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164732, 36.926064, 26.291433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437971, -0.270720, 0.857258,
		0.848804, -0.189623, -0.493534,
		0.296166, 0.943797, 0.146739,
		30.253582, 37.209202, 26.335455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851088, 36.609131, 26.489590>,  <30.046267, 36.548546, 26.232738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851088, 36.609131, 26.489590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.649738, 36.931190, 26.615038>,  <30.528929, 37.124424, 26.690306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.649738, 36.931190, 26.615038>,  <30.851088, 36.609131, 26.489590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649738, 36.931190, 26.615038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425088, -0.085244, 0.901129,
		0.752274, 0.586920, -0.299348,
		-0.503373, 0.805145, 0.313619,
		30.498726, 37.172733, 26.709124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301939, 36.901859, 26.989132>,  <30.851088, 36.609131, 26.489590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301939, 36.901859, 26.989132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.938034, 37.040035, 27.081223>,  <30.719690, 37.122940, 27.136477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.938034, 37.040035, 27.081223>,  <31.301939, 36.901859, 26.989132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938034, 37.040035, 27.081223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199213, -0.123273, 0.972172,
		0.364204, 0.930310, 0.043334,
		-0.909763, 0.345436, 0.230227,
		30.665106, 37.143665, 27.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443180, 37.423939, 27.426844>,  <31.301939, 36.901859, 26.989132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443180, 37.423939, 27.426844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061115, 37.322296, 27.487631>,  <30.831877, 37.261311, 27.524103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061115, 37.322296, 27.487631>,  <31.443180, 37.423939, 27.426844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061115, 37.322296, 27.487631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174122, -0.066957, 0.982445,
		-0.239469, 0.964856, 0.108200,
		-0.955163, -0.254106, 0.151969,
		30.774567, 37.246063, 27.533222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278099, 37.852318, 27.973942>,  <31.443180, 37.423939, 27.426844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278099, 37.852318, 27.973942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.012159, 37.553684, 27.983597>,  <30.852596, 37.374504, 27.989389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.012159, 37.553684, 27.983597>,  <31.278099, 37.852318, 27.973942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012159, 37.553684, 27.983597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075686, -0.035184, 0.996511,
		-0.743133, 0.664356, 0.079899,
		-0.664849, -0.746588, 0.024136,
		30.812704, 37.329708, 27.990837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925804, 38.080349, 28.488789>,  <31.278099, 37.852318, 27.973942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925804, 38.080349, 28.488789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.839880, 37.690754, 28.459949>,  <30.788326, 37.456997, 28.442646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.839880, 37.690754, 28.459949>,  <30.925804, 38.080349, 28.488789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839880, 37.690754, 28.459949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075449, -0.090149, 0.993066,
		-0.973738, 0.207879, 0.092851,
		-0.214808, -0.973992, -0.072097,
		30.775438, 37.398556, 28.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583042, 37.953846, 29.071207>,  <30.925804, 38.080349, 28.488789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583042, 37.953846, 29.071207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.714371, 37.595387, 28.951797>,  <30.793167, 37.380310, 28.880152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.714371, 37.595387, 28.951797>,  <30.583042, 37.953846, 29.071207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714371, 37.595387, 28.951797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234565, -0.228792, 0.944793,
		-0.914978, -0.380219, 0.135089,
		0.328321, -0.896152, -0.298526,
		30.812866, 37.326542, 28.862240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205505, 37.490715, 29.450724>,  <30.583042, 37.953846, 29.071207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205505, 37.490715, 29.450724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547670, 37.316120, 29.339188>,  <30.752970, 37.211365, 29.272266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547670, 37.316120, 29.339188>,  <30.205505, 37.490715, 29.450724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547670, 37.316120, 29.339188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187555, -0.240779, 0.952286,
		-0.482799, -0.866894, -0.124100,
		0.855411, -0.436487, -0.278838,
		30.804295, 37.185173, 29.255537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141167, 36.882778, 29.689962>,  <30.205505, 37.490715, 29.450724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141167, 36.882778, 29.689962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532991, 36.944847, 29.638765>,  <30.768085, 36.982086, 29.608047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532991, 36.944847, 29.638765>,  <30.141167, 36.882778, 29.689962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532991, 36.944847, 29.638765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170818, -0.305735, 0.936668,
		0.106212, -0.939387, -0.325992,
		0.979561, 0.155170, -0.127992,
		30.826860, 36.991398, 29.600368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469450, 36.366169, 30.048983>,  <30.141167, 36.882778, 29.689962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469450, 36.366169, 30.048983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.781685, 36.612213, 30.004581>,  <30.969027, 36.759838, 29.977942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.781685, 36.612213, 30.004581>,  <30.469450, 36.366169, 30.048983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781685, 36.612213, 30.004581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405547, -0.363282, 0.838783,
		0.475618, -0.699761, -0.533030,
		0.780589, 0.615110, -0.111003,
		31.015862, 36.796745, 29.971281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018646, 35.941608, 30.231569>,  <30.469450, 36.366169, 30.048983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018646, 35.941608, 30.231569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.158073, 36.314880, 30.266617>,  <31.241730, 36.538845, 30.287645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.158073, 36.314880, 30.266617>,  <31.018646, 35.941608, 30.231569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158073, 36.314880, 30.266617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492983, -0.262039, 0.829640,
		0.797164, -0.245990, -0.551379,
		0.348566, 0.933180, 0.087620,
		31.262644, 36.594833, 30.292902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804834, 35.963211, 30.370665>,  <31.018646, 35.941608, 30.231569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804834, 35.963211, 30.370665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.633734, 36.299252, 30.504082>,  <31.531073, 36.500877, 30.584131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.633734, 36.299252, 30.504082>,  <31.804834, 35.963211, 30.370665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633734, 36.299252, 30.504082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483557, -0.099077, 0.869688,
		0.763675, 0.533299, -0.363858,
		-0.427754, 0.840105, 0.333543,
		31.505407, 36.551285, 30.604145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382214, 36.352631, 30.621637>,  <31.804834, 35.963211, 30.370665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382214, 36.352631, 30.621637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.075947, 36.533329, 30.804800>,  <31.892185, 36.641747, 30.914698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.075947, 36.533329, 30.804800>,  <32.382214, 36.352631, 30.621637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075947, 36.533329, 30.804800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531956, 0.044490, 0.845602,
		0.361622, 0.891038, -0.274372,
		-0.765671, 0.451743, 0.457905,
		31.846245, 36.668850, 30.942171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755955, 36.812675, 31.092916>,  <32.382214, 36.352631, 30.621637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755955, 36.812675, 31.092916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383041, 36.799072, 31.236967>,  <32.159294, 36.790913, 31.323399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383041, 36.799072, 31.236967>,  <32.755955, 36.812675, 31.092916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383041, 36.799072, 31.236967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360498, -0.169450, 0.917239,
		0.029834, 0.984952, 0.170234,
		-0.932283, -0.034004, 0.360129,
		32.103355, 36.788872, 31.345005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225613, 37.384003, 31.083134>,  <32.755955, 36.812675, 31.092916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225613, 37.384003, 31.083134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536465, 37.155899, 30.976641>,  <33.722977, 37.019035, 30.912745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536465, 37.155899, 30.976641>,  <33.225613, 37.384003, 31.083134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536465, 37.155899, 30.976641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197637, 0.180498, -0.963514,
		0.597507, 0.801389, 0.027566,
		0.777126, -0.570259, -0.266233,
		33.769604, 36.984821, 30.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609848, 37.734715, 30.628769>,  <33.225613, 37.384003, 31.083134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609848, 37.734715, 30.628769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746403, 37.365227, 30.559258>,  <33.828335, 37.143536, 30.517551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746403, 37.365227, 30.559258>,  <33.609848, 37.734715, 30.628769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746403, 37.365227, 30.559258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114584, 0.142607, -0.983125,
		0.932913, 0.355537, -0.057159,
		0.341386, -0.923719, -0.173779,
		33.848820, 37.088112, 30.507124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081699, 37.812466, 30.097012>,  <33.609848, 37.734715, 30.628769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081699, 37.812466, 30.097012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981930, 37.425400, 30.081993>,  <33.922070, 37.193161, 30.072981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981930, 37.425400, 30.081993>,  <34.081699, 37.812466, 30.097012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981930, 37.425400, 30.081993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029343, 0.046307, -0.998496,
		0.967951, -0.247944, -0.039944,
		-0.249421, -0.967667, -0.037547,
		33.907104, 37.135101, 30.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617729, 37.471230, 29.718384>,  <34.081699, 37.812466, 30.097012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617729, 37.471230, 29.718384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287716, 37.246330, 29.695789>,  <34.089706, 37.111389, 29.682232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287716, 37.246330, 29.695789>,  <34.617729, 37.471230, 29.718384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287716, 37.246330, 29.695789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030552, 0.055434, -0.997995,
		0.564252, -0.825109, -0.028557,
		-0.825037, -0.562248, -0.056487,
		34.040203, 37.077656, 29.678843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648117, 37.130386, 29.196924>,  <34.617729, 37.471230, 29.718384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648117, 37.130386, 29.196924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257317, 37.052399, 29.231474>,  <34.022839, 37.005608, 29.252203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257317, 37.052399, 29.231474>,  <34.648117, 37.130386, 29.196924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257317, 37.052399, 29.231474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066638, -0.105614, -0.992172,
		0.202562, -0.975107, 0.090193,
		-0.977000, -0.194966, 0.086373,
		33.964218, 36.993908, 29.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635345, 36.602680, 28.866739>,  <34.648117, 37.130386, 29.196924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635345, 36.602680, 28.866739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.266609, 36.756962, 28.881916>,  <34.045368, 36.849533, 28.891022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.266609, 36.756962, 28.881916>,  <34.635345, 36.602680, 28.866739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266609, 36.756962, 28.881916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128181, -0.211025, -0.969040,
		-0.365759, -0.898163, 0.243972,
		-0.921840, 0.385708, 0.037943,
		33.990055, 36.872673, 28.893299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221703, 36.182636, 28.450970>,  <34.635345, 36.602680, 28.866739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221703, 36.182636, 28.450970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999218, 36.510704, 28.504557>,  <33.865726, 36.707546, 28.536709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999218, 36.510704, 28.504557>,  <34.221703, 36.182636, 28.450970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999218, 36.510704, 28.504557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267767, -0.024268, -0.963178,
		-0.786719, -0.571605, 0.233112,
		-0.556215, 0.820170, 0.133965,
		33.832352, 36.756756, 28.544746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744247, 36.087852, 27.946199>,  <34.221703, 36.182636, 28.450970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744247, 36.087852, 27.946199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.704716, 36.476128, 28.033831>,  <33.680996, 36.709091, 28.086411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.704716, 36.476128, 28.033831>,  <33.744247, 36.087852, 27.946199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704716, 36.476128, 28.033831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240584, 0.190318, -0.951787,
		-0.965584, -0.146769, 0.214724,
		-0.098827, 0.970689, 0.219079,
		33.675068, 36.767334, 28.099554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113380, 36.317329, 27.680595>,  <33.744247, 36.087852, 27.946199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113380, 36.317329, 27.680595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.359081, 36.631451, 27.711548>,  <33.506500, 36.819923, 27.730120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.359081, 36.631451, 27.711548>,  <33.113380, 36.317329, 27.680595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359081, 36.631451, 27.711548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155594, 0.216668, -0.963766,
		-0.773618, 0.579955, 0.255278,
		0.614252, 0.785307, 0.077381,
		33.543358, 36.867043, 27.734762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795452, 36.865967, 27.346846>,  <33.113380, 36.317329, 27.680595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795452, 36.865967, 27.346846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180634, 36.973362, 27.356932>,  <33.411743, 37.037800, 27.362984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180634, 36.973362, 27.356932>,  <32.795452, 36.865967, 27.346846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180634, 36.973362, 27.356932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069763, 0.338337, -0.938436,
		-0.260493, 0.901909, 0.344533,
		0.962952, 0.268492, 0.025215,
		33.469521, 37.053909, 27.364496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914642, 37.603233, 27.311966>,  <32.795452, 36.865967, 27.346846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914642, 37.603233, 27.311966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228786, 37.400543, 27.169735>,  <33.417274, 37.278931, 27.084396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228786, 37.400543, 27.169735>,  <32.914642, 37.603233, 27.311966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228786, 37.400543, 27.169735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245227, 0.272739, -0.930310,
		0.568392, 0.817828, 0.089937,
		0.785363, -0.506726, -0.355576,
		33.464394, 37.248524, 27.063063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136539, 38.015633, 26.711981>,  <32.914642, 37.603233, 27.311966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136539, 38.015633, 26.711981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.344913, 37.678139, 26.660217>,  <33.469936, 37.475643, 26.629160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.344913, 37.678139, 26.660217>,  <33.136539, 38.015633, 26.711981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344913, 37.678139, 26.660217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060248, 0.114883, -0.991550,
		0.851468, 0.524329, 0.009013,
		0.520934, -0.843730, -0.129409,
		33.501194, 37.425018, 26.621395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712479, 38.192551, 26.206331>,  <33.136539, 38.015633, 26.711981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712479, 38.192551, 26.206331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.635101, 37.800106, 26.206680>,  <33.588676, 37.564640, 26.206890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.635101, 37.800106, 26.206680>,  <33.712479, 38.192551, 26.206331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635101, 37.800106, 26.206680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239376, 0.046336, -0.969821,
		0.951462, -0.187812, -0.243818,
		-0.193442, -0.981111, 0.000870,
		33.577068, 37.505772, 26.206942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131039, 37.845341, 25.693348>,  <33.712479, 38.192551, 26.206331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131039, 37.845341, 25.693348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.798100, 37.629425, 25.743679>,  <33.598335, 37.499878, 25.773878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.798100, 37.629425, 25.743679>,  <34.131039, 37.845341, 25.693348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798100, 37.629425, 25.743679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216319, 0.107351, -0.970403,
		0.510304, -0.834928, -0.206119,
		-0.832344, -0.539788, 0.125829,
		33.548397, 37.467487, 25.781427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745125, 37.502110, 25.287573>,  <34.131039, 37.845341, 25.693348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745125, 37.502110, 25.287573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070572, 37.731297, 25.248102>,  <35.265839, 37.868809, 25.224421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070572, 37.731297, 25.248102>,  <34.745125, 37.502110, 25.287573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070572, 37.731297, 25.248102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200050, -0.116534, 0.972831,
		0.545899, -0.811253, -0.209435,
		0.813618, 0.572965, -0.098676,
		35.314659, 37.903187, 25.218500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353241, 36.999374, 25.449306>,  <34.745125, 37.502110, 25.287573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353241, 36.999374, 25.449306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446556, 37.386803, 25.483818>,  <35.502544, 37.619259, 25.504524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446556, 37.386803, 25.483818>,  <35.353241, 36.999374, 25.449306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446556, 37.386803, 25.483818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536512, -0.202205, 0.819310,
		0.811007, -0.144843, -0.566822,
		0.233286, 0.968573, 0.086279,
		35.516541, 37.677376, 25.509703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104729, 37.058163, 25.695272>,  <35.353241, 36.999374, 25.449306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104729, 37.058163, 25.695272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924065, 37.396271, 25.809486>,  <35.815666, 37.599136, 25.878014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924065, 37.396271, 25.809486>,  <36.104729, 37.058163, 25.695272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924065, 37.396271, 25.809486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532081, -0.001704, 0.846692,
		0.716167, 0.534342, -0.448981,
		-0.451658, 0.845266, 0.285534,
		35.788567, 37.649849, 25.895147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614132, 37.337559, 26.060711>,  <36.104729, 37.058163, 25.695272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614132, 37.337559, 26.060711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309067, 37.583481, 26.141060>,  <36.126026, 37.731033, 26.189268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309067, 37.583481, 26.141060>,  <36.614132, 37.337559, 26.060711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309067, 37.583481, 26.141060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415624, 0.227894, 0.880523,
		0.495577, 0.755032, -0.429336,
		-0.762667, 0.614810, 0.200870,
		36.080265, 37.767925, 26.201321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900440, 37.959679, 26.261898>,  <36.614132, 37.337559, 26.060711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900440, 37.959679, 26.261898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531067, 37.949188, 26.415041>,  <36.309441, 37.942894, 26.506926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531067, 37.949188, 26.415041>,  <36.900440, 37.959679, 26.261898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531067, 37.949188, 26.415041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379008, 0.094080, 0.920599,
		-0.060165, 0.995219, -0.076936,
		-0.923436, -0.026228, 0.382856,
		36.254036, 37.941319, 26.529898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956417, 38.476128, 26.678038>,  <36.900440, 37.959679, 26.261898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956417, 38.476128, 26.678038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637238, 38.278294, 26.815828>,  <36.445728, 38.159595, 26.898502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637238, 38.278294, 26.815828>,  <36.956417, 38.476128, 26.678038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637238, 38.278294, 26.815828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372980, 0.043767, 0.926807,
		-0.473460, 0.868028, 0.149546,
		-0.797949, -0.494583, 0.344478,
		36.397854, 38.129917, 26.919172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866707, 38.686394, 27.361303>,  <36.956417, 38.476128, 26.678038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866707, 38.686394, 27.361303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650219, 38.350079, 27.356201>,  <36.520329, 38.148289, 27.353140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650219, 38.350079, 27.356201>,  <36.866707, 38.686394, 27.361303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650219, 38.350079, 27.356201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221409, -0.157123, 0.962440,
		-0.811211, 0.518064, 0.271195,
		-0.541217, -0.840786, -0.012756,
		36.487854, 38.097843, 27.352375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350300, 38.794170, 27.938913>,  <36.866707, 38.686394, 27.361303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350300, 38.794170, 27.938913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446850, 38.420792, 27.832764>,  <36.504780, 38.196766, 27.769073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446850, 38.420792, 27.832764>,  <36.350300, 38.794170, 27.938913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446850, 38.420792, 27.832764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400339, -0.153326, 0.903449,
		-0.884007, -0.324307, 0.336685,
		0.241372, -0.933443, -0.265373,
		36.519260, 38.140759, 27.753151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216251, 38.488823, 28.567080>,  <36.350300, 38.794170, 27.938913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216251, 38.488823, 28.567080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434334, 38.219238, 28.367670>,  <36.565182, 38.057487, 28.248024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434334, 38.219238, 28.367670>,  <36.216251, 38.488823, 28.567080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434334, 38.219238, 28.367670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502054, -0.213727, 0.838011,
		-0.671338, -0.707172, 0.221843,
		0.545204, -0.673965, -0.498521,
		36.597897, 38.017048, 28.218113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236362, 37.862705, 28.968859>,  <36.216251, 38.488823, 28.567080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236362, 37.862705, 28.968859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 37.817268, 28.715570>,  <36.726341, 37.790005, 28.563597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 37.817268, 28.715570>,  <36.236362, 37.862705, 28.968859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542599, 37.817268, 28.715570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600732, -0.225981, 0.766846,
		-0.230249, -0.967480, -0.104732,
		0.765576, -0.113650, -0.633228,
		36.772274, 37.783192, 28.525604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518890, 37.143948, 29.064260>,  <36.236362, 37.862705, 28.968859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518890, 37.143948, 29.064260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815228, 37.357246, 28.900894>,  <36.993031, 37.485226, 28.802874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815228, 37.357246, 28.900894>,  <36.518890, 37.143948, 29.064260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815228, 37.357246, 28.900894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609563, -0.278369, 0.742256,
		0.282114, -0.798849, -0.531273,
		0.740841, 0.533246, -0.408417,
		37.037479, 37.517220, 28.778370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076668, 36.669132, 28.992390>,  <36.518890, 37.143948, 29.064260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076668, 36.669132, 28.992390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227806, 37.039478, 28.993120>,  <37.318489, 37.261684, 28.993559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227806, 37.039478, 28.993120>,  <37.076668, 36.669132, 28.992390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227806, 37.039478, 28.993120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534864, -0.219888, 0.815825,
		0.755747, -0.307279, -0.578297,
		0.377846, 0.925867, 0.001827,
		37.341160, 37.317238, 28.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836334, 36.563313, 29.090893>,  <37.076668, 36.669132, 28.992390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836334, 36.563313, 29.090893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781639, 36.950893, 29.173292>,  <37.748821, 37.183441, 29.222733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781639, 36.950893, 29.173292>,  <37.836334, 36.563313, 29.090893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781639, 36.950893, 29.173292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522855, -0.106031, 0.845802,
		0.841383, 0.223362, -0.492122,
		-0.136740, 0.968951, 0.205999,
		37.740616, 37.241577, 29.235092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472736, 36.858593, 29.296427>,  <37.836334, 36.563313, 29.090893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472736, 36.858593, 29.296427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203407, 37.098801, 29.468943>,  <38.041809, 37.242924, 29.572453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203407, 37.098801, 29.468943>,  <38.472736, 36.858593, 29.296427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203407, 37.098801, 29.468943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538653, -0.001135, 0.842527,
		0.506442, 0.799610, -0.322707,
		-0.673327, 0.600518, 0.431288,
		38.001408, 37.278957, 29.598330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.361835, 40.949379, 25.406599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 40.988026, 25.454695>,  <34.729492, 41.011211, 25.483551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 40.988026, 25.454695>,  <35.361835, 40.949379, 25.406599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966621, 40.988026, 25.454695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136433, -0.183768, -0.973455,
		-0.071951, -0.978210, 0.194750,
		-0.988033, 0.096611, 0.120238,
		34.670212, 41.017010, 25.490767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026932, 40.319588, 25.184206>,  <35.361835, 40.949379, 25.406599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026932, 40.319588, 25.184206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759987, 40.614483, 25.142042>,  <34.599819, 40.791420, 25.116745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759987, 40.614483, 25.142042>,  <35.026932, 40.319588, 25.184206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759987, 40.614483, 25.142042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089856, -0.220213, -0.971304,
		-0.739296, -0.638737, 0.213206,
		-0.667359, 0.737239, -0.105408,
		34.559780, 40.835655, 25.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599655, 40.070660, 24.768400>,  <35.026932, 40.319588, 25.184206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599655, 40.070660, 24.768400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513515, 40.460541, 24.744480>,  <34.461834, 40.694469, 24.730127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513515, 40.460541, 24.744480>,  <34.599655, 40.070660, 24.768400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513515, 40.460541, 24.744480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342240, -0.132683, -0.930197,
		-0.914603, -0.179848, 0.362156,
		-0.215346, 0.974705, -0.059801,
		34.448914, 40.752953, 24.726540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930126, 40.045834, 24.338541>,  <34.599655, 40.070660, 24.768400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930126, 40.045834, 24.338541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052063, 40.425320, 24.305023>,  <34.125225, 40.653011, 24.284912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052063, 40.425320, 24.305023>,  <33.930126, 40.045834, 24.338541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052063, 40.425320, 24.305023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162746, -0.034801, -0.986054,
		-0.938396, 0.314225, 0.143790,
		0.304838, 0.948711, -0.083796,
		34.143513, 40.709934, 24.279884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371784, 40.388092, 23.934275>,  <33.930126, 40.045834, 24.338541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371784, 40.388092, 23.934275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679810, 40.638073, 23.882996>,  <33.864624, 40.788059, 23.852228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679810, 40.638073, 23.882996>,  <33.371784, 40.388092, 23.934275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679810, 40.638073, 23.882996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178803, 0.018528, -0.983710,
		-0.612394, 0.780446, 0.126011,
		0.770067, 0.624949, -0.128199,
		33.910831, 40.825558, 23.844536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185936, 40.976215, 23.469749>,  <33.371784, 40.388092, 23.934275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185936, 40.976215, 23.469749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585632, 40.988064, 23.459675>,  <33.825451, 40.995174, 23.453630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585632, 40.988064, 23.459675>,  <33.185936, 40.976215, 23.469749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585632, 40.988064, 23.459675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029449, 0.153681, -0.987682,
		-0.025388, 0.987677, 0.154437,
		0.999244, 0.029623, -0.025185,
		33.885406, 40.996952, 23.452120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432522, 41.571892, 23.346994>,  <33.185936, 40.976215, 23.469749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432522, 41.571892, 23.346994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735970, 41.333885, 23.240826>,  <33.918037, 41.191082, 23.177124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735970, 41.333885, 23.240826>,  <33.432522, 41.571892, 23.346994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735970, 41.333885, 23.240826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221848, 0.147132, -0.963917,
		0.612602, 0.790128, -0.020388,
		0.758618, -0.595021, -0.265422,
		33.963554, 41.155380, 23.161200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549042, 41.774708, 22.704336>,  <33.432522, 41.571892, 23.346994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549042, 41.774708, 22.704336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730396, 41.418335, 22.693869>,  <33.839207, 41.204510, 22.687588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730396, 41.418335, 22.693869>,  <33.549042, 41.774708, 22.704336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730396, 41.418335, 22.693869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208656, -0.077549, -0.974909,
		0.866549, 0.447467, -0.221058,
		0.453382, -0.890932, -0.026167,
		33.866409, 41.151054, 22.686018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907703, 41.768818, 22.103035>,  <33.549042, 41.774708, 22.704336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907703, 41.768818, 22.103035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895134, 41.379185, 22.192631>,  <33.887592, 41.145405, 22.246387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895134, 41.379185, 22.192631>,  <33.907703, 41.768818, 22.103035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895134, 41.379185, 22.192631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063006, -0.221723, -0.973072,
		0.997519, -0.044685, -0.054407,
		-0.031419, -0.974085, 0.223988,
		33.885708, 41.086960, 22.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486183, 41.415714, 21.740446>,  <33.907703, 41.768818, 22.103035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486183, 41.415714, 21.740446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179180, 41.167946, 21.806475>,  <33.994980, 41.019283, 21.846092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179180, 41.167946, 21.806475>,  <34.486183, 41.415714, 21.740446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179180, 41.167946, 21.806475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109154, -0.127463, -0.985819,
		0.631680, -0.774640, 0.030216,
		-0.767506, -0.619424, 0.165071,
		33.948929, 40.982121, 21.855995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575806, 40.882629, 21.190992>,  <34.486183, 41.415714, 21.740446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575806, 40.882629, 21.190992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200993, 40.867241, 21.329842>,  <33.976105, 40.858009, 21.413151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200993, 40.867241, 21.329842>,  <34.575806, 40.882629, 21.190992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200993, 40.867241, 21.329842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338235, -0.147673, -0.929403,
		0.087016, -0.988288, 0.125361,
		-0.937030, -0.038472, 0.347123,
		33.919884, 40.855701, 21.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298870, 40.338745, 20.858994>,  <34.575806, 40.882629, 21.190992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298870, 40.338745, 20.858994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961067, 40.513325, 20.983137>,  <33.758385, 40.618073, 21.057623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961067, 40.513325, 20.983137>,  <34.298870, 40.338745, 20.858994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961067, 40.513325, 20.983137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339424, 0.012061, -0.940556,
		-0.414245, -0.899650, 0.137955,
		-0.844507, 0.436446, 0.310359,
		33.707714, 40.644257, 21.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748329, 39.948814, 20.533058>,  <34.298870, 40.338745, 20.858994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748329, 39.948814, 20.533058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624043, 40.319973, 20.615488>,  <33.549469, 40.542667, 20.664946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624043, 40.319973, 20.615488>,  <33.748329, 39.948814, 20.533058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624043, 40.319973, 20.615488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218323, 0.141338, -0.965587,
		-0.925088, -0.345019, 0.158663,
		-0.310721, 0.927893, 0.206075,
		33.530827, 40.598339, 20.677311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781197, 40.066559, 19.721869>,  <33.748329, 39.948814, 20.533058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781197, 40.066559, 19.721869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085125, 40.164772, 19.962660>,  <34.267483, 40.223701, 20.107136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085125, 40.164772, 19.962660>,  <33.781197, 40.066559, 19.721869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085125, 40.164772, 19.962660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642112, -0.138474, -0.754000,
		-0.101775, 0.959446, -0.262877,
		0.759825, 0.245535, 0.601979,
		34.313072, 40.238434, 20.143253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081020, 39.323795, 19.770010>,  <33.781197, 40.066559, 19.721869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081020, 39.323795, 19.770010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021832, 38.929840, 19.806017>,  <33.986317, 38.693466, 19.827621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021832, 38.929840, 19.806017>,  <34.081020, 39.323795, 19.770010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021832, 38.929840, 19.806017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446050, 0.014774, 0.894886,
		-0.882690, 0.172574, 0.437122,
		-0.147976, -0.984886, 0.090018,
		33.977440, 38.634373, 19.833023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891354, 39.203377, 20.431797>,  <34.081020, 39.323795, 19.770010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891354, 39.203377, 20.431797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067120, 38.872654, 20.291338>,  <34.172581, 38.674221, 20.207062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067120, 38.872654, 20.291338>,  <33.891354, 39.203377, 20.431797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067120, 38.872654, 20.291338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446793, -0.137956, 0.883937,
		-0.779286, -0.545309, 0.308791,
		0.439419, -0.826805, -0.351147,
		34.198944, 38.624611, 20.185993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662128, 38.716599, 20.914406>,  <33.891354, 39.203377, 20.431797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662128, 38.716599, 20.914406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.998138, 38.580276, 20.745548>,  <34.199745, 38.498482, 20.644234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.998138, 38.580276, 20.745548>,  <33.662128, 38.716599, 20.914406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998138, 38.580276, 20.745548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408518, -0.114706, 0.905514,
		-0.357029, -0.933109, 0.042871,
		0.840026, -0.340808, -0.422145,
		34.250145, 38.478035, 20.618904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760864, 38.141766, 21.285789>,  <33.662128, 38.716599, 20.914406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760864, 38.141766, 21.285789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124779, 38.194206, 21.128260>,  <34.343128, 38.225670, 21.033741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124779, 38.194206, 21.128260>,  <33.760864, 38.141766, 21.285789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124779, 38.194206, 21.128260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412998, -0.191166, 0.890443,
		0.041449, -0.972764, -0.228063,
		0.909788, 0.131098, -0.393825,
		34.397717, 38.233536, 21.010113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201508, 37.588009, 21.446411>,  <33.760864, 38.141766, 21.285789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201508, 37.588009, 21.446411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462746, 37.884487, 21.384319>,  <34.619488, 38.062374, 21.347065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462746, 37.884487, 21.384319>,  <34.201508, 37.588009, 21.446411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462746, 37.884487, 21.384319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409445, -0.173180, 0.895747,
		0.637042, -0.648566, -0.416582,
		0.653095, 0.741196, -0.155229,
		34.658672, 38.106846, 21.337751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715969, 37.287365, 21.762030>,  <34.201508, 37.588009, 21.446411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715969, 37.287365, 21.762030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796917, 37.678349, 21.737974>,  <34.845486, 37.912941, 21.723541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796917, 37.678349, 21.737974>,  <34.715969, 37.287365, 21.762030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796917, 37.678349, 21.737974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429139, -0.033314, 0.902624,
		0.880276, -0.208470, -0.426208,
		0.202369, 0.977461, -0.060137,
		34.857628, 37.971588, 21.719933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375454, 37.454117, 22.017534>,  <34.715969, 37.287365, 21.762030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375454, 37.454117, 22.017534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207062, 37.815605, 22.048689>,  <35.106026, 38.032497, 22.067381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207062, 37.815605, 22.048689>,  <35.375454, 37.454117, 22.017534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207062, 37.815605, 22.048689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331177, 0.073197, 0.940725,
		0.844450, 0.421824, -0.330106,
		-0.420983, 0.903718, 0.077887,
		35.080769, 38.086720, 22.072056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931461, 37.786228, 22.330013>,  <35.375454, 37.454117, 22.017534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931461, 37.786228, 22.330013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608875, 38.015629, 22.387569>,  <35.415321, 38.153271, 22.422104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608875, 38.015629, 22.387569>,  <35.931461, 37.786228, 22.330013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608875, 38.015629, 22.387569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225069, 0.072714, 0.971626,
		0.546767, 0.815970, -0.187719,
		-0.806468, 0.573502, 0.143892,
		35.366936, 38.187679, 22.430737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177490, 38.262817, 22.757513>,  <35.931461, 37.786228, 22.330013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177490, 38.262817, 22.757513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779991, 38.288071, 22.794357>,  <35.541492, 38.303223, 22.816463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779991, 38.288071, 22.794357>,  <36.177490, 38.262817, 22.757513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779991, 38.288071, 22.794357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093527, 0.019878, 0.995418,
		0.061014, 0.997807, -0.025658,
		-0.993745, 0.063135, 0.092110,
		35.481869, 38.307011, 22.821991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003235, 38.789257, 23.288603>,  <36.177490, 38.262817, 22.757513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003235, 38.789257, 23.288603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683414, 38.549187, 23.297537>,  <35.491520, 38.405144, 23.302896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683414, 38.549187, 23.297537>,  <36.003235, 38.789257, 23.288603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683414, 38.549187, 23.297537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054225, 0.109175, 0.992542,
		-0.598142, 0.792379, -0.119836,
		-0.799553, -0.600180, 0.022335,
		35.443550, 38.369133, 23.304237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307869, 39.128803, 23.644550>,  <36.003235, 38.789257, 23.288603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307869, 39.128803, 23.644550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306316, 38.730042, 23.675957>,  <35.305386, 38.490784, 23.694799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306316, 38.730042, 23.675957>,  <35.307869, 39.128803, 23.644550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306316, 38.730042, 23.675957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088788, 0.078549, 0.992948,
		-0.996043, -0.003120, -0.088817,
		-0.003879, -0.996905, 0.078515,
		35.305153, 38.430969, 23.699511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791389, 38.913738, 24.193470>,  <35.307869, 39.128803, 23.644550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791389, 38.913738, 24.193470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005184, 38.582214, 24.127270>,  <35.133461, 38.383301, 24.087549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005184, 38.582214, 24.127270>,  <34.791389, 38.913738, 24.193470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005184, 38.582214, 24.127270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066017, -0.236161, 0.969469,
		-0.842592, -0.507246, -0.180941,
		0.534491, -0.828812, -0.165500,
		35.165531, 38.333572, 24.077620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575649, 38.585163, 24.644909>,  <34.791389, 38.913738, 24.193470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575649, 38.585163, 24.644909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913261, 38.396107, 24.543537>,  <35.115829, 38.282673, 24.482714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913261, 38.396107, 24.543537>,  <34.575649, 38.585163, 24.644909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913261, 38.396107, 24.543537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145053, -0.253748, 0.956332,
		-0.516311, -0.843931, -0.145612,
		0.844028, -0.472644, -0.253428,
		35.166470, 38.254314, 24.467508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501469, 38.054596, 24.926727>,  <34.575649, 38.585163, 24.644909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501469, 38.054596, 24.926727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899590, 38.082088, 24.899460>,  <35.138462, 38.098583, 24.883099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899590, 38.082088, 24.899460>,  <34.501469, 38.054596, 24.926727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899590, 38.082088, 24.899460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083749, -0.258203, 0.962454,
		0.048547, -0.963643, -0.262746,
		0.995304, 0.068729, -0.068169,
		35.198181, 38.102707, 24.879009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977379, 37.478207, 25.013533>,  <34.501469, 38.054596, 24.926727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977379, 37.478207, 25.013533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627079, 37.423157, 25.198629>,  <33.416901, 37.390129, 25.309689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627079, 37.423157, 25.198629>,  <33.977379, 37.478207, 25.013533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627079, 37.423157, 25.198629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472744, 0.050089, -0.879775,
		0.097902, -0.989217, -0.108927,
		-0.875744, -0.137626, 0.462743,
		33.364357, 37.381870, 25.337452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507893, 36.964935, 24.586357>,  <33.977379, 37.478207, 25.013533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507893, 36.964935, 24.586357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249844, 37.168625, 24.814220>,  <33.095013, 37.290836, 24.950939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249844, 37.168625, 24.814220>,  <33.507893, 36.964935, 24.586357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249844, 37.168625, 24.814220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641761, 0.043510, -0.765670,
		-0.414680, -0.859536, 0.298728,
		-0.645123, 0.509220, 0.569659,
		33.056305, 37.321392, 24.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975060, 36.741028, 24.234138>,  <33.507893, 36.964935, 24.586357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975060, 36.741028, 24.234138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846634, 37.038975, 24.468092>,  <32.769577, 37.217743, 24.608465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846634, 37.038975, 24.468092>,  <32.975060, 36.741028, 24.234138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846634, 37.038975, 24.468092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763845, 0.161426, -0.624886,
		-0.559871, -0.647393, 0.517133,
		-0.321068, 0.744865, 0.584886,
		32.750313, 37.262436, 24.643559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255947, 36.700096, 24.305054>,  <32.975060, 36.741028, 24.234138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255947, 36.700096, 24.305054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403149, 37.071102, 24.331268>,  <32.491470, 37.293705, 24.346998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403149, 37.071102, 24.331268>,  <32.255947, 36.700096, 24.305054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403149, 37.071102, 24.331268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509442, 0.260090, -0.820257,
		-0.777843, 0.268473, 0.568228,
		0.368007, 0.927511, 0.065538,
		32.513550, 37.349354, 24.350929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771185, 36.960995, 23.937714>,  <32.255947, 36.700096, 24.305054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771185, 36.960995, 23.937714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022949, 37.267960, 23.986567>,  <32.174007, 37.452137, 24.015879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022949, 37.267960, 23.986567>,  <31.771185, 36.960995, 23.937714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022949, 37.267960, 23.986567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304946, 0.388495, -0.869528,
		-0.714736, 0.510048, 0.478543,
		0.629413, 0.767413, 0.122134,
		32.211773, 37.498184, 24.023207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440044, 37.512207, 23.988499>,  <31.771185, 36.960995, 23.937714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440044, 37.512207, 23.988499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802156, 37.643661, 23.880819>,  <32.019424, 37.722534, 23.816212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802156, 37.643661, 23.880819>,  <31.440044, 37.512207, 23.988499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802156, 37.643661, 23.880819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338196, 0.174032, -0.924844,
		-0.257086, 0.928285, 0.268690,
		0.905279, 0.328634, -0.269201,
		32.073742, 37.742252, 23.800058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336245, 38.165947, 23.715973>,  <31.440044, 37.512207, 23.988499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336245, 38.165947, 23.715973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690495, 38.040695, 23.578789>,  <31.903044, 37.965546, 23.496479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690495, 38.040695, 23.578789>,  <31.336245, 38.165947, 23.715973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690495, 38.040695, 23.578789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295853, 0.188832, -0.936383,
		0.357967, 0.930749, 0.074595,
		0.885624, -0.313125, -0.342960,
		31.956182, 37.946758, 23.475901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893291, 38.700905, 23.956940>,  <31.336245, 38.165947, 23.715973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893291, 38.700905, 23.956940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.506239, 38.781559, 23.896236>,  <30.274008, 38.829952, 23.859814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.506239, 38.781559, 23.896236>,  <30.893291, 38.700905, 23.956940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506239, 38.781559, 23.896236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233341, -0.485797, 0.842350,
		0.096125, 0.850497, 0.517123,
		-0.967632, 0.201637, -0.151758,
		30.215950, 38.842049, 23.850708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733624, 38.993908, 24.597776>,  <30.893291, 38.700905, 23.956940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733624, 38.993908, 24.597776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390461, 38.881168, 24.425938>,  <30.184563, 38.813522, 24.322834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390461, 38.881168, 24.425938>,  <30.733624, 38.993908, 24.597776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390461, 38.881168, 24.425938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281112, -0.442389, 0.851627,
		-0.430081, 0.851383, 0.300297,
		-0.857908, -0.281851, -0.429597,
		30.133089, 38.796612, 24.297058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269209, 39.161121, 25.009647>,  <30.733624, 38.993908, 24.597776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269209, 39.161121, 25.009647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055986, 38.897247, 24.797733>,  <29.928053, 38.738922, 24.670584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055986, 38.897247, 24.797733>,  <30.269209, 39.161121, 25.009647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055986, 38.897247, 24.797733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347474, -0.400235, 0.847982,
		-0.771437, 0.636108, -0.015875,
		-0.533054, -0.659681, -0.529787,
		29.896070, 38.699345, 24.638798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468046, 39.102417, 25.377357>,  <30.269209, 39.161121, 25.009647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468046, 39.102417, 25.377357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.512497, 38.771458, 25.157150>,  <29.539167, 38.572884, 25.025026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.512497, 38.771458, 25.157150>,  <29.468046, 39.102417, 25.377357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512497, 38.771458, 25.157150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201636, -0.561198, 0.802746,
		-0.973136, 0.021799, -0.229196,
		0.111125, -0.827395, -0.550517,
		29.545834, 38.523239, 24.991995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870708, 38.561169, 25.588190>,  <29.468046, 39.102417, 25.377357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870708, 38.561169, 25.588190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.200464, 38.367794, 25.470428>,  <29.398317, 38.251770, 25.399771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.200464, 38.367794, 25.470428>,  <28.870708, 38.561169, 25.588190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200464, 38.367794, 25.470428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055748, -0.586948, 0.807703,
		-0.563269, -0.649451, -0.510825,
		0.824391, -0.483432, -0.294404,
		29.447781, 38.222763, 25.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775711, 37.822308, 25.689531>,  <28.870708, 38.561169, 25.588190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775711, 37.822308, 25.689531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170332, 37.886566, 25.677448>,  <29.407104, 37.925121, 25.670198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170332, 37.886566, 25.677448>,  <28.775711, 37.822308, 25.689531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170332, 37.886566, 25.677448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123275, -0.609846, 0.782873,
		0.107342, -0.776068, -0.621447,
		0.986550, 0.160644, -0.030208,
		29.466297, 37.934761, 25.668386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959190, 37.237316, 25.898592>,  <28.775711, 37.822308, 25.689531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959190, 37.237316, 25.898592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291016, 37.449646, 25.967924>,  <29.490110, 37.577045, 26.009523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291016, 37.449646, 25.967924>,  <28.959190, 37.237316, 25.898592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291016, 37.449646, 25.967924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194341, -0.565446, 0.801562,
		0.523502, -0.631262, -0.572235,
		0.829564, 0.530829, 0.173332,
		29.539885, 37.608894, 26.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.323904, 43.048256, 22.047592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642700, 42.813324, 21.991240>,  <31.833979, 42.672363, 21.957428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642700, 42.813324, 21.991240>,  <31.323904, 43.048256, 22.047592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642700, 42.813324, 21.991240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054694, -0.162113, 0.985255,
		-0.601509, -0.792946, -0.097079,
		0.796992, -0.587330, -0.140882,
		31.881798, 42.637123, 21.948975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167627, 42.474464, 22.360113>,  <31.323904, 43.048256, 22.047592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167627, 42.474464, 22.360113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566338, 42.447788, 22.342272>,  <31.805563, 42.431782, 22.331568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566338, 42.447788, 22.342272>,  <31.167627, 42.474464, 22.360113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566338, 42.447788, 22.342272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018472, -0.350236, 0.936479,
		-0.078075, -0.934284, -0.347875,
		0.996776, -0.066690, -0.044603,
		31.865370, 42.427780, 22.328890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267948, 41.901917, 22.683399>,  <31.167627, 42.474464, 22.360113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267948, 41.901917, 22.683399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637873, 42.051533, 22.655643>,  <31.859827, 42.141304, 22.638990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637873, 42.051533, 22.655643>,  <31.267948, 41.901917, 22.683399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637873, 42.051533, 22.655643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197638, -0.316554, 0.927757,
		0.325053, -0.871715, -0.366678,
		0.924814, 0.374040, -0.069387,
		31.915318, 42.163746, 22.634827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825134, 41.373989, 22.785372>,  <31.267948, 41.901917, 22.683399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825134, 41.373989, 22.785372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926115, 41.741524, 22.906708>,  <31.986704, 41.962044, 22.979509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926115, 41.741524, 22.906708>,  <31.825134, 41.373989, 22.785372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926115, 41.741524, 22.906708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061239, -0.297693, 0.952695,
		0.965670, -0.259084, -0.018884,
		0.252450, 0.918833, 0.303340,
		32.001850, 42.017174, 22.997709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770498, 41.229588, 23.412580>,  <31.825134, 41.373989, 22.785372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770498, 41.229588, 23.412580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888680, 41.611641, 23.420837>,  <31.959589, 41.840874, 23.425791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888680, 41.611641, 23.420837>,  <31.770498, 41.229588, 23.412580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888680, 41.611641, 23.420837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164583, -0.072171, 0.983720,
		0.941073, -0.287247, -0.178522,
		0.295455, 0.955133, 0.020642,
		31.977316, 41.898182, 23.427031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425690, 41.272522, 23.867756>,  <31.770498, 41.229588, 23.412580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425690, 41.272522, 23.867756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.231171, 41.621651, 23.851265>,  <32.114460, 41.831127, 23.841370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.231171, 41.621651, 23.851265>,  <32.425690, 41.272522, 23.867756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231171, 41.621651, 23.851265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162862, 0.136894, 0.977106,
		0.858479, 0.468454, -0.208720,
		-0.486301, 0.872818, -0.041227,
		32.085281, 41.883495, 23.838896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886314, 41.885876, 24.117828>,  <32.425690, 41.272522, 23.867756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886314, 41.885876, 24.117828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.494030, 41.945259, 24.168690>,  <32.258659, 41.980888, 24.199207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.494030, 41.945259, 24.168690>,  <32.886314, 41.885876, 24.117828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494030, 41.945259, 24.168690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135383, 0.046661, 0.989694,
		0.141000, 0.987817, -0.065860,
		-0.980709, 0.148463, 0.127154,
		32.199818, 41.989799, 24.206837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929985, 42.292408, 24.670946>,  <32.886314, 41.885876, 24.117828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929985, 42.292408, 24.670946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.537586, 42.217075, 24.652262>,  <32.302147, 42.171875, 24.641050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.537586, 42.217075, 24.652262>,  <32.929985, 42.292408, 24.670946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537586, 42.217075, 24.652262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078933, 0.167404, 0.982724,
		-0.177257, 0.967733, -0.179087,
		-0.980994, -0.188331, -0.046712,
		32.243286, 42.160576, 24.638248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566063, 42.804520, 24.884331>,  <32.929985, 42.292408, 24.670946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566063, 42.804520, 24.884331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326027, 42.490833, 24.947447>,  <32.182003, 42.302624, 24.985317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326027, 42.490833, 24.947447>,  <32.566063, 42.804520, 24.884331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326027, 42.490833, 24.947447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097768, 0.267680, 0.958535,
		-0.793933, 0.559783, -0.237304,
		-0.600093, -0.784213, 0.157791,
		32.146000, 42.255569, 24.994783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054539, 43.076851, 25.274961>,  <32.566063, 42.804520, 24.884331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054539, 43.076851, 25.274961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.018272, 42.682087, 25.328306>,  <31.996513, 42.445229, 25.360313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.018272, 42.682087, 25.328306>,  <32.054539, 43.076851, 25.274961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018272, 42.682087, 25.328306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173992, 0.147549, 0.973630,
		-0.980565, 0.065069, -0.185092,
		-0.090664, -0.986912, 0.133360,
		31.991074, 42.386013, 25.368315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485306, 42.984665, 25.639639>,  <32.054539, 43.076851, 25.274961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485306, 42.984665, 25.639639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.647030, 42.632248, 25.737858>,  <31.744064, 42.420795, 25.796789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.647030, 42.632248, 25.737858>,  <31.485306, 42.984665, 25.639639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647030, 42.632248, 25.737858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148768, 0.201546, 0.968115,
		-0.902442, -0.427948, -0.049584,
		0.404309, -0.881045, 0.245548,
		31.768322, 42.367935, 25.811522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071938, 42.683422, 26.187759>,  <31.485306, 42.984665, 25.639639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071938, 42.683422, 26.187759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409260, 42.472076, 26.227085>,  <31.611652, 42.345268, 26.250681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409260, 42.472076, 26.227085>,  <31.071938, 42.683422, 26.187759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409260, 42.472076, 26.227085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094163, 0.034845, 0.994947,
		-0.529124, -0.848300, -0.020368,
		0.843303, -0.528368, 0.098316,
		31.662251, 42.313564, 26.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610899, 42.114391, 26.000765>,  <31.071938, 42.683422, 26.187759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610899, 42.114391, 26.000765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239582, 42.010433, 26.107147>,  <30.016792, 41.948059, 26.170977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239582, 42.010433, 26.107147>,  <30.610899, 42.114391, 26.000765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239582, 42.010433, 26.107147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311349, 0.152153, -0.938036,
		0.203327, -0.953573, -0.222161,
		-0.928289, -0.259898, 0.265957,
		29.961096, 41.932465, 26.186935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464247, 41.668007, 25.507748>,  <30.610899, 42.114391, 26.000765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464247, 41.668007, 25.507748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124216, 41.798969, 25.672756>,  <29.920198, 41.877548, 25.771761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124216, 41.798969, 25.672756>,  <30.464247, 41.668007, 25.507748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124216, 41.798969, 25.672756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414123, 0.068386, -0.907648,
		-0.325383, -0.942405, 0.077454,
		-0.850076, 0.327409, 0.412523,
		29.869194, 41.897190, 25.796513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041555, 41.399319, 25.090002>,  <30.464247, 41.668007, 25.507748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041555, 41.399319, 25.090002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805410, 41.665066, 25.273340>,  <29.663723, 41.824516, 25.383343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805410, 41.665066, 25.273340>,  <30.041555, 41.399319, 25.090002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805410, 41.665066, 25.273340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294750, 0.351191, -0.888700,
		-0.751394, -0.659753, -0.011507,
		-0.590364, 0.664372, 0.458345,
		29.628302, 41.864376, 25.410843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332100, 41.281746, 24.796665>,  <30.041555, 41.399319, 25.090002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332100, 41.281746, 24.796665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355650, 41.651947, 24.946318>,  <29.369780, 41.874069, 25.036110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355650, 41.651947, 24.946318>,  <29.332100, 41.281746, 24.796665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355650, 41.651947, 24.946318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211709, 0.377831, -0.901345,
		-0.975558, -0.026141, 0.218182,
		0.058874, 0.925505, 0.374131,
		29.373312, 41.929600, 25.058558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610050, 41.597660, 24.627234>,  <29.332100, 41.281746, 24.796665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610050, 41.597660, 24.627234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883865, 41.880756, 24.697107>,  <29.048155, 42.050613, 24.739031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883865, 41.880756, 24.697107>,  <28.610050, 41.597660, 24.627234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883865, 41.880756, 24.697107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124858, 0.349915, -0.928423,
		-0.718207, 0.613728, 0.327897,
		0.684536, 0.707741, 0.174682,
		29.089226, 42.093079, 24.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246054, 42.227367, 24.465235>,  <28.610050, 41.597660, 24.627234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246054, 42.227367, 24.465235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641598, 42.284615, 24.448854>,  <28.878923, 42.318962, 24.439026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641598, 42.284615, 24.448854>,  <28.246054, 42.227367, 24.465235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641598, 42.284615, 24.448854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106515, 0.488106, -0.866260,
		-0.103987, 0.860970, 0.497912,
		0.988858, 0.143115, -0.040950,
		28.938255, 42.327549, 24.436569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336441, 42.914604, 24.196808>,  <28.246054, 42.227367, 24.465235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336441, 42.914604, 24.196808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696838, 42.749973, 24.141945>,  <28.913076, 42.651196, 24.109028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696838, 42.749973, 24.141945>,  <28.336441, 42.914604, 24.196808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696838, 42.749973, 24.141945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087767, 0.482538, -0.871467,
		0.424862, 0.773148, 0.470887,
		0.900994, -0.411581, -0.137155,
		28.967136, 42.626499, 24.100798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838463, 43.354179, 23.896793>,  <28.336441, 42.914604, 24.196808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838463, 43.354179, 23.896793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023674, 43.020737, 23.776325>,  <29.134800, 42.820671, 23.704044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023674, 43.020737, 23.776325>,  <28.838463, 43.354179, 23.896793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023674, 43.020737, 23.776325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168039, 0.416189, -0.893616,
		0.870269, 0.363161, 0.332786,
		0.463028, -0.833607, -0.301171,
		29.162582, 42.770653, 23.685974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447796, 43.596874, 23.481297>,  <28.838463, 43.354179, 23.896793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447796, 43.596874, 23.481297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372622, 43.211010, 23.407429>,  <29.327517, 42.979492, 23.363108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372622, 43.211010, 23.407429>,  <29.447796, 43.596874, 23.481297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372622, 43.211010, 23.407429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113024, 0.165532, -0.979707,
		0.975657, -0.204993, 0.077922,
		-0.187935, -0.964664, -0.184671,
		29.316240, 42.921612, 23.352028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926161, 43.443039, 23.071041>,  <29.447796, 43.596874, 23.481297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926161, 43.443039, 23.071041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643595, 43.170025, 22.996073>,  <29.474054, 43.006218, 22.951092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643595, 43.170025, 22.996073>,  <29.926161, 43.443039, 23.071041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643595, 43.170025, 22.996073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101207, 0.164669, -0.981143,
		0.700525, -0.712062, -0.047247,
		-0.706414, -0.682533, -0.187421,
		29.431671, 42.965263, 22.939846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239307, 42.928101, 22.565588>,  <29.926161, 43.443039, 23.071041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239307, 42.928101, 22.565588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840389, 42.903976, 22.548784>,  <29.601038, 42.889503, 22.538702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840389, 42.903976, 22.548784>,  <30.239307, 42.928101, 22.565588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840389, 42.903976, 22.548784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032991, 0.143417, -0.989112,
		0.065675, -0.987823, -0.141039,
		-0.997296, -0.060307, -0.042008,
		29.541201, 42.885883, 22.536182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121395, 42.504940, 21.954140>,  <30.239307, 42.928101, 22.565588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121395, 42.504940, 21.954140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745125, 42.624828, 22.017761>,  <29.519363, 42.696762, 22.055935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745125, 42.624828, 22.017761>,  <30.121395, 42.504940, 21.954140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745125, 42.624828, 22.017761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158290, 0.026994, -0.987023,
		-0.300125, -0.953645, 0.022050,
		-0.940675, 0.299721, 0.159054,
		29.462923, 42.714745, 22.065477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670696, 41.996239, 21.557957>,  <30.121395, 42.504940, 21.954140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670696, 41.996239, 21.557957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475060, 42.340267, 21.616009>,  <29.357677, 42.546684, 21.650839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475060, 42.340267, 21.616009>,  <29.670696, 41.996239, 21.557957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475060, 42.340267, 21.616009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200347, 0.051163, -0.978388,
		-0.848912, -0.507597, 0.147290,
		-0.489091, 0.860074, 0.145129,
		29.328333, 42.598289, 21.659548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226440, 41.609608, 21.606998>,  <29.670696, 41.996239, 21.557957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226440, 41.609608, 21.606998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108381, 41.249451, 21.479137>,  <30.037546, 41.033356, 21.402420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108381, 41.249451, 21.479137>,  <30.226440, 41.609608, 21.606998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108381, 41.249451, 21.479137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134542, -0.370391, 0.919080,
		-0.945931, 0.228258, 0.230462,
		-0.295149, -0.900393, -0.319654,
		30.019836, 40.979332, 21.383242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853550, 41.366661, 22.237841>,  <30.226440, 41.609608, 21.606998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853550, 41.366661, 22.237841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916325, 41.045601, 22.007669>,  <29.953989, 40.852962, 21.869568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916325, 41.045601, 22.007669>,  <29.853550, 41.366661, 22.237841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916325, 41.045601, 22.007669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, -0.523260, 0.805638,
		-0.947748, -0.286259, 0.140818,
		0.156937, -0.802655, -0.575427,
		29.963406, 40.804806, 21.835041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307936, 40.819313, 22.373735>,  <29.853550, 41.366661, 22.237841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307936, 40.819313, 22.373735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614769, 40.614174, 22.219555>,  <29.798868, 40.491093, 22.127047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614769, 40.614174, 22.219555>,  <29.307936, 40.819313, 22.373735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614769, 40.614174, 22.219555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029090, -0.628003, 0.777667,
		-0.640893, -0.585319, -0.496646,
		0.767079, -0.512849, -0.385456,
		29.844894, 40.460320, 22.103920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172710, 40.204468, 22.556665>,  <29.307936, 40.819313, 22.373735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172710, 40.204468, 22.556665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552618, 40.152592, 22.442738>,  <29.780561, 40.121468, 22.374380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552618, 40.152592, 22.442738>,  <29.172710, 40.204468, 22.556665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552618, 40.152592, 22.442738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091912, -0.754368, 0.649985,
		-0.299156, -0.643514, -0.704554,
		0.949767, -0.129690, -0.284820,
		29.837547, 40.113686, 22.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341993, 39.441994, 22.268112>,  <29.172710, 40.204468, 22.556665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341993, 39.441994, 22.268112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694393, 39.569027, 22.408386>,  <29.905834, 39.645245, 22.492550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694393, 39.569027, 22.408386>,  <29.341993, 39.441994, 22.268112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694393, 39.569027, 22.408386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095305, -0.845158, 0.525951,
		0.463415, -0.429942, -0.774853,
		0.881002, 0.317581, 0.350683,
		29.958694, 39.664303, 22.513592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787127, 38.851620, 22.262709>,  <29.341993, 39.441994, 22.268112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787127, 38.851620, 22.262709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941172, 39.128006, 22.507412>,  <30.033600, 39.293839, 22.654234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941172, 39.128006, 22.507412>,  <29.787127, 38.851620, 22.262709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941172, 39.128006, 22.507412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124619, -0.695751, 0.707390,
		0.914416, -0.196189, -0.354052,
		0.385115, 0.690970, 0.611757,
		30.056705, 39.335297, 22.690939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354855, 38.504734, 22.680428>,  <29.787127, 38.851620, 22.262709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354855, 38.504734, 22.680428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253702, 38.832123, 22.886789>,  <30.193010, 39.028557, 23.010607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253702, 38.832123, 22.886789>,  <30.354855, 38.504734, 22.680428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253702, 38.832123, 22.886789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038548, -0.541337, 0.839921,
		0.966729, 0.192514, 0.168445,
		-0.252882, 0.818469, 0.515905,
		30.177837, 39.077663, 23.041561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744081, 38.538483, 23.277100>,  <30.354855, 38.504734, 22.680428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744081, 38.538483, 23.277100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430742, 38.768578, 23.371307>,  <30.242739, 38.906635, 23.427832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430742, 38.768578, 23.371307>,  <30.744081, 38.538483, 23.277100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430742, 38.768578, 23.371307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196654, -0.588794, 0.783995,
		0.589653, 0.567826, 0.574354,
		-0.783349, 0.575234, 0.235519,
		30.195738, 38.941147, 23.441963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549107, 38.802998, 23.177891>,  <30.744081, 38.538483, 23.277100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549107, 38.802998, 23.177891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.766153, 38.473965, 23.109867>,  <31.896381, 38.276543, 23.069052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.766153, 38.473965, 23.109867>,  <31.549107, 38.802998, 23.177891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766153, 38.473965, 23.109867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056704, 0.166125, -0.984473,
		0.838064, 0.543836, 0.043499,
		0.542618, -0.822585, -0.170061,
		31.928938, 38.227188, 23.058849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192619, 38.961964, 22.752266>,  <31.549107, 38.802998, 23.177891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192619, 38.961964, 22.752266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077847, 38.583084, 22.695021>,  <32.008984, 38.355755, 22.660673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077847, 38.583084, 22.695021>,  <32.192619, 38.961964, 22.752266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077847, 38.583084, 22.695021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090630, 0.121884, -0.988398,
		0.953654, -0.296574, 0.050872,
		-0.286932, -0.947200, -0.143113,
		31.991766, 38.298923, 22.652086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480320, 38.788868, 22.142160>,  <32.192619, 38.961964, 22.752266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480320, 38.788868, 22.142160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232079, 38.475700, 22.159498>,  <32.083134, 38.287800, 22.169901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232079, 38.475700, 22.159498>,  <32.480320, 38.788868, 22.142160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232079, 38.475700, 22.159498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040798, -0.087446, -0.995333,
		0.783059, -0.615944, 0.086212,
		-0.620608, -0.782922, 0.043346,
		32.045895, 38.240826, 22.172503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675373, 38.331997, 21.548643>,  <32.480320, 38.788868, 22.142160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675373, 38.331997, 21.548643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.307117, 38.216465, 21.653721>,  <32.086166, 38.147144, 21.716766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.307117, 38.216465, 21.653721>,  <32.675373, 38.331997, 21.548643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307117, 38.216465, 21.653721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191104, -0.253358, -0.948309,
		0.340456, -0.923248, 0.178053,
		-0.920635, -0.288831, 0.262693,
		32.030926, 38.129814, 21.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587551, 37.626797, 21.310675>,  <32.675373, 38.331997, 21.548643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587551, 37.626797, 21.310675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221523, 37.778744, 21.364868>,  <32.001907, 37.869911, 21.397385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221523, 37.778744, 21.364868>,  <32.587551, 37.626797, 21.310675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221523, 37.778744, 21.364868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209731, -0.161275, -0.964367,
		-0.344477, -0.910875, 0.227246,
		-0.915067, 0.379863, 0.135483,
		31.947002, 37.892704, 21.405514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161797, 37.228775, 20.877785>,  <32.587551, 37.626797, 21.310675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161797, 37.228775, 20.877785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.956915, 37.566071, 20.943007>,  <31.833984, 37.768448, 20.982140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.956915, 37.566071, 20.943007>,  <32.161797, 37.228775, 20.877785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956915, 37.566071, 20.943007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357763, -0.036887, -0.933083,
		-0.780800, -0.536268, 0.320575,
		-0.512208, 0.843241, 0.163056,
		31.803253, 37.819042, 20.991922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479757, 37.148132, 20.515188>,  <32.161797, 37.228775, 20.877785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479757, 37.148132, 20.515188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494852, 37.540939, 20.589190>,  <31.503908, 37.776623, 20.633591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494852, 37.540939, 20.589190>,  <31.479757, 37.148132, 20.515188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494852, 37.540939, 20.589190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437332, 0.182693, -0.880547,
		-0.898508, -0.047678, 0.436360,
		0.037737, 0.982013, 0.185003,
		31.506172, 37.835545, 20.644690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811934, 37.377838, 20.283205>,  <31.479757, 37.148132, 20.515188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811934, 37.377838, 20.283205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053339, 37.696693, 20.275755>,  <31.198181, 37.888004, 20.271286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053339, 37.696693, 20.275755>,  <30.811934, 37.377838, 20.283205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053339, 37.696693, 20.275755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200954, 0.129456, -0.971009,
		-0.771615, 0.589759, 0.238316,
		0.603513, 0.797136, -0.018624,
		31.234392, 37.935833, 20.270168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411003, 37.947121, 20.125439>,  <30.811934, 37.377838, 20.283205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411003, 37.947121, 20.125439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782221, 38.058018, 20.025948>,  <31.004951, 38.124557, 19.966253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782221, 38.058018, 20.025948>,  <30.411003, 37.947121, 20.125439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782221, 38.058018, 20.025948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285018, 0.098717, -0.953425,
		-0.239780, 0.955714, 0.170634,
		0.928046, 0.277246, -0.248726,
		31.060635, 38.141190, 19.951330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.898266, 36.616295, 35.673260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185806, 36.874916, 35.571110>,  <35.358330, 37.030090, 35.509819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185806, 36.874916, 35.571110>,  <34.898266, 36.616295, 35.673260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185806, 36.874916, 35.571110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405470, 0.091580, -0.909509,
		-0.564661, 0.757350, 0.327991,
		0.718855, 0.646555, -0.255372,
		35.401463, 37.068882, 35.494499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678543, 37.311504, 35.368134>,  <34.898266, 36.616295, 35.673260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678543, 37.311504, 35.368134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035843, 37.191624, 35.234104>,  <35.250225, 37.119694, 35.153687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035843, 37.191624, 35.234104>,  <34.678543, 37.311504, 35.368134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035843, 37.191624, 35.234104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341245, 0.033180, -0.939388,
		0.292657, 0.953455, -0.072635,
		0.893254, -0.299705, -0.335073,
		35.303818, 37.101711, 35.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701557, 37.645054, 34.780159>,  <34.678543, 37.311504, 35.368134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701557, 37.645054, 34.780159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008659, 37.391651, 34.741756>,  <35.192921, 37.239609, 34.718716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008659, 37.391651, 34.741756>,  <34.701557, 37.645054, 34.780159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008659, 37.391651, 34.741756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064299, 0.072904, -0.995264,
		0.637504, 0.770296, 0.015239,
		0.767759, -0.633505, -0.096006,
		35.238987, 37.201599, 34.712955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032722, 37.811493, 34.163223>,  <34.701557, 37.645054, 34.780159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032722, 37.811493, 34.163223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146225, 37.430435, 34.206963>,  <35.214325, 37.201801, 34.233204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146225, 37.430435, 34.206963>,  <35.032722, 37.811493, 34.163223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146225, 37.430435, 34.206963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250360, -0.183681, -0.950569,
		0.925636, 0.242356, -0.290624,
		0.283758, -0.952641, 0.109345,
		35.231354, 37.144642, 34.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541149, 37.781906, 33.778801>,  <35.032722, 37.811493, 34.163223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541149, 37.781906, 33.778801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393486, 37.410957, 33.803139>,  <35.304890, 37.188389, 33.817741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393486, 37.410957, 33.803139>,  <35.541149, 37.781906, 33.778801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393486, 37.410957, 33.803139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202262, 0.016269, -0.979196,
		0.907091, -0.373783, -0.193578,
		-0.369156, -0.927374, 0.060844,
		35.282738, 37.132744, 33.821392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810211, 37.464638, 33.181290>,  <35.541149, 37.781906, 33.778801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810211, 37.464638, 33.181290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524811, 37.203907, 33.284081>,  <35.353569, 37.047466, 33.345753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524811, 37.203907, 33.284081>,  <35.810211, 37.464638, 33.181290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524811, 37.203907, 33.284081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252392, -0.103032, -0.962124,
		0.653617, -0.751334, -0.091003,
		-0.713500, -0.651829, 0.256974,
		35.310760, 37.008358, 33.361172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842873, 36.779457, 32.779621>,  <35.810211, 37.464638, 33.181290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842873, 36.779457, 32.779621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464848, 36.834129, 32.898396>,  <35.238033, 36.866932, 32.969662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464848, 36.834129, 32.898396>,  <35.842873, 36.779457, 32.779621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464848, 36.834129, 32.898396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306159, -0.051816, -0.950569,
		-0.114543, -0.989258, 0.090817,
		-0.945064, 0.136685, 0.296936,
		35.181328, 36.875134, 32.987476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475811, 36.390224, 32.347973>,  <35.842873, 36.779457, 32.779621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475811, 36.390224, 32.347973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205082, 36.637356, 32.508076>,  <35.042645, 36.785633, 32.604137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205082, 36.637356, 32.508076>,  <35.475811, 36.390224, 32.347973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205082, 36.637356, 32.508076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456612, 0.074150, -0.886571,
		-0.577426, -0.782810, 0.231921,
		-0.676819, 0.617827, 0.400256,
		35.002037, 36.822704, 32.628151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972458, 36.110680, 32.099712>,  <35.475811, 36.390224, 32.347973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972458, 36.110680, 32.099712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832924, 36.472378, 32.198219>,  <34.749203, 36.689396, 32.257324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832924, 36.472378, 32.198219>,  <34.972458, 36.110680, 32.099712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832924, 36.472378, 32.198219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420211, 0.083966, -0.903533,
		-0.837697, -0.418670, 0.350685,
		-0.348836, 0.904248, 0.246267,
		34.728271, 36.743652, 32.272099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302567, 36.014271, 32.118919>,  <34.972458, 36.110680, 32.099712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302567, 36.014271, 32.118919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322292, 36.409035, 32.057495>,  <34.334126, 36.645893, 32.020641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322292, 36.409035, 32.057495>,  <34.302567, 36.014271, 32.118919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322292, 36.409035, 32.057495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663527, -0.082543, -0.743585,
		-0.746525, 0.138557, 0.650770,
		0.049313, 0.986909, -0.153557,
		34.337086, 36.705109, 32.011429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623440, 36.223080, 31.924717>,  <34.302567, 36.014271, 32.118919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623440, 36.223080, 31.924717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856190, 36.516033, 31.783274>,  <33.995838, 36.691803, 31.698408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856190, 36.516033, 31.783274>,  <33.623440, 36.223080, 31.924717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856190, 36.516033, 31.783274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495916, -0.025089, -0.868008,
		-0.644584, 0.680433, 0.348601,
		0.581876, 0.732380, -0.353609,
		34.030754, 36.735748, 31.677191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220284, 36.822025, 31.670376>,  <33.623440, 36.223080, 31.924717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220284, 36.822025, 31.670376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576466, 36.842167, 31.489462>,  <33.790173, 36.854252, 31.380915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576466, 36.842167, 31.489462>,  <33.220284, 36.822025, 31.670376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576466, 36.842167, 31.489462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453783, 0.023353, -0.890806,
		-0.034292, 0.998459, 0.043643,
		0.890452, 0.050352, -0.452283,
		33.843601, 36.857273, 31.353777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738529, 37.462494, 31.693392>,  <33.220284, 36.822025, 31.670376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738529, 37.462494, 31.693392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.440102, 37.205013, 31.761545>,  <32.261047, 37.050526, 31.802437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.440102, 37.205013, 31.761545>,  <32.738529, 37.462494, 31.693392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440102, 37.205013, 31.761545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249910, -0.033512, 0.967689,
		-0.617195, 0.764541, 0.185870,
		-0.746067, -0.643703, 0.170383,
		32.216282, 37.011902, 31.812660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403751, 37.767624, 32.259178>,  <32.738529, 37.462494, 31.693392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403751, 37.767624, 32.259178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310452, 37.379150, 32.278767>,  <32.254471, 37.146065, 32.290520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310452, 37.379150, 32.278767>,  <32.403751, 37.767624, 32.259178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310452, 37.379150, 32.278767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161337, 0.011013, 0.986838,
		-0.958940, 0.238077, 0.154119,
		-0.233246, -0.971184, 0.048971,
		32.240479, 37.087795, 32.293457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921211, 37.732582, 32.802563>,  <32.403751, 37.767624, 32.259178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921211, 37.732582, 32.802563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051556, 37.357544, 32.754028>,  <32.129761, 37.132519, 32.724907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051556, 37.357544, 32.754028>,  <31.921211, 37.732582, 32.802563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051556, 37.357544, 32.754028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002308, -0.127553, 0.991829,
		-0.945415, -0.323477, -0.039400,
		0.325859, -0.937600, -0.121337,
		32.149315, 37.076263, 32.717628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543327, 37.482502, 33.326847>,  <31.921211, 37.732582, 32.802563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543327, 37.482502, 33.326847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824356, 37.212353, 33.237167>,  <31.992973, 37.050262, 33.183361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824356, 37.212353, 33.237167>,  <31.543327, 37.482502, 33.326847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824356, 37.212353, 33.237167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059844, -0.257867, 0.964325,
		-0.709092, -0.690925, -0.140753,
		0.702572, -0.675372, -0.224199,
		32.035130, 37.009743, 33.169907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317463, 36.979767, 33.584454>,  <31.543327, 37.482502, 33.326847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317463, 36.979767, 33.584454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710962, 36.914597, 33.554256>,  <31.947062, 36.875496, 33.536140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710962, 36.914597, 33.554256>,  <31.317463, 36.979767, 33.584454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710962, 36.914597, 33.554256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017551, -0.331165, 0.943410,
		-0.178700, -0.929401, -0.322923,
		0.983747, -0.162920, -0.075491,
		32.006088, 36.865719, 33.531609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476194, 36.297779, 33.841442>,  <31.317463, 36.979767, 33.584454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476194, 36.297779, 33.841442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819838, 36.501587, 33.860718>,  <32.026024, 36.623871, 33.872284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819838, 36.501587, 33.860718>,  <31.476194, 36.297779, 33.841442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819838, 36.501587, 33.860718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118239, -0.289203, 0.949937,
		0.497946, -0.810403, -0.308702,
		0.859109, 0.509518, 0.048187,
		32.077572, 36.654442, 33.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871593, 35.879776, 34.319889>,  <31.476194, 36.297779, 33.841442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871593, 35.879776, 34.319889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047451, 36.238998, 34.314091>,  <32.152966, 36.454533, 34.310612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047451, 36.238998, 34.314091>,  <31.871593, 35.879776, 34.319889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047451, 36.238998, 34.314091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069398, -0.017878, 0.997429,
		0.895486, -0.439521, -0.070183,
		0.439646, 0.898054, -0.014492,
		32.179344, 36.508415, 34.309742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248566, 35.976856, 34.994785>,  <31.871593, 35.879776, 34.319889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248566, 35.976856, 34.994785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229324, 36.361034, 34.885071>,  <32.217777, 36.591541, 34.819241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229324, 36.361034, 34.885071>,  <32.248566, 35.976856, 34.994785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229324, 36.361034, 34.885071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072250, 0.277230, 0.958083,
		0.996226, 0.026274, -0.082729,
		-0.048108, 0.960444, -0.274285,
		32.214893, 36.649166, 34.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781174, 36.320938, 35.319191>,  <32.248566, 35.976856, 34.994785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781174, 36.320938, 35.319191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505329, 36.604393, 35.259495>,  <32.339821, 36.774464, 35.223679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505329, 36.604393, 35.259495>,  <32.781174, 36.320938, 35.319191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505329, 36.604393, 35.259495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005992, 0.211655, 0.977326,
		0.724154, 0.673081, -0.150206,
		-0.689612, 0.708635, -0.149238,
		32.298447, 36.816982, 35.214722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938316, 36.835884, 35.694702>,  <32.781174, 36.320938, 35.319191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938316, 36.835884, 35.694702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559814, 36.938602, 35.616047>,  <32.332714, 37.000233, 35.568855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559814, 36.938602, 35.616047>,  <32.938316, 36.835884, 35.694702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559814, 36.938602, 35.616047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127044, 0.263992, 0.956121,
		0.297435, 0.929713, -0.217179,
		-0.946252, 0.256792, -0.196635,
		32.275940, 37.015640, 35.557056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886402, 37.453133, 36.040024>,  <32.938316, 36.835884, 35.694702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886402, 37.453133, 36.040024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509331, 37.332920, 35.981998>,  <32.283089, 37.260792, 35.947182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509331, 37.332920, 35.981998>,  <32.886402, 37.453133, 36.040024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509331, 37.332920, 35.981998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254161, 0.364891, 0.895688,
		-0.216251, 0.881212, -0.420358,
		-0.942676, -0.300532, -0.145062,
		32.226528, 37.242760, 35.938480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495461, 37.972702, 36.398087>,  <32.886402, 37.453133, 36.040024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495461, 37.972702, 36.398087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208462, 37.697266, 36.356071>,  <32.036263, 37.532001, 36.330860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208462, 37.697266, 36.356071>,  <32.495461, 37.972702, 36.398087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208462, 37.697266, 36.356071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463549, 0.359462, 0.809883,
		-0.519922, 0.629781, -0.577111,
		-0.717498, -0.688595, -0.105042,
		31.993212, 37.490688, 36.324558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824240, 38.332188, 36.395870>,  <32.495461, 37.972702, 36.398087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824240, 38.332188, 36.395870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726343, 37.958931, 36.501209>,  <31.667606, 37.734978, 36.564411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726343, 37.958931, 36.501209>,  <31.824240, 38.332188, 36.395870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726343, 37.958931, 36.501209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512953, 0.355095, 0.781528,
		-0.822789, 0.056186, -0.565563,
		-0.244739, -0.933140, 0.263348,
		31.652922, 37.678989, 36.580215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142696, 38.417259, 36.618179>,  <31.824240, 38.332188, 36.395870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142696, 38.417259, 36.618179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270124, 38.074535, 36.780361>,  <31.346581, 37.868900, 36.877670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270124, 38.074535, 36.780361>,  <31.142696, 38.417259, 36.618179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270124, 38.074535, 36.780361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612736, 0.140220, 0.777749,
		-0.723235, -0.496201, -0.480328,
		0.318568, -0.856810, 0.405453,
		31.365694, 37.817493, 36.901997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565660, 37.995064, 36.831779>,  <31.142696, 38.417259, 36.618179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565660, 37.995064, 36.831779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855036, 37.834141, 37.056202>,  <31.028662, 37.737587, 37.190853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855036, 37.834141, 37.056202>,  <30.565660, 37.995064, 36.831779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855036, 37.834141, 37.056202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636259, -0.073083, 0.768006,
		-0.267973, -0.912582, -0.308844,
		0.723440, -0.402310, 0.561054,
		31.072067, 37.713448, 37.224518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804119, 38.110008, 36.546162>,  <30.565660, 37.995064, 36.831779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804119, 38.110008, 36.546162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042126, 38.417057, 36.641418>,  <30.184929, 38.601288, 36.698570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042126, 38.417057, 36.641418>,  <29.804119, 38.110008, 36.546162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042126, 38.417057, 36.641418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216509, 0.438437, -0.872294,
		-0.774003, 0.467469, 0.427074,
		0.595016, 0.767623, 0.238140,
		30.220631, 38.647343, 36.712860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457079, 38.753963, 36.470242>,  <29.804119, 38.110008, 36.546162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457079, 38.753963, 36.470242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.847809, 38.833622, 36.438858>,  <30.082247, 38.881416, 36.420029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.847809, 38.833622, 36.438858>,  <29.457079, 38.753963, 36.470242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847809, 38.833622, 36.438858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164493, 0.463916, -0.870474,
		-0.136950, 0.863206, 0.485922,
		0.976825, 0.199142, -0.078458,
		30.140856, 38.893364, 36.415321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460350, 39.531723, 36.321957>,  <29.457079, 38.753963, 36.470242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460350, 39.531723, 36.321957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789665, 39.371304, 36.161278>,  <29.987255, 39.275051, 36.064869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789665, 39.371304, 36.161278>,  <29.460350, 39.531723, 36.321957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789665, 39.371304, 36.161278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181309, 0.484810, -0.855620,
		0.537888, 0.777253, 0.326425,
		0.823288, -0.401044, -0.401697,
		30.036652, 39.250992, 36.040768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827921, 40.088184, 35.944122>,  <29.460350, 39.531723, 36.321957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827921, 40.088184, 35.944122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.026588, 39.766579, 35.813354>,  <30.145788, 39.573616, 35.734894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.026588, 39.766579, 35.813354>,  <29.827921, 40.088184, 35.944122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026588, 39.766579, 35.813354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076601, 0.415798, -0.906226,
		0.864554, 0.425050, 0.268102,
		0.496668, -0.804018, -0.326920,
		30.175589, 39.525372, 35.715279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281712, 40.400871, 35.544865>,  <29.827921, 40.088184, 35.944122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281712, 40.400871, 35.544865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258921, 40.015545, 35.439964>,  <30.245247, 39.784348, 35.377026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258921, 40.015545, 35.439964>,  <30.281712, 40.400871, 35.544865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258921, 40.015545, 35.439964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031055, 0.264256, -0.963952,
		0.997892, -0.046778, -0.044972,
		-0.056976, -0.963317, -0.262247,
		30.241827, 39.726551, 35.361290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615185, 40.438869, 34.977722>,  <30.281712, 40.400871, 35.544865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615185, 40.438869, 34.977722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419867, 40.091702, 34.941303>,  <30.302675, 39.883400, 34.919453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419867, 40.091702, 34.941303>,  <30.615185, 40.438869, 34.977722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419867, 40.091702, 34.941303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118386, 0.169241, -0.978438,
		0.864610, -0.466990, -0.185389,
		-0.488297, -0.867916, -0.091043,
		30.273378, 39.831326, 34.913990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897552, 40.057343, 34.549568>,  <30.615185, 40.438869, 34.977722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897552, 40.057343, 34.549568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530241, 39.898975, 34.548462>,  <30.309853, 39.803955, 34.547798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530241, 39.898975, 34.548462>,  <30.897552, 40.057343, 34.549568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530241, 39.898975, 34.548462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093032, 0.222549, -0.970473,
		0.384846, -0.890909, -0.241195,
		-0.918281, -0.395921, -0.002764,
		30.254757, 39.780201, 34.547634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891846, 39.560883, 33.967770>,  <30.897552, 40.057343, 34.549568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891846, 39.560883, 33.967770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506908, 39.653934, 34.024021>,  <30.275946, 39.709766, 34.057774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506908, 39.653934, 34.024021>,  <30.891846, 39.560883, 33.967770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506908, 39.653934, 34.024021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103974, 0.163001, -0.981132,
		-0.251168, -0.958807, -0.132675,
		-0.962343, 0.232635, 0.140632,
		30.218206, 39.723724, 34.066212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480812, 39.332420, 33.316074>,  <30.891846, 39.560883, 33.967770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480812, 39.332420, 33.316074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212084, 39.565380, 33.499146>,  <30.050846, 39.705154, 33.608986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212084, 39.565380, 33.499146>,  <30.480812, 39.332420, 33.316074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212084, 39.565380, 33.499146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301192, 0.349705, -0.887124,
		-0.676712, -0.733838, -0.059526,
		-0.671821, 0.582399, 0.457676,
		30.010538, 39.740101, 33.636448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907505, 39.144665, 32.935162>,  <30.480812, 39.332420, 33.316074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907505, 39.144665, 32.935162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.831953, 39.492439, 33.117771>,  <29.786623, 39.701103, 33.227337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.831953, 39.492439, 33.117771>,  <29.907505, 39.144665, 32.935162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831953, 39.492439, 33.117771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360638, 0.370988, -0.855750,
		-0.913381, -0.326271, 0.243480,
		-0.188878, 0.869434, 0.456519,
		29.775290, 39.753269, 33.254726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193285, 39.292282, 32.922024>,  <29.907505, 39.144665, 32.935162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193285, 39.292282, 32.922024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364222, 39.653168, 32.945328>,  <29.466784, 39.869698, 32.959309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364222, 39.653168, 32.945328>,  <29.193285, 39.292282, 32.922024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364222, 39.653168, 32.945328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479462, 0.280792, -0.831428,
		-0.766482, 0.327370, 0.552570,
		0.427342, 0.902211, 0.058261,
		29.492424, 39.923832, 32.962807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738453, 39.680271, 32.782497>,  <29.193285, 39.292282, 32.922024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738453, 39.680271, 32.782497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.061319, 39.903297, 32.704933>,  <29.255039, 40.037113, 32.658394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.061319, 39.903297, 32.704933>,  <28.738453, 39.680271, 32.782497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061319, 39.903297, 32.704933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424916, 0.320728, -0.846510,
		-0.409796, 0.765669, 0.495800,
		0.807164, 0.557570, -0.193912,
		29.303469, 40.070568, 32.646759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574160, 40.258797, 32.251892>,  <28.738453, 39.680271, 32.782497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574160, 40.258797, 32.251892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966307, 40.337536, 32.247330>,  <29.201595, 40.384777, 32.244595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966307, 40.337536, 32.247330>,  <28.574160, 40.258797, 32.251892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966307, 40.337536, 32.247330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123301, 0.566901, -0.814506,
		-0.153866, 0.799922, 0.580043,
		0.980368, 0.196844, -0.011404,
		29.260418, 40.396587, 32.243908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685043, 41.118393, 32.204342>,  <28.574160, 40.258797, 32.251892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685043, 41.118393, 32.204342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953493, 40.873383, 32.037296>,  <29.114563, 40.726376, 31.937067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953493, 40.873383, 32.037296>,  <28.685043, 41.118393, 32.204342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953493, 40.873383, 32.037296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032697, 0.538319, -0.842106,
		0.740625, 0.578811, 0.341250,
		0.671122, -0.612527, -0.417618,
		29.154829, 40.689625, 31.912010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955893, 41.494888, 31.704897>,  <28.685043, 41.118393, 32.204342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955893, 41.494888, 31.704897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.141092, 41.163830, 31.578007>,  <29.252213, 40.965195, 31.501873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.141092, 41.163830, 31.578007>,  <28.955893, 41.494888, 31.704897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141092, 41.163830, 31.578007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017011, 0.349533, -0.936770,
		0.886196, 0.439120, 0.147754,
		0.462999, -0.827648, -0.317224,
		29.279991, 40.915535, 31.482840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567339, 41.731991, 31.379824>,  <28.955893, 41.494888, 31.704897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567339, 41.731991, 31.379824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457590, 41.379826, 31.225115>,  <29.391741, 41.168526, 31.132290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457590, 41.379826, 31.225115>,  <29.567339, 41.731991, 31.379824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457590, 41.379826, 31.225115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115009, 0.369279, -0.922174,
		0.954722, -0.297500, -0.000064,
		-0.274370, -0.880412, -0.386774,
		29.375278, 41.115704, 31.109083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018427, 41.583244, 30.824223>,  <29.567339, 41.731991, 31.379824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018427, 41.583244, 30.824223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750504, 41.301804, 30.729313>,  <29.589748, 41.132938, 30.672367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750504, 41.301804, 30.729313>,  <30.018427, 41.583244, 30.824223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750504, 41.301804, 30.729313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183024, 0.153245, -0.971091,
		0.719623, -0.693873, 0.026131,
		-0.669810, -0.703602, -0.237274,
		29.549561, 41.090725, 30.658131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415993, 41.283142, 30.502108>,  <30.018427, 41.583244, 30.824223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415993, 41.283142, 30.502108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039881, 41.202358, 30.392500>,  <29.814213, 41.153889, 30.326736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039881, 41.202358, 30.392500>,  <30.415993, 41.283142, 30.502108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039881, 41.202358, 30.392500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257565, 0.104202, -0.960626,
		0.222562, -0.973835, -0.045961,
		-0.940280, -0.201961, -0.274017,
		29.757797, 41.141769, 30.310295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466599, 40.831734, 29.923117>,  <30.415993, 41.283142, 30.502108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466599, 40.831734, 29.923117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088715, 40.962517, 29.913120>,  <29.861984, 41.040985, 29.907122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088715, 40.962517, 29.913120>,  <30.466599, 40.831734, 29.923117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088715, 40.962517, 29.913120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004218, -0.088326, -0.996083,
		-0.327883, -0.940903, 0.084822,
		-0.944709, 0.326957, -0.024992,
		29.805302, 41.060604, 29.905622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093241, 40.353458, 29.498800>,  <30.466599, 40.831734, 29.923117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093241, 40.353458, 29.498800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884377, 40.694561, 29.493689>,  <29.759058, 40.899223, 29.490622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884377, 40.694561, 29.493689>,  <30.093241, 40.353458, 29.498800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884377, 40.694561, 29.493689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010140, -0.008778, -0.999910,
		-0.852788, -0.522242, -0.004063,
		-0.522159, 0.852752, -0.012781,
		29.727728, 40.950386, 29.489855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634266, 40.257496, 28.870790>,  <30.093241, 40.353458, 29.498800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634266, 40.257496, 28.870790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.653791, 40.649773, 28.946531>,  <29.665506, 40.885139, 28.991976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.653791, 40.649773, 28.946531>,  <29.634266, 40.257496, 28.870790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653791, 40.649773, 28.946531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022653, 0.188442, -0.981823,
		-0.998551, 0.052218, -0.013016,
		0.048816, 0.980695, 0.189351,
		29.668436, 40.943981, 29.003336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263029, 40.566914, 28.375763>,  <29.634266, 40.257496, 28.870790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263029, 40.566914, 28.375763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442852, 40.895813, 28.515366>,  <29.550745, 41.093151, 28.599127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442852, 40.895813, 28.515366>,  <29.263029, 40.566914, 28.375763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442852, 40.895813, 28.515366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111496, 0.336005, -0.935238,
		-0.886266, 0.459356, 0.059376,
		0.449557, 0.822249, 0.349006,
		29.577719, 41.142487, 28.620068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852102, 41.089802, 28.183716>,  <29.263029, 40.566914, 28.375763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852102, 41.089802, 28.183716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204203, 41.270702, 28.241161>,  <29.415462, 41.379242, 28.275629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204203, 41.270702, 28.241161>,  <28.852102, 41.089802, 28.183716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204203, 41.270702, 28.241161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119020, 0.503414, -0.855809,
		-0.459341, 0.736233, 0.496958,
		0.880250, 0.452256, 0.143612,
		29.468277, 41.406380, 28.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703941, 41.798096, 28.014124>,  <28.852102, 41.089802, 28.183716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703941, 41.798096, 28.014124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098795, 41.750710, 27.971167>,  <29.335707, 41.722279, 27.945393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098795, 41.750710, 27.971167>,  <28.703941, 41.798096, 28.014124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098795, 41.750710, 27.971167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025588, 0.545951, -0.837426,
		0.157835, 0.829400, 0.535896,
		0.987134, -0.118463, -0.107393,
		29.394936, 41.715172, 27.938950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963903, 42.389244, 27.535700>,  <28.703941, 41.798096, 28.014124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963903, 42.389244, 27.535700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.264370, 42.125378, 27.526030>,  <29.444651, 41.967056, 27.520227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.264370, 42.125378, 27.526030>,  <28.963903, 42.389244, 27.535700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264370, 42.125378, 27.526030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211776, 0.275516, -0.937679,
		0.625219, 0.699234, 0.346660,
		0.751168, -0.659669, -0.024177,
		29.489719, 41.927479, 27.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654287, 42.707668, 27.303421>,  <28.963903, 42.389244, 27.535700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654287, 42.707668, 27.303421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654476, 42.315758, 27.223375>,  <29.654589, 42.080612, 27.175346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654476, 42.315758, 27.223375>,  <29.654287, 42.707668, 27.303421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654476, 42.315758, 27.223375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185841, 0.196716, -0.962687,
		0.982580, -0.036736, 0.182175,
		0.000471, -0.979772, -0.200117,
		29.654617, 42.021828, 27.163340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293306, 42.618889, 26.849516>,  <29.654287, 42.707668, 27.303421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293306, 42.618889, 26.849516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.070240, 42.290760, 26.798796>,  <29.936399, 42.093884, 26.768364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.070240, 42.290760, 26.798796>,  <30.293306, 42.618889, 26.849516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070240, 42.290760, 26.798796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116061, 0.228317, -0.966644,
		0.821912, -0.524347, -0.222532,
		-0.557665, -0.820324, -0.126800,
		29.902941, 42.044662, 26.760756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939732, 42.194073, 26.806606>,  <30.293306, 42.618889, 26.849516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939732, 42.194073, 26.806606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337950, 42.158550, 26.793936>,  <31.576881, 42.137238, 26.786333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337950, 42.158550, 26.793936>,  <30.939732, 42.194073, 26.806606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337950, 42.158550, 26.793936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022014, -0.107751, 0.993934,
		-0.091663, -0.990205, -0.105317,
		0.995547, -0.088789, -0.031675,
		31.636614, 42.131908, 26.784433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193813, 41.595333, 27.289104>,  <30.939732, 42.194073, 26.806606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193813, 41.595333, 27.289104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522573, 41.819473, 27.248146>,  <31.719830, 41.953957, 27.223570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522573, 41.819473, 27.248146>,  <31.193813, 41.595333, 27.289104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522573, 41.819473, 27.248146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184420, -0.091679, 0.978562,
		0.538954, -0.823163, -0.178692,
		0.821899, 0.560354, -0.102397,
		31.769144, 41.987579, 27.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749687, 41.176083, 27.629135>,  <31.193813, 41.595333, 27.289104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749687, 41.176083, 27.629135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.871943, 41.554626, 27.587212>,  <31.945295, 41.781754, 27.562057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.871943, 41.554626, 27.587212>,  <31.749687, 41.176083, 27.629135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871943, 41.554626, 27.587212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333349, -0.003244, 0.942798,
		0.891887, -0.323095, -0.316460,
		0.305640, 0.946361, -0.104810,
		31.963634, 41.838535, 27.555769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512753, 41.211082, 27.783257>,  <31.749687, 41.176083, 27.629135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512753, 41.211082, 27.783257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350601, 41.569374, 27.856291>,  <32.253311, 41.784348, 27.900112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350601, 41.569374, 27.856291>,  <32.512753, 41.211082, 27.783257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350601, 41.569374, 27.856291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414349, 0.002004, 0.910116,
		0.814850, 0.444598, -0.371957,
		-0.405381, 0.895728, 0.182586,
		32.228989, 41.838093, 27.911066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079220, 41.687473, 28.033529>,  <32.512753, 41.211082, 27.783257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079220, 41.687473, 28.033529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723427, 41.807724, 28.171190>,  <32.509949, 41.879875, 28.253786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723427, 41.807724, 28.171190>,  <33.079220, 41.687473, 28.033529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723427, 41.807724, 28.171190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345544, -0.050337, 0.937051,
		0.299026, 0.952413, -0.059106,
		-0.889485, 0.300626, 0.344153,
		32.456581, 41.897911, 28.274437>
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
