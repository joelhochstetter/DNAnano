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
	<24.413336, 35.083176, 35.128124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227827, 34.883018, 34.835678>,  <24.116522, 34.762924, 34.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227827, 34.883018, 34.835678>,  <24.413336, 35.083176, 35.128124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227827, 34.883018, 34.835678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615169, -0.775737, 0.140712,
		-0.637561, -0.384498, 0.667591,
		-0.463771, -0.500393, -0.731111,
		24.088696, 34.732903, 34.616344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.175301, 34.495472, 35.379459>,  <24.413336, 35.083176, 35.128124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.175301, 34.495472, 35.379459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275738, 34.470116, 34.993107>,  <24.336000, 34.454903, 34.761295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275738, 34.470116, 34.993107>,  <24.175301, 34.495472, 35.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275738, 34.470116, 34.993107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473153, -0.862478, 0.179606,
		-0.844440, -0.502109, -0.186567,
		0.251092, -0.063392, -0.965885,
		24.351065, 34.451099, 34.703342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355963, 33.794239, 35.284420>,  <24.175301, 34.495472, 35.379459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355963, 33.794239, 35.284420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513460, 33.956783, 34.954613>,  <24.607958, 34.054310, 34.756729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513460, 33.956783, 34.954613>,  <24.355963, 33.794239, 35.284420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513460, 33.956783, 34.954613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622767, -0.777680, -0.085880,
		-0.676112, -0.479669, -0.559276,
		0.393744, 0.406363, -0.824521,
		24.631584, 34.078693, 34.707256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433760, 33.239822, 34.769230>,  <24.355963, 33.794239, 35.284420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433760, 33.239822, 34.769230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681334, 33.530449, 34.649887>,  <24.829878, 33.704826, 34.578281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681334, 33.530449, 34.649887>,  <24.433760, 33.239822, 34.769230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681334, 33.530449, 34.649887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764901, -0.643873, 0.018798,
		-0.178448, -0.239851, -0.954268,
		0.618936, 0.726567, -0.298360,
		24.867014, 33.748421, 34.560379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872263, 33.152054, 34.147812>,  <24.433760, 33.239822, 34.769230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872263, 33.152054, 34.147812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087994, 33.350319, 34.420120>,  <25.217432, 33.469276, 34.583504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087994, 33.350319, 34.420120>,  <24.872263, 33.152054, 34.147812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087994, 33.350319, 34.420120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665396, -0.746314, 0.016235,
		0.516117, 0.444227, -0.732316,
		0.539325, 0.495659, 0.680772,
		25.249792, 33.499016, 34.624352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638170, 33.310089, 34.043476>,  <24.872263, 33.152054, 34.147812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638170, 33.310089, 34.043476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568518, 33.264648, 34.434734>,  <25.526726, 33.237385, 34.669491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568518, 33.264648, 34.434734>,  <25.638170, 33.310089, 34.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568518, 33.264648, 34.434734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550351, -0.834933, 0.001004,
		0.816573, 0.538499, 0.207912,
		-0.174133, -0.113605, 0.978147,
		25.516277, 33.230568, 34.728180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326900, 33.305824, 34.326733>,  <25.638170, 33.310089, 34.043476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326900, 33.305824, 34.326733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064983, 33.107628, 34.555027>,  <25.907833, 32.988708, 34.692001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064983, 33.107628, 34.555027>,  <26.326900, 33.305824, 34.326733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064983, 33.107628, 34.555027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432015, -0.864977, -0.255301,
		0.620170, 0.079396, 0.780440,
		-0.654792, -0.495492, 0.570733,
		25.868546, 32.958981, 34.726246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678091, 32.920452, 34.946236>,  <26.326900, 33.305824, 34.326733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678091, 32.920452, 34.946236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353209, 32.734261, 34.805576>,  <26.158279, 32.622547, 34.721180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353209, 32.734261, 34.805576>,  <26.678091, 32.920452, 34.946236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353209, 32.734261, 34.805576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545429, -0.819752, -0.174679,
		-0.206952, -0.333672, 0.919692,
		-0.812205, -0.465477, -0.351644,
		26.109547, 32.594616, 34.700085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606865, 32.283546, 35.275017>,  <26.678091, 32.920452, 34.946236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606865, 32.283546, 35.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403761, 32.229420, 34.934696>,  <26.281898, 32.196945, 34.730503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403761, 32.229420, 34.934696>,  <26.606865, 32.283546, 35.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403761, 32.229420, 34.934696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553234, -0.808258, -0.201620,
		-0.660386, -0.573069, 0.485265,
		-0.507761, -0.135318, -0.850804,
		26.251432, 32.188824, 34.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353859, 31.586395, 35.269367>,  <26.606865, 32.283546, 35.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353859, 31.586395, 35.269367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368155, 31.693581, 34.884262>,  <26.376732, 31.757893, 34.653198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368155, 31.693581, 34.884262>,  <26.353859, 31.586395, 35.269367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368155, 31.693581, 34.884262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322122, -0.915053, -0.242726,
		-0.946023, -0.301453, -0.119020,
		0.035739, 0.267964, -0.962766,
		26.378876, 31.773970, 34.595432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149290, 30.975119, 34.941620>,  <26.353859, 31.586395, 35.269367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149290, 30.975119, 34.941620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341875, 31.212542, 34.683662>,  <26.457426, 31.354996, 34.528889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341875, 31.212542, 34.683662>,  <26.149290, 30.975119, 34.941620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341875, 31.212542, 34.683662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424724, -0.801625, -0.420722,
		-0.766684, -0.071339, -0.638049,
		0.481462, 0.593555, -0.644892,
		26.486313, 31.390608, 34.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269554, 30.642426, 34.298435>,  <26.149290, 30.975119, 34.941620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269554, 30.642426, 34.298435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542931, 30.934427, 34.298912>,  <26.706957, 31.109629, 34.299198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542931, 30.934427, 34.298912>,  <26.269554, 30.642426, 34.298435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542931, 30.934427, 34.298912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692175, -0.647503, -0.318802,
		-0.231955, 0.218707, -0.947821,
		0.683441, 0.730005, 0.001192,
		26.747963, 31.153429, 34.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478682, 30.785061, 33.583782>,  <26.269554, 30.642426, 34.298435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478682, 30.785061, 33.583782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756639, 30.875563, 33.856819>,  <26.923414, 30.929865, 34.020641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756639, 30.875563, 33.856819>,  <26.478682, 30.785061, 33.583782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756639, 30.875563, 33.856819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682035, -0.508216, -0.525876,
		0.227919, 0.830978, -0.507473,
		0.694897, 0.226257, 0.682588,
		26.965109, 30.943439, 34.061596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088724, 31.237394, 33.423363>,  <26.478682, 30.785061, 33.583782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088724, 31.237394, 33.423363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186136, 30.977198, 33.711128>,  <27.244583, 30.821079, 33.883785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186136, 30.977198, 33.711128>,  <27.088724, 31.237394, 33.423363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186136, 30.977198, 33.711128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663824, -0.429000, -0.612615,
		0.707129, 0.626753, 0.327337,
		0.243530, -0.650492, 0.719412,
		27.259195, 30.782049, 33.926952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807384, 31.192636, 33.559658>,  <27.088724, 31.237394, 33.423363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807384, 31.192636, 33.559658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666414, 30.828732, 33.647408>,  <27.581831, 30.610388, 33.700058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666414, 30.828732, 33.647408>,  <27.807384, 31.192636, 33.559658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666414, 30.828732, 33.647408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672477, -0.409214, -0.616700,
		0.650822, -0.069817, 0.756013,
		-0.352427, -0.909763, 0.219375,
		27.560686, 30.555803, 33.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425257, 31.729858, 33.911003>,  <27.807384, 31.192636, 33.559658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425257, 31.729858, 33.911003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082138, 31.526585, 33.880192>,  <26.876266, 31.404621, 33.861706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082138, 31.526585, 33.880192>,  <27.425257, 31.729858, 33.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082138, 31.526585, 33.880192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480740, 0.740224, 0.470061,
		-0.181861, 0.440247, -0.879266,
		-0.857797, -0.508184, -0.077026,
		26.824799, 31.374130, 33.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913990, 32.175529, 33.561497>,  <27.425257, 31.729858, 33.911003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913990, 32.175529, 33.561497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741577, 31.904140, 33.799450>,  <26.638130, 31.741306, 33.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741577, 31.904140, 33.799450>,  <26.913990, 32.175529, 33.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741577, 31.904140, 33.799450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662764, 0.685435, 0.301535,
		-0.612336, -0.264294, -0.745113,
		-0.431033, -0.678474, 0.594881,
		26.612267, 31.700598, 33.977913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131100, 32.148861, 33.333035>,  <26.913990, 32.175529, 33.561497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131100, 32.148861, 33.333035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213329, 32.031467, 33.706474>,  <26.262667, 31.961031, 33.930538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213329, 32.031467, 33.706474>,  <26.131100, 32.148861, 33.333035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213329, 32.031467, 33.706474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610458, 0.707167, 0.356728,
		-0.764905, -0.643256, -0.033787,
		0.205574, -0.293488, 0.933597,
		26.275002, 31.943420, 33.986553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504208, 32.088268, 33.614002>,  <26.131100, 32.148861, 33.333035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504208, 32.088268, 33.614002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738596, 32.101215, 33.937878>,  <25.879229, 32.108986, 34.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738596, 32.101215, 33.937878>,  <25.504208, 32.088268, 33.614002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738596, 32.101215, 33.937878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646935, 0.620392, 0.443384,
		-0.487969, -0.783624, 0.384474,
		0.585971, 0.032371, 0.809686,
		25.914387, 32.110928, 34.180782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071684, 31.926178, 34.217709>,  <25.504208, 32.088268, 33.614002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071684, 31.926178, 34.217709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389097, 32.138489, 34.336761>,  <25.579544, 32.265873, 34.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389097, 32.138489, 34.336761>,  <25.071684, 31.926178, 34.217709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389097, 32.138489, 34.336761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608026, 0.671693, 0.423241,
		0.024728, -0.516823, 0.855735,
		0.793532, 0.530775, 0.297632,
		25.627157, 32.297722, 34.426052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973057, 32.146732, 34.920731>,  <25.071684, 31.926178, 34.217709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973057, 32.146732, 34.920731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344725, 32.291180, 34.952320>,  <25.567726, 32.377850, 34.971275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344725, 32.291180, 34.952320>,  <24.973057, 32.146732, 34.920731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344725, 32.291180, 34.952320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368856, 0.919787, 0.133925,
		-0.024276, -0.153569, 0.987840,
		0.929169, 0.361119, 0.078974,
		25.623476, 32.399517, 34.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073666, 32.469479, 35.619839>,  <24.973057, 32.146732, 34.920731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073666, 32.469479, 35.619839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314730, 32.605297, 35.330978>,  <25.459368, 32.686787, 35.157661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314730, 32.605297, 35.330978>,  <25.073666, 32.469479, 35.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314730, 32.605297, 35.330978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211639, 0.940561, 0.265618,
		0.769421, -0.007242, 0.638701,
		0.602661, 0.339546, -0.722155,
		25.495527, 32.707161, 35.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370522, 33.033531, 35.999939>,  <25.073666, 32.469479, 35.619839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370522, 33.033531, 35.999939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416731, 33.108185, 35.609692>,  <25.444456, 33.152977, 35.375546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416731, 33.108185, 35.609692>,  <25.370522, 33.033531, 35.999939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416731, 33.108185, 35.609692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117517, 0.977860, 0.173148,
		0.986329, 0.094648, 0.134896,
		0.115521, 0.186634, -0.975614,
		25.451387, 33.164173, 35.317009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699949, 33.724350, 35.697094>,  <25.370522, 33.033531, 35.999939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699949, 33.724350, 35.697094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971539, 33.870602, 35.442440>,  <26.134493, 33.958355, 35.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971539, 33.870602, 35.442440>,  <25.699949, 33.724350, 35.697094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971539, 33.870602, 35.442440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709571, 0.104265, -0.696877,
		-0.188422, 0.924901, 0.330237,
		0.678974, 0.365634, -0.636637,
		26.175230, 33.980293, 35.251450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440201, 34.270325, 35.402668>,  <25.699949, 33.724350, 35.697094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440201, 34.270325, 35.402668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676464, 34.071735, 35.148224>,  <25.818222, 33.952583, 34.995556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676464, 34.071735, 35.148224>,  <25.440201, 34.270325, 35.402668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676464, 34.071735, 35.148224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665343, 0.146380, -0.732046,
		0.456555, 0.855621, -0.243864,
		0.590657, -0.496473, -0.636113,
		25.853661, 33.922794, 34.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628195, 34.648811, 34.855339>,  <25.440201, 34.270325, 35.402668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628195, 34.648811, 34.855339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601669, 34.274605, 34.716534>,  <25.585754, 34.050083, 34.633251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601669, 34.274605, 34.716534>,  <25.628195, 34.648811, 34.855339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601669, 34.274605, 34.716534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737295, 0.280269, -0.614691,
		0.672309, 0.215088, -0.708335,
		-0.066312, -0.935514, -0.347011,
		25.581776, 33.993950, 34.612431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715010, 34.623493, 34.077755>,  <25.628195, 34.648811, 34.855339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715010, 34.623493, 34.077755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463640, 34.347389, 34.221214>,  <25.312819, 34.181728, 34.307289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463640, 34.347389, 34.221214>,  <25.715010, 34.623493, 34.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463640, 34.347389, 34.221214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777872, 0.557325, -0.290352,
		0.000535, -0.461444, -0.887169,
		-0.628423, -0.690259, 0.358646,
		25.275114, 34.140312, 34.328808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168167, 34.359844, 33.642242>,  <25.715010, 34.623493, 34.077755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168167, 34.359844, 33.642242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013994, 34.338524, 34.010719>,  <24.921490, 34.325733, 34.231808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013994, 34.338524, 34.010719>,  <25.168167, 34.359844, 33.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013994, 34.338524, 34.010719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812700, 0.492398, -0.311550,
		-0.436989, -0.868737, -0.233102,
		-0.385434, -0.053298, 0.921195,
		24.898365, 34.322533, 34.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642612, 34.342579, 33.071384>,  <25.168167, 34.359844, 33.642242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642612, 34.342579, 33.071384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911566, 34.072533, 33.192787>,  <26.072937, 33.910503, 33.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911566, 34.072533, 33.192787>,  <25.642612, 34.342579, 33.071384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911566, 34.072533, 33.192787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604253, -0.737451, -0.301737,
		0.427530, 0.019486, -0.903791,
		0.672381, -0.675120, 0.303508,
		26.113279, 33.869995, 33.283840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496410, 33.785454, 32.626808>,  <25.642612, 34.342579, 33.071384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496410, 33.785454, 32.626808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670395, 33.630951, 32.952168>,  <25.774786, 33.538250, 33.147381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670395, 33.630951, 32.952168>,  <25.496410, 33.785454, 32.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670395, 33.630951, 32.952168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420299, -0.885972, -0.195967,
		0.796340, -0.256631, -0.547708,
		0.434962, -0.386257, 0.813396,
		25.800884, 33.515076, 33.196186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889988, 33.059635, 32.588730>,  <25.496410, 33.785454, 32.626808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889988, 33.059635, 32.588730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712954, 33.139153, 32.938496>,  <25.606733, 33.186863, 33.148354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712954, 33.139153, 32.938496>,  <25.889988, 33.059635, 32.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712954, 33.139153, 32.938496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579033, -0.807931, -0.109397,
		0.684719, -0.554732, 0.472686,
		-0.442584, 0.198794, 0.874414,
		25.580179, 33.198792, 33.200821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384052, 33.393448, 32.931561>,  <25.889988, 33.059635, 32.588730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384052, 33.393448, 32.931561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578720, 33.401745, 32.582226>,  <26.695520, 33.406723, 32.372623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578720, 33.401745, 32.582226>,  <26.384052, 33.393448, 32.931561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578720, 33.401745, 32.582226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324110, 0.924080, 0.202556,
		0.811237, -0.381636, 0.443000,
		0.486670, 0.020741, -0.873340,
		26.724720, 33.407967, 32.320225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082676, 33.627251, 33.040577>,  <26.384052, 33.393448, 32.931561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082676, 33.627251, 33.040577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023653, 33.710312, 32.653774>,  <26.988239, 33.760147, 32.421692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023653, 33.710312, 32.653774>,  <27.082676, 33.627251, 33.040577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023653, 33.710312, 32.653774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179179, 0.967146, 0.180342,
		0.972688, -0.146657, -0.179916,
		-0.147556, 0.207654, -0.967009,
		26.979385, 33.772610, 32.363670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664753, 34.007896, 32.840611>,  <27.082676, 33.627251, 33.040577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664753, 34.007896, 32.840611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383524, 34.082966, 32.566246>,  <27.214787, 34.128006, 32.401627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383524, 34.082966, 32.566246>,  <27.664753, 34.007896, 32.840611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383524, 34.082966, 32.566246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227304, 0.973254, 0.033300,
		0.673813, -0.132498, -0.726925,
		-0.703071, 0.187671, -0.685909,
		27.172604, 34.139267, 32.360474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903013, 34.359886, 32.192574>,  <27.664753, 34.007896, 32.840611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903013, 34.359886, 32.192574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530910, 34.465118, 32.294876>,  <27.307650, 34.528259, 32.356258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530910, 34.465118, 32.294876>,  <27.903013, 34.359886, 32.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530910, 34.465118, 32.294876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339595, 0.881280, 0.328664,
		-0.138928, 0.392595, -0.909158,
		-0.930255, 0.263085, 0.255758,
		27.251835, 34.544044, 32.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675407, 34.992889, 31.842236>,  <27.903013, 34.359886, 32.192574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675407, 34.992889, 31.842236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445753, 34.939991, 32.165440>,  <27.307961, 34.908253, 32.359364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445753, 34.939991, 32.165440>,  <27.675407, 34.992889, 31.842236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445753, 34.939991, 32.165440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118697, 0.963000, 0.241954,
		-0.810112, 0.234823, -0.537193,
		-0.574134, -0.132247, 0.808011,
		27.273514, 34.900318, 32.407845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617813, 35.343994, 31.127964>,  <27.675407, 34.992889, 31.842236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617813, 35.343994, 31.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336870, 35.268425, 31.402483>,  <27.168304, 35.223083, 31.567194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336870, 35.268425, 31.402483>,  <27.617813, 35.343994, 31.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336870, 35.268425, 31.402483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300391, 0.952747, -0.045153,
		-0.645337, -0.237872, -0.725918,
		-0.702357, -0.188920, 0.686297,
		27.126163, 35.211750, 31.608372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974504, 35.692768, 30.858599>,  <27.617813, 35.343994, 31.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974504, 35.692768, 30.858599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926266, 35.653358, 31.253719>,  <26.897322, 35.629711, 31.490791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926266, 35.653358, 31.253719>,  <26.974504, 35.692768, 30.858599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926266, 35.653358, 31.253719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074493, 0.993155, 0.089967,
		-0.989902, -0.062735, -0.127111,
		-0.120597, -0.098527, 0.987800,
		26.890087, 35.623802, 31.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669136, 36.213753, 30.984289>,  <26.974504, 35.692768, 30.858599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669136, 36.213753, 30.984289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793447, 36.102425, 31.347818>,  <26.868034, 36.035629, 31.565935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793447, 36.102425, 31.347818>,  <26.669136, 36.213753, 30.984289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793447, 36.102425, 31.347818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019251, 0.957815, 0.286741,
		-0.950288, -0.071617, 0.303026,
		0.310778, -0.278320, 0.908821,
		26.886681, 36.018929, 31.620464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237173, 36.598961, 31.418783>,  <26.669136, 36.213753, 30.984289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237173, 36.598961, 31.418783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552231, 36.479126, 31.634140>,  <26.741266, 36.407227, 31.763353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552231, 36.479126, 31.634140>,  <26.237173, 36.598961, 31.418783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552231, 36.479126, 31.634140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028541, 0.855149, 0.517595,
		-0.615468, -0.423048, 0.665004,
		0.787645, -0.299583, 0.538391,
		26.788525, 36.389252, 31.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639902, 37.036491, 31.932844>,  <26.237173, 36.598961, 31.418783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639902, 37.036491, 31.932844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412071, 36.789345, 32.149666>,  <26.275373, 36.641056, 32.279758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412071, 36.789345, 32.149666>,  <26.639902, 37.036491, 31.932844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412071, 36.789345, 32.149666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656559, -0.738761, -0.152196,
		0.494484, 0.269202, 0.826448,
		-0.569576, -0.617870, 0.542052,
		26.241198, 36.603985, 32.312283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199390, 36.467403, 32.254364>,  <26.639902, 37.036491, 31.932844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199390, 36.467403, 32.254364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820681, 36.339146, 32.265697>,  <26.593454, 36.262192, 32.272499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820681, 36.339146, 32.265697>,  <27.199390, 36.467403, 32.254364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820681, 36.339146, 32.265697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314049, -0.939433, -0.137254,
		0.070627, -0.121050, 0.990131,
		-0.946776, -0.320644, 0.028334,
		26.536648, 36.242954, 32.274197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176445, 35.976799, 32.713757>,  <27.199390, 36.467403, 32.254364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176445, 35.976799, 32.713757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900436, 35.922638, 32.429352>,  <26.734831, 35.890141, 32.258709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900436, 35.922638, 32.429352>,  <27.176445, 35.976799, 32.713757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900436, 35.922638, 32.429352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413714, -0.879836, -0.233942,
		-0.593894, -0.455580, 0.663127,
		-0.690022, -0.135407, -0.711009,
		26.693430, 35.882015, 32.216049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683121, 35.466568, 32.839603>,  <27.176445, 35.976799, 32.713757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683121, 35.466568, 32.839603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728121, 35.510345, 32.444561>,  <26.755121, 35.536613, 32.207535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728121, 35.510345, 32.444561>,  <26.683121, 35.466568, 32.839603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728121, 35.510345, 32.444561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184242, -0.978978, -0.087503,
		-0.976422, -0.172114, -0.130299,
		0.112499, 0.109446, -0.987606,
		26.761871, 35.543179, 32.148281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225327, 35.095165, 32.567444>,  <26.683121, 35.466568, 32.839603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225327, 35.095165, 32.567444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520813, 35.108303, 32.298157>,  <26.698105, 35.116184, 32.136585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520813, 35.108303, 32.298157>,  <26.225327, 35.095165, 32.567444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520813, 35.108303, 32.298157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086776, -0.995134, 0.046667,
		-0.668409, -0.092893, -0.737970,
		0.738715, 0.032845, -0.673218,
		26.742428, 35.118156, 32.096191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059187, 34.514427, 32.042442>,  <26.225327, 35.095165, 32.567444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059187, 34.514427, 32.042442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450573, 34.588547, 32.006073>,  <26.685406, 34.633018, 31.984253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450573, 34.588547, 32.006073>,  <26.059187, 34.514427, 32.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450573, 34.588547, 32.006073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161503, -0.961623, -0.221807,
		-0.128532, 0.202347, -0.970842,
		0.978466, 0.185304, -0.090919,
		26.744112, 34.644138, 31.978798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359303, 34.391754, 31.369263>,  <26.059187, 34.514427, 32.042442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359303, 34.391754, 31.369263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616806, 34.311817, 31.664732>,  <26.771309, 34.263855, 31.842012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616806, 34.311817, 31.664732>,  <26.359303, 34.391754, 31.369263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616806, 34.311817, 31.664732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049560, -0.952383, -0.300851,
		0.763620, 0.230284, -0.603203,
		0.643761, -0.199841, 0.738671,
		26.809935, 34.251865, 31.886333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773235, 33.986851, 31.069677>,  <26.359303, 34.391754, 31.369263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773235, 33.986851, 31.069677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842438, 33.932064, 31.459818>,  <26.883959, 33.899193, 31.693903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842438, 33.932064, 31.459818>,  <26.773235, 33.986851, 31.069677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842438, 33.932064, 31.459818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045196, -0.990345, -0.131053,
		0.983883, -0.021409, -0.177524,
		0.173005, -0.136964, 0.975351,
		26.894339, 33.890976, 31.752422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308962, 33.490540, 31.131781>,  <26.773235, 33.986851, 31.069677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308962, 33.490540, 31.131781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100986, 33.463566, 31.472397>,  <26.976202, 33.447380, 31.676765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100986, 33.463566, 31.472397>,  <27.308962, 33.490540, 31.131781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100986, 33.463566, 31.472397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063237, -0.991105, -0.117100,
		0.851861, -0.114734, 0.511048,
		-0.519937, -0.067435, 0.851539,
		26.945005, 33.443336, 31.727858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740313, 33.024502, 31.391970>,  <27.308962, 33.490540, 31.131781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740313, 33.024502, 31.391970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370901, 33.023643, 31.545378>,  <27.149254, 33.023129, 31.637423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370901, 33.023643, 31.545378>,  <27.740313, 33.024502, 31.391970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370901, 33.023643, 31.545378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094873, -0.967626, -0.233881,
		0.371607, -0.252381, 0.893427,
		-0.923530, -0.002150, 0.383520,
		27.093842, 33.022999, 31.660435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472219, 32.912724, 31.218185>,  <27.740313, 33.024502, 31.391970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472219, 32.912724, 31.218185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519743, 33.305878, 31.274508>,  <28.548258, 33.541771, 31.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519743, 33.305878, 31.274508>,  <28.472219, 32.912724, 31.218185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519743, 33.305878, 31.274508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955223, -0.074443, -0.286368,
		-0.270985, 0.168523, -0.947717,
		0.118810, 0.982883, 0.140804,
		28.555386, 33.600742, 31.316750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710903, 33.176540, 30.586407>,  <28.472219, 32.912724, 31.218185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710903, 33.176540, 30.586407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835136, 33.437603, 30.862835>,  <28.909676, 33.594242, 31.028692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835136, 33.437603, 30.862835>,  <28.710903, 33.176540, 30.586407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835136, 33.437603, 30.862835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918339, -0.018376, -0.395368,
		-0.245341, 0.757430, -0.605068,
		0.310582, 0.652657, 0.691069,
		28.928310, 33.633400, 31.070156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023384, 33.754078, 30.180044>,  <28.710903, 33.176540, 30.586407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023384, 33.754078, 30.180044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172003, 33.704601, 30.548100>,  <29.261173, 33.674915, 30.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172003, 33.704601, 30.548100>,  <29.023384, 33.754078, 30.180044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172003, 33.704601, 30.548100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924046, -0.046765, -0.379410,
		0.089960, 0.991218, 0.096922,
		0.371545, -0.123692, 0.920138,
		29.283466, 33.667492, 30.824141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653589, 33.691380, 30.041838>,  <29.023384, 33.754078, 30.180044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653589, 33.691380, 30.041838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662914, 33.595509, 30.430067>,  <29.668509, 33.537987, 30.663004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662914, 33.595509, 30.430067>,  <29.653589, 33.691380, 30.041838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662914, 33.595509, 30.430067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945431, -0.310309, -0.099338,
		0.324986, 0.919926, 0.219362,
		0.023313, -0.239675, 0.970573,
		29.669909, 33.523605, 30.721239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169193, 33.983582, 30.371752>,  <29.653589, 33.691380, 30.041838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169193, 33.983582, 30.371752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074594, 33.644859, 30.562323>,  <30.017836, 33.441624, 30.676666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074594, 33.644859, 30.562323>,  <30.169193, 33.983582, 30.371752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074594, 33.644859, 30.562323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778400, -0.458589, -0.428707,
		0.581517, 0.269464, 0.767611,
		-0.236497, -0.846809, 0.476428,
		30.003645, 33.390816, 30.705252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834660, 33.760704, 30.734892>,  <30.169193, 33.983582, 30.371752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834660, 33.760704, 30.734892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574203, 33.481285, 30.616198>,  <30.417931, 33.313633, 30.544981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574203, 33.481285, 30.616198>,  <30.834660, 33.760704, 30.734892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574203, 33.481285, 30.616198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758275, -0.582189, -0.293384,
		0.032186, -0.416041, 0.908776,
		-0.651139, -0.698545, -0.296736,
		30.378862, 33.271721, 30.527178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840353, 33.223255, 31.191711>,  <30.834660, 33.760704, 30.734892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840353, 33.223255, 31.191711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706932, 33.108776, 30.832415>,  <30.626881, 33.040089, 30.616837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706932, 33.108776, 30.832415>,  <30.840353, 33.223255, 31.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706932, 33.108776, 30.832415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833028, -0.535563, -0.138695,
		-0.441371, -0.794522, 0.417046,
		-0.333551, -0.286195, -0.898241,
		30.606867, 33.022919, 30.562943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095703, 32.597603, 31.044601>,  <30.840353, 33.223255, 31.191711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095703, 32.597603, 31.044601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995722, 32.736614, 30.683104>,  <30.935734, 32.820019, 30.466206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995722, 32.736614, 30.683104>,  <31.095703, 32.597603, 31.044601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995722, 32.736614, 30.683104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866953, -0.335319, -0.368720,
		-0.431181, -0.875664, -0.217475,
		-0.249951, 0.347526, -0.903742,
		30.920736, 32.840874, 30.411982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609865, 32.179886, 31.438292>,  <31.095703, 32.597603, 31.044601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609865, 32.179886, 31.438292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862427, 32.139919, 31.745888>,  <31.013964, 32.115940, 31.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862427, 32.139919, 31.745888>,  <30.609865, 32.179886, 31.438292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862427, 32.139919, 31.745888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050178, 0.994851, 0.088058,
		-0.773830, -0.017014, 0.633164,
		0.631402, -0.099912, 0.768992,
		31.051847, 32.109947, 31.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226299, 32.507843, 32.032566>,  <30.609865, 32.179886, 31.438292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226299, 32.507843, 32.032566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619648, 32.497879, 31.960613>,  <30.855658, 32.491901, 31.917442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619648, 32.497879, 31.960613>,  <30.226299, 32.507843, 32.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619648, 32.497879, 31.960613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031830, 0.998856, 0.035686,
		0.178785, -0.040818, 0.983041,
		0.983373, -0.024910, -0.179880,
		30.914660, 32.490406, 31.906649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449408, 33.035297, 32.382912>,  <30.226299, 32.507843, 32.032566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449408, 33.035297, 32.382912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730495, 32.975529, 32.104671>,  <30.899147, 32.939667, 31.937727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730495, 32.975529, 32.104671>,  <30.449408, 33.035297, 32.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730495, 32.975529, 32.104671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012081, 0.975050, -0.221658,
		0.711365, 0.164167, 0.683380,
		0.702718, -0.149424, -0.695600,
		30.941311, 32.930702, 31.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852636, 33.613449, 32.446003>,  <30.449408, 33.035297, 32.382912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852636, 33.613449, 32.446003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893366, 33.447845, 32.084179>,  <30.917803, 33.348484, 31.867085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893366, 33.447845, 32.084179>,  <30.852636, 33.613449, 32.446003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893366, 33.447845, 32.084179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052094, 0.905820, -0.420448,
		0.993438, 0.089933, 0.070666,
		0.101823, -0.414007, -0.904561,
		30.923912, 33.323643, 31.812811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555883, 33.702885, 32.167934>,  <30.852636, 33.613449, 32.446003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555883, 33.702885, 32.167934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286949, 33.674416, 31.873209>,  <31.125589, 33.657333, 31.696373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286949, 33.674416, 31.873209>,  <31.555883, 33.702885, 32.167934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286949, 33.674416, 31.873209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101127, 0.977205, -0.186665,
		0.733307, -0.200013, -0.649812,
		-0.672335, -0.071169, -0.736818,
		31.085249, 33.653065, 31.652164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880955, 33.149166, 32.072433>,  <31.555883, 33.702885, 32.167934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880955, 33.149166, 32.072433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171791, 33.186562, 32.344490>,  <32.346294, 33.209000, 32.507725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171791, 33.186562, 32.344490>,  <31.880955, 33.149166, 32.072433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171791, 33.186562, 32.344490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618400, -0.519477, -0.589682,
		0.298192, 0.849355, -0.435520,
		0.727092, 0.093488, 0.680145,
		32.389919, 33.214607, 32.548534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444973, 33.472137, 31.753345>,  <31.880955, 33.149166, 32.072433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444973, 33.472137, 31.753345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559872, 33.235916, 32.055004>,  <32.628811, 33.094185, 32.236000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559872, 33.235916, 32.055004>,  <32.444973, 33.472137, 31.753345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559872, 33.235916, 32.055004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458841, -0.606283, -0.649527,
		0.840807, 0.532607, 0.096819,
		0.287243, -0.590551, 0.754149,
		32.646046, 33.058750, 32.281250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275002, 33.237041, 31.748077>,  <32.444973, 33.472137, 31.753345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275002, 33.237041, 31.748077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031986, 32.961903, 31.906952>,  <32.886177, 32.796818, 32.002277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031986, 32.961903, 31.906952>,  <33.275002, 33.237041, 31.748077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031986, 32.961903, 31.906952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260385, -0.644894, -0.718548,
		0.750397, -0.333125, 0.570905,
		-0.607539, -0.687851, 0.397186,
		32.849724, 32.755547, 32.026108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628433, 32.513859, 31.963110>,  <33.275002, 33.237041, 31.748077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628433, 32.513859, 31.963110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261059, 32.530624, 31.805771>,  <33.040634, 32.540684, 31.711367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261059, 32.530624, 31.805771>,  <33.628433, 32.513859, 31.963110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261059, 32.530624, 31.805771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250214, -0.708622, -0.659733,
		-0.306384, -0.704342, 0.640337,
		-0.918435, 0.041910, -0.393347,
		32.985527, 32.543198, 31.687767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513496, 31.828651, 31.954367>,  <33.628433, 32.513859, 31.963110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513496, 31.828651, 31.954367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280529, 32.014111, 31.687288>,  <33.140747, 32.125385, 31.527040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280529, 32.014111, 31.687288>,  <33.513496, 31.828651, 31.954367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280529, 32.014111, 31.687288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260779, -0.671402, -0.693696,
		-0.769923, -0.578143, 0.270128,
		-0.582420, 0.463649, -0.667696,
		33.105804, 32.153206, 31.486980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055035, 31.321878, 31.595787>,  <33.513496, 31.828651, 31.954367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055035, 31.321878, 31.595787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115147, 31.629093, 31.346777>,  <33.151215, 31.813421, 31.197371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115147, 31.629093, 31.346777>,  <33.055035, 31.321878, 31.595787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115147, 31.629093, 31.346777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267282, -0.637791, -0.722346,
		-0.951828, -0.057835, -0.301129,
		0.150280, 0.768035, -0.622525,
		33.160233, 31.859505, 31.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838993, 31.013680, 30.876287>,  <33.055035, 31.321878, 31.595787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838993, 31.013680, 30.876287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046337, 31.343288, 30.784817>,  <33.170742, 31.541054, 30.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046337, 31.343288, 30.784817>,  <32.838993, 31.013680, 30.876287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046337, 31.343288, 30.784817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299875, -0.425578, -0.853791,
		-0.800861, 0.373996, -0.467705,
		0.518359, 0.824021, -0.228677,
		33.201843, 31.590494, 30.716213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600681, 31.233982, 30.219925>,  <32.838993, 31.013680, 30.876287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600681, 31.233982, 30.219925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970215, 31.381773, 30.259960>,  <33.191936, 31.470448, 30.283981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970215, 31.381773, 30.259960>,  <32.600681, 31.233982, 30.219925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970215, 31.381773, 30.259960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263490, -0.424117, -0.866428,
		-0.277678, 0.826807, -0.489167,
		0.923833, 0.369479, 0.100087,
		33.247364, 31.492617, 30.289986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835934, 31.396820, 29.569170>,  <32.600681, 31.233982, 30.219925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835934, 31.396820, 29.569170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188076, 31.400414, 29.758860>,  <33.399361, 31.402569, 29.872673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188076, 31.400414, 29.758860>,  <32.835934, 31.396820, 29.569170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188076, 31.400414, 29.758860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420145, -0.478743, -0.770898,
		0.220106, 0.877909, -0.425240,
		0.880359, 0.008983, 0.474224,
		33.452183, 31.403109, 29.901127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280476, 31.699875, 29.104782>,  <32.835934, 31.396820, 29.569170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280476, 31.699875, 29.104782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499252, 31.473642, 29.351673>,  <33.630520, 31.337902, 29.499807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499252, 31.473642, 29.351673>,  <33.280476, 31.699875, 29.104782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499252, 31.473642, 29.351673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514087, -0.354989, -0.780831,
		0.660734, 0.744378, 0.096600,
		0.546942, -0.565583, 0.617229,
		33.663334, 31.303968, 29.536842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970924, 31.822338, 28.951765>,  <33.280476, 31.699875, 29.104782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970924, 31.822338, 28.951765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997631, 31.475065, 29.148458>,  <34.013657, 31.266701, 29.266474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997631, 31.475065, 29.148458>,  <33.970924, 31.822338, 28.951765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997631, 31.475065, 29.148458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593656, -0.361540, -0.718931,
		0.801944, 0.339921, 0.491263,
		0.066768, -0.868183, 0.491731,
		34.017662, 31.214611, 29.295979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708744, 31.567493, 28.934341>,  <33.970924, 31.822338, 28.951765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708744, 31.567493, 28.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465107, 31.254604, 28.986704>,  <34.318924, 31.066872, 29.018122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465107, 31.254604, 28.986704>,  <34.708744, 31.567493, 28.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465107, 31.254604, 28.986704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480369, -0.495194, -0.723899,
		0.631074, -0.378037, 0.677373,
		-0.609091, -0.782222, 0.130907,
		34.282379, 31.019938, 29.025976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239548, 31.054569, 28.889986>,  <34.708744, 31.567493, 28.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239548, 31.054569, 28.889986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896454, 30.854706, 28.841595>,  <34.690598, 30.734789, 28.812559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896454, 30.854706, 28.841595>,  <35.239548, 31.054569, 28.889986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896454, 30.854706, 28.841595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387431, -0.473568, -0.790968,
		0.337920, -0.725311, 0.599778,
		-0.857733, -0.499657, -0.120980,
		34.639133, 30.704809, 28.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454247, 30.368832, 28.704054>,  <35.239548, 31.054569, 28.889986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454247, 30.368832, 28.704054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070412, 30.396013, 28.594814>,  <34.840111, 30.412321, 28.529270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070412, 30.396013, 28.594814>,  <35.454247, 30.368832, 28.704054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070412, 30.396013, 28.594814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206711, -0.488327, -0.847825,
		-0.190972, -0.870011, 0.454544,
		-0.959584, 0.067951, -0.273097,
		34.782536, 30.416399, 28.512884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292576, 29.679590, 28.462875>,  <35.454247, 30.368832, 28.704054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292576, 29.679590, 28.462875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976921, 29.889643, 28.335436>,  <34.787529, 30.015675, 28.258972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976921, 29.889643, 28.335436>,  <35.292576, 29.679590, 28.462875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976921, 29.889643, 28.335436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030304, -0.551359, -0.833718,
		-0.613474, -0.648260, 0.451010,
		-0.789134, 0.525131, -0.318599,
		34.740181, 30.047182, 28.239857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753483, 29.235371, 28.363962>,  <35.292576, 29.679590, 28.462875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753483, 29.235371, 28.363962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686180, 29.546429, 28.121655>,  <34.645798, 29.733063, 27.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686180, 29.546429, 28.121655>,  <34.753483, 29.235371, 28.363962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686180, 29.546429, 28.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031287, -0.618436, -0.785213,
		-0.985247, -0.113165, 0.128386,
		-0.168257, 0.777645, -0.605771,
		34.635704, 29.779722, 27.939922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309593, 28.986135, 27.836363>,  <34.753483, 29.235371, 28.363962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309593, 28.986135, 27.836363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460030, 29.307371, 27.651493>,  <34.550293, 29.500113, 27.540571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460030, 29.307371, 27.651493>,  <34.309593, 28.986135, 27.836363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460030, 29.307371, 27.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067695, -0.473646, -0.878110,
		-0.924107, 0.361536, -0.123769,
		0.376091, 0.803088, -0.462174,
		34.572857, 29.548298, 27.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930237, 28.979240, 27.155966>,  <34.309593, 28.986135, 27.836363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930237, 28.979240, 27.155966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235001, 29.233662, 27.107090>,  <34.417858, 29.386314, 27.077765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235001, 29.233662, 27.107090>,  <33.930237, 28.979240, 27.155966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235001, 29.233662, 27.107090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049609, -0.245411, -0.968149,
		-0.645780, 0.731581, -0.218535,
		0.761910, 0.636052, -0.122189,
		34.463573, 29.424477, 27.070433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828686, 29.460552, 26.628508>,  <33.930237, 28.979240, 27.155966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828686, 29.460552, 26.628508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228592, 29.468948, 26.626066>,  <34.468536, 29.473986, 26.624601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228592, 29.468948, 26.626066>,  <33.828686, 29.460552, 26.628508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228592, 29.468948, 26.626066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004274, -0.086058, -0.996281,
		-0.021438, 0.996069, -0.085948,
		0.999761, 0.020991, -0.006102,
		34.528519, 29.475246, 26.624235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026936, 29.910666, 26.131838>,  <33.828686, 29.460552, 26.628508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026936, 29.910666, 26.131838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327271, 29.649586, 26.172283>,  <34.507473, 29.492937, 26.196550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327271, 29.649586, 26.172283>,  <34.026936, 29.910666, 26.131838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327271, 29.649586, 26.172283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080753, -0.061223, -0.994852,
		0.655530, 0.755139, 0.006739,
		0.750839, -0.652700, 0.101113,
		34.552521, 29.453775, 26.202618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365002, 29.988605, 25.438276>,  <34.026936, 29.910666, 26.131838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365002, 29.988605, 25.438276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539742, 29.679544, 25.622526>,  <34.644585, 29.494108, 25.733076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539742, 29.679544, 25.622526>,  <34.365002, 29.988605, 25.438276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539742, 29.679544, 25.622526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313805, -0.349000, -0.883020,
		0.843024, 0.530293, 0.090001,
		0.436849, -0.772650, 0.460624,
		34.670795, 29.447750, 25.760714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978252, 29.945234, 25.116150>,  <34.365002, 29.988605, 25.438276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978252, 29.945234, 25.116150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887634, 29.583088, 25.259808>,  <34.833263, 29.365799, 25.346003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887634, 29.583088, 25.259808>,  <34.978252, 29.945234, 25.116150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887634, 29.583088, 25.259808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003550, -0.367963, -0.929834,
		0.973994, -0.211924, 0.080146,
		-0.226545, -0.905369, 0.359146,
		34.819672, 29.311478, 25.367552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469860, 29.622433, 24.809412>,  <34.978252, 29.945234, 25.116150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469860, 29.622433, 24.809412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190037, 29.362698, 24.928726>,  <35.022141, 29.206858, 25.000315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190037, 29.362698, 24.928726>,  <35.469860, 29.622433, 24.809412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190037, 29.362698, 24.928726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192168, -0.573012, -0.796699,
		0.688247, -0.500020, 0.525640,
		-0.699563, -0.649336, 0.298286,
		34.980167, 29.167896, 25.018211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740597, 29.012930, 24.644604>,  <35.469860, 29.622433, 24.809412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740597, 29.012930, 24.644604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369858, 28.867718, 24.682905>,  <35.147415, 28.780590, 24.705887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369858, 28.867718, 24.682905>,  <35.740597, 29.012930, 24.644604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369858, 28.867718, 24.682905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159686, -0.611996, -0.774571,
		0.339792, -0.702617, 0.625196,
		-0.926845, -0.363029, 0.095753,
		35.091805, 28.758810, 24.711632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712273, 28.204155, 24.525564>,  <35.740597, 29.012930, 24.644604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712273, 28.204155, 24.525564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330006, 28.314869, 24.485388>,  <35.100647, 28.381296, 24.461283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330006, 28.314869, 24.485388>,  <35.712273, 28.204155, 24.525564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330006, 28.314869, 24.485388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097680, -0.619820, -0.778641,
		-0.277768, -0.734312, 0.619379,
		-0.955669, 0.276783, -0.100439,
		35.043304, 28.397903, 24.455256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330173, 27.565596, 24.530325>,  <35.712273, 28.204155, 24.525564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330173, 27.565596, 24.530325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092896, 27.834600, 24.353310>,  <34.950527, 27.996004, 24.247101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092896, 27.834600, 24.353310>,  <35.330173, 27.565596, 24.530325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092896, 27.834600, 24.353310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197227, -0.654349, -0.730020,
		-0.780524, -0.345765, 0.520796,
		-0.593198, 0.672513, -0.442541,
		34.914936, 28.036354, 24.220547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748623, 27.246008, 24.283112>,  <35.330173, 27.565596, 24.530325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748623, 27.246008, 24.283112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708984, 27.581142, 24.068371>,  <34.685200, 27.782223, 23.939526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708984, 27.581142, 24.068371>,  <34.748623, 27.246008, 24.283112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708984, 27.581142, 24.068371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223596, -0.544459, -0.808436,
		-0.969631, 0.039922, 0.241293,
		-0.099099, 0.837836, -0.536851,
		34.679253, 27.832493, 23.907316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207947, 27.073799, 23.792591>,  <34.748623, 27.246008, 24.283112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207947, 27.073799, 23.792591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411217, 27.373001, 23.621828>,  <34.533176, 27.552523, 23.519371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411217, 27.373001, 23.621828>,  <34.207947, 27.073799, 23.792591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411217, 27.373001, 23.621828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048731, -0.469915, -0.881366,
		-0.859876, 0.468689, -0.202346,
		0.508171, 0.748005, -0.426908,
		34.563667, 27.597403, 23.493755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782261, 27.178663, 23.256809>,  <34.207947, 27.073799, 23.792591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782261, 27.178663, 23.256809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 27.349695, 23.159555>,  <34.339489, 27.452314, 23.101202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 27.349695, 23.159555>,  <33.782261, 27.178663, 23.256809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130527, 27.349695, 23.159555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048712, -0.416921, -0.907637,
		-0.489455, 0.802093, -0.342171,
		0.870667, 0.427579, -0.243136,
		34.391727, 27.477968, 23.086615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784557, 27.717276, 22.611288>,  <33.782261, 27.178663, 23.256809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784557, 27.717276, 22.611288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161366, 27.583755, 22.624989>,  <34.387451, 27.503643, 22.633209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161366, 27.583755, 22.624989>,  <33.784557, 27.717276, 22.611288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161366, 27.583755, 22.624989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102720, -0.384037, -0.917586,
		0.319444, 0.860868, -0.396059,
		0.942021, -0.333800, 0.034250,
		34.443974, 27.483616, 22.635263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951946, 27.697283, 21.915691>,  <33.784557, 27.717276, 22.611288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951946, 27.697283, 21.915691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275043, 27.504784, 22.051897>,  <34.468903, 27.389284, 22.133621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275043, 27.504784, 22.051897>,  <33.951946, 27.697283, 21.915691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275043, 27.504784, 22.051897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130871, -0.416810, -0.899523,
		0.574824, 0.771147, -0.273694,
		0.807743, -0.481249, 0.340513,
		34.517368, 27.360409, 22.154051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559505, 27.836348, 21.512924>,  <33.951946, 27.697283, 21.915691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559505, 27.836348, 21.512924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643169, 27.480499, 21.675320>,  <34.693367, 27.266991, 21.772757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643169, 27.480499, 21.675320>,  <34.559505, 27.836348, 21.512924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643169, 27.480499, 21.675320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284060, -0.341994, -0.895740,
		0.935714, 0.302680, 0.181173,
		0.209162, -0.889621, 0.405988,
		34.705917, 27.213614, 21.797115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112881, 27.624722, 21.215214>,  <34.559505, 27.836348, 21.512924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112881, 27.624722, 21.215214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992115, 27.278400, 21.374832>,  <34.919655, 27.070608, 21.470604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992115, 27.278400, 21.374832>,  <35.112881, 27.624722, 21.215214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992115, 27.278400, 21.374832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075525, -0.438985, -0.895314,
		0.950340, -0.240167, 0.197924,
		-0.301910, -0.865802, 0.399047,
		34.901543, 27.018660, 21.494547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656101, 27.267027, 21.170929>,  <35.112881, 27.624722, 21.215214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656101, 27.267027, 21.170929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329967, 27.035860, 21.184978>,  <35.134285, 26.897160, 21.193407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329967, 27.035860, 21.184978>,  <35.656101, 27.267027, 21.170929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329967, 27.035860, 21.184978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173334, -0.301523, -0.937571,
		0.552430, -0.758350, 0.346016,
		-0.815338, -0.577918, 0.035123,
		35.085365, 26.862484, 21.195515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895809, 26.644545, 20.834354>,  <35.656101, 27.267027, 21.170929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895809, 26.644545, 20.834354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499149, 26.594074, 20.823711>,  <35.261154, 26.563791, 20.817326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499149, 26.594074, 20.823711>,  <35.895809, 26.644545, 20.834354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499149, 26.594074, 20.823711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066993, -0.327809, -0.942366,
		0.110182, -0.936280, 0.333525,
		-0.991651, -0.126176, -0.026606,
		35.201653, 26.556221, 20.815729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779114, 25.952747, 20.653284>,  <35.895809, 26.644545, 20.834354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779114, 25.952747, 20.653284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437454, 26.134834, 20.552719>,  <35.232460, 26.244085, 20.492380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437454, 26.134834, 20.552719>,  <35.779114, 25.952747, 20.653284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437454, 26.134834, 20.552719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025874, -0.445662, -0.894827,
		-0.519388, -0.770819, 0.368883,
		-0.854147, 0.455218, -0.251416,
		35.181210, 26.271399, 20.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336834, 25.406746, 20.396423>,  <35.779114, 25.952747, 20.653284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336834, 25.406746, 20.396423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 25.762363, 20.264469>,  <35.133659, 25.975735, 20.185297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 25.762363, 20.264469>,  <35.336834, 25.406746, 20.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209850, 25.762363, 20.264469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028189, -0.356573, -0.933842,
		-0.947854, -0.287153, 0.138257,
		-0.317454, 0.889044, -0.329885,
		35.114613, 26.029076, 20.165504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811249, 25.259388, 19.832710>,  <35.336834, 25.406746, 20.396423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811249, 25.259388, 19.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894432, 25.645987, 19.772528>,  <34.944344, 25.877945, 19.736418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894432, 25.645987, 19.772528>,  <34.811249, 25.259388, 19.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894432, 25.645987, 19.772528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197962, -0.109046, -0.974125,
		-0.957896, 0.232363, 0.168653,
		0.207960, 0.966497, -0.150454,
		34.956821, 25.935936, 19.727392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273933, 25.577686, 19.505606>,  <34.811249, 25.259388, 19.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273933, 25.577686, 19.505606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584038, 25.814323, 19.417065>,  <34.770100, 25.956305, 19.363939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584038, 25.814323, 19.417065>,  <34.273933, 25.577686, 19.505606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584038, 25.814323, 19.417065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358939, 0.124253, -0.925054,
		-0.519749, 0.796606, 0.308673,
		0.775257, 0.591591, -0.221353,
		34.816616, 25.991800, 19.350658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067619, 26.179169, 19.238811>,  <34.273933, 25.577686, 19.505606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067619, 26.179169, 19.238811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431381, 26.107035, 19.088900>,  <34.649639, 26.063755, 18.998953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431381, 26.107035, 19.088900>,  <34.067619, 26.179169, 19.238811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431381, 26.107035, 19.088900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349769, 0.155954, -0.923764,
		0.225035, 0.971163, 0.078750,
		0.909407, -0.180334, -0.374778,
		34.704205, 26.052935, 18.976467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273998, 26.784796, 18.840057>,  <34.067619, 26.179169, 19.238811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273998, 26.784796, 18.840057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477726, 26.464729, 18.713362>,  <34.599964, 26.272690, 18.637344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477726, 26.464729, 18.713362>,  <34.273998, 26.784796, 18.840057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477726, 26.464729, 18.713362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303471, 0.177415, -0.936178,
		0.805294, 0.572936, -0.152466,
		0.509321, -0.800167, -0.316741,
		34.630524, 26.224680, 18.618340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630856, 26.988876, 18.285498>,  <34.273998, 26.784796, 18.840057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630856, 26.988876, 18.285498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628613, 26.591993, 18.235708>,  <34.627266, 26.353863, 18.205835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628613, 26.591993, 18.235708>,  <34.630856, 26.988876, 18.285498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628613, 26.591993, 18.235708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083538, 0.124503, -0.988696,
		0.996489, 0.004850, -0.083586,
		-0.005612, -0.992207, -0.124471,
		34.626930, 26.294331, 18.198366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881702, 27.020859, 17.558495>,  <34.630856, 26.988876, 18.285498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881702, 27.020859, 17.558495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780106, 26.640596, 17.629761>,  <34.719147, 26.412439, 17.672522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780106, 26.640596, 17.629761>,  <34.881702, 27.020859, 17.558495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780106, 26.640596, 17.629761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059751, -0.168433, -0.983900,
		0.965359, -0.260549, -0.014022,
		-0.253992, -0.950655, 0.178166,
		34.703907, 26.355400, 17.683210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327946, 26.581919, 17.066996>,  <34.881702, 27.020859, 17.558495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327946, 26.581919, 17.066996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992680, 26.389242, 17.169331>,  <34.791519, 26.273636, 17.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992680, 26.389242, 17.169331>,  <35.327946, 26.581919, 17.066996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992680, 26.389242, 17.169331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209167, -0.149324, -0.966412,
		0.503715, -0.863525, 0.024404,
		-0.838165, -0.481692, 0.255838,
		34.741230, 26.244734, 17.246082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390541, 26.088440, 16.689594>,  <35.327946, 26.581919, 17.066996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390541, 26.088440, 16.689594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002850, 26.073986, 16.786985>,  <34.770233, 26.065313, 16.845419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002850, 26.073986, 16.786985>,  <35.390541, 26.088440, 16.689594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002850, 26.073986, 16.786985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235404, -0.152907, -0.959794,
		0.071913, -0.987580, 0.139696,
		-0.969233, -0.036136, 0.243476,
		34.712078, 26.063145, 16.860029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025608, 25.497913, 16.316641>,  <35.390541, 26.088440, 16.689594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025608, 25.497913, 16.316641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765839, 25.785864, 16.414648>,  <34.609978, 25.958633, 16.473452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765839, 25.785864, 16.414648>,  <35.025608, 25.497913, 16.316641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765839, 25.785864, 16.414648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353144, -0.000152, -0.935569,
		-0.673457, -0.694102, 0.254319,
		-0.649419, 0.719877, 0.245016,
		34.571014, 26.001827, 16.488153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439888, 25.313776, 15.953768>,  <35.025608, 25.497913, 16.316641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439888, 25.313776, 15.953768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365189, 25.693317, 16.055593>,  <34.320370, 25.921041, 16.116690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365189, 25.693317, 16.055593>,  <34.439888, 25.313776, 15.953768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365189, 25.693317, 16.055593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469419, 0.141442, -0.871573,
		-0.863001, -0.282263, 0.418996,
		-0.186749, 0.948853, 0.254564,
		34.309162, 25.977974, 16.131962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762135, 25.422552, 15.950106>,  <34.439888, 25.313776, 15.953768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762135, 25.422552, 15.950106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999363, 25.734625, 15.870529>,  <34.141701, 25.921869, 15.822783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999363, 25.734625, 15.870529>,  <33.762135, 25.422552, 15.950106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999363, 25.734625, 15.870529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395498, 0.067070, -0.916015,
		-0.701316, 0.621946, 0.348338,
		0.593075, 0.780183, -0.198941,
		34.177284, 25.968679, 15.810846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477951, 25.324482, 16.699154>,  <33.762135, 25.422552, 15.950106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477951, 25.324482, 16.699154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 25.205299, 16.748535>,  <32.872150, 25.133789, 16.778164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 25.205299, 16.748535>,  <33.477951, 25.324482, 16.699154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099327, 25.205299, 16.748535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228929, 0.890337, 0.393563,
		-0.227182, 0.344269, -0.910971,
		-0.946562, -0.297958, 0.123455,
		32.815357, 25.115911, 16.785572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419250, 24.819187, 16.177896>,  <33.477951, 25.324482, 16.699154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419250, 24.819187, 16.177896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518658, 24.441273, 16.092459>,  <33.578300, 24.214525, 16.041197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518658, 24.441273, 16.092459>,  <33.419250, 24.819187, 16.177896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518658, 24.441273, 16.092459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155606, 0.178708, -0.971519,
		0.956048, 0.274672, -0.102603,
		0.248513, -0.944785, -0.213594,
		33.593212, 24.157837, 16.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769978, 24.404848, 15.916560>,  <33.419250, 24.819187, 16.177896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769978, 24.404848, 15.916560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960377, 24.428522, 15.565578>,  <33.074615, 24.442726, 15.354989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960377, 24.428522, 15.565578>,  <32.769978, 24.404848, 15.916560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960377, 24.428522, 15.565578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708509, -0.565269, -0.422475,
		-0.521003, 0.822780, -0.227130,
		0.475994, 0.059187, -0.877455,
		33.103176, 24.446278, 15.302342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575378, 25.024286, 15.485711>,  <32.769978, 24.404848, 15.916560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575378, 25.024286, 15.485711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535416, 25.315624, 15.214555>,  <32.511436, 25.490427, 15.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535416, 25.315624, 15.214555>,  <32.575378, 25.024286, 15.485711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535416, 25.315624, 15.214555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095484, 0.671136, 0.735159,
		0.990405, 0.138174, 0.002495,
		-0.099906, 0.728344, -0.677890,
		32.505444, 25.534128, 15.011188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054718, 25.626020, 15.547307>,  <32.575378, 25.024286, 15.485711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054718, 25.626020, 15.547307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718742, 25.752771, 15.371087>,  <32.517155, 25.828823, 15.265355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718742, 25.752771, 15.371087>,  <33.054718, 25.626020, 15.547307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718742, 25.752771, 15.371087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064889, 0.747343, 0.661263,
		0.538782, 0.584009, -0.607163,
		-0.839943, 0.316878, -0.440550,
		32.466759, 25.847836, 15.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073418, 26.302435, 15.275012>,  <33.054718, 25.626020, 15.547307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073418, 26.302435, 15.275012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693619, 26.218966, 15.368752>,  <32.465740, 26.168884, 15.424995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693619, 26.218966, 15.368752>,  <33.073418, 26.302435, 15.275012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693619, 26.218966, 15.368752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005654, 0.758091, 0.652124,
		-0.313737, 0.617862, -0.720982,
		-0.949493, -0.208672, 0.234348,
		32.408772, 26.156364, 15.439055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936302, 26.941578, 15.409861>,  <33.073418, 26.302435, 15.275012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936302, 26.941578, 15.409861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640121, 26.723030, 15.566428>,  <32.462414, 26.591902, 15.660369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640121, 26.723030, 15.566428>,  <32.936302, 26.941578, 15.409861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640121, 26.723030, 15.566428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227533, 0.751763, 0.618935,
		-0.632421, 0.369233, -0.680963,
		-0.740454, -0.546369, 0.391418,
		32.417984, 26.559120, 15.683853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231850, 27.340208, 15.401005>,  <32.936302, 26.941578, 15.409861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231850, 27.340208, 15.401005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274139, 27.082005, 15.703566>,  <32.299515, 26.927082, 15.885102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274139, 27.082005, 15.703566>,  <32.231850, 27.340208, 15.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274139, 27.082005, 15.703566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083511, 0.752213, 0.653606,
		-0.990883, -0.132271, 0.025621,
		0.105725, -0.645507, 0.756401,
		32.305859, 26.888351, 15.930486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619762, 27.444529, 15.775096>,  <32.231850, 27.340208, 15.401005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619762, 27.444529, 15.775096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928410, 27.307596, 15.989540>,  <32.113598, 27.225437, 16.118206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928410, 27.307596, 15.989540>,  <31.619762, 27.444529, 15.775096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928410, 27.307596, 15.989540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077140, 0.786245, 0.613081,
		-0.631390, -0.514421, 0.580274,
		0.771619, -0.342330, 0.536109,
		32.159897, 27.204897, 16.150373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442535, 27.479332, 16.511181>,  <31.619762, 27.444529, 15.775096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442535, 27.479332, 16.511181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838144, 27.523046, 16.471395>,  <32.075508, 27.549276, 16.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838144, 27.523046, 16.471395>,  <31.442535, 27.479332, 16.511181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838144, 27.523046, 16.471395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009556, 0.718969, 0.694976,
		0.147462, -0.686396, 0.712120,
		0.989022, 0.109288, -0.099462,
		32.134850, 27.555832, 16.441557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759682, 27.338367, 17.211191>,  <31.442535, 27.479332, 16.511181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759682, 27.338367, 17.211191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999031, 27.565224, 16.984812>,  <32.142643, 27.701338, 16.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999031, 27.565224, 16.984812>,  <31.759682, 27.338367, 17.211191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999031, 27.565224, 16.984812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131573, 0.627219, 0.767649,
		0.790339, -0.533805, 0.300692,
		0.598375, 0.567140, -0.565950,
		32.178543, 27.735365, 16.815027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095242, 27.630831, 17.817087>,  <31.759682, 27.338367, 17.211191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095242, 27.630831, 17.817087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227276, 27.862915, 17.519255>,  <32.306496, 28.002165, 17.340555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227276, 27.862915, 17.519255>,  <32.095242, 27.630831, 17.817087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227276, 27.862915, 17.519255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103499, 0.761789, 0.639504,
		0.938259, -0.288156, 0.191406,
		0.330088, 0.580210, -0.744579,
		32.326302, 28.036978, 17.295881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578217, 27.950638, 18.037457>,  <32.095242, 27.630831, 17.817087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578217, 27.950638, 18.037457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508526, 28.184998, 17.720884>,  <32.466713, 28.325613, 17.530941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508526, 28.184998, 17.720884>,  <32.578217, 27.950638, 18.037457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508526, 28.184998, 17.720884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020478, 0.801395, 0.597785,
		0.984493, 0.120357, -0.127626,
		-0.174227, 0.585901, -0.791432,
		32.456257, 28.360767, 17.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077404, 28.496365, 18.103077>,  <32.578217, 27.950638, 18.037457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077404, 28.496365, 18.103077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780647, 28.640934, 17.877167>,  <32.602592, 28.727676, 17.741621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780647, 28.640934, 17.877167>,  <33.077404, 28.496365, 18.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780647, 28.640934, 17.877167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107214, 0.767515, 0.632001,
		0.661894, 0.529428, -0.530662,
		-0.741890, 0.361423, -0.564776,
		32.558079, 28.749361, 17.707733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100204, 29.324163, 18.038877>,  <33.077404, 28.496365, 18.103077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100204, 29.324163, 18.038877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728794, 29.241943, 17.915203>,  <32.505947, 29.192612, 17.841000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728794, 29.241943, 17.915203>,  <33.100204, 29.324163, 18.038877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728794, 29.241943, 17.915203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356942, 0.723372, 0.591038,
		0.102168, 0.659153, -0.745037,
		-0.928523, -0.205550, -0.309184,
		32.450237, 29.180279, 17.822449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696354, 29.971331, 17.851982>,  <33.100204, 29.324163, 18.038877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696354, 29.971331, 17.851982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411148, 29.702442, 17.931711>,  <32.240025, 29.541109, 17.979549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411148, 29.702442, 17.931711>,  <32.696354, 29.971331, 17.851982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411148, 29.702442, 17.931711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407476, 0.628619, 0.662421,
		-0.570593, 0.391095, -0.722128,
		-0.713012, -0.672223, 0.199324,
		32.197243, 29.500774, 17.991508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065495, 30.312347, 17.828531>,  <32.696354, 29.971331, 17.851982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065495, 30.312347, 17.828531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001698, 29.986914, 18.052189>,  <31.963419, 29.791655, 18.186384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001698, 29.986914, 18.052189>,  <32.065495, 30.312347, 17.828531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001698, 29.986914, 18.052189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511535, 0.552538, 0.658053,
		-0.844330, -0.181067, -0.504304,
		-0.159495, -0.813583, 0.559146,
		31.953850, 29.742840, 18.219933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342659, 30.346415, 18.054193>,  <32.065495, 30.312347, 17.828531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342659, 30.346415, 18.054193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540304, 30.099176, 18.298754>,  <31.658892, 29.950834, 18.445490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540304, 30.099176, 18.298754>,  <31.342659, 30.346415, 18.054193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540304, 30.099176, 18.298754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274833, 0.556134, 0.784335,
		-0.824815, -0.555583, 0.104920,
		0.494113, -0.618096, 0.611400,
		31.688538, 29.913748, 18.482174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019361, 30.518814, 18.697670>,  <31.342659, 30.346415, 18.054193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019361, 30.518814, 18.697670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351286, 30.319004, 18.797182>,  <31.550440, 30.199118, 18.856890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351286, 30.319004, 18.797182>,  <31.019361, 30.518814, 18.697670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351286, 30.319004, 18.797182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062424, 0.526101, 0.848127,
		-0.554544, -0.688254, 0.467746,
		0.829809, -0.499523, 0.248783,
		31.600229, 30.169147, 18.871817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944553, 30.343012, 19.485083>,  <31.019361, 30.518814, 18.697670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944553, 30.343012, 19.485083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324450, 30.343082, 19.359865>,  <31.552387, 30.343124, 19.284735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324450, 30.343082, 19.359865>,  <30.944553, 30.343012, 19.485083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324450, 30.343082, 19.359865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249071, 0.605349, 0.755987,
		0.189633, -0.795960, 0.574880,
		0.949739, 0.000174, -0.313045,
		31.609371, 30.343134, 19.265951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187973, 30.280397, 20.111576>,  <30.944553, 30.343012, 19.485083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187973, 30.280397, 20.111576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491241, 30.427292, 19.896051>,  <31.673203, 30.515429, 19.766737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491241, 30.427292, 19.896051>,  <31.187973, 30.280397, 20.111576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491241, 30.427292, 19.896051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300403, 0.536689, 0.788494,
		0.578737, -0.759673, 0.296583,
		0.758170, 0.367236, -0.538809,
		31.718693, 30.537464, 19.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716505, 29.988928, 20.406982>,  <31.187973, 30.280397, 20.111576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716505, 29.988928, 20.406982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880270, 30.296989, 20.211332>,  <31.978529, 30.481827, 20.093943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880270, 30.296989, 20.211332>,  <31.716505, 29.988928, 20.406982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880270, 30.296989, 20.211332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269135, 0.410307, 0.871329,
		0.871750, -0.488374, -0.039290,
		0.409413, 0.770155, -0.489123,
		32.003094, 30.528036, 20.064596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376240, 30.013659, 20.572577>,  <31.716505, 29.988928, 20.406982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376240, 30.013659, 20.572577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333633, 30.388643, 20.440018>,  <32.308071, 30.613634, 20.360483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333633, 30.388643, 20.440018>,  <32.376240, 30.013659, 20.572577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333633, 30.388643, 20.440018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477867, 0.340541, 0.809737,
		0.871950, -0.072113, -0.484255,
		-0.106516, 0.937460, -0.331395,
		32.301678, 30.669882, 20.340599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083630, 30.347721, 20.604374>,  <32.376240, 30.013659, 20.572577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083630, 30.347721, 20.604374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824848, 30.652700, 20.608732>,  <32.669579, 30.835688, 20.611347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824848, 30.652700, 20.608732>,  <33.083630, 30.347721, 20.604374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824848, 30.652700, 20.608732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307156, 0.247496, 0.918913,
		0.697927, 0.597844, -0.394310,
		-0.646957, 0.762449, 0.010897,
		32.630760, 30.881435, 20.612001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415310, 30.773827, 21.057945>,  <33.083630, 30.347721, 20.604374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415310, 30.773827, 21.057945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054249, 30.943378, 21.028181>,  <32.837612, 31.045109, 21.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054249, 30.943378, 21.028181>,  <33.415310, 30.773827, 21.057945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054249, 30.943378, 21.028181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142353, 0.457247, 0.877873,
		0.406136, 0.781825, -0.473078,
		-0.902657, 0.423880, -0.074409,
		32.783451, 31.070543, 21.005857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517170, 31.490940, 21.169193>,  <33.415310, 30.773827, 21.057945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517170, 31.490940, 21.169193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142963, 31.376816, 21.252527>,  <32.918438, 31.308342, 21.302528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142963, 31.376816, 21.252527>,  <33.517170, 31.490940, 21.169193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142963, 31.376816, 21.252527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035054, 0.511843, 0.858364,
		-0.351535, 0.810318, -0.468837,
		-0.935518, -0.285310, 0.208335,
		32.862309, 31.291224, 21.315027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076275, 32.092796, 21.399559>,  <33.517170, 31.490940, 21.169193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076275, 32.092796, 21.399559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872154, 31.791084, 21.564800>,  <32.749683, 31.610058, 21.663946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872154, 31.791084, 21.564800>,  <33.076275, 32.092796, 21.399559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872154, 31.791084, 21.564800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041692, 0.501489, 0.864159,
		-0.858986, 0.423756, -0.287356,
		-0.510298, -0.754281, 0.413105,
		32.719063, 31.564800, 21.688732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400112, 32.366543, 21.715586>,  <33.076275, 32.092796, 21.399559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400112, 32.366543, 21.715586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494606, 32.021236, 21.894011>,  <32.551300, 31.814053, 22.001066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494606, 32.021236, 21.894011>,  <32.400112, 32.366543, 21.715586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494606, 32.021236, 21.894011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098636, 0.435381, 0.894826,
		-0.966677, -0.255385, 0.017703,
		0.236232, -0.863263, 0.446063,
		32.565475, 31.762259, 22.027830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944483, 32.283611, 22.230453>,  <32.400112, 32.366543, 21.715586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944483, 32.283611, 22.230453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224434, 32.019829, 22.340214>,  <32.392403, 31.861561, 22.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224434, 32.019829, 22.340214>,  <31.944483, 32.283611, 22.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224434, 32.019829, 22.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152268, 0.237591, 0.959356,
		-0.697845, -0.713213, 0.065871,
		0.699876, -0.659452, 0.274401,
		32.434395, 31.821993, 22.422535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655924, 31.732183, 22.687025>,  <31.944483, 32.283611, 22.230453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655924, 31.732183, 22.687025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049690, 31.732229, 22.757364>,  <32.285950, 31.732258, 22.799568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049690, 31.732229, 22.757364>,  <31.655924, 31.732183, 22.687025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049690, 31.732229, 22.757364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175805, 0.023216, 0.984151,
		-0.003977, -0.999731, 0.022873,
		0.984417, 0.000107, 0.175850,
		32.345016, 31.732264, 22.810120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697794, 31.241619, 23.152290>,  <31.655924, 31.732183, 22.687025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697794, 31.241619, 23.152290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044781, 31.438646, 23.180237>,  <32.252972, 31.556862, 23.197004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044781, 31.438646, 23.180237>,  <31.697794, 31.241619, 23.152290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044781, 31.438646, 23.180237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023768, -0.099240, 0.994779,
		0.496929, -0.864597, -0.074380,
		0.867465, 0.492567, 0.069865,
		32.305019, 31.586416, 23.201197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950672, 31.078485, 23.789808>,  <31.697794, 31.241619, 23.152290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950672, 31.078485, 23.789808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223385, 31.366396, 23.737503>,  <32.387012, 31.539143, 23.706120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223385, 31.366396, 23.737503>,  <31.950672, 31.078485, 23.789808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223385, 31.366396, 23.737503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039589, 0.214784, 0.975859,
		0.730486, -0.660144, 0.174931,
		0.681780, 0.719776, -0.130762,
		32.427917, 31.582329, 23.698275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425732, 30.910160, 24.299099>,  <31.950672, 31.078485, 23.789808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425732, 30.910160, 24.299099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484627, 31.294790, 24.206409>,  <32.519962, 31.525568, 24.150795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484627, 31.294790, 24.206409>,  <32.425732, 30.910160, 24.299099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484627, 31.294790, 24.206409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063483, 0.242980, 0.967951,
		0.987062, -0.127805, 0.096819,
		0.147234, 0.961575, -0.231723,
		32.528797, 31.583263, 24.136892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940292, 31.241653, 24.795689>,  <32.425732, 30.910160, 24.299099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940292, 31.241653, 24.795689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751835, 31.549320, 24.622990>,  <32.638760, 31.733919, 24.519371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751835, 31.549320, 24.622990>,  <32.940292, 31.241653, 24.795689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751835, 31.549320, 24.622990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076529, 0.523278, 0.848719,
		0.878728, 0.366831, -0.305404,
		-0.471148, 0.769165, -0.431746,
		32.610489, 31.780069, 24.493465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362694, 31.818531, 24.982979>,  <32.940292, 31.241653, 24.795689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362694, 31.818531, 24.982979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004967, 31.960728, 24.874300>,  <32.790329, 32.046047, 24.809093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004967, 31.960728, 24.874300>,  <33.362694, 31.818531, 24.982979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004967, 31.960728, 24.874300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080691, 0.469141, 0.879429,
		0.440094, 0.808414, -0.390877,
		-0.894319, 0.355491, -0.271698,
		32.736671, 32.067375, 24.792791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398384, 32.495136, 25.179880>,  <33.362694, 31.818531, 24.982979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398384, 32.495136, 25.179880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020405, 32.365116, 25.164820>,  <32.793617, 32.287102, 25.155785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020405, 32.365116, 25.164820>,  <33.398384, 32.495136, 25.179880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020405, 32.365116, 25.164820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210943, 0.517146, 0.829496,
		-0.250161, 0.791770, -0.557243,
		-0.944946, -0.325054, -0.037649,
		32.736919, 32.267601, 25.153524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970455, 33.033913, 25.231958>,  <33.398384, 32.495136, 25.179880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970455, 33.033913, 25.231958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717384, 32.742546, 25.337120>,  <32.565540, 32.567726, 25.400217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717384, 32.742546, 25.337120>,  <32.970455, 33.033913, 25.231958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717384, 32.742546, 25.337120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251983, 0.514654, 0.819534,
		-0.732271, 0.452255, -0.509161,
		-0.632680, -0.728421, 0.262906,
		32.527580, 32.524021, 25.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501419, 33.376953, 25.618206>,  <32.970455, 33.033913, 25.231958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501419, 33.376953, 25.618206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439686, 32.997395, 25.728321>,  <32.402645, 32.769661, 25.794390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439686, 32.997395, 25.728321>,  <32.501419, 33.376953, 25.618206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439686, 32.997395, 25.728321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232674, 0.305695, 0.923262,
		-0.960232, 0.078434, -0.267960,
		-0.154329, -0.948893, 0.275289,
		32.393387, 32.712727, 25.810907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969988, 33.447495, 25.943190>,  <32.501419, 33.376953, 25.618206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969988, 33.447495, 25.943190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096375, 33.090340, 26.071518>,  <32.172207, 32.876049, 26.148514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096375, 33.090340, 26.071518>,  <31.969988, 33.447495, 25.943190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096375, 33.090340, 26.071518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377229, 0.192038, 0.905991,
		-0.870553, -0.407285, -0.276144,
		0.315966, -0.892883, 0.320819,
		32.191166, 32.822475, 26.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366194, 33.127964, 26.273060>,  <31.969988, 33.447495, 25.943190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366194, 33.127964, 26.273060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674271, 32.932217, 26.436682>,  <31.859116, 32.814770, 26.534855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674271, 32.932217, 26.436682>,  <31.366194, 33.127964, 26.273060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674271, 32.932217, 26.436682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390631, 0.145064, 0.909046,
		-0.504196, -0.859928, -0.079435,
		0.770191, -0.489367, 0.409055,
		31.905329, 32.785408, 26.559399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073462, 32.789219, 26.795374>,  <31.366194, 33.127964, 26.273060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073462, 32.789219, 26.795374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460985, 32.799820, 26.893927>,  <31.693501, 32.806179, 26.953058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460985, 32.799820, 26.893927>,  <31.073462, 32.789219, 26.795374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460985, 32.799820, 26.893927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245575, 0.235710, 0.940284,
		-0.033154, -0.971462, 0.234867,
		0.968810, 0.026503, 0.246382,
		31.751629, 32.807770, 26.967840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237576, 32.355106, 27.404690>,  <31.073462, 32.789219, 26.795374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237576, 32.355106, 27.404690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541218, 32.614922, 27.387421>,  <31.723402, 32.770809, 27.377060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541218, 32.614922, 27.387421>,  <31.237576, 32.355106, 27.404690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541218, 32.614922, 27.387421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097848, 0.179417, 0.978895,
		0.643574, -0.738858, 0.199752,
		0.759104, 0.649537, -0.043172,
		31.768950, 32.809784, 27.374470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615656, 32.160019, 28.023760>,  <31.237576, 32.355106, 27.404690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615656, 32.160019, 28.023760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705025, 32.526756, 27.891413>,  <31.758646, 32.746799, 27.812004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705025, 32.526756, 27.891413>,  <31.615656, 32.160019, 28.023760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705025, 32.526756, 27.891413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008606, 0.337581, 0.941257,
		0.974684, -0.213144, 0.067532,
		0.223421, 0.916847, -0.330869,
		31.772051, 32.801811, 27.792152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209675, 32.263474, 28.273968>,  <31.615656, 32.160019, 28.023760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209675, 32.263474, 28.273968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040344, 32.616287, 28.191202>,  <31.938747, 32.827976, 28.141542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040344, 32.616287, 28.191202>,  <32.209675, 32.263474, 28.273968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040344, 32.616287, 28.191202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097837, 0.271559, 0.957436,
		0.900680, 0.385061, -0.201253,
		-0.423324, 0.882034, -0.206914,
		31.913347, 32.880898, 28.129128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479572, 32.589733, 28.824606>,  <32.209675, 32.263474, 28.273968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479572, 32.589733, 28.824606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221676, 32.854324, 28.671373>,  <32.066936, 33.013081, 28.579433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221676, 32.854324, 28.671373>,  <32.479572, 32.589733, 28.824606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221676, 32.854324, 28.671373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030002, 0.478870, 0.877373,
		0.763813, 0.577170, -0.288901,
		-0.644740, 0.661482, -0.383083,
		32.028255, 33.052769, 28.556448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688389, 33.252747, 28.983620>,  <32.479572, 32.589733, 28.824606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688389, 33.252747, 28.983620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291229, 33.254093, 28.936039>,  <32.052933, 33.254902, 28.907492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291229, 33.254093, 28.936039>,  <32.688389, 33.252747, 28.983620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291229, 33.254093, 28.936039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098062, 0.543103, 0.833921,
		0.067412, 0.839660, -0.538913,
		-0.992895, 0.003369, -0.118950,
		31.993361, 33.255104, 28.900354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504337, 33.906425, 29.358326>,  <32.688389, 33.252747, 28.983620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504337, 33.906425, 29.358326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156410, 33.712955, 29.319389>,  <31.947653, 33.596874, 29.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156410, 33.712955, 29.319389>,  <32.504337, 33.906425, 29.358326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156410, 33.712955, 29.319389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420794, 0.624281, 0.658183,
		-0.257579, 0.613460, -0.746539,
		-0.869819, -0.483673, -0.097339,
		31.895464, 33.567852, 29.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962412, 34.300259, 29.303787>,  <32.504337, 33.906425, 29.358326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962412, 34.300259, 29.303787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790140, 33.964577, 29.436602>,  <31.686777, 33.763168, 29.516291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790140, 33.964577, 29.436602>,  <31.962412, 34.300259, 29.303787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790140, 33.964577, 29.436602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272936, 0.471789, 0.838404,
		-0.860244, 0.270460, -0.432240,
		-0.430681, -0.839206, 0.332035,
		31.660936, 33.712814, 29.536213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077427, 34.333225, 28.504675>,  <31.962412, 34.300259, 29.303787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077427, 34.333225, 28.504675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319859, 34.651386, 28.503708>,  <32.465317, 34.842281, 28.503128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319859, 34.651386, 28.503708>,  <32.077427, 34.333225, 28.504675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319859, 34.651386, 28.503708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027394, 0.017838, -0.999466,
		-0.794931, 0.605824, 0.032600,
		0.606081, 0.795399, -0.002416,
		32.501682, 34.890007, 28.502983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744471, 34.840355, 28.096586>,  <32.077427, 34.333225, 28.504675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744471, 34.840355, 28.096586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129780, 34.947334, 28.106138>,  <32.360966, 35.011524, 28.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129780, 34.947334, 28.106138>,  <31.744471, 34.840355, 28.096586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129780, 34.947334, 28.106138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028658, 0.190820, -0.981207,
		-0.266983, 0.944488, 0.191477,
		0.963275, 0.267453, 0.023879,
		32.418762, 35.027569, 28.113302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873905, 35.518421, 27.698647>,  <31.744471, 34.840355, 28.096586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873905, 35.518421, 27.698647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242249, 35.362572, 27.704569>,  <32.463253, 35.269062, 27.708122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242249, 35.362572, 27.704569>,  <31.873905, 35.518421, 27.698647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242249, 35.362572, 27.704569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143881, 0.304274, -0.941656,
		0.362382, 0.869261, 0.336251,
		0.920857, -0.389619, 0.014806,
		32.518505, 35.245686, 27.709011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261467, 36.014328, 27.431467>,  <31.873905, 35.518421, 27.698647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261467, 36.014328, 27.431467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498196, 35.694710, 27.388994>,  <32.640232, 35.502937, 27.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498196, 35.694710, 27.388994>,  <32.261467, 36.014328, 27.431467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498196, 35.694710, 27.388994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269091, 0.320015, -0.908394,
		0.759829, 0.509033, 0.404407,
		0.591819, -0.799047, -0.106181,
		32.675743, 35.454994, 27.357140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780178, 36.297626, 27.071232>,  <32.261467, 36.014328, 27.431467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780178, 36.297626, 27.071232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835632, 35.903538, 27.031004>,  <32.868904, 35.667084, 27.006868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835632, 35.903538, 27.031004>,  <32.780178, 36.297626, 27.071232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835632, 35.903538, 27.031004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397757, 0.148391, -0.905411,
		0.906957, 0.085520, 0.412451,
		0.138635, -0.985224, -0.100568,
		32.877224, 35.607971, 27.000834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565495, 36.161568, 26.814079>,  <32.780178, 36.297626, 27.071232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565495, 36.161568, 26.814079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366253, 35.825161, 26.729620>,  <33.246708, 35.623318, 26.678944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366253, 35.825161, 26.729620>,  <33.565495, 36.161568, 26.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366253, 35.825161, 26.729620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408983, -0.013144, -0.912447,
		0.764606, -0.540854, 0.350507,
		-0.498107, -0.841014, -0.211150,
		33.216820, 35.572857, 26.666275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007977, 35.694645, 26.565008>,  <33.565495, 36.161568, 26.814079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007977, 35.694645, 26.565008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657948, 35.572037, 26.415184>,  <33.447929, 35.498470, 26.325289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657948, 35.572037, 26.415184>,  <34.007977, 35.694645, 26.565008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657948, 35.572037, 26.415184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404680, -0.038858, -0.913632,
		0.265496, -0.951069, 0.158047,
		-0.875069, -0.306524, -0.374562,
		33.395428, 35.480080, 26.302814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136349, 35.019939, 26.203527>,  <34.007977, 35.694645, 26.565008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136349, 35.019939, 26.203527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796719, 35.176086, 26.061155>,  <33.592941, 35.269775, 25.975733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796719, 35.176086, 26.061155>,  <34.136349, 35.019939, 26.203527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796719, 35.176086, 26.061155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319306, -0.157519, -0.934468,
		-0.420849, -0.907085, 0.009099,
		-0.849076, 0.390365, -0.355930,
		33.541996, 35.293198, 25.954376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971458, 34.582489, 25.625961>,  <34.136349, 35.019939, 26.203527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971458, 34.582489, 25.625961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704769, 34.871433, 25.552561>,  <33.544754, 35.044800, 25.508520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704769, 34.871433, 25.552561>,  <33.971458, 34.582489, 25.625961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704769, 34.871433, 25.552561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119276, -0.139624, -0.982995,
		-0.735700, -0.677272, 0.006930,
		-0.666723, 0.722362, -0.183503,
		33.504753, 35.088142, 25.497509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475559, 34.301262, 25.106899>,  <33.971458, 34.582489, 25.625961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475559, 34.301262, 25.106899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454308, 34.700665, 25.101738>,  <33.441555, 34.940304, 25.098640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454308, 34.700665, 25.101738>,  <33.475559, 34.301262, 25.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454308, 34.700665, 25.101738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158610, -0.021197, -0.987114,
		-0.985911, -0.050399, 0.159499,
		-0.053131, 0.998504, -0.012905,
		33.438370, 35.000217, 25.097866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858299, 34.628498, 24.723814>,  <33.475559, 34.301262, 25.106899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858299, 34.628498, 24.723814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144138, 34.908215, 24.716343>,  <33.315639, 35.076046, 24.711861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144138, 34.908215, 24.716343>,  <32.858299, 34.628498, 24.723814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144138, 34.908215, 24.716343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168905, 0.146567, -0.974674,
		-0.678842, 0.699651, 0.222849,
		0.714594, 0.699290, -0.018678,
		33.358517, 35.118000, 24.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584621, 35.067123, 24.245268>,  <32.858299, 34.628498, 24.723814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584621, 35.067123, 24.245268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955528, 35.214260, 24.273165>,  <33.178074, 35.302544, 24.289904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955528, 35.214260, 24.273165>,  <32.584621, 35.067123, 24.245268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955528, 35.214260, 24.273165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096399, -0.054576, -0.993845,
		-0.361772, 0.928286, -0.086066,
		0.927269, 0.367842, 0.069742,
		33.233707, 35.324612, 24.294086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635353, 35.714664, 23.754143>,  <32.584621, 35.067123, 24.245268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635353, 35.714664, 23.754143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989017, 35.529869, 23.781933>,  <33.201218, 35.418991, 23.798607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989017, 35.529869, 23.781933>,  <32.635353, 35.714664, 23.754143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989017, 35.529869, 23.781933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115154, 0.071388, -0.990779,
		0.452767, 0.884009, 0.116318,
		0.884161, -0.461987, 0.069475,
		33.254265, 35.391273, 23.802774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881981, 35.888519, 23.221733>,  <32.635353, 35.714664, 23.754143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881981, 35.888519, 23.221733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131462, 35.592434, 23.322191>,  <33.281151, 35.414783, 23.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131462, 35.592434, 23.322191>,  <32.881981, 35.888519, 23.221733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131462, 35.592434, 23.322191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095325, -0.246868, -0.964349,
		0.775826, 0.625409, -0.083411,
		0.623704, -0.740216, 0.251144,
		33.318573, 35.370369, 23.397533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513264, 35.988644, 22.822826>,  <32.881981, 35.888519, 23.221733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513264, 35.988644, 22.822826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530769, 35.606136, 22.938505>,  <33.541271, 35.376633, 23.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530769, 35.606136, 22.938505>,  <33.513264, 35.988644, 22.822826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530769, 35.606136, 22.938505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254807, -0.269215, -0.928761,
		0.966001, 0.114334, 0.231883,
		0.043762, -0.956269, 0.289195,
		33.543900, 35.319256, 23.025263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169884, 35.665749, 22.504869>,  <33.513264, 35.988644, 22.822826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169884, 35.665749, 22.504869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914505, 35.365913, 22.574739>,  <33.761280, 35.186012, 22.616661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914505, 35.365913, 22.574739>,  <34.169884, 35.665749, 22.504869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914505, 35.365913, 22.574739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072933, -0.284847, -0.955794,
		0.766205, -0.597482, 0.236529,
		-0.638444, -0.749585, 0.174676,
		33.722973, 35.141037, 22.627142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327148, 35.194458, 21.892159>,  <34.169884, 35.665749, 22.504869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327148, 35.194458, 21.892159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999516, 35.046463, 22.067530>,  <33.802937, 34.957668, 22.172752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999516, 35.046463, 22.067530>,  <34.327148, 35.194458, 21.892159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999516, 35.046463, 22.067530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156028, -0.591758, -0.790872,
		0.552055, -0.716194, 0.426968,
		-0.819079, -0.369985, 0.438429,
		33.753792, 34.935467, 22.199059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327770, 34.486202, 21.957348>,  <34.327148, 35.194458, 21.892159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327770, 34.486202, 21.957348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931606, 34.528568, 21.992851>,  <33.693909, 34.553989, 22.014154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931606, 34.528568, 21.992851>,  <34.327770, 34.486202, 21.957348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931606, 34.528568, 21.992851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137196, -0.676674, -0.723387,
		-0.016556, -0.728625, 0.684713,
		-0.990405, 0.105917, 0.088761,
		33.634483, 34.560345, 22.019480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062805, 33.795280, 22.092728>,  <34.327770, 34.486202, 21.957348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062805, 33.795280, 22.092728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766438, 34.006775, 21.927088>,  <33.588615, 34.133671, 21.827703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766438, 34.006775, 21.927088>,  <34.062805, 33.795280, 22.092728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766438, 34.006775, 21.927088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027492, -0.639957, -0.767919,
		-0.671032, -0.557581, 0.488692,
		-0.740919, 0.528733, -0.414102,
		33.544163, 34.165394, 21.802858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625973, 33.331017, 21.716146>,  <34.062805, 33.795280, 22.092728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625973, 33.331017, 21.716146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517017, 33.679695, 21.553196>,  <33.451645, 33.888901, 21.455425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517017, 33.679695, 21.553196>,  <33.625973, 33.331017, 21.716146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517017, 33.679695, 21.553196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373848, -0.486001, -0.789962,
		-0.886589, -0.062882, 0.458263,
		-0.272390, 0.871693, -0.407375,
		33.435299, 33.941204, 21.430983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867748, 33.340229, 21.571236>,  <33.625973, 33.331017, 21.716146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867748, 33.340229, 21.571236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042030, 33.613060, 21.336313>,  <33.146599, 33.776760, 21.195360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042030, 33.613060, 21.336313>,  <32.867748, 33.340229, 21.571236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042030, 33.613060, 21.336313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371170, -0.458284, -0.807594,
		-0.819996, 0.569864, 0.053490,
		0.435705, 0.682078, -0.587308,
		33.172741, 33.817684, 21.160120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399727, 33.516003, 20.999981>,  <32.867748, 33.340229, 21.571236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399727, 33.516003, 20.999981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756020, 33.625290, 20.854685>,  <32.969795, 33.690861, 20.767508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756020, 33.625290, 20.854685>,  <32.399727, 33.516003, 20.999981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756020, 33.625290, 20.854685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196967, -0.488209, -0.850209,
		-0.409626, 0.828858, -0.381051,
		0.890736, 0.273214, -0.363241,
		33.023239, 33.707253, 20.745712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313068, 33.587456, 20.279770>,  <32.399727, 33.516003, 20.999981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313068, 33.587456, 20.279770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710236, 33.552204, 20.311653>,  <32.948536, 33.531052, 20.330784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710236, 33.552204, 20.311653>,  <32.313068, 33.587456, 20.279770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710236, 33.552204, 20.311653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017766, -0.553129, -0.832906,
		0.117496, 0.828421, -0.547644,
		0.992914, -0.088134, 0.079709,
		33.008110, 33.525764, 20.335566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581398, 33.712971, 19.665150>,  <32.313068, 33.587456, 20.279770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581398, 33.712971, 19.665150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879807, 33.514580, 19.842892>,  <33.058853, 33.395546, 19.949537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879807, 33.514580, 19.842892>,  <32.581398, 33.712971, 19.665150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879807, 33.514580, 19.842892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190695, -0.480223, -0.856166,
		0.638029, 0.723458, -0.263679,
		0.746025, -0.495977, 0.444356,
		33.103615, 33.365788, 19.976198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097878, 33.834560, 19.162706>,  <32.581398, 33.712971, 19.665150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097878, 33.834560, 19.162706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175896, 33.494648, 19.358599>,  <33.222706, 33.290703, 19.476133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175896, 33.494648, 19.358599>,  <33.097878, 33.834560, 19.162706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175896, 33.494648, 19.358599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232856, -0.444923, -0.864767,
		0.952752, 0.282702, 0.111098,
		0.195041, -0.849778, 0.489730,
		33.234409, 33.239716, 19.505518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772442, 33.519043, 18.872572>,  <33.097878, 33.834560, 19.162706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772442, 33.519043, 18.872572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582134, 33.220146, 19.058163>,  <33.467949, 33.040810, 19.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582134, 33.220146, 19.058163>,  <33.772442, 33.519043, 18.872572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582134, 33.220146, 19.058163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133923, -0.582896, -0.801434,
		0.869316, -0.319160, 0.377396,
		-0.475768, -0.747241, 0.463978,
		33.439404, 32.995975, 19.197355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190346, 32.903698, 18.762817>,  <33.772442, 33.519043, 18.872572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190346, 32.903698, 18.762817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819054, 32.773354, 18.834604>,  <33.596279, 32.695145, 18.877676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819054, 32.773354, 18.834604>,  <34.190346, 32.903698, 18.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819054, 32.773354, 18.834604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142843, -0.757634, -0.636856,
		0.343497, -0.565512, 0.749804,
		-0.928227, -0.325862, 0.179466,
		33.540585, 32.675594, 18.888443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275887, 32.151539, 18.903015>,  <34.190346, 32.903698, 18.762817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275887, 32.151539, 18.903015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895409, 32.221786, 18.801510>,  <33.667122, 32.263935, 18.740606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895409, 32.221786, 18.801510>,  <34.275887, 32.151539, 18.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895409, 32.221786, 18.801510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018412, -0.788527, -0.614725,
		-0.308055, -0.589393, 0.746805,
		-0.951190, 0.175619, -0.253761,
		33.610050, 32.274471, 18.725382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070538, 31.496033, 18.830587>,  <34.275887, 32.151539, 18.903015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070538, 31.496033, 18.830587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792999, 31.714148, 18.642441>,  <33.626476, 31.845016, 18.529552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792999, 31.714148, 18.642441>,  <34.070538, 31.496033, 18.830587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792999, 31.714148, 18.642441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041030, -0.682046, -0.730157,
		-0.718961, -0.487312, 0.495603,
		-0.693838, 0.545289, -0.470370,
		33.584846, 31.877733, 18.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554310, 30.968241, 18.564972>,  <34.070538, 31.496033, 18.830587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554310, 30.968241, 18.564972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525272, 31.308167, 18.356146>,  <33.507851, 31.512121, 18.230850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525272, 31.308167, 18.356146>,  <33.554310, 30.968241, 18.564972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525272, 31.308167, 18.356146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200482, -0.525193, -0.827031,
		-0.977005, 0.044630, 0.208495,
		-0.072589, 0.849812, -0.522063,
		33.503494, 31.563110, 18.199528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909794, 30.968765, 18.092628>,  <33.554310, 30.968241, 18.564972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909794, 30.968765, 18.092628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171215, 31.220549, 17.924509>,  <33.328068, 31.371618, 17.823637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171215, 31.220549, 17.924509>,  <32.909794, 30.968765, 18.092628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171215, 31.220549, 17.924509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163403, -0.424868, -0.890386,
		-0.739031, 0.650593, -0.174818,
		0.653553, 0.629457, -0.420300,
		33.367283, 31.409386, 17.798420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695827, 31.127930, 17.475739>,  <32.909794, 30.968765, 18.092628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695827, 31.127930, 17.475739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069607, 31.256689, 17.414837>,  <33.293877, 31.333944, 17.378296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069607, 31.256689, 17.414837>,  <32.695827, 31.127930, 17.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069607, 31.256689, 17.414837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035520, -0.341180, -0.939327,
		-0.354312, 0.883164, -0.307383,
		0.934452, 0.321897, -0.152254,
		33.349941, 31.353258, 17.369160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688549, 31.354128, 16.751081>,  <32.695827, 31.127930, 17.475739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688549, 31.354128, 16.751081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075256, 31.302181, 16.839169>,  <33.307281, 31.271013, 16.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075256, 31.302181, 16.839169>,  <32.688549, 31.354128, 16.751081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075256, 31.302181, 16.839169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170167, -0.315991, -0.933377,
		0.190802, 0.939832, -0.283391,
		0.966767, -0.129867, 0.220220,
		33.365288, 31.263222, 16.905235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037548, 31.382881, 16.050396>,  <32.688549, 31.354128, 16.751081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037548, 31.382881, 16.050396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334198, 31.256786, 16.287247>,  <33.512188, 31.181129, 16.429358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334198, 31.256786, 16.287247>,  <33.037548, 31.382881, 16.050396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334198, 31.256786, 16.287247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524304, -0.278216, -0.804798,
		0.418442, 0.907315, -0.041052,
		0.741627, -0.315238, 0.592127,
		33.556686, 31.162214, 16.464884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711948, 31.683805, 15.826403>,  <33.037548, 31.382881, 16.050396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711948, 31.683805, 15.826403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736938, 31.323421, 15.998154>,  <33.751930, 31.107191, 16.101204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736938, 31.323421, 15.998154>,  <33.711948, 31.683805, 15.826403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736938, 31.323421, 15.998154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364850, -0.379824, -0.850070,
		0.928968, 0.209764, 0.304987,
		0.062473, -0.900962, 0.429377,
		33.755680, 31.053133, 16.126966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326683, 31.391836, 15.556067>,  <33.711948, 31.683805, 15.826403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326683, 31.391836, 15.556067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176361, 31.055151, 15.711137>,  <34.086166, 30.853140, 15.804178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176361, 31.055151, 15.711137>,  <34.326683, 31.391836, 15.556067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176361, 31.055151, 15.711137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428677, -0.528787, -0.732544,
		0.821588, -0.109106, 0.559543,
		-0.375804, -0.841713, 0.387674,
		34.063622, 30.802637, 15.827439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845150, 30.883387, 15.538585>,  <34.326683, 31.391836, 15.556067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845150, 30.883387, 15.538585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514153, 30.663723, 15.585361>,  <34.315556, 30.531925, 15.613426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514153, 30.663723, 15.585361>,  <34.845150, 30.883387, 15.538585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514153, 30.663723, 15.585361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398505, -0.721154, -0.566684,
		0.395533, -0.422326, 0.815594,
		-0.827494, -0.549161, 0.116941,
		34.265903, 30.498974, 15.620442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090694, 30.254719, 15.735044>,  <34.845150, 30.883387, 15.538585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090694, 30.254719, 15.735044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725220, 30.195255, 15.583745>,  <34.505936, 30.159576, 15.492966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725220, 30.195255, 15.583745>,  <35.090694, 30.254719, 15.735044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725220, 30.195255, 15.583745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385763, -0.610126, -0.692050,
		-0.127899, -0.778233, 0.614814,
		-0.913690, -0.148660, -0.378248,
		34.451115, 30.150658, 15.470271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488152, 29.663403, 15.931541>,  <35.090694, 30.254719, 15.735044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488152, 29.663403, 15.931541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754356, 29.372204, 15.997408>,  <35.914078, 29.197485, 16.036928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754356, 29.372204, 15.997408>,  <35.488152, 29.663403, 15.931541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754356, 29.372204, 15.997408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234370, 0.005633, 0.972131,
		-0.708636, -0.685558, -0.166872,
		0.665512, -0.727996, 0.164666,
		35.954010, 29.153805, 16.046808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154255, 29.312475, 16.419291>,  <35.488152, 29.663403, 15.931541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154255, 29.312475, 16.419291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531517, 29.185156, 16.457539>,  <35.757874, 29.108765, 16.480488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531517, 29.185156, 16.457539>,  <35.154255, 29.312475, 16.419291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531517, 29.185156, 16.457539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046781, 0.157696, 0.986379,
		-0.329040, -0.934783, 0.133842,
		0.943157, -0.318296, 0.095618,
		35.814465, 29.089666, 16.486223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167896, 28.944975, 16.996086>,  <35.154255, 29.312475, 16.419291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167896, 28.944975, 16.996086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554787, 29.040686, 16.962099>,  <35.786922, 29.098112, 16.941708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554787, 29.040686, 16.962099>,  <35.167896, 28.944975, 16.996086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554787, 29.040686, 16.962099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004063, 0.320000, 0.947409,
		0.253881, -0.916705, 0.308541,
		0.967227, 0.239275, -0.084967,
		35.844955, 29.112469, 16.936609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465191, 28.893457, 17.729721>,  <35.167896, 28.944975, 16.996086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465191, 28.893457, 17.729721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738663, 29.105709, 17.529314>,  <35.902744, 29.233061, 17.409071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738663, 29.105709, 17.529314>,  <35.465191, 28.893457, 17.729721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738663, 29.105709, 17.529314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255911, 0.468614, 0.845524,
		0.683443, -0.706281, 0.184587,
		0.683677, 0.530629, -0.501016,
		35.943768, 29.264898, 17.379009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123089, 28.797421, 18.062088>,  <35.465191, 28.893457, 17.729721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123089, 28.797421, 18.062088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108536, 29.138294, 17.853298>,  <36.099804, 29.342819, 17.728025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108536, 29.138294, 17.853298>,  <36.123089, 28.797421, 18.062088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108536, 29.138294, 17.853298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091989, 0.522957, 0.847380,
		0.995095, -0.017182, -0.097421,
		-0.036387, 0.852186, -0.521973,
		36.097618, 29.393950, 17.696707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609276, 29.296062, 18.439878>,  <36.123089, 28.797421, 18.062088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609276, 29.296062, 18.439878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387703, 29.536489, 18.209442>,  <36.254761, 29.680746, 18.071180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387703, 29.536489, 18.209442>,  <36.609276, 29.296062, 18.439878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387703, 29.536489, 18.209442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159792, 0.755838, 0.634961,
		0.817084, 0.259670, -0.514728,
		-0.553932, 0.601066, -0.576090,
		36.221523, 29.716810, 18.036615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017250, 30.037369, 18.265486>,  <36.609276, 29.296062, 18.439878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017250, 30.037369, 18.265486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618202, 30.055777, 18.244951>,  <36.378773, 30.066820, 18.232630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618202, 30.055777, 18.244951>,  <37.017250, 30.037369, 18.265486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618202, 30.055777, 18.244951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002528, 0.719709, 0.694272,
		0.068897, 0.692749, -0.717880,
		-0.997621, 0.046019, -0.051337,
		36.318916, 30.069582, 18.229549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940472, 30.798042, 18.409189>,  <37.017250, 30.037369, 18.265486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940472, 30.798042, 18.409189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573849, 30.641417, 18.441683>,  <36.353874, 30.547441, 18.461180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573849, 30.641417, 18.441683>,  <36.940472, 30.798042, 18.409189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573849, 30.641417, 18.441683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218858, 0.661170, 0.717604,
		-0.334699, 0.639947, -0.691697,
		-0.916557, -0.391565, 0.081235,
		36.298882, 30.523947, 18.466053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541271, 31.446175, 18.420898>,  <36.940472, 30.798042, 18.409189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541271, 31.446175, 18.420898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341557, 31.139463, 18.582273>,  <36.221725, 30.955437, 18.679098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341557, 31.139463, 18.582273>,  <36.541271, 31.446175, 18.420898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341557, 31.139463, 18.582273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179197, 0.546948, 0.817763,
		-0.847702, 0.336006, -0.410490,
		-0.499290, -0.766778, 0.403438,
		36.191769, 30.909430, 18.703304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919258, 31.745060, 18.634737>,  <36.541271, 31.446175, 18.420898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919258, 31.745060, 18.634737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976788, 31.418350, 18.858234>,  <36.011307, 31.222324, 18.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976788, 31.418350, 18.858234>,  <35.919258, 31.745060, 18.634737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976788, 31.418350, 18.858234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245272, 0.517576, 0.819730,
		-0.958726, -0.254944, -0.125890,
		0.143827, -0.816773, 0.558744,
		36.019936, 31.173319, 19.025858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396343, 31.744833, 19.110949>,  <35.919258, 31.745060, 18.634737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396343, 31.744833, 19.110949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657352, 31.484987, 19.267004>,  <35.813957, 31.329079, 19.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657352, 31.484987, 19.267004>,  <35.396343, 31.744833, 19.110949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657352, 31.484987, 19.267004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098194, 0.438023, 0.893585,
		-0.751376, -0.621398, 0.222034,
		0.652528, -0.649616, 0.390138,
		35.853111, 31.290102, 19.384045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015598, 31.478876, 19.704584>,  <35.396343, 31.744833, 19.110949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015598, 31.478876, 19.704584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410183, 31.444736, 19.760603>,  <35.646935, 31.424252, 19.794214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410183, 31.444736, 19.760603>,  <35.015598, 31.478876, 19.704584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410183, 31.444736, 19.760603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097374, 0.382331, 0.918880,
		-0.131972, -0.920075, 0.368843,
		0.986459, -0.085351, 0.140049,
		35.706120, 31.419132, 19.802618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126865, 31.038231, 20.360321>,  <35.015598, 31.478876, 19.704584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126865, 31.038231, 20.360321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492985, 31.197777, 20.337898>,  <35.712654, 31.293505, 20.324444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492985, 31.197777, 20.337898>,  <35.126865, 31.038231, 20.360321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492985, 31.197777, 20.337898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049979, 0.250566, 0.966809,
		0.399675, -0.882112, 0.249276,
		0.915294, 0.398868, -0.056058,
		35.767574, 31.317436, 20.321081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578392, 30.870367, 21.023373>,  <35.126865, 31.038231, 20.360321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578392, 30.870367, 21.023373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743793, 31.192081, 20.852663>,  <35.843037, 31.385111, 20.750237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743793, 31.192081, 20.852663>,  <35.578392, 30.870367, 21.023373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743793, 31.192081, 20.852663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026725, 0.457801, 0.888653,
		0.910109, -0.378870, 0.167809,
		0.413507, 0.804286, -0.426774,
		35.867847, 31.433367, 20.724630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128403, 31.061333, 21.455786>,  <35.578392, 30.870367, 21.023373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128403, 31.061333, 21.455786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026337, 31.383617, 21.241974>,  <35.965096, 31.576988, 21.113688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026337, 31.383617, 21.241974>,  <36.128403, 31.061333, 21.455786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026337, 31.383617, 21.241974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040766, 0.543373, 0.838501,
		0.966038, 0.235748, -0.105804,
		-0.255166, 0.805710, -0.534529,
		35.949787, 31.625330, 21.081615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585461, 31.626257, 21.667118>,  <36.128403, 31.061333, 21.455786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585461, 31.626257, 21.667118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272064, 31.811373, 21.501238>,  <36.084026, 31.922441, 21.401711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272064, 31.811373, 21.501238>,  <36.585461, 31.626257, 21.667118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272064, 31.811373, 21.501238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075709, 0.733474, 0.675488,
		0.616780, 0.497839, -0.609704,
		-0.783486, 0.462787, -0.414701,
		36.037018, 31.950209, 21.376827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792950, 32.252956, 21.700562>,  <36.585461, 31.626257, 21.667118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792950, 32.252956, 21.700562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399319, 32.276272, 21.633392>,  <36.163139, 32.290260, 21.593092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399319, 32.276272, 21.633392>,  <36.792950, 32.252956, 21.700562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399319, 32.276272, 21.633392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078094, 0.706864, 0.703025,
		0.159677, 0.704943, -0.691056,
		-0.984076, 0.058289, -0.167922,
		36.104095, 32.293758, 21.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620140, 32.989235, 21.653852>,  <36.792950, 32.252956, 21.700562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620140, 32.989235, 21.653852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272903, 32.813156, 21.745626>,  <36.064560, 32.707508, 21.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272903, 32.813156, 21.745626>,  <36.620140, 32.989235, 21.653852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272903, 32.813156, 21.745626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173837, 0.702515, 0.690111,
		-0.464962, 0.559199, -0.686372,
		-0.868096, -0.440192, 0.229433,
		36.012474, 32.681099, 21.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145092, 33.540298, 21.731287>,  <36.620140, 32.989235, 21.653852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145092, 33.540298, 21.731287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961617, 33.229290, 21.903366>,  <35.851532, 33.042686, 22.006613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961617, 33.229290, 21.903366>,  <36.145092, 33.540298, 21.731287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961617, 33.229290, 21.903366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242141, 0.575175, 0.781372,
		-0.854971, 0.254236, -0.452094,
		-0.458686, -0.777521, 0.430197,
		35.824009, 32.996033, 22.032425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509819, 33.823101, 21.996096>,  <36.145092, 33.540298, 21.731287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509819, 33.823101, 21.996096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615948, 33.499756, 22.206295>,  <35.679626, 33.305748, 22.332415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615948, 33.499756, 22.206295>,  <35.509819, 33.823101, 21.996096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615948, 33.499756, 22.206295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351694, 0.426335, 0.833396,
		-0.897728, -0.405932, -0.171183,
		0.265321, -0.808367, 0.525497,
		35.695545, 33.257244, 22.363945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975548, 33.723690, 22.427141>,  <35.509819, 33.823101, 21.996096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975548, 33.723690, 22.427141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254486, 33.511047, 22.619432>,  <35.421848, 33.383461, 22.734808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254486, 33.511047, 22.619432>,  <34.975548, 33.723690, 22.427141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254486, 33.511047, 22.619432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335660, 0.350397, 0.874388,
		-0.633278, -0.771113, 0.065908,
		0.697345, -0.531608, 0.480730,
		35.463692, 33.351566, 22.763651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628361, 33.497372, 22.960381>,  <34.975548, 33.723690, 22.427141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628361, 33.497372, 22.960381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015244, 33.474281, 23.059319>,  <35.247372, 33.460426, 23.118681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015244, 33.474281, 23.059319>,  <34.628361, 33.497372, 22.960381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015244, 33.474281, 23.059319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174234, 0.557770, 0.811502,
		-0.184810, -0.827985, 0.529420,
		0.967206, -0.057731, 0.247344,
		35.305405, 33.456963, 23.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780991, 33.288292, 23.704412>,  <34.628361, 33.497372, 22.960381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780991, 33.288292, 23.704412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102493, 33.505856, 23.607973>,  <35.295395, 33.636395, 23.550110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102493, 33.505856, 23.607973>,  <34.780991, 33.288292, 23.704412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102493, 33.505856, 23.607973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047142, 0.462188, 0.885528,
		0.593082, -0.700386, 0.397130,
		0.803760, 0.543913, -0.241098,
		35.343620, 33.669029, 23.535643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189758, 33.409309, 24.278566>,  <34.780991, 33.288292, 23.704412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189758, 33.409309, 24.278566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358063, 33.695553, 24.055544>,  <35.459045, 33.867298, 23.921730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358063, 33.695553, 24.055544>,  <35.189758, 33.409309, 24.278566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358063, 33.695553, 24.055544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040384, 0.599225, 0.799562,
		0.906272, -0.358940, 0.223231,
		0.420761, 0.715606, -0.557556,
		35.484291, 33.910236, 23.888277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801353, 33.700062, 24.755674>,  <35.189758, 33.409309, 24.278566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801353, 33.700062, 24.755674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747341, 33.978188, 24.473312>,  <35.714931, 34.145061, 24.303894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747341, 33.978188, 24.473312>,  <35.801353, 33.700062, 24.755674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747341, 33.978188, 24.473312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143993, 0.718640, 0.680310,
		0.980322, -0.009780, -0.197162,
		-0.135035, 0.695313, -0.705907,
		35.706829, 34.186783, 24.261539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352211, 34.082298, 24.850079>,  <35.801353, 33.700062, 24.755674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352211, 34.082298, 24.850079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124893, 34.341652, 24.647440>,  <35.988503, 34.497265, 24.525856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124893, 34.341652, 24.647440>,  <36.352211, 34.082298, 24.850079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124893, 34.341652, 24.647440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165696, 0.693247, 0.701394,
		0.805967, 0.314659, -0.501404,
		-0.568297, 0.648381, -0.506597,
		35.954403, 34.536167, 24.495461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719898, 34.627739, 24.794737>,  <36.352211, 34.082298, 24.850079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719898, 34.627739, 24.794737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364170, 34.802311, 24.740120>,  <36.150734, 34.907055, 24.707350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364170, 34.802311, 24.740120>,  <36.719898, 34.627739, 24.794737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364170, 34.802311, 24.740120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253888, 0.719563, 0.646351,
		0.380338, 0.540144, -0.750724,
		-0.889316, 0.436432, -0.136542,
		36.097374, 34.933239, 24.699158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807930, 35.352112, 24.566683>,  <36.719898, 34.627739, 24.794737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807930, 35.352112, 24.566683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449291, 35.302853, 24.736835>,  <36.234108, 35.273296, 24.838928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449291, 35.302853, 24.736835>,  <36.807930, 35.352112, 24.566683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449291, 35.302853, 24.736835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215584, 0.717677, 0.662166,
		-0.386833, 0.685401, -0.616917,
		-0.896596, -0.123150, 0.425383,
		36.180313, 35.265907, 24.864450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642967, 36.048916, 24.728764>,  <36.807930, 35.352112, 24.566683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642967, 36.048916, 24.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395145, 35.825703, 24.949581>,  <36.246452, 35.691776, 25.082071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395145, 35.825703, 24.949581>,  <36.642967, 36.048916, 24.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395145, 35.825703, 24.949581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201493, 0.566658, 0.798936,
		-0.758650, 0.606219, -0.238637,
		-0.619556, -0.558030, 0.552045,
		36.209278, 35.658295, 25.115194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311157, 36.500759, 25.159185>,  <36.642967, 36.048916, 24.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311157, 36.500759, 25.159185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241104, 36.158085, 25.353266>,  <36.199074, 35.952480, 25.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241104, 36.158085, 25.353266>,  <36.311157, 36.500759, 25.159185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241104, 36.158085, 25.353266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213144, 0.448142, 0.868181,
		-0.961196, 0.255464, 0.104114,
		-0.175131, -0.856684, 0.485203,
		36.188564, 35.901081, 25.498827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936741, 36.680241, 25.609364>,  <36.311157, 36.500759, 25.159185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936741, 36.680241, 25.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065708, 36.334488, 25.763710>,  <36.143089, 36.127037, 25.856318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065708, 36.334488, 25.763710>,  <35.936741, 36.680241, 25.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065708, 36.334488, 25.763710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092694, 0.434505, 0.895887,
		-0.942047, -0.253087, 0.220217,
		0.322422, -0.864380, 0.385864,
		36.162434, 36.075172, 25.879469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687683, 36.675682, 26.274544>,  <35.936741, 36.680241, 25.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687683, 36.675682, 26.274544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000347, 36.426216, 26.277262>,  <36.187946, 36.276539, 26.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000347, 36.426216, 26.277262>,  <35.687683, 36.675682, 26.274544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000347, 36.426216, 26.277262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187495, 0.245361, 0.951128,
		-0.594850, -0.742188, 0.308723,
		0.781665, -0.623662, 0.006797,
		36.234848, 36.239117, 26.279301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659386, 36.445972, 26.902693>,  <35.687683, 36.675682, 26.274544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659386, 36.445972, 26.902693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033733, 36.356949, 26.793432>,  <36.258343, 36.303535, 26.727877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033733, 36.356949, 26.793432>,  <35.659386, 36.445972, 26.902693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033733, 36.356949, 26.793432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320734, 0.217202, 0.921929,
		-0.145853, -0.950416, 0.274655,
		0.935872, -0.222558, -0.273152,
		36.314495, 36.290180, 26.711487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890976, 36.092419, 27.451788>,  <35.659386, 36.445972, 26.902693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890976, 36.092419, 27.451788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218029, 36.222263, 27.261587>,  <36.414261, 36.300171, 27.147467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218029, 36.222263, 27.261587>,  <35.890976, 36.092419, 27.451788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218029, 36.222263, 27.261587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419813, 0.229042, 0.878235,
		0.394001, -0.917694, 0.050993,
		0.817631, 0.324618, -0.475502,
		36.463318, 36.319649, 27.118937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459450, 35.795105, 27.746494>,  <35.890976, 36.092419, 27.451788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459450, 35.795105, 27.746494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621544, 36.104797, 27.552032>,  <36.718800, 36.290611, 27.435356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621544, 36.104797, 27.552032>,  <36.459450, 35.795105, 27.746494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621544, 36.104797, 27.552032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585819, 0.188336, 0.788255,
		0.701853, -0.604230, -0.377239,
		0.405239, 0.774232, -0.486154,
		36.743114, 36.337067, 27.406187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177086, 35.699215, 27.783253>,  <36.459450, 35.795105, 27.746494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177086, 35.699215, 27.783253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160431, 36.087490, 27.688564>,  <37.150436, 36.320454, 27.631750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160431, 36.087490, 27.688564>,  <37.177086, 35.699215, 27.783253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160431, 36.087490, 27.688564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503281, 0.225051, 0.834302,
		0.863119, -0.084398, -0.497898,
		-0.041639, 0.970685, -0.236722,
		37.147938, 36.378696, 27.617548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919701, 35.991875, 27.816141>,  <37.177086, 35.699215, 27.783253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919701, 35.991875, 27.816141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668236, 36.302574, 27.831333>,  <37.517357, 36.488995, 27.840448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668236, 36.302574, 27.831333>,  <37.919701, 35.991875, 27.816141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668236, 36.302574, 27.831333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426028, 0.303125, 0.852417,
		0.650601, 0.552066, -0.521480,
		-0.628664, 0.776749, 0.037982,
		37.479637, 36.535599, 27.842728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362499, 36.589268, 27.968317>,  <37.919701, 35.991875, 27.816141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362499, 36.589268, 27.968317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982765, 36.650082, 28.078339>,  <37.754925, 36.686569, 28.144352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982765, 36.650082, 28.078339>,  <38.362499, 36.589268, 27.968317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982765, 36.650082, 28.078339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314013, 0.423064, 0.849949,
		0.012860, 0.893253, -0.449370,
		-0.949332, 0.152038, 0.275052,
		37.697968, 36.695694, 28.160854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371006, 37.214867, 28.182171>,  <38.362499, 36.589268, 27.968317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371006, 37.214867, 28.182171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054882, 37.050018, 28.363527>,  <37.865208, 36.951107, 28.472342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054882, 37.050018, 28.363527>,  <38.371006, 37.214867, 28.182171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054882, 37.050018, 28.363527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404202, 0.205430, 0.891302,
		-0.460468, 0.887666, 0.004229,
		-0.790310, -0.412126, 0.453391,
		37.817791, 36.926380, 28.499544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149841, 37.740017, 28.635572>,  <38.371006, 37.214867, 28.182171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149841, 37.740017, 28.635572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997334, 37.395626, 28.770243>,  <37.905830, 37.188992, 28.851044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997334, 37.395626, 28.770243>,  <38.149841, 37.740017, 28.635572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997334, 37.395626, 28.770243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256497, 0.251364, 0.933288,
		-0.888169, 0.442188, 0.125002,
		-0.381267, -0.860980, 0.336673,
		37.882954, 37.137333, 28.871244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682404, 37.947689, 29.085083>,  <38.149841, 37.740017, 28.635572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682404, 37.947689, 29.085083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804390, 37.576454, 29.170542>,  <37.877583, 37.353714, 29.221817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804390, 37.576454, 29.170542>,  <37.682404, 37.947689, 29.085083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804390, 37.576454, 29.170542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367518, 0.321645, 0.872625,
		-0.878592, -0.187605, 0.439181,
		0.304970, -0.928089, 0.213646,
		37.895882, 37.298027, 29.234636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336681, 37.661446, 29.767298>,  <37.682404, 37.947689, 29.085083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336681, 37.661446, 29.767298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684929, 37.484352, 29.681501>,  <37.893879, 37.378098, 29.630024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684929, 37.484352, 29.681501>,  <37.336681, 37.661446, 29.767298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684929, 37.484352, 29.681501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265872, 0.056608, 0.962345,
		-0.413917, -0.894866, 0.166994,
		0.870623, -0.442730, -0.214489,
		37.946117, 37.351532, 29.617155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458797, 37.184647, 30.203476>,  <37.336681, 37.661446, 29.767298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458797, 37.184647, 30.203476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842697, 37.199265, 30.092089>,  <38.073036, 37.208035, 30.025257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842697, 37.199265, 30.092089>,  <37.458797, 37.184647, 30.203476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842697, 37.199265, 30.092089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279679, -0.033737, 0.959501,
		0.025672, -0.998762, -0.042601,
		0.959750, 0.036547, -0.278467,
		38.130623, 37.210228, 30.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972439, 36.736698, 30.317661>,  <37.458797, 37.184647, 30.203476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972439, 36.736698, 30.317661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298393, 36.957527, 30.247030>,  <38.493965, 37.090027, 30.204653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298393, 36.957527, 30.247030>,  <37.972439, 36.736698, 30.317661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298393, 36.957527, 30.247030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531149, -0.589275, 0.608799,
		0.232052, -0.589887, -0.773424,
		0.814882, 0.552076, -0.176576,
		38.542858, 37.123150, 30.194057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594322, 36.254265, 30.063873>,  <37.972439, 36.736698, 30.317661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594322, 36.254265, 30.063873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758854, 36.596088, 30.190699>,  <38.857574, 36.801182, 30.266794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758854, 36.596088, 30.190699>,  <38.594322, 36.254265, 30.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758854, 36.596088, 30.190699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651885, -0.518933, 0.552951,
		0.637066, -0.020756, -0.770530,
		0.411330, 0.854563, 0.317065,
		38.882252, 36.852459, 30.285818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812187, 36.659103, 30.744476>,  <38.594322, 36.254265, 30.063873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812187, 36.659103, 30.744476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997620, 36.966358, 30.921135>,  <39.108879, 37.150711, 31.027130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997620, 36.966358, 30.921135>,  <38.812187, 36.659103, 30.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997620, 36.966358, 30.921135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708926, 0.022547, 0.704922,
		0.531521, -0.639884, 0.555007,
		0.463583, 0.768140, 0.441646,
		39.136696, 37.196800, 31.053629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624363, 36.563374, 31.375683>,  <38.812187, 36.659103, 30.744476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624363, 36.563374, 31.375683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678196, 36.956367, 31.324135>,  <38.710495, 37.192165, 31.293205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678196, 36.956367, 31.324135>,  <38.624363, 36.563374, 31.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678196, 36.956367, 31.324135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688608, 0.186254, 0.700805,
		0.712534, -0.005577, 0.701615,
		0.134587, 0.982486, -0.128872,
		38.718571, 37.251114, 31.285473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885685, 36.884937, 31.919905>,  <38.624363, 36.563374, 31.375683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885685, 36.884937, 31.919905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653412, 37.132839, 31.708731>,  <38.514050, 37.281578, 31.582026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653412, 37.132839, 31.708731>,  <38.885685, 36.884937, 31.919905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653412, 37.132839, 31.708731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636707, 0.058409, 0.768891,
		0.507357, 0.782622, 0.360682,
		-0.580684, 0.619751, -0.527935,
		38.479206, 37.318764, 31.550350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843021, 37.581223, 32.231636>,  <38.885685, 36.884937, 31.919905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843021, 37.581223, 32.231636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529949, 37.408157, 32.052650>,  <38.342106, 37.304317, 31.945259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529949, 37.408157, 32.052650>,  <38.843021, 37.581223, 32.231636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529949, 37.408157, 32.052650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498357, 0.004902, 0.866958,
		-0.372904, 0.901544, -0.219456,
		-0.782676, -0.432660, -0.447463,
		38.295147, 37.278358, 31.918411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109257, 37.965508, 32.431049>,  <38.843021, 37.581223, 32.231636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109257, 37.965508, 32.431049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029716, 37.585983, 32.332893>,  <37.981991, 37.358269, 32.273998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029716, 37.585983, 32.332893>,  <38.109257, 37.965508, 32.431049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029716, 37.585983, 32.332893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613446, -0.074768, 0.786189,
		-0.764293, 0.306868, -0.567176,
		-0.198849, -0.948811, -0.245392,
		37.970062, 37.301338, 32.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337608, 37.873665, 32.390873>,  <38.109257, 37.965508, 32.431049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337608, 37.873665, 32.390873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564861, 37.565582, 32.506809>,  <37.701214, 37.380733, 32.576370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564861, 37.565582, 32.506809>,  <37.337608, 37.873665, 32.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564861, 37.565582, 32.506809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482954, -0.026887, 0.875233,
		-0.666318, -0.637226, -0.387250,
		0.568133, -0.770208, 0.289836,
		37.735302, 37.334518, 32.593761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917912, 37.271755, 32.627331>,  <37.337608, 37.873665, 32.390873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917912, 37.271755, 32.627331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276394, 37.219292, 32.796856>,  <37.491482, 37.187813, 32.898571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276394, 37.219292, 32.796856>,  <36.917912, 37.271755, 32.627331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276394, 37.219292, 32.796856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443286, -0.226548, 0.867279,
		-0.017741, -0.965128, -0.261175,
		0.896204, -0.131161, 0.423809,
		37.545254, 37.179943, 32.924000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822086, 36.530193, 32.990772>,  <36.917912, 37.271755, 32.627331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822086, 36.530193, 32.990772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120049, 36.750835, 33.140888>,  <37.298824, 36.883221, 33.230957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120049, 36.750835, 33.140888>,  <36.822086, 36.530193, 32.990772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120049, 36.750835, 33.140888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371483, -0.124316, 0.920079,
		0.554179, -0.824786, 0.112310,
		0.744906, 0.551610, 0.375288,
		37.343521, 36.916317, 33.253475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511337, 36.015732, 32.589348>,  <36.822086, 36.530193, 32.990772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511337, 36.015732, 32.589348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175743, 35.803055, 32.635666>,  <35.974388, 35.675449, 32.663456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175743, 35.803055, 32.635666>,  <36.511337, 36.015732, 32.589348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175743, 35.803055, 32.635666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411211, 0.480123, -0.774847,
		0.356380, -0.697704, -0.621452,
		-0.838987, -0.531688, 0.115797,
		35.924046, 35.643547, 32.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403389, 35.692924, 32.011093>,  <36.511337, 36.015732, 32.589348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403389, 35.692924, 32.011093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045799, 35.730671, 32.186325>,  <35.831245, 35.753319, 32.291466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045799, 35.730671, 32.186325>,  <36.403389, 35.692924, 32.011093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045799, 35.730671, 32.186325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279837, 0.645995, -0.710198,
		-0.350014, -0.757487, -0.551094,
		-0.893970, 0.094363, 0.438080,
		35.777607, 35.758980, 32.317749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963154, 35.841290, 31.485577>,  <36.403389, 35.692924, 32.011093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963154, 35.841290, 31.485577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745300, 35.901665, 31.815569>,  <35.614590, 35.937889, 32.013565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745300, 35.901665, 31.815569>,  <35.963154, 35.841290, 31.485577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745300, 35.901665, 31.815569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661772, 0.526933, -0.533291,
		-0.515202, -0.836397, -0.187100,
		-0.544633, 0.150935, 0.824981,
		35.581909, 35.946945, 32.063065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291859, 35.572720, 31.379278>,  <35.963154, 35.841290, 31.485577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291859, 35.572720, 31.379278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265480, 35.862415, 31.653831>,  <35.249653, 36.036232, 31.818563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265480, 35.862415, 31.653831>,  <35.291859, 35.572720, 31.379278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265480, 35.862415, 31.653831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750364, 0.417432, -0.512546,
		-0.657727, -0.548838, 0.515918,
		-0.065944, 0.724243, 0.686385,
		35.245697, 36.079689, 31.859747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610882, 35.583595, 31.558504>,  <35.291859, 35.572720, 31.379278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610882, 35.583595, 31.558504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768616, 35.943253, 31.634439>,  <34.863258, 36.159046, 31.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768616, 35.943253, 31.634439>,  <34.610882, 35.583595, 31.558504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768616, 35.943253, 31.634439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676451, 0.423839, -0.602308,
		-0.622023, 0.109094, 0.775362,
		0.394337, 0.899144, 0.189841,
		34.886917, 36.212997, 31.691391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009510, 35.871540, 31.667032>,  <34.610882, 35.583595, 31.558504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009510, 35.871540, 31.667032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268105, 36.167274, 31.591728>,  <34.423260, 36.344715, 31.546545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268105, 36.167274, 31.591728>,  <34.009510, 35.871540, 31.667032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268105, 36.167274, 31.591728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712523, 0.496897, -0.495383,
		-0.272708, 0.454397, 0.848029,
		0.646484, 0.739335, -0.188261,
		34.462051, 36.389076, 31.535250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715961, 36.567337, 31.747551>,  <34.009510, 35.871540, 31.667032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715961, 36.567337, 31.747551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013447, 36.618008, 31.484995>,  <34.191936, 36.648411, 31.327461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013447, 36.618008, 31.484995>,  <33.715961, 36.567337, 31.747551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013447, 36.618008, 31.484995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485778, 0.776954, -0.400453,
		0.459255, 0.616680, 0.639367,
		0.743710, 0.126681, -0.656389,
		34.236561, 36.656013, 31.288078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984470, 36.374813, 31.406258>,  <33.715961, 36.567337, 31.747551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984470, 36.374813, 31.406258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586319, 36.348469, 31.378294>,  <32.347427, 36.332661, 31.361515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586319, 36.348469, 31.378294>,  <32.984470, 36.374813, 31.406258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586319, 36.348469, 31.378294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080226, 0.970323, 0.228117,
		0.052811, 0.232671, -0.971121,
		-0.995377, -0.065862, -0.069910,
		32.287704, 36.328709, 31.357321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719986, 36.742786, 30.802231>,  <32.984470, 36.374813, 31.406258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719986, 36.742786, 30.802231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444374, 36.748993, 31.092058>,  <32.279007, 36.752716, 31.265955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444374, 36.748993, 31.092058>,  <32.719986, 36.742786, 30.802231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444374, 36.748993, 31.092058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094990, 0.989213, -0.111513,
		-0.718481, -0.145663, -0.680123,
		-0.689030, 0.015515, 0.724567,
		32.237663, 36.753647, 31.309429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226845, 37.218681, 30.978828>,  <32.719986, 36.742786, 30.802231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226845, 37.218681, 30.978828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487137, 37.491295, 30.844923>,  <33.643311, 37.654861, 30.764580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487137, 37.491295, 30.844923>,  <33.226845, 37.218681, 30.978828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487137, 37.491295, 30.844923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708797, -0.387096, 0.589715,
		0.272324, -0.621024, -0.734962,
		0.650728, 0.681532, -0.334764,
		33.682354, 37.695755, 30.744493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844193, 36.889660, 30.674690>,  <33.226845, 37.218681, 30.978828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844193, 36.889660, 30.674690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923691, 37.237839, 30.854832>,  <33.971390, 37.446747, 30.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923691, 37.237839, 30.854832>,  <33.844193, 36.889660, 30.674690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923691, 37.237839, 30.854832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658038, -0.459058, 0.596869,
		0.726282, 0.177725, -0.664024,
		0.198747, 0.870448, 0.450356,
		33.983315, 37.498974, 30.989939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513603, 37.149246, 30.486788>,  <33.844193, 36.889660, 30.674690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513603, 37.149246, 30.486788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369930, 37.245029, 30.847597>,  <34.283726, 37.302502, 31.064083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369930, 37.245029, 30.847597>,  <34.513603, 37.149246, 30.486788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369930, 37.245029, 30.847597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690199, -0.582409, 0.429448,
		0.628182, 0.776826, 0.043917,
		-0.359184, 0.239460, 0.902023,
		34.262177, 37.316868, 31.118204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091759, 36.996571, 30.955044>,  <34.513603, 37.149246, 30.486788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091759, 36.996571, 30.955044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754471, 37.007832, 31.169775>,  <34.552097, 37.014587, 31.298613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754471, 37.007832, 31.169775>,  <35.091759, 36.996571, 30.955044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754471, 37.007832, 31.169775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454323, -0.496473, 0.739665,
		0.287342, 0.867596, 0.405848,
		-0.843223, 0.028151, 0.536827,
		34.501503, 37.016277, 31.330824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281464, 37.404701, 31.486000>,  <35.091759, 36.996571, 30.955044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281464, 37.404701, 31.486000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023155, 37.100788, 31.516220>,  <34.868172, 36.918442, 31.534353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023155, 37.100788, 31.516220>,  <35.281464, 37.404701, 31.486000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023155, 37.100788, 31.516220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624337, -0.468494, 0.625074,
		-0.439526, 0.450824, 0.776901,
		-0.645771, -0.759784, 0.075551,
		34.829422, 36.872852, 31.538885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044014, 37.402641, 32.144943>,  <35.281464, 37.404701, 31.486000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044014, 37.402641, 32.144943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028973, 37.030201, 31.999813>,  <35.019947, 36.806736, 31.912737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028973, 37.030201, 31.999813>,  <35.044014, 37.402641, 32.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028973, 37.030201, 31.999813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378888, -0.349252, 0.857011,
		-0.924678, -0.105243, 0.365915,
		-0.037602, -0.931100, -0.362821,
		35.017693, 36.750870, 31.890966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161488, 37.049313, 32.726974>,  <35.044014, 37.402641, 32.144943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161488, 37.049313, 32.726974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169846, 36.748940, 32.462955>,  <35.174858, 36.568714, 32.304543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169846, 36.748940, 32.462955>,  <35.161488, 37.049313, 32.726974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169846, 36.748940, 32.462955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411936, -0.595082, 0.690063,
		-0.910973, -0.286314, 0.296904,
		0.020893, -0.750934, -0.660046,
		35.176113, 36.523659, 32.264942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975368, 36.503952, 33.148190>,  <35.161488, 37.049313, 32.726974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975368, 36.503952, 33.148190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081730, 36.328865, 32.804634>,  <35.145546, 36.223812, 32.598499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081730, 36.328865, 32.804634>,  <34.975368, 36.503952, 33.148190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081730, 36.328865, 32.804634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530405, -0.677549, 0.509508,
		-0.804963, -0.591041, 0.052006,
		0.265903, -0.437719, -0.858893,
		35.161503, 36.197548, 32.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742527, 35.845825, 33.097511>,  <34.975368, 36.503952, 33.148190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742527, 35.845825, 33.097511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050285, 35.813946, 32.843998>,  <35.234940, 35.794819, 32.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050285, 35.813946, 32.843998>,  <34.742527, 35.845825, 33.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050285, 35.813946, 32.843998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352367, -0.774618, 0.525171,
		-0.532797, -0.627387, -0.567902,
		0.769392, -0.079700, -0.633785,
		35.281101, 35.790035, 32.653862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823296, 34.991436, 32.958164>,  <34.742527, 35.845825, 33.097511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823296, 34.991436, 32.958164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155449, 35.205875, 32.897430>,  <35.354740, 35.334538, 32.860989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155449, 35.205875, 32.897430>,  <34.823296, 34.991436, 32.958164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155449, 35.205875, 32.897430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502696, -0.603290, 0.619142,
		0.240321, -0.590455, -0.770460,
		0.830387, 0.536100, -0.151836,
		35.404564, 35.366707, 32.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365753, 34.596630, 32.909252>,  <34.823296, 34.991436, 32.958164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365753, 34.596630, 32.909252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572548, 34.930519, 32.985100>,  <35.696625, 35.130852, 33.030609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572548, 34.930519, 32.985100>,  <35.365753, 34.596630, 32.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572548, 34.930519, 32.985100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724554, -0.544686, 0.422300,
		0.455789, -0.080933, -0.886400,
		0.516988, 0.834726, 0.189622,
		35.727646, 35.180939, 33.041985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021915, 34.668736, 32.635544>,  <35.365753, 34.596630, 32.909252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021915, 34.668736, 32.635544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984737, 34.863712, 32.982822>,  <35.962429, 34.980698, 33.191189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984737, 34.863712, 32.982822>,  <36.021915, 34.668736, 32.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984737, 34.863712, 32.982822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730748, -0.558871, 0.392007,
		0.676289, 0.670869, -0.304249,
		-0.092950, 0.487440, 0.868195,
		35.956852, 35.009945, 33.243282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651688, 34.754871, 32.945267>,  <36.021915, 34.668736, 32.635544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651688, 34.754871, 32.945267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475552, 34.847218, 33.292324>,  <36.369869, 34.902626, 33.500557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475552, 34.847218, 33.292324>,  <36.651688, 34.754871, 32.945267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475552, 34.847218, 33.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627476, -0.612058, 0.481309,
		0.642165, 0.756364, 0.124649,
		-0.440337, 0.230865, 0.867643,
		36.343449, 34.916477, 33.552616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174889, 35.029434, 33.364647>,  <36.651688, 34.754871, 32.945267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174889, 35.029434, 33.364647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874809, 34.866859, 33.573265>,  <36.694763, 34.769314, 33.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874809, 34.866859, 33.573265>,  <37.174889, 35.029434, 33.364647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874809, 34.866859, 33.573265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634512, -0.664396, 0.394935,
		0.186000, 0.627208, 0.756316,
		-0.750199, -0.406434, 0.521549,
		36.649750, 34.744930, 33.729729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284176, 34.958427, 34.155853>,  <37.174889, 35.029434, 33.364647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284176, 34.958427, 34.155853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056969, 34.672886, 33.992016>,  <36.920643, 34.501560, 33.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056969, 34.672886, 33.992016>,  <37.284176, 34.958427, 34.155853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056969, 34.672886, 33.992016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590657, -0.700156, 0.401130,
		-0.573129, -0.014082, 0.819344,
		-0.568020, -0.713851, -0.409598,
		36.886562, 34.458733, 33.869137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856888, 34.601799, 34.660671>,  <37.284176, 34.958427, 34.155853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856888, 34.601799, 34.660671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979511, 34.395668, 34.340557>,  <37.053085, 34.271992, 34.148487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979511, 34.395668, 34.340557>,  <36.856888, 34.601799, 34.660671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979511, 34.395668, 34.340557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589813, -0.557061, 0.584640,
		-0.747089, -0.651247, 0.133174,
		0.306559, -0.515326, -0.800288,
		37.071480, 34.241070, 34.100471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846069, 33.821278, 34.872860>,  <36.856888, 34.601799, 34.660671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846069, 33.821278, 34.872860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110714, 33.937153, 34.596207>,  <37.269501, 34.006680, 34.430214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110714, 33.937153, 34.596207>,  <36.846069, 33.821278, 34.872860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110714, 33.937153, 34.596207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689160, -0.598421, 0.408596,
		-0.295521, -0.746976, -0.595562,
		0.661608, 0.289689, -0.691632,
		37.309196, 34.024059, 34.388718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262566, 34.283550, 35.203327>,  <36.846069, 33.821278, 34.872860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262566, 34.283550, 35.203327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455086, 34.496929, 35.481548>,  <37.570599, 34.624954, 35.648479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455086, 34.496929, 35.481548>,  <37.262566, 34.283550, 35.203327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455086, 34.496929, 35.481548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288341, -0.845692, 0.449071,
		0.827774, -0.015583, -0.560845,
		0.481300, 0.533444, 0.695549,
		37.599476, 34.656963, 35.690212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089897, 34.277626, 35.175076>,  <37.262566, 34.283550, 35.203327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089897, 34.277626, 35.175076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884808, 34.292488, 35.518177>,  <37.761753, 34.301407, 35.724037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884808, 34.292488, 35.518177>,  <38.089897, 34.277626, 35.175076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884808, 34.292488, 35.518177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455948, -0.834754, 0.308703,
		0.727480, 0.549368, 0.411056,
		-0.512722, 0.037156, 0.857750,
		37.730991, 34.303635, 35.775501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472412, 34.338741, 35.813698>,  <38.089897, 34.277626, 35.175076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472412, 34.338741, 35.813698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159523, 34.095787, 35.869141>,  <37.971790, 33.950012, 35.902409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159523, 34.095787, 35.869141>,  <38.472412, 34.338741, 35.813698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159523, 34.095787, 35.869141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622925, -0.766047, 0.158541,
		0.009886, 0.210358, 0.977574,
		-0.782219, -0.607389, 0.138611,
		37.924858, 33.913570, 35.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366035, 34.113865, 36.533447>,  <38.472412, 34.338741, 35.813698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366035, 34.113865, 36.533447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263870, 33.824245, 36.277161>,  <38.202572, 33.650475, 36.123390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263870, 33.824245, 36.277161>,  <38.366035, 34.113865, 36.533447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263870, 33.824245, 36.277161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872386, -0.458264, 0.170107,
		-0.416783, -0.515505, 0.748697,
		-0.255410, -0.724050, -0.640716,
		38.187248, 33.607029, 36.084946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923920, 34.540318, 36.340927>,  <38.366035, 34.113865, 36.533447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923920, 34.540318, 36.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005898, 34.199535, 36.148186>,  <39.055084, 33.995068, 36.032543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005898, 34.199535, 36.148186>,  <38.923920, 34.540318, 36.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005898, 34.199535, 36.148186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954270, 0.064454, 0.291914,
		-0.217639, -0.519640, 0.826201,
		0.204942, -0.851951, -0.481849,
		39.067379, 33.943951, 36.003632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278320, 34.139271, 36.819805>,  <38.923920, 34.540318, 36.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278320, 34.139271, 36.819805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397346, 33.977577, 36.473846>,  <39.468761, 33.880562, 36.266270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397346, 33.977577, 36.473846>,  <39.278320, 34.139271, 36.819805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397346, 33.977577, 36.473846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946663, 0.007620, 0.322134,
		-0.123626, -0.914625, 0.384939,
		0.297565, -0.404232, -0.864900,
		39.486614, 33.856308, 36.214378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887669, 33.636520, 36.998421>,  <39.278320, 34.139271, 36.819805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887669, 33.636520, 36.998421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906860, 33.814358, 36.640644>,  <39.918377, 33.921059, 36.425976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906860, 33.814358, 36.640644>,  <39.887669, 33.636520, 36.998421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906860, 33.814358, 36.640644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994094, 0.066008, 0.086139,
		0.097338, -0.893297, -0.438801,
		0.047983, 0.444594, -0.894446,
		39.921257, 33.947735, 36.372311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341064, 33.304283, 36.519814>,  <39.887669, 33.636520, 36.998421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341064, 33.304283, 36.519814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362610, 33.690086, 36.416409>,  <40.375538, 33.921566, 36.354366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362610, 33.690086, 36.416409>,  <40.341064, 33.304283, 36.519814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362610, 33.690086, 36.416409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992458, -0.080262, -0.092661,
		-0.110120, -0.251573, -0.961553,
		0.053865, 0.964505, -0.258514,
		40.378769, 33.979439, 36.338856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876213, 33.234421, 35.953007>,  <40.341064, 33.304283, 36.519814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876213, 33.234421, 35.953007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827011, 33.579128, 36.149868>,  <40.797489, 33.785954, 36.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827011, 33.579128, 36.149868>,  <40.876213, 33.234421, 35.953007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827011, 33.579128, 36.149868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957832, -0.026668, 0.286090,
		0.259670, 0.506593, -0.822153,
		-0.123006, 0.861773, 0.492155,
		40.790108, 33.837662, 36.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368847, 33.697918, 35.683910>,  <40.876213, 33.234421, 35.953007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368847, 33.697918, 35.683910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302113, 33.821812, 36.058338>,  <41.262074, 33.896149, 36.282997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302113, 33.821812, 36.058338>,  <41.368847, 33.697918, 35.683910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302113, 33.821812, 36.058338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985087, 0.092863, 0.144845,
		-0.042063, 0.946279, -0.320604,
		-0.166836, 0.309730, 0.936073,
		41.252060, 33.914730, 36.339161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670723, 34.312710, 35.965454>,  <41.368847, 33.697918, 35.683910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670723, 34.312710, 35.965454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642960, 33.999168, 36.212276>,  <41.626301, 33.811043, 36.360371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642960, 33.999168, 36.212276>,  <41.670723, 34.312710, 35.965454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642960, 33.999168, 36.212276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981102, -0.165628, -0.100035,
		0.180615, 0.598450, 0.780536,
		-0.069413, -0.783852, 0.617055,
		41.622135, 33.764011, 36.397392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165005, 34.375824, 36.430141>,  <41.670723, 34.312710, 35.965454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165005, 34.375824, 36.430141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095089, 33.982624, 36.407665>,  <42.053139, 33.746704, 36.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095089, 33.982624, 36.407665>,  <42.165005, 34.375824, 36.430141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095089, 33.982624, 36.407665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984508, -0.175289, 0.004106,
		-0.013885, -0.054599, 0.998412,
		-0.174786, -0.983002, -0.056187,
		42.042652, 33.687725, 36.390808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670544, 33.999390, 36.831402>,  <42.165005, 34.375824, 36.430141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670544, 33.999390, 36.831402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512665, 33.698399, 36.620502>,  <42.417938, 33.517803, 36.493965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512665, 33.698399, 36.620502>,  <42.670544, 33.999390, 36.831402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512665, 33.698399, 36.620502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916625, -0.362054, -0.169460,
		-0.063376, -0.550171, 0.832644,
		-0.394693, -0.752482, -0.527246,
		42.394257, 33.472652, 36.462330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949795, 33.318649, 37.012699>,  <42.670544, 33.999390, 36.831402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949795, 33.318649, 37.012699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837955, 33.337315, 36.629105>,  <42.770851, 33.348515, 36.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837955, 33.337315, 36.629105>,  <42.949795, 33.318649, 37.012699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837955, 33.337315, 36.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909881, -0.305974, -0.280173,
		-0.306497, -0.950896, 0.043094,
		-0.279601, 0.046662, -0.958982,
		42.754074, 33.351315, 36.341412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493858, 32.940357, 36.614429>,  <42.949795, 33.318649, 37.012699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493858, 32.940357, 36.614429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257946, 33.066525, 36.317062>,  <43.116398, 33.142227, 36.138641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257946, 33.066525, 36.317062>,  <43.493858, 32.940357, 36.614429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257946, 33.066525, 36.317062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666941, -0.328821, -0.668631,
		-0.455352, -0.890160, -0.016436,
		-0.589784, 0.315424, -0.743413,
		43.081009, 33.161152, 36.094040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565845, 32.452984, 36.087997>,  <43.493858, 32.940357, 36.614429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565845, 32.452984, 36.087997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475315, 32.795944, 35.903114>,  <43.420998, 33.001720, 35.792183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475315, 32.795944, 35.903114>,  <43.565845, 32.452984, 36.087997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475315, 32.795944, 35.903114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651465, -0.219530, -0.726223,
		-0.724135, -0.465474, -0.508883,
		-0.226323, 0.857403, -0.462209,
		43.407417, 33.053165, 35.764450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178596, 32.501732, 35.377331>,  <43.565845, 32.452984, 36.087997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178596, 32.501732, 35.377331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461079, 32.780525, 35.427105>,  <43.630569, 32.947800, 35.456970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461079, 32.780525, 35.427105>,  <43.178596, 32.501732, 35.377331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461079, 32.780525, 35.427105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558935, -0.440961, -0.702243,
		-0.434582, 0.565480, -0.700979,
		0.706209, 0.696983, 0.124432,
		43.672943, 32.989620, 35.464436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342770, 32.827957, 34.744118>,  <43.178596, 32.501732, 35.377331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342770, 32.827957, 34.744118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666218, 32.847782, 34.978615>,  <43.860287, 32.859676, 35.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666218, 32.847782, 34.978615>,  <43.342770, 32.827957, 34.744118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666218, 32.847782, 34.978615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566123, -0.336771, -0.752390,
		0.160139, 0.940281, -0.300378,
		0.808616, 0.049564, 0.586245,
		43.908802, 32.862652, 35.154488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972115, 33.343204, 34.524014>,  <43.342770, 32.827957, 34.744118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972115, 33.343204, 34.524014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081043, 33.000549, 34.699291>,  <44.146400, 32.794956, 34.804459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081043, 33.000549, 34.699291>,  <43.972115, 33.343204, 34.524014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081043, 33.000549, 34.699291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703883, -0.133148, -0.697725,
		0.656041, 0.498446, 0.566712,
		0.272321, -0.856635, 0.438198,
		44.162739, 32.743557, 34.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793797, 33.335133, 34.701488>,  <43.972115, 33.343204, 34.524014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793797, 33.335133, 34.701488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610489, 32.991360, 34.610844>,  <44.500504, 32.785095, 34.556458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610489, 32.991360, 34.610844>,  <44.793797, 33.335133, 34.701488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610489, 32.991360, 34.610844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474097, -0.020701, -0.880229,
		0.751810, -0.510823, 0.416943,
		-0.458273, -0.859436, -0.226617,
		44.473007, 32.733528, 34.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266109, 32.785110, 34.341061>,  <44.793797, 33.335133, 34.701488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266109, 32.785110, 34.341061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888348, 32.777676, 34.209755>,  <44.661690, 32.773212, 34.130974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888348, 32.777676, 34.209755>,  <45.266109, 32.785110, 34.341061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888348, 32.777676, 34.209755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317969, 0.202361, -0.926254,
		0.083645, -0.979135, -0.185200,
		-0.944404, -0.018589, -0.328261,
		44.605026, 32.772099, 34.111275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401371, 33.327553, 33.813301>,  <45.266109, 32.785110, 34.341061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401371, 33.327553, 33.813301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021236, 33.310753, 33.936649>,  <44.793156, 33.300674, 34.010658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021236, 33.310753, 33.936649>,  <45.401371, 33.327553, 33.813301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021236, 33.310753, 33.936649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189272, -0.864539, 0.465563,
		0.247043, 0.500808, 0.829554,
		-0.950340, -0.041997, 0.308367,
		44.736134, 33.298153, 34.029160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502281, 33.985912, 33.904758>,  <45.401371, 33.327553, 33.813301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502281, 33.985912, 33.904758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808533, 33.987892, 33.647453>,  <45.992283, 33.989082, 33.493069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808533, 33.987892, 33.647453>,  <45.502281, 33.985912, 33.904758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808533, 33.987892, 33.647453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642021, 0.056799, 0.764580,
		0.040324, -0.998373, 0.040307,
		0.765626, 0.004953, -0.643267,
		46.038219, 33.989380, 33.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086678, 33.849274, 34.319862>,  <45.502281, 33.985912, 33.904758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086678, 33.849274, 34.319862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253525, 33.910458, 33.961506>,  <46.353634, 33.947166, 33.746494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253525, 33.910458, 33.961506>,  <46.086678, 33.849274, 34.319862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253525, 33.910458, 33.961506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813883, 0.375835, 0.443106,
		0.404483, -0.913976, 0.032277,
		0.417119, 0.152959, -0.895888,
		46.378662, 33.956345, 33.692738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296673, 34.440453, 34.733631>,  <46.086678, 33.849274, 34.319862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296673, 34.440453, 34.733631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621704, 34.226562, 34.826405>,  <46.816723, 34.098228, 34.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621704, 34.226562, 34.826405>,  <46.296673, 34.440453, 34.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621704, 34.226562, 34.826405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560269, 0.826285, -0.057885,
		-0.160689, 0.176980, 0.971008,
		0.812574, -0.534725, 0.231931,
		46.865475, 34.066147, 34.895985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611027, 34.663300, 35.305401>,  <46.296673, 34.440453, 34.733631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611027, 34.663300, 35.305401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908627, 34.471870, 35.118881>,  <47.087189, 34.357014, 35.006969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908627, 34.471870, 35.118881>,  <46.611027, 34.663300, 35.305401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908627, 34.471870, 35.118881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509739, 0.857718, -0.066974,
		0.432005, -0.187862, 0.882088,
		0.744001, -0.478568, -0.466299,
		47.131828, 34.328300, 34.978992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255589, 34.711266, 35.616253>,  <46.611027, 34.663300, 35.305401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255589, 34.711266, 35.616253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327003, 34.677002, 35.224174>,  <47.369850, 34.656445, 34.988926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327003, 34.677002, 35.224174>,  <47.255589, 34.711266, 35.616253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327003, 34.677002, 35.224174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362556, 0.931835, -0.015399,
		0.914701, -0.352627, 0.197423,
		0.178535, -0.085662, -0.980198,
		47.380566, 34.651302, 34.930115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908493, 34.540878, 35.301197>,  <47.255589, 34.711266, 35.616253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908493, 34.540878, 35.301197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724209, 34.770958, 35.030823>,  <47.613640, 34.909008, 34.868599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724209, 34.770958, 35.030823>,  <47.908493, 34.540878, 35.301197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724209, 34.770958, 35.030823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486415, 0.800651, 0.349796,
		0.742393, -0.167632, -0.648654,
		-0.460708, 0.575201, -0.675937,
		47.585995, 34.943520, 34.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.285866, 29.121014, 23.028341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027687, 28.839308, 23.146599>,  <37.872780, 28.670284, 23.217554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027687, 28.839308, 23.146599>,  <38.285866, 29.121014, 23.028341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027687, 28.839308, 23.146599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042140, 0.353646, 0.934430,
		-0.762641, 0.615584, -0.198582,
		-0.645448, -0.704266, 0.295646,
		37.834053, 28.628029, 23.235292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818924, 29.570734, 23.437492>,  <38.285866, 29.121014, 23.028341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818924, 29.570734, 23.437492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745071, 29.186592, 23.521046>,  <37.700760, 28.956106, 23.571177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745071, 29.186592, 23.521046>,  <37.818924, 29.570734, 23.437492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745071, 29.186592, 23.521046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238338, 0.249942, 0.938469,
		-0.953471, 0.123484, -0.275035,
		-0.184629, -0.960354, 0.208881,
		37.689682, 28.898485, 23.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101318, 29.607546, 23.772362>,  <37.818924, 29.570734, 23.437492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101318, 29.607546, 23.772362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322193, 29.299179, 23.899342>,  <37.454720, 29.114159, 23.975529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322193, 29.299179, 23.899342>,  <37.101318, 29.607546, 23.772362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322193, 29.299179, 23.899342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348656, 0.132344, 0.927860,
		-0.757318, -0.623032, -0.195707,
		0.552186, -0.770919, 0.317450,
		37.487850, 29.067904, 23.994577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700790, 29.182621, 24.250633>,  <37.101318, 29.607546, 23.772362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700790, 29.182621, 24.250633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074631, 29.076298, 24.345175>,  <37.298935, 29.012505, 24.401899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074631, 29.076298, 24.345175>,  <36.700790, 29.182621, 24.250633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074631, 29.076298, 24.345175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236753, 0.031026, 0.971074,
		-0.265452, -0.963527, -0.033934,
		0.934603, -0.265807, 0.236354,
		37.355011, 28.996555, 24.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600536, 28.872341, 24.849646>,  <36.700790, 29.182621, 24.250633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600536, 28.872341, 24.849646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994583, 28.940424, 24.840109>,  <37.231010, 28.981274, 24.834387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994583, 28.940424, 24.840109>,  <36.600536, 28.872341, 24.849646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994583, 28.940424, 24.840109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007247, 0.097459, 0.995213,
		0.171718, -0.980577, 0.094776,
		0.985120, 0.170209, -0.023841,
		37.290119, 28.991486, 24.832956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909256, 28.412806, 25.394304>,  <36.600536, 28.872341, 24.849646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909256, 28.412806, 25.394304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176201, 28.703356, 25.328568>,  <37.336369, 28.877686, 25.289125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176201, 28.703356, 25.328568>,  <36.909256, 28.412806, 25.394304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176201, 28.703356, 25.328568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050893, 0.264634, 0.963005,
		0.742994, -0.634307, 0.213573,
		0.667360, 0.726377, -0.164340,
		37.376408, 28.921268, 25.279266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371330, 28.333578, 25.903263>,  <36.909256, 28.412806, 25.394304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371330, 28.333578, 25.903263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411430, 28.707033, 25.765703>,  <37.435490, 28.931107, 25.683167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411430, 28.707033, 25.765703>,  <37.371330, 28.333578, 25.903263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411430, 28.707033, 25.765703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098762, 0.334597, 0.937172,
		0.990048, -0.127919, -0.058664,
		0.100253, 0.933639, -0.343901,
		37.441505, 28.987125, 25.662533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771305, 28.755972, 26.435675>,  <37.371330, 28.333578, 25.903263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771305, 28.755972, 26.435675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615456, 29.030853, 26.190418>,  <37.521946, 29.195782, 26.043264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615456, 29.030853, 26.190418>,  <37.771305, 28.755972, 26.435675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615456, 29.030853, 26.190418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021998, 0.672508, 0.739763,
		0.920712, 0.274740, -0.277141,
		-0.389622, 0.687205, -0.613142,
		37.498569, 29.237015, 26.006475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189400, 29.396627, 26.492731>,  <37.771305, 28.755972, 26.435675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189400, 29.396627, 26.492731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813805, 29.479431, 26.382858>,  <37.588448, 29.529114, 26.316935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813805, 29.479431, 26.382858>,  <38.189400, 29.396627, 26.492731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813805, 29.479431, 26.382858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027273, 0.751280, 0.659420,
		0.342867, 0.626679, -0.699797,
		-0.938988, 0.207008, -0.274681,
		37.532108, 29.541534, 26.300453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212379, 30.083855, 26.481056>,  <38.189400, 29.396627, 26.492731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212379, 30.083855, 26.481056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821873, 29.998272, 26.494427>,  <37.587566, 29.946922, 26.502449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821873, 29.998272, 26.494427>,  <38.212379, 30.083855, 26.481056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821873, 29.998272, 26.494427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172962, 0.863286, 0.474153,
		-0.130304, 0.457120, -0.879808,
		-0.976271, -0.213957, 0.033425,
		37.528992, 29.934084, 26.504454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845478, 30.694908, 26.292692>,  <38.212379, 30.083855, 26.481056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845478, 30.694908, 26.292692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582184, 30.492371, 26.515528>,  <37.424210, 30.370848, 26.649229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582184, 30.492371, 26.515528>,  <37.845478, 30.694908, 26.292692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582184, 30.492371, 26.515528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092788, 0.788931, 0.607436,
		-0.747076, 0.348142, -0.566281,
		-0.658231, -0.506345, 0.557088,
		37.384716, 30.340467, 26.682653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444664, 31.216917, 26.411921>,  <37.845478, 30.694908, 26.292692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444664, 31.216917, 26.411921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318653, 30.943850, 26.675655>,  <37.243046, 30.780010, 26.833897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318653, 30.943850, 26.675655>,  <37.444664, 31.216917, 26.411921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318653, 30.943850, 26.675655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061396, 0.707912, 0.703627,
		-0.947096, 0.181179, -0.264923,
		-0.315024, -0.682667, 0.659337,
		37.224144, 30.739050, 26.873457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008076, 31.562431, 26.987146>,  <37.444664, 31.216917, 26.411921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008076, 31.562431, 26.987146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102482, 31.204430, 27.138548>,  <37.159126, 30.989628, 27.229389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102482, 31.204430, 27.138548>,  <37.008076, 31.562431, 26.987146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102482, 31.204430, 27.138548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101552, 0.364657, 0.925588,
		-0.966429, -0.256889, -0.004825,
		0.236014, -0.895005, 0.378503,
		37.173286, 30.935928, 27.252098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601868, 31.545977, 27.606279>,  <37.008076, 31.562431, 26.987146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601868, 31.545977, 27.606279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909065, 31.292284, 27.641905>,  <37.093384, 31.140068, 27.663280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909065, 31.292284, 27.641905>,  <36.601868, 31.545977, 27.606279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909065, 31.292284, 27.641905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150985, 0.314440, 0.937193,
		-0.622402, -0.706314, 0.337249,
		0.767997, -0.634230, 0.089065,
		37.139465, 31.102015, 27.668625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495640, 31.260056, 28.322771>,  <36.601868, 31.545977, 27.606279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495640, 31.260056, 28.322771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879532, 31.187618, 28.236862>,  <37.109867, 31.144156, 28.185316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879532, 31.187618, 28.236862>,  <36.495640, 31.260056, 28.322771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879532, 31.187618, 28.236862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271266, 0.398576, 0.876100,
		-0.073051, -0.899079, 0.431649,
		0.959728, -0.181092, -0.214774,
		37.167450, 31.133291, 28.172430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758942, 30.893236, 28.903776>,  <36.495640, 31.260056, 28.322771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758942, 30.893236, 28.903776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072384, 31.064014, 28.723249>,  <37.260448, 31.166481, 28.614933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072384, 31.064014, 28.723249>,  <36.758942, 30.893236, 28.903776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072384, 31.064014, 28.723249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411702, 0.187178, 0.891889,
		0.465264, -0.884694, -0.029101,
		0.783601, 0.426945, -0.451317,
		37.307465, 31.192099, 28.587854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332882, 30.556503, 29.147045>,  <36.758942, 30.893236, 28.903776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332882, 30.556503, 29.147045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468208, 30.908091, 29.012609>,  <37.549404, 31.119043, 28.931948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468208, 30.908091, 29.012609>,  <37.332882, 30.556503, 29.147045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468208, 30.908091, 29.012609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243212, 0.263341, 0.933541,
		0.909060, -0.397574, -0.124683,
		0.338317, 0.878969, -0.336088,
		37.569702, 31.171782, 28.911783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048859, 30.663797, 29.477816>,  <37.332882, 30.556503, 29.147045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048859, 30.663797, 29.477816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887997, 31.010279, 29.359184>,  <37.791477, 31.218168, 29.288006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887997, 31.010279, 29.359184>,  <38.048859, 30.663797, 29.477816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887997, 31.010279, 29.359184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200005, 0.399217, 0.894776,
		0.893458, 0.300525, -0.333794,
		-0.402159, 0.866205, -0.296577,
		37.767349, 31.270140, 29.270212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354736, 31.193745, 29.820309>,  <38.048859, 30.663797, 29.477816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354736, 31.193745, 29.820309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036232, 31.404879, 29.702084>,  <37.845131, 31.531559, 29.631147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036232, 31.404879, 29.702084>,  <38.354736, 31.193745, 29.820309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036232, 31.404879, 29.702084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039819, 0.533244, 0.845024,
		0.603641, 0.661091, -0.445619,
		-0.796261, 0.527835, -0.295564,
		37.797352, 31.563229, 29.613415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604679, 31.746080, 30.037306>,  <38.354736, 31.193745, 29.820309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604679, 31.746080, 30.037306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220444, 31.820324, 29.954540>,  <37.989902, 31.864870, 29.904881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220444, 31.820324, 29.954540>,  <38.604679, 31.746080, 30.037306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220444, 31.820324, 29.954540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, 0.792621, 0.609321,
		0.277101, 0.580776, -0.765450,
		-0.960591, 0.185610, -0.206914,
		37.932266, 31.876007, 29.892466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587246, 32.522171, 29.844143>,  <38.604679, 31.746080, 30.037306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587246, 32.522171, 29.844143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246902, 32.364243, 29.982798>,  <38.042698, 32.269485, 30.065990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246902, 32.364243, 29.982798>,  <38.587246, 32.522171, 29.844143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246902, 32.364243, 29.982798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067907, 0.736876, 0.672609,
		-0.520985, 0.548757, -0.653789,
		-0.850860, -0.394816, 0.346637,
		37.991646, 32.245796, 30.086788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890324, 32.815880, 29.230047>,  <38.587246, 32.522171, 29.844143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890324, 32.815880, 29.230047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782597, 32.797344, 28.845272>,  <38.717960, 32.786224, 28.614407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782597, 32.797344, 28.845272>,  <38.890324, 32.815880, 29.230047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782597, 32.797344, 28.845272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863669, 0.453536, 0.219957,
		0.426082, 0.890033, -0.162162,
		-0.269315, -0.046335, -0.961937,
		38.701801, 32.783443, 28.556690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551502, 33.454609, 29.480368>,  <38.890324, 32.815880, 29.230047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551502, 33.454609, 29.480368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531990, 33.843689, 29.389616>,  <38.520283, 34.077137, 29.335165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531990, 33.843689, 29.389616>,  <38.551502, 33.454609, 29.480368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531990, 33.843689, 29.389616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101962, -0.230812, -0.967642,
		-0.993592, -0.024066, 0.110437,
		-0.048778, 0.972701, -0.226879,
		38.517357, 34.135498, 29.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960098, 33.679245, 29.004860>,  <38.551502, 33.454609, 29.480368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960098, 33.679245, 29.004860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263885, 33.935104, 28.957426>,  <38.446156, 34.088619, 28.928967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263885, 33.935104, 28.957426>,  <37.960098, 33.679245, 29.004860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263885, 33.935104, 28.957426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113175, -0.049593, -0.992337,
		-0.640628, 0.767066, 0.034728,
		0.759466, 0.639648, -0.118583,
		38.491726, 34.126999, 28.921850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603237, 34.100979, 28.633133>,  <37.960098, 33.679245, 29.004860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603237, 34.100979, 28.633133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997234, 34.150330, 28.584866>,  <38.233635, 34.179939, 28.555904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997234, 34.150330, 28.584866>,  <37.603237, 34.100979, 28.633133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997234, 34.150330, 28.584866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140286, 0.165163, -0.976238,
		-0.100519, 0.978519, 0.179993,
		0.984995, 0.123381, -0.120670,
		38.292732, 34.187344, 28.548664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665390, 34.546783, 28.018703>,  <37.603237, 34.100979, 28.633133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665390, 34.546783, 28.018703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.034317, 34.392216, 28.020395>,  <38.255672, 34.299477, 28.021410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.034317, 34.392216, 28.020395>,  <37.665390, 34.546783, 28.018703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034317, 34.392216, 28.020395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055238, -0.142662, -0.988229,
		0.382469, 0.911225, -0.152924,
		0.922315, -0.386415, 0.004230,
		38.311012, 34.276291, 28.021664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075924, 35.017292, 27.621233>,  <37.665390, 34.546783, 28.018703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075924, 35.017292, 27.621233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233101, 34.650764, 27.652086>,  <38.327408, 34.430847, 27.670599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233101, 34.650764, 27.652086>,  <38.075924, 35.017292, 27.621233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233101, 34.650764, 27.652086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190074, -0.163006, -0.968143,
		0.899705, 0.365763, -0.238221,
		0.392942, -0.916322, 0.077135,
		38.350983, 34.375866, 27.675226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432026, 35.008369, 26.987410>,  <38.075924, 35.017292, 27.621233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432026, 35.008369, 26.987410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391579, 34.630928, 27.113512>,  <38.367310, 34.404465, 27.189173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391579, 34.630928, 27.113512>,  <38.432026, 35.008369, 26.987410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391579, 34.630928, 27.113512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203005, -0.290642, -0.935049,
		0.973943, -0.158547, -0.162168,
		-0.101116, -0.943605, 0.315255,
		38.361244, 34.347847, 27.208088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800533, 34.535786, 26.422871>,  <38.432026, 35.008369, 26.987410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800533, 34.535786, 26.422871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545685, 34.290012, 26.609011>,  <38.392776, 34.142548, 26.720695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545685, 34.290012, 26.609011>,  <38.800533, 34.535786, 26.422871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545685, 34.290012, 26.609011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206242, -0.445834, -0.871032,
		0.742658, -0.650928, 0.157329,
		-0.637121, -0.614431, 0.465350,
		38.354549, 34.105682, 26.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052963, 33.793312, 26.215919>,  <38.800533, 34.535786, 26.422871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052963, 33.793312, 26.215919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671444, 33.756439, 26.330299>,  <38.442532, 33.734318, 26.398928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671444, 33.756439, 26.330299>,  <39.052963, 33.793312, 26.215919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671444, 33.756439, 26.330299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167538, -0.626858, -0.760907,
		0.249392, -0.773661, 0.582453,
		-0.953800, -0.092181, 0.285951,
		38.385303, 33.728786, 26.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932156, 33.175526, 26.088963>,  <39.052963, 33.793312, 26.215919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932156, 33.175526, 26.088963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560127, 33.322346, 26.095177>,  <38.336910, 33.410439, 26.098906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560127, 33.322346, 26.095177>,  <38.932156, 33.175526, 26.088963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560127, 33.322346, 26.095177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240959, -0.577552, -0.779982,
		-0.277320, -0.729182, 0.625609,
		-0.930071, 0.367051, 0.015536,
		38.281105, 33.432461, 26.099838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521172, 32.599491, 26.151560>,  <38.932156, 33.175526, 26.088963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521172, 32.599491, 26.151560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303062, 32.903172, 26.009407>,  <38.172199, 33.085381, 25.924116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303062, 32.903172, 26.009407>,  <38.521172, 32.599491, 26.151560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303062, 32.903172, 26.009407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195831, -0.527591, -0.826619,
		-0.815065, -0.381135, 0.436354,
		-0.545269, 0.759200, -0.355383,
		38.139481, 33.130932, 25.902792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785355, 32.345963, 26.034672>,  <38.521172, 32.599491, 26.151560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785355, 32.345963, 26.034672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841267, 32.655659, 25.787769>,  <37.874813, 32.841476, 25.639627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841267, 32.655659, 25.787769>,  <37.785355, 32.345963, 26.034672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841267, 32.655659, 25.787769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222586, -0.582852, -0.781497,
		-0.964840, 0.246633, 0.090863,
		0.139783, 0.774245, -0.617256,
		37.883202, 32.887932, 25.602592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304592, 32.192135, 25.448580>,  <37.785355, 32.345963, 26.034672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304592, 32.192135, 25.448580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556068, 32.459904, 25.290281>,  <37.706955, 32.620567, 25.195301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556068, 32.459904, 25.290281>,  <37.304592, 32.192135, 25.448580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556068, 32.459904, 25.290281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078928, -0.451342, -0.888853,
		-0.773638, 0.590051, -0.230919,
		0.628692, 0.669425, -0.395747,
		37.744675, 32.660732, 25.171556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995907, 32.470997, 24.785126>,  <37.304592, 32.192135, 25.448580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995907, 32.470997, 24.785126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395729, 32.459286, 24.782793>,  <37.635624, 32.452259, 24.781393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395729, 32.459286, 24.782793>,  <36.995907, 32.470997, 24.785126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395729, 32.459286, 24.782793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016164, -0.366620, -0.930230,
		0.025096, 0.929910, -0.366930,
		0.999554, -0.029276, -0.005830,
		37.695595, 32.450504, 24.781044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153603, 32.895046, 24.154028>,  <36.995907, 32.470997, 24.785126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153603, 32.895046, 24.154028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431339, 32.625088, 24.253958>,  <37.597980, 32.463112, 24.313915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431339, 32.625088, 24.253958>,  <37.153603, 32.895046, 24.154028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431339, 32.625088, 24.253958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137224, -0.216612, -0.966566,
		0.706441, 0.705408, -0.057791,
		0.694341, -0.674892, 0.249823,
		37.639641, 32.422619, 24.328905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781433, 33.030174, 23.777601>,  <37.153603, 32.895046, 24.154028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781433, 33.030174, 23.777601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827347, 32.644295, 23.872406>,  <37.854897, 32.412766, 23.929289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827347, 32.644295, 23.872406>,  <37.781433, 33.030174, 23.777601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827347, 32.644295, 23.872406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096644, -0.226612, -0.969179,
		0.988678, 0.134154, 0.067220,
		0.114786, -0.964702, 0.237011,
		37.861782, 32.354885, 23.943510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109806, 32.851822, 23.247101>,  <37.781433, 33.030174, 23.777601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109806, 32.851822, 23.247101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017662, 32.494003, 23.400314>,  <37.962376, 32.279312, 23.492243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017662, 32.494003, 23.400314>,  <38.109806, 32.851822, 23.247101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017662, 32.494003, 23.400314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136844, -0.419486, -0.897388,
		0.963436, -0.154304, 0.219046,
		-0.230357, -0.894551, 0.383033,
		37.948555, 32.225639, 23.515224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588318, 32.284801, 22.989958>,  <38.109806, 32.851822, 23.247101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588318, 32.284801, 22.989958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268337, 32.084026, 23.121487>,  <38.076347, 31.963560, 23.200403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268337, 32.084026, 23.121487>,  <38.588318, 32.284801, 22.989958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268337, 32.084026, 23.121487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022609, -0.522381, -0.852412,
		0.599632, -0.689327, 0.406534,
		-0.799956, -0.501943, 0.328822,
		38.028351, 31.933443, 23.220133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786228, 31.625875, 22.895998>,  <38.588318, 32.284801, 22.989958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786228, 31.625875, 22.895998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387711, 31.603861, 22.922428>,  <38.148598, 31.590652, 22.938286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387711, 31.603861, 22.922428>,  <38.786228, 31.625875, 22.895998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387711, 31.603861, 22.922428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021312, -0.586392, -0.809747,
		0.083310, -0.808156, 0.583047,
		-0.996296, -0.055034, 0.066076,
		38.088821, 31.587351, 22.942251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.658070, 30.852491, 23.067915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331375, 31.025141, 22.914742>,  <38.135357, 31.128731, 22.822838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331375, 31.025141, 22.914742>,  <38.658070, 30.852491, 23.067915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331375, 31.025141, 22.914742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000631, -0.662989, -0.748629,
		-0.577006, -0.611676, 0.541217,
		-0.816740, 0.431622, -0.382935,
		38.086353, 31.154627, 22.799860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379986, 30.340532, 22.798622>,  <38.658070, 30.852491, 23.067915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379986, 30.340532, 22.798622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162731, 30.623865, 22.618280>,  <38.032379, 30.793865, 22.510075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162731, 30.623865, 22.618280>,  <38.379986, 30.340532, 22.798622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162731, 30.623865, 22.618280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101731, -0.588518, -0.802058,
		-0.833459, -0.389760, 0.391704,
		-0.543135, 0.708332, -0.450855,
		37.999790, 30.836365, 22.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716553, 30.045118, 22.610285>,  <38.379986, 30.340532, 22.798622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716553, 30.045118, 22.610285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772453, 30.361744, 22.372328>,  <37.805992, 30.551720, 22.229553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772453, 30.361744, 22.372328>,  <37.716553, 30.045118, 22.610285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772453, 30.361744, 22.372328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162943, -0.574215, -0.802326,
		-0.976688, 0.209060, 0.048732,
		0.139751, 0.791562, -0.594894,
		37.814377, 30.599213, 22.193859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145214, 29.991425, 22.205914>,  <37.716553, 30.045118, 22.610285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145214, 29.991425, 22.205914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416794, 30.222660, 22.024874>,  <37.579742, 30.361401, 21.916250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416794, 30.222660, 22.024874>,  <37.145214, 29.991425, 22.205914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416794, 30.222660, 22.024874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093597, -0.543280, -0.834318,
		-0.728195, 0.608821, -0.314752,
		0.678949, 0.578087, -0.452598,
		37.620480, 30.396086, 21.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915226, 29.862900, 21.546301>,  <37.145214, 29.991425, 22.205914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915226, 29.862900, 21.546301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274570, 30.033926, 21.506037>,  <37.490177, 30.136541, 21.481878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274570, 30.033926, 21.506037>,  <36.915226, 29.862900, 21.546301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274570, 30.033926, 21.506037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158051, -0.528457, -0.834118,
		-0.409833, 0.733432, -0.542324,
		0.898364, 0.427563, -0.100660,
		37.544079, 30.162195, 21.475840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005558, 29.956053, 20.877495>,  <36.915226, 29.862900, 21.546301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005558, 29.956053, 20.877495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380295, 29.964136, 21.017164>,  <37.605137, 29.968987, 21.100965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380295, 29.964136, 21.017164>,  <37.005558, 29.956053, 20.877495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380295, 29.964136, 21.017164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308010, -0.520653, -0.796273,
		0.165708, 0.853529, -0.493993,
		0.936841, 0.020206, 0.349172,
		37.661346, 29.970198, 21.121916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413635, 30.157593, 20.360304>,  <37.005558, 29.956053, 20.877495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413635, 30.157593, 20.360304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657425, 29.957458, 20.606298>,  <37.803699, 29.837378, 20.753895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657425, 29.957458, 20.606298>,  <37.413635, 30.157593, 20.360304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657425, 29.957458, 20.606298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243265, -0.620269, -0.745713,
		0.754563, 0.604097, -0.256323,
		0.609472, -0.500333, 0.614988,
		37.840267, 29.807358, 20.790794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015034, 30.091377, 19.935329>,  <37.413635, 30.157593, 20.360304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015034, 30.091377, 19.935329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016079, 29.828922, 20.237185>,  <38.016705, 29.671450, 20.418297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016079, 29.828922, 20.237185>,  <38.015034, 30.091377, 19.935329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016079, 29.828922, 20.237185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533469, -0.637375, -0.556025,
		0.845816, 0.404027, 0.348365,
		0.002610, -0.656137, 0.754638,
		38.016861, 29.632082, 20.463575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705105, 29.932287, 20.162504>,  <38.015034, 30.091377, 19.935329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705105, 29.932287, 20.162504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456100, 29.629158, 20.240664>,  <38.306698, 29.447281, 20.287560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456100, 29.629158, 20.240664>,  <38.705105, 29.932287, 20.162504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456100, 29.629158, 20.240664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586378, -0.617007, -0.524847,
		0.518302, -0.212148, 0.828466,
		-0.622514, -0.757823, 0.195397,
		38.269344, 29.401812, 20.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141541, 29.482218, 20.452040>,  <38.705105, 29.932287, 20.162504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141541, 29.482218, 20.452040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829651, 29.280169, 20.304052>,  <38.642517, 29.158939, 20.215260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829651, 29.280169, 20.304052>,  <39.141541, 29.482218, 20.452040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829651, 29.280169, 20.304052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626118, -0.629076, -0.460695,
		-0.000031, -0.590861, 0.806774,
		-0.779728, -0.505121, -0.369968,
		38.595734, 29.128632, 20.193062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426914, 28.934462, 20.308805>,  <39.141541, 29.482218, 20.452040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426914, 28.934462, 20.308805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095798, 28.881382, 20.090761>,  <38.897129, 28.849533, 19.959934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095798, 28.881382, 20.090761>,  <39.426914, 28.934462, 20.308805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095798, 28.881382, 20.090761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546231, -0.412342, -0.729113,
		-0.128019, -0.901313, 0.413820,
		-0.827794, -0.132702, -0.545113,
		38.847462, 28.841572, 19.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378162, 28.152018, 20.113552>,  <39.426914, 28.934462, 20.308805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378162, 28.152018, 20.113552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137691, 28.345861, 19.859392>,  <38.993408, 28.462168, 19.706896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137691, 28.345861, 19.859392>,  <39.378162, 28.152018, 20.113552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137691, 28.345861, 19.859392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341531, -0.563039, -0.752559,
		-0.722454, -0.669432, 0.172977,
		-0.601179, 0.484612, -0.635401,
		38.957336, 28.491245, 19.668772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074940, 27.631479, 19.622154>,  <39.378162, 28.152018, 20.113552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074940, 27.631479, 19.622154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022858, 27.973621, 19.421589>,  <38.991608, 28.178907, 19.301250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022858, 27.973621, 19.421589>,  <39.074940, 27.631479, 19.622154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022858, 27.973621, 19.421589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320022, -0.442394, -0.837779,
		-0.938420, -0.269544, -0.216131,
		-0.130203, 0.855356, -0.501412,
		38.983795, 28.230228, 19.271166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687103, 27.482641, 19.057304>,  <39.074940, 27.631479, 19.622154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687103, 27.482641, 19.057304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854622, 27.825010, 18.935970>,  <38.955132, 28.030432, 18.863169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854622, 27.825010, 18.935970>,  <38.687103, 27.482641, 19.057304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854622, 27.825010, 18.935970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148788, -0.394203, -0.906899,
		-0.895810, 0.334670, -0.292440,
		0.418793, 0.855920, -0.303336,
		38.980259, 28.081787, 18.844969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305164, 27.654902, 18.481411>,  <38.687103, 27.482641, 19.057304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305164, 27.654902, 18.481411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647263, 27.858303, 18.441458>,  <38.852524, 27.980345, 18.417486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647263, 27.858303, 18.441458>,  <38.305164, 27.654902, 18.481411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647263, 27.858303, 18.441458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075181, -0.312453, -0.946953,
		-0.512738, 0.802370, -0.305454,
		0.855247, 0.508503, -0.099883,
		38.903835, 28.010855, 18.411493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254070, 27.991039, 17.971668>,  <38.305164, 27.654902, 18.481411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254070, 27.991039, 17.971668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653458, 27.983356, 17.992388>,  <38.893089, 27.978746, 18.004820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653458, 27.983356, 17.992388>,  <38.254070, 27.991039, 17.971668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653458, 27.983356, 17.992388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039286, -0.412394, -0.910158,
		0.038841, 0.910803, -0.411009,
		0.998473, -0.019205, 0.051800,
		38.952999, 27.977594, 18.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504520, 28.216497, 17.323133>,  <38.254070, 27.991039, 17.971668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504520, 28.216497, 17.323133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809772, 28.006411, 17.473747>,  <38.992924, 27.880360, 17.564116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809772, 28.006411, 17.473747>,  <38.504520, 28.216497, 17.323133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809772, 28.006411, 17.473747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106173, -0.472838, -0.874730,
		0.637461, 0.707512, -0.305075,
		0.763132, -0.525215, 0.376534,
		39.038712, 27.848846, 17.586708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943375, 28.253666, 16.727974>,  <38.504520, 28.216497, 17.323133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943375, 28.253666, 16.727974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093418, 27.970577, 16.967447>,  <39.183445, 27.800724, 17.111132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093418, 27.970577, 16.967447>,  <38.943375, 28.253666, 16.727974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093418, 27.970577, 16.967447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067934, -0.665093, -0.743664,
		0.924486, 0.238288, -0.297563,
		0.375113, -0.707722, 0.598681,
		39.205952, 27.758261, 17.147051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385311, 27.998352, 16.352119>,  <38.943375, 28.253666, 16.727974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385311, 27.998352, 16.352119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314556, 27.705381, 16.615105>,  <39.272102, 27.529598, 16.772896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314556, 27.705381, 16.615105>,  <39.385311, 27.998352, 16.352119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314556, 27.705381, 16.615105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158206, -0.680470, -0.715493,
		0.971433, -0.022546, 0.236240,
		-0.176886, -0.732428, 0.657465,
		39.261490, 27.485653, 16.812344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922523, 27.510710, 16.309820>,  <39.385311, 27.998352, 16.352119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922523, 27.510710, 16.309820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643196, 27.300716, 16.504446>,  <39.475601, 27.174721, 16.621222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643196, 27.300716, 16.504446>,  <39.922523, 27.510710, 16.309820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643196, 27.300716, 16.504446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003974, -0.682593, -0.730788,
		0.715777, -0.508389, 0.478753,
		-0.698318, -0.524984, 0.486564,
		39.433701, 27.143221, 16.650415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154285, 26.896162, 16.346710>,  <39.922523, 27.510710, 16.309820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154285, 26.896162, 16.346710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757343, 26.862934, 16.383217>,  <39.519176, 26.842997, 16.405121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757343, 26.862934, 16.383217>,  <40.154285, 26.896162, 16.346710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757343, 26.862934, 16.383217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030031, -0.554752, -0.831474,
		0.119702, -0.827859, 0.548016,
		-0.992356, -0.083072, 0.091266,
		39.459637, 26.838013, 16.410597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885597, 26.161558, 16.418388>,  <40.154285, 26.896162, 16.346710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885597, 26.161558, 16.418388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619595, 26.402744, 16.242119>,  <39.459991, 26.547457, 16.136356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619595, 26.402744, 16.242119>,  <39.885597, 26.161558, 16.418388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619595, 26.402744, 16.242119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040239, -0.618126, -0.785048,
		-0.745751, -0.504332, 0.435322,
		-0.665009, 0.602967, -0.440674,
		39.420094, 26.583635, 16.109917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181236, 25.843180, 16.296967>,  <39.885597, 26.161558, 16.418388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181236, 25.843180, 16.296967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272224, 26.123344, 16.026360>,  <39.326817, 26.291443, 15.863995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272224, 26.123344, 16.026360>,  <39.181236, 25.843180, 16.296967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272224, 26.123344, 16.026360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093311, -0.707213, -0.700815,
		-0.969303, 0.096290, -0.226229,
		0.227474, 0.700412, -0.676519,
		39.340466, 26.333467, 15.823403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697803, 25.815718, 15.678143>,  <39.181236, 25.843180, 16.296967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697803, 25.815718, 15.678143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072601, 25.914753, 15.579555>,  <39.297478, 25.974174, 15.520402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072601, 25.914753, 15.579555>,  <38.697803, 25.815718, 15.678143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072601, 25.914753, 15.579555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042520, -0.619435, -0.783895,
		-0.346757, 0.744982, -0.569877,
		0.936991, 0.247590, -0.246471,
		39.353699, 25.989031, 15.505613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186836, 25.353361, 15.914902>,  <38.697803, 25.815718, 15.678143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186836, 25.353361, 15.914902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998093, 25.024124, 16.041309>,  <37.884846, 24.826582, 16.117153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998093, 25.024124, 16.041309>,  <38.186836, 25.353361, 15.914902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998093, 25.024124, 16.041309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346028, 0.502555, 0.792277,
		-0.810935, 0.264491, -0.521948,
		-0.471857, -0.823093, 0.316019,
		37.856537, 24.777197, 16.136114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511490, 25.569941, 16.078348>,  <38.186836, 25.353361, 15.914902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511490, 25.569941, 16.078348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577705, 25.229300, 16.277292>,  <37.617435, 25.024914, 16.396660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577705, 25.229300, 16.277292>,  <37.511490, 25.569941, 16.078348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577705, 25.229300, 16.277292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405002, 0.401130, 0.821626,
		-0.899206, -0.337440, -0.278500,
		0.165535, -0.851604, 0.497362,
		37.627365, 24.973818, 16.426500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060730, 25.593452, 16.522604>,  <37.511490, 25.569941, 16.078348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060730, 25.593452, 16.522604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273388, 25.311249, 16.710052>,  <37.400982, 25.141926, 16.822521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273388, 25.311249, 16.710052>,  <37.060730, 25.593452, 16.522604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273388, 25.311249, 16.710052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263397, 0.388138, 0.883160,
		-0.804969, -0.592962, 0.020522,
		0.531645, -0.705511, 0.468623,
		37.432880, 25.099596, 16.850639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664310, 25.493633, 16.974943>,  <37.060730, 25.593452, 16.522604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664310, 25.493633, 16.974943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025681, 25.394938, 17.115198>,  <37.242500, 25.335720, 17.199350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025681, 25.394938, 17.115198>,  <36.664310, 25.493633, 16.974943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025681, 25.394938, 17.115198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181463, 0.520910, 0.834101,
		-0.388456, -0.817173, 0.425828,
		0.903423, -0.246739, 0.350638,
		37.296707, 25.320915, 17.220390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532742, 25.132986, 17.642492>,  <36.664310, 25.493633, 16.974943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532742, 25.132986, 17.642492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909130, 25.265959, 17.617006>,  <37.134964, 25.345743, 17.601715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909130, 25.265959, 17.617006>,  <36.532742, 25.132986, 17.642492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909130, 25.265959, 17.617006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101113, 0.455707, 0.884368,
		0.323027, -0.825724, 0.462421,
		0.940973, 0.332432, -0.063714,
		37.191422, 25.365688, 17.597893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819309, 24.878450, 18.267057>,  <36.532742, 25.132986, 17.642492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819309, 24.878450, 18.267057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053162, 25.183926, 18.157516>,  <37.193474, 25.367210, 18.091791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053162, 25.183926, 18.157516>,  <36.819309, 24.878450, 18.267057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053162, 25.183926, 18.157516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114510, 0.411840, 0.904033,
		0.803180, -0.497163, 0.328223,
		0.584627, 0.763686, -0.273852,
		37.228550, 25.413031, 18.075361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368389, 24.929104, 18.692524>,  <36.819309, 24.878450, 18.267057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368389, 24.929104, 18.692524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347618, 25.304123, 18.554939>,  <37.335155, 25.529135, 18.472389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347618, 25.304123, 18.554939>,  <37.368389, 24.929104, 18.692524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347618, 25.304123, 18.554939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094494, 0.347493, 0.932909,
		0.994170, 0.015946, -0.106638,
		-0.051932, 0.937547, -0.343960,
		37.332039, 25.585386, 18.451752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866066, 25.273911, 19.023548>,  <37.368389, 24.929104, 18.692524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866066, 25.273911, 19.023548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600327, 25.544502, 18.896412>,  <37.440884, 25.706858, 18.820131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600327, 25.544502, 18.896412>,  <37.866066, 25.273911, 19.023548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600327, 25.544502, 18.896412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013762, 0.436244, 0.899723,
		0.747300, 0.593352, -0.299126,
		-0.664344, 0.676480, -0.317839,
		37.401024, 25.747446, 18.801060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044846, 25.814810, 19.383944>,  <37.866066, 25.273911, 19.023548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044846, 25.814810, 19.383944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690960, 25.932955, 19.239698>,  <37.478630, 26.003841, 19.153152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690960, 25.932955, 19.239698>,  <38.044846, 25.814810, 19.383944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690960, 25.932955, 19.239698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238752, 0.377304, 0.894784,
		0.400346, 0.877725, -0.263288,
		-0.884715, 0.295363, -0.360611,
		37.425545, 26.021564, 19.131516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113174, 26.529308, 19.346708>,  <38.044846, 25.814810, 19.383944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113174, 26.529308, 19.346708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727345, 26.429663, 19.381420>,  <37.495846, 26.369875, 19.402246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727345, 26.429663, 19.381420>,  <38.113174, 26.529308, 19.346708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727345, 26.429663, 19.381420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114569, 0.691929, 0.712817,
		-0.237615, 0.677626, -0.695961,
		-0.964579, -0.249112, 0.086778,
		37.437969, 26.354929, 19.407454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745583, 27.182428, 19.318384>,  <38.113174, 26.529308, 19.346708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745583, 27.182428, 19.318384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515999, 26.908079, 19.497337>,  <37.378250, 26.743469, 19.604710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515999, 26.908079, 19.497337>,  <37.745583, 27.182428, 19.318384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515999, 26.908079, 19.497337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149489, 0.624906, 0.766254,
		-0.805125, 0.372918, -0.461200,
		-0.573956, -0.685875, 0.447381,
		37.343811, 26.702316, 19.631552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271656, 27.565180, 19.759377>,  <37.745583, 27.182428, 19.318384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271656, 27.565180, 19.759377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235626, 27.195461, 19.907732>,  <37.214008, 26.973629, 19.996746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235626, 27.195461, 19.907732>,  <37.271656, 27.565180, 19.759377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235626, 27.195461, 19.907732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219009, 0.381672, 0.897977,
		-0.971556, -0.000343, -0.236808,
		-0.090075, -0.924298, 0.370891,
		37.208603, 26.918173, 20.018999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601151, 27.510210, 20.129656>,  <37.271656, 27.565180, 19.759377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601151, 27.510210, 20.129656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845016, 27.234564, 20.286335>,  <36.991337, 27.069176, 20.380342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845016, 27.234564, 20.286335>,  <36.601151, 27.510210, 20.129656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845016, 27.234564, 20.286335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240838, 0.309751, 0.919810,
		-0.755186, -0.655112, 0.022878,
		0.609665, -0.689118, 0.391696,
		37.027916, 27.027828, 20.403843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278786, 27.431387, 20.723373>,  <36.601151, 27.510210, 20.129656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278786, 27.431387, 20.723373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639240, 27.269232, 20.784847>,  <36.855511, 27.171938, 20.821732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639240, 27.269232, 20.784847>,  <36.278786, 27.431387, 20.723373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639240, 27.269232, 20.784847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012298, 0.330439, 0.943747,
		-0.433366, -0.852333, 0.292784,
		0.901134, -0.405387, 0.153683,
		36.909580, 27.147615, 20.830952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379238, 27.047712, 21.435886>,  <36.278786, 27.431387, 20.723373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379238, 27.047712, 21.435886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758385, 27.159739, 21.375074>,  <36.985874, 27.226954, 21.338587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758385, 27.159739, 21.375074>,  <36.379238, 27.047712, 21.435886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758385, 27.159739, 21.375074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089164, 0.224937, 0.970285,
		0.305938, -0.933257, 0.188239,
		0.947867, 0.280063, -0.152030,
		37.042744, 27.243757, 21.329466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669777, 27.043093, 22.051104>,  <36.379238, 27.047712, 21.435886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669777, 27.043093, 22.051104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005627, 27.200935, 21.901806>,  <37.207138, 27.295641, 21.812227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005627, 27.200935, 21.901806>,  <36.669777, 27.043093, 22.051104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005627, 27.200935, 21.901806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243606, 0.340605, 0.908100,
		0.485475, -0.853388, 0.189851,
		0.839626, 0.394610, -0.373245,
		37.257515, 27.319319, 21.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311028, 26.990746, 22.456461>,  <36.669777, 27.043093, 22.051104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311028, 26.990746, 22.456461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296097, 27.328777, 22.243126>,  <37.287140, 27.531595, 22.115124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296097, 27.328777, 22.243126>,  <37.311028, 26.990746, 22.456461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296097, 27.328777, 22.243126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293699, 0.519417, 0.802463,
		0.955169, -0.126689, -0.267586,
		-0.037325, 0.845077, -0.533339,
		37.284901, 27.582300, 22.083124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966484, 27.225471, 22.486101>,  <37.311028, 26.990746, 22.456461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966484, 27.225471, 22.486101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738373, 27.543140, 22.402128>,  <37.601505, 27.733742, 22.351744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738373, 27.543140, 22.402128>,  <37.966484, 27.225471, 22.486101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738373, 27.543140, 22.402128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398271, 0.490831, 0.774897,
		0.718443, 0.358298, -0.596207,
		-0.570281, 0.794171, -0.209934,
		37.567287, 27.781391, 22.339148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438240, 27.765730, 22.698147>,  <37.966484, 27.225471, 22.486101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438240, 27.765730, 22.698147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071648, 27.925627, 22.691513>,  <37.851692, 28.021564, 22.687532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071648, 27.925627, 22.691513>,  <38.438240, 27.765730, 22.698147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071648, 27.925627, 22.691513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200684, 0.495177, 0.845296,
		0.346112, 0.771367, -0.534040,
		-0.916478, 0.399740, -0.016586,
		37.796703, 28.045549, 22.686537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605099, 28.448399, 22.898127>,  <38.438240, 27.765730, 22.698147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605099, 28.448399, 22.898127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212582, 28.390299, 22.948671>,  <37.977070, 28.355438, 22.978998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212582, 28.390299, 22.948671>,  <38.605099, 28.448399, 22.898127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212582, 28.390299, 22.948671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031538, 0.526196, 0.849778,
		-0.189923, 0.837866, -0.511772,
		-0.981292, -0.145252, 0.126362,
		37.918194, 28.346724, 22.986580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.562675, 33.501076, 24.643314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293407, 33.248390, 24.797079>,  <38.131847, 33.096779, 24.889338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293407, 33.248390, 24.797079>,  <38.562675, 33.501076, 24.643314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293407, 33.248390, 24.797079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118185, 0.421245, 0.899213,
		-0.729979, 0.650759, -0.208912,
		-0.673174, -0.631716, 0.384410,
		38.091454, 33.058876, 24.912403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027927, 33.961132, 24.845373>,  <38.562675, 33.501076, 24.643314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027927, 33.961132, 24.845373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939140, 33.646343, 25.075645>,  <37.885868, 33.457470, 25.213808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939140, 33.646343, 25.075645>,  <38.027927, 33.961132, 24.845373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939140, 33.646343, 25.075645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041374, 0.582275, 0.811938,
		-0.974175, 0.204045, -0.096689,
		-0.221972, -0.786969, 0.575680,
		37.872547, 33.410252, 25.248350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406403, 34.124096, 25.389111>,  <38.027927, 33.961132, 24.845373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406403, 34.124096, 25.389111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.625065, 33.820339, 25.530239>,  <37.756264, 33.638084, 25.614916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.625065, 33.820339, 25.530239>,  <37.406403, 34.124096, 25.389111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625065, 33.820339, 25.530239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070399, 0.378181, 0.923051,
		-0.834392, -0.529430, 0.153274,
		0.546656, -0.759396, 0.352822,
		37.789062, 33.592522, 25.636086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096626, 33.829479, 26.059978>,  <37.406403, 34.124096, 25.389111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096626, 33.829479, 26.059978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485970, 33.738472, 26.071318>,  <37.719578, 33.683868, 26.078121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485970, 33.738472, 26.071318>,  <37.096626, 33.829479, 26.059978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485970, 33.738472, 26.071318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046806, 0.318221, 0.946860,
		-0.224454, -0.920309, 0.320393,
		0.973360, -0.227522, 0.028350,
		37.777977, 33.670216, 26.079823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186012, 33.648746, 26.859016>,  <37.096626, 33.829479, 26.059978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186012, 33.648746, 26.859016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560715, 33.640491, 26.719273>,  <37.785538, 33.635540, 26.635426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560715, 33.640491, 26.719273>,  <37.186012, 33.648746, 26.859016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560715, 33.640491, 26.719273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340126, 0.288780, 0.894941,
		0.082421, -0.957173, 0.277537,
		0.936761, -0.020636, -0.349361,
		37.841743, 33.634300, 26.614464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491734, 33.367340, 27.379639>,  <37.186012, 33.648746, 26.859016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491734, 33.367340, 27.379639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781467, 33.577858, 27.201494>,  <37.955307, 33.704170, 27.094606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781467, 33.577858, 27.201494>,  <37.491734, 33.367340, 27.379639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781467, 33.577858, 27.201494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325955, 0.307805, 0.893873,
		0.607530, -0.792632, 0.051404,
		0.724335, 0.526299, -0.445363,
		37.998768, 33.735748, 27.067884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165287, 33.086948, 27.576862>,  <37.491734, 33.367340, 27.379639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165287, 33.086948, 27.576862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.186455, 33.475170, 27.482866>,  <38.199154, 33.708103, 27.426468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.186455, 33.475170, 27.482866>,  <38.165287, 33.086948, 27.576862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186455, 33.475170, 27.482866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582146, 0.161216, 0.796942,
		0.811361, -0.178968, -0.556475,
		0.052915, 0.970556, -0.234990,
		38.202328, 33.766338, 27.412369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922104, 33.239807, 27.551647>,  <38.165287, 33.086948, 27.576862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922104, 33.239807, 27.551647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728912, 33.583145, 27.620903>,  <38.612995, 33.789146, 27.662457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728912, 33.583145, 27.620903>,  <38.922104, 33.239807, 27.551647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728912, 33.583145, 27.620903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617434, 0.193632, 0.762419,
		0.620890, 0.475137, -0.623490,
		-0.482982, 0.858342, 0.173141,
		38.584019, 33.840649, 27.672846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440002, 33.658798, 27.910313>,  <38.922104, 33.239807, 27.551647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440002, 33.658798, 27.910313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101696, 33.865093, 27.965006>,  <38.898712, 33.988869, 27.997822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101696, 33.865093, 27.965006>,  <39.440002, 33.658798, 27.910313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101696, 33.865093, 27.965006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231517, 0.123854, 0.964914,
		0.480704, 0.847749, -0.224153,
		-0.845768, 0.515734, 0.136732,
		38.847965, 34.019814, 28.006025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527054, 34.358051, 28.156342>,  <39.440002, 33.658798, 27.910313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527054, 34.358051, 28.156342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157757, 34.271564, 28.283382>,  <38.936180, 34.219673, 28.359608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157757, 34.271564, 28.283382>,  <39.527054, 34.358051, 28.156342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157757, 34.271564, 28.283382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265508, 0.238468, 0.934151,
		-0.277721, 0.946774, -0.162756,
		-0.923243, -0.216220, 0.317604,
		38.880783, 34.206699, 28.378664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421524, 34.907608, 28.534750>,  <39.527054, 34.358051, 28.156342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421524, 34.907608, 28.534750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135181, 34.662121, 28.667952>,  <38.963375, 34.514828, 28.747871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135181, 34.662121, 28.667952>,  <39.421524, 34.907608, 28.534750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135181, 34.662121, 28.667952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204043, 0.272228, 0.940350,
		-0.667765, 0.741107, -0.069652,
		-0.715861, -0.613720, 0.333002,
		38.920422, 34.478004, 28.767853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982845, 35.280014, 29.061380>,  <39.421524, 34.907608, 28.534750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982845, 35.280014, 29.061380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915855, 34.893238, 29.138296>,  <38.875660, 34.661171, 29.184446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915855, 34.893238, 29.138296>,  <38.982845, 35.280014, 29.061380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915855, 34.893238, 29.138296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315040, 0.132331, 0.939808,
		-0.934186, 0.217972, 0.282463,
		-0.167474, -0.966942, 0.192291,
		38.865612, 34.603157, 29.195984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640350, 35.693916, 29.475580>,  <38.982845, 35.280014, 29.061380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640350, 35.693916, 29.475580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655159, 35.897484, 29.131573>,  <38.664043, 36.019623, 28.925167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655159, 35.897484, 29.131573>,  <38.640350, 35.693916, 29.475580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655159, 35.897484, 29.131573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970628, -0.223036, -0.090199,
		-0.237719, -0.831421, -0.502224,
		0.037021, 0.508915, -0.860020,
		38.666264, 36.050159, 28.873566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011555, 36.086666, 29.204700>,  <38.640350, 35.693916, 29.475580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011555, 36.086666, 29.204700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951763, 36.448311, 29.364819>,  <37.915890, 36.665298, 29.460890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951763, 36.448311, 29.364819>,  <38.011555, 36.086666, 29.204700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951763, 36.448311, 29.364819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692122, 0.193446, -0.695375,
		-0.706133, -0.380997, 0.596840,
		-0.149480, 0.904113, 0.400294,
		37.906918, 36.719543, 29.484907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364990, 36.012215, 29.283531>,  <38.011555, 36.086666, 29.204700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364990, 36.012215, 29.283531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507339, 36.369396, 29.173269>,  <37.592747, 36.583706, 29.107113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507339, 36.369396, 29.173269>,  <37.364990, 36.012215, 29.283531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507339, 36.369396, 29.173269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636741, 0.015780, -0.770916,
		-0.684045, 0.449866, 0.574198,
		0.355870, 0.892957, -0.275654,
		37.614101, 36.637283, 29.090572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758938, 36.341187, 29.061844>,  <37.364990, 36.012215, 29.283531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758938, 36.341187, 29.061844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061592, 36.540100, 28.892040>,  <37.243183, 36.659451, 28.790159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061592, 36.540100, 28.892040>,  <36.758938, 36.341187, 29.061844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061592, 36.540100, 28.892040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516086, 0.055600, -0.854730,
		-0.401445, 0.865802, 0.298713,
		0.756635, 0.497288, -0.424508,
		37.288582, 36.689285, 28.764688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481014, 36.870144, 28.582836>,  <36.758938, 36.341187, 29.061844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481014, 36.870144, 28.582836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855675, 36.838043, 28.446453>,  <37.080471, 36.818783, 28.364624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855675, 36.838043, 28.446453>,  <36.481014, 36.870144, 28.582836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855675, 36.838043, 28.446453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345115, -0.044997, -0.937481,
		0.059893, 0.995758, -0.069843,
		0.936648, -0.080252, -0.340956,
		37.136669, 36.813969, 28.344166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609829, 37.452293, 28.100998>,  <36.481014, 36.870144, 28.582836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609829, 37.452293, 28.100998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855160, 37.152248, 28.002073>,  <37.002357, 36.972221, 27.942719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855160, 37.152248, 28.002073>,  <36.609829, 37.452293, 28.100998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855160, 37.152248, 28.002073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437619, -0.062071, -0.897016,
		0.657508, 0.658396, -0.366332,
		0.613330, -0.750108, -0.247314,
		37.039158, 36.927216, 27.927879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757214, 37.563778, 27.390268>,  <36.609829, 37.452293, 28.100998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757214, 37.563778, 27.390268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898594, 37.194023, 27.447649>,  <36.983421, 36.972168, 27.482079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898594, 37.194023, 27.447649>,  <36.757214, 37.563778, 27.390268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898594, 37.194023, 27.447649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210814, -0.228117, -0.950537,
		0.911390, 0.305725, -0.275502,
		0.353449, -0.924389, 0.143453,
		37.004627, 36.916706, 27.490685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258503, 37.335869, 26.813942>,  <36.757214, 37.563778, 27.390268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258503, 37.335869, 26.813942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125278, 37.001389, 26.988228>,  <37.045345, 36.800701, 27.092800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125278, 37.001389, 26.988228>,  <37.258503, 37.335869, 26.813942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125278, 37.001389, 26.988228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199487, -0.389150, -0.899315,
		0.921563, -0.386443, -0.037202,
		-0.333057, -0.836197, 0.435716,
		37.025360, 36.750530, 27.118942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542774, 36.744305, 26.495203>,  <37.258503, 37.335869, 26.813942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542774, 36.744305, 26.495203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228710, 36.589489, 26.688583>,  <37.040272, 36.496597, 26.804611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228710, 36.589489, 26.688583>,  <37.542774, 36.744305, 26.495203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228710, 36.589489, 26.688583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182249, -0.601673, -0.777672,
		0.591872, -0.698704, 0.401870,
		-0.785158, -0.387042, 0.483452,
		36.993164, 36.473377, 26.833618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551136, 36.062660, 26.267946>,  <37.542774, 36.744305, 26.495203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551136, 36.062660, 26.267946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184319, 36.119743, 26.416895>,  <36.964230, 36.153996, 26.506264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184319, 36.119743, 26.416895>,  <37.551136, 36.062660, 26.267946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184319, 36.119743, 26.416895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383229, -0.573630, -0.723937,
		0.110292, -0.806587, 0.580735,
		-0.917045, 0.142710, 0.372374,
		36.909206, 36.162556, 26.528606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221855, 35.457684, 26.244354>,  <37.551136, 36.062660, 26.267946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221855, 35.457684, 26.244354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908688, 35.706467, 26.238558>,  <36.720787, 35.855736, 26.235081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908688, 35.706467, 26.238558>,  <37.221855, 35.457684, 26.244354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908688, 35.706467, 26.238558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467208, -0.603173, -0.646451,
		-0.410806, -0.499347, 0.762818,
		-0.782915, 0.621960, -0.014488,
		36.673813, 35.893055, 26.234211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712673, 34.967972, 26.214947>,  <37.221855, 35.457684, 26.244354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712673, 34.967972, 26.214947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547974, 35.320641, 26.122759>,  <36.449154, 35.532242, 26.067446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547974, 35.320641, 26.122759>,  <36.712673, 34.967972, 26.214947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547974, 35.320641, 26.122759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508153, -0.432065, -0.745051,
		-0.756470, -0.189656, 0.625926,
		-0.411744, 0.881675, -0.230470,
		36.424450, 35.585144, 26.053617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073048, 34.825474, 26.186684>,  <36.712673, 34.967972, 26.214947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073048, 34.825474, 26.186684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122604, 35.156189, 25.967201>,  <36.152340, 35.354618, 25.835512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122604, 35.156189, 25.967201>,  <36.073048, 34.825474, 26.186684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122604, 35.156189, 25.967201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488452, -0.430519, -0.758991,
		-0.863751, 0.362048, 0.350507,
		0.123891, 0.826785, -0.548705,
		36.159771, 35.404224, 25.802589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502605, 34.848652, 25.876839>,  <36.073048, 34.825474, 26.186684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502605, 34.848652, 25.876839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700447, 35.107643, 25.644932>,  <35.819153, 35.263039, 25.505787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700447, 35.107643, 25.644932>,  <35.502605, 34.848652, 25.876839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700447, 35.107643, 25.644932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315899, -0.487523, -0.813959,
		-0.809674, 0.585738, -0.036594,
		0.494607, 0.647481, -0.579769,
		35.848827, 35.301888, 25.471001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013741, 35.044609, 25.420750>,  <35.502605, 34.848652, 25.876839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013741, 35.044609, 25.420750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367264, 35.114883, 25.247303>,  <35.579376, 35.157047, 25.143236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367264, 35.114883, 25.247303>,  <35.013741, 35.044609, 25.420750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367264, 35.114883, 25.247303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296948, -0.505562, -0.810080,
		-0.361536, 0.844714, -0.394650,
		0.883806, 0.175683, -0.433615,
		35.632404, 35.167587, 25.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883171, 35.295563, 24.765806>,  <35.013741, 35.044609, 25.420750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883171, 35.295563, 24.765806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271606, 35.213268, 24.717369>,  <35.504665, 35.163891, 24.688307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271606, 35.213268, 24.717369>,  <34.883171, 35.295563, 24.765806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271606, 35.213268, 24.717369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211708, -0.507738, -0.835094,
		0.110327, 0.836584, -0.536614,
		0.971086, -0.205739, -0.121094,
		35.562931, 35.151546, 24.681042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525997, 35.690788, 24.341217>,  <34.883171, 35.295563, 24.765806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525997, 35.690788, 24.341217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.134079, 35.610977, 24.335831>,  <33.898926, 35.563091, 24.332598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.134079, 35.610977, 24.335831>,  <34.525997, 35.690788, 24.341217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134079, 35.610977, 24.335831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030625, 0.083160, 0.996066,
		-0.197622, 0.976357, -0.087591,
		-0.979800, -0.199527, -0.013467,
		33.840137, 35.551121, 24.331791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191422, 36.114616, 24.843016>,  <34.525997, 35.690788, 24.341217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191422, 36.114616, 24.843016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940186, 35.807030, 24.795376>,  <33.789444, 35.622478, 24.766792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940186, 35.807030, 24.795376>,  <34.191422, 36.114616, 24.843016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940186, 35.807030, 24.795376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169322, -0.014328, 0.985457,
		-0.759493, 0.639125, -0.121204,
		-0.628093, -0.768970, -0.119100,
		33.751759, 35.576340, 24.759645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526112, 36.298809, 25.025623>,  <34.191422, 36.114616, 24.843016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526112, 36.298809, 25.025623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.500072, 35.900162, 25.045666>,  <33.484451, 35.660973, 25.057692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.500072, 35.900162, 25.045666>,  <33.526112, 36.298809, 25.025623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500072, 35.900162, 25.045666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281092, 0.066492, 0.957374,
		-0.957470, 0.048238, -0.284471,
		-0.065096, -0.996620, 0.050105,
		33.480545, 35.601177, 25.060698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918404, 36.232559, 25.386013>,  <33.526112, 36.298809, 25.025623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918404, 36.232559, 25.386013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.095333, 35.873829, 25.389093>,  <33.201492, 35.658592, 25.390942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.095333, 35.873829, 25.389093>,  <32.918404, 36.232559, 25.386013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095333, 35.873829, 25.389093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314501, -0.147064, 0.937796,
		-0.839904, -0.417232, -0.347102,
		0.442325, -0.896822, 0.007700,
		33.228031, 35.604782, 25.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427456, 35.770702, 25.540045>,  <32.918404, 36.232559, 25.386013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427456, 35.770702, 25.540045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780094, 35.621933, 25.656301>,  <32.991676, 35.532673, 25.726055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780094, 35.621933, 25.656301>,  <32.427456, 35.770702, 25.540045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780094, 35.621933, 25.656301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378530, -0.189228, 0.906040,
		-0.281981, -0.908771, -0.307606,
		0.881590, -0.371924, 0.290638,
		33.044571, 35.510357, 25.743494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285835, 35.164467, 25.755013>,  <32.427456, 35.770702, 25.540045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285835, 35.164467, 25.755013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.622520, 35.288303, 25.931955>,  <32.824532, 35.362606, 26.038120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.622520, 35.288303, 25.931955>,  <32.285835, 35.164467, 25.755013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622520, 35.288303, 25.931955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360829, -0.286930, 0.887397,
		0.401657, -0.906545, -0.129802,
		0.841709, 0.309593, 0.442355,
		32.875034, 35.381180, 26.064661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470215, 34.568836, 26.246532>,  <32.285835, 35.164467, 25.755013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470215, 34.568836, 26.246532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.682236, 34.884182, 26.371449>,  <32.809448, 35.073391, 26.446398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.682236, 34.884182, 26.371449>,  <32.470215, 34.568836, 26.246532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682236, 34.884182, 26.371449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105697, -0.303985, 0.946795,
		0.841351, -0.534860, -0.077800,
		0.530053, 0.788364, 0.312292,
		32.841251, 35.120689, 26.465136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924355, 34.264950, 26.626547>,  <32.470215, 34.568836, 26.246532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924355, 34.264950, 26.626547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928879, 34.643829, 26.754725>,  <32.931595, 34.871159, 26.831631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928879, 34.643829, 26.754725>,  <32.924355, 34.264950, 26.626547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928879, 34.643829, 26.754725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057048, -0.319333, 0.945924,
		0.998307, -0.028979, 0.050424,
		0.011310, 0.947199, 0.320446,
		32.932270, 34.927990, 26.850859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398514, 34.382103, 27.168818>,  <32.924355, 34.264950, 26.626547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398514, 34.382103, 27.168818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.146572, 34.687168, 27.227638>,  <32.995407, 34.870209, 27.262932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.146572, 34.687168, 27.227638>,  <33.398514, 34.382103, 27.168818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146572, 34.687168, 27.227638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101293, -0.268368, 0.957976,
		0.770077, 0.588493, 0.246286,
		-0.629858, 0.762663, 0.147054,
		32.957615, 34.915966, 27.271755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709625, 34.732479, 27.687979>,  <33.398514, 34.382103, 27.168818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709625, 34.732479, 27.687979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.349361, 34.906254, 27.691607>,  <33.133205, 35.010517, 27.693783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.349361, 34.906254, 27.691607>,  <33.709625, 34.732479, 27.687979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349361, 34.906254, 27.691607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034624, 0.050943, 0.998101,
		0.433149, 0.899261, -0.060924,
		-0.900657, 0.434436, 0.009070,
		33.079163, 35.036583, 27.694328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681889, 35.378151, 28.048916>,  <33.709625, 34.732479, 27.687979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681889, 35.378151, 28.048916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.296383, 35.272461, 28.063583>,  <33.065079, 35.209049, 28.072384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.296383, 35.272461, 28.063583>,  <33.681889, 35.378151, 28.048916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296383, 35.272461, 28.063583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041471, 0.284205, 0.957866,
		-0.263510, 0.921637, -0.284865,
		-0.963765, -0.264221, 0.036670,
		33.007252, 35.193195, 28.074585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299026, 35.926476, 28.458067>,  <33.681889, 35.378151, 28.048916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299026, 35.926476, 28.458067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.076900, 35.594036, 28.470066>,  <32.943626, 35.394573, 28.477264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.076900, 35.594036, 28.470066>,  <33.299026, 35.926476, 28.458067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076900, 35.594036, 28.470066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218169, 0.180389, 0.959095,
		-0.802515, 0.526053, -0.281492,
		-0.555313, -0.831100, 0.029996,
		32.910305, 35.344707, 28.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.677048, 34.844154, 20.520199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528404, 34.521263, 20.703625>,  <33.439217, 34.327526, 20.813681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528404, 34.521263, 20.703625>,  <33.677048, 34.844154, 20.520199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528404, 34.521263, 20.703625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049952, 0.475836, 0.878114,
		-0.927043, 0.349225, -0.136504,
		-0.371613, -0.807231, 0.458565,
		33.416920, 34.279095, 20.841194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112377, 35.017189, 20.830669>,  <33.677048, 34.844154, 20.520199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112377, 35.017189, 20.830669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219681, 34.683186, 21.022833>,  <33.284061, 34.482784, 21.138132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219681, 34.683186, 21.022833>,  <33.112377, 35.017189, 20.830669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219681, 34.683186, 21.022833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042478, 0.487951, 0.871837,
		-0.962410, -0.254285, 0.095427,
		0.268259, -0.835011, 0.480411,
		33.300159, 34.432682, 21.166956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682823, 35.027737, 21.448542>,  <33.112377, 35.017189, 20.830669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682823, 35.027737, 21.448542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949707, 34.746418, 21.546688>,  <33.109837, 34.577625, 21.605576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949707, 34.746418, 21.546688>,  <32.682823, 35.027737, 21.448542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949707, 34.746418, 21.546688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047933, 0.288187, 0.956374,
		-0.743325, -0.649864, 0.158571,
		0.667211, -0.703295, 0.245366,
		33.149872, 34.535431, 21.620298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399612, 34.809635, 22.063282>,  <32.682823, 35.027737, 21.448542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399612, 34.809635, 22.063282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791405, 34.732681, 22.039248>,  <33.026478, 34.686508, 22.024826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791405, 34.732681, 22.039248>,  <32.399612, 34.809635, 22.063282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791405, 34.732681, 22.039248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133858, 0.398057, 0.907542,
		-0.150679, -0.896961, 0.415640,
		0.979478, -0.192384, -0.060087,
		33.085247, 34.674965, 22.021221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523346, 34.518330, 22.667456>,  <32.399612, 34.809635, 22.063282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523346, 34.518330, 22.667456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882431, 34.638382, 22.538437>,  <33.097881, 34.710411, 22.461025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882431, 34.638382, 22.538437>,  <32.523346, 34.518330, 22.667456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882431, 34.638382, 22.538437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295799, 0.131997, 0.946086,
		0.326523, -0.944722, 0.029717,
		0.897711, 0.300129, -0.322548,
		33.151745, 34.728420, 22.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993061, 34.190258, 23.036306>,  <32.523346, 34.518330, 22.667456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993061, 34.190258, 23.036306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196033, 34.510109, 22.907860>,  <33.317818, 34.702019, 22.830791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196033, 34.510109, 22.907860>,  <32.993061, 34.190258, 23.036306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196033, 34.510109, 22.907860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260661, 0.212756, 0.941695,
		0.821322, -0.561547, -0.100472,
		0.507431, 0.799624, -0.321115,
		33.348263, 34.749996, 22.811525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574608, 34.100029, 23.349731>,  <32.993061, 34.190258, 23.036306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574608, 34.100029, 23.349731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571423, 34.485420, 23.242668>,  <33.569511, 34.716656, 23.178431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571423, 34.485420, 23.242668>,  <33.574608, 34.100029, 23.349731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571423, 34.485420, 23.242668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049765, 0.267716, 0.962212,
		0.998729, -0.005658, -0.050079,
		-0.007963, 0.963481, -0.267658,
		33.569035, 34.774464, 23.162371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154675, 34.366344, 23.617252>,  <33.574608, 34.100029, 23.349731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154675, 34.366344, 23.617252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917534, 34.680138, 23.544460>,  <33.775249, 34.868412, 23.500786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917534, 34.680138, 23.544460>,  <34.154675, 34.366344, 23.617252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917534, 34.680138, 23.544460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194880, 0.359011, 0.912761,
		0.781377, 0.505667, -0.365720,
		-0.592851, 0.784482, -0.181979,
		33.739677, 34.915482, 23.489866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525154, 34.878639, 23.907202>,  <34.154675, 34.366344, 23.617252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525154, 34.878639, 23.907202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154770, 35.029297, 23.896326>,  <33.932541, 35.119694, 23.889801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154770, 35.029297, 23.896326>,  <34.525154, 34.878639, 23.907202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154770, 35.029297, 23.896326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123271, 0.369539, 0.921002,
		0.356940, 0.849458, -0.388607,
		-0.925958, 0.376647, -0.027189,
		33.876984, 35.142292, 23.888168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102264, 35.401199, 23.987740>,  <34.525154, 34.878639, 23.907202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102264, 35.401199, 23.987740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365227, 35.128536, 24.116215>,  <35.523003, 34.964939, 24.193300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365227, 35.128536, 24.116215>,  <35.102264, 35.401199, 23.987740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365227, 35.128536, 24.116215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111357, -0.509444, -0.853268,
		0.745265, 0.525176, -0.410818,
		0.657404, -0.681658, 0.321188,
		35.562447, 34.924038, 24.212572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353012, 35.054348, 23.342091>,  <35.102264, 35.401199, 23.987740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353012, 35.054348, 23.342091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525463, 34.821999, 23.618267>,  <35.628933, 34.682587, 23.783974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525463, 34.821999, 23.618267>,  <35.353012, 35.054348, 23.342091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525463, 34.821999, 23.618267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057828, -0.745850, -0.663599,
		0.900435, 0.326024, -0.287968,
		0.431130, -0.580876, 0.690442,
		35.654800, 34.647736, 23.825399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016430, 34.740143, 23.056265>,  <35.353012, 35.054348, 23.342091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016430, 34.740143, 23.056265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868607, 34.478920, 23.320669>,  <35.779911, 34.322186, 23.479311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868607, 34.478920, 23.320669>,  <36.016430, 34.740143, 23.056265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868607, 34.478920, 23.320669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196877, -0.750252, -0.631159,
		0.908111, -0.103113, 0.405836,
		-0.369560, -0.653061, 0.661011,
		35.757740, 34.283001, 23.518972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457626, 34.202030, 23.093155>,  <36.016430, 34.740143, 23.056265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457626, 34.202030, 23.093155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122803, 34.037754, 23.237743>,  <35.921909, 33.939186, 23.324497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122803, 34.037754, 23.237743>,  <36.457626, 34.202030, 23.093155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122803, 34.037754, 23.237743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220984, -0.858195, -0.463322,
		0.500497, -0.307948, 0.809117,
		-0.837060, -0.410693, 0.361473,
		35.871685, 33.914547, 23.346186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598125, 33.491383, 23.302670>,  <36.457626, 34.202030, 23.093155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598125, 33.491383, 23.302670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206455, 33.519634, 23.226538>,  <35.971455, 33.536587, 23.180859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206455, 33.519634, 23.226538>,  <36.598125, 33.491383, 23.302670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206455, 33.519634, 23.226538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090061, -0.689094, -0.719054,
		-0.181945, -0.721221, 0.668383,
		-0.979175, 0.070633, -0.190331,
		35.912701, 33.540825, 23.169439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446159, 32.748940, 23.259094>,  <36.598125, 33.491383, 23.302670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446159, 32.748940, 23.259094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145054, 32.957417, 23.098249>,  <35.964390, 33.082504, 23.001743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145054, 32.957417, 23.098249>,  <36.446159, 32.748940, 23.259094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145054, 32.957417, 23.098249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064680, -0.666451, -0.742737,
		-0.655093, -0.533105, 0.535398,
		-0.752775, 0.521192, -0.402106,
		35.919224, 33.113777, 22.977615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988785, 32.282227, 23.153759>,  <36.446159, 32.748940, 23.259094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988785, 32.282227, 23.153759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916218, 32.584412, 22.901928>,  <35.872677, 32.765724, 22.750830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916218, 32.584412, 22.901928>,  <35.988785, 32.282227, 23.153759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916218, 32.584412, 22.901928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201796, -0.655174, -0.728029,
		-0.962480, -0.005029, 0.271307,
		-0.181414, 0.755462, -0.629577,
		35.861794, 32.811050, 22.713055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313408, 32.088905, 22.791056>,  <35.988785, 32.282227, 23.153759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313408, 32.088905, 22.791056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499096, 32.346165, 22.547462>,  <35.610508, 32.500523, 22.401306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499096, 32.346165, 22.547462>,  <35.313408, 32.088905, 22.791056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499096, 32.346165, 22.547462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152219, -0.619395, -0.770181,
		-0.872543, 0.450230, -0.189634,
		0.464217, 0.643150, -0.608983,
		35.638363, 32.539108, 22.364767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884644, 32.162228, 22.166529>,  <35.313408, 32.088905, 22.791056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884644, 32.162228, 22.166529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237358, 32.306969, 22.045519>,  <35.448986, 32.393814, 21.972912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237358, 32.306969, 22.045519>,  <34.884644, 32.162228, 22.166529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237358, 32.306969, 22.045519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112591, -0.461381, -0.880029,
		-0.458018, 0.810057, -0.366097,
		0.881784, 0.361850, -0.302526,
		35.501892, 32.415524, 21.954762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826530, 32.425308, 21.435181>,  <34.884644, 32.162228, 22.166529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826530, 32.425308, 21.435181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223488, 32.389187, 21.468628>,  <35.461662, 32.367516, 21.488697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223488, 32.389187, 21.468628>,  <34.826530, 32.425308, 21.435181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223488, 32.389187, 21.468628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045221, -0.364347, -0.930165,
		0.114464, 0.926875, -0.357493,
		0.992398, -0.090304, 0.083618,
		35.521206, 32.362095, 21.493713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155235, 32.716572, 20.731218>,  <34.826530, 32.425308, 21.435181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155235, 32.716572, 20.731218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400608, 32.473549, 20.933037>,  <35.547832, 32.327736, 21.054129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400608, 32.473549, 20.933037>,  <35.155235, 32.716572, 20.731218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400608, 32.473549, 20.933037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412987, -0.297771, -0.860682,
		0.673155, 0.736346, 0.068251,
		0.613437, -0.607559, 0.504547,
		35.584641, 32.291283, 21.084400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702793, 32.620323, 20.346788>,  <35.155235, 32.716572, 20.731218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702793, 32.620323, 20.346788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798805, 32.318142, 20.590651>,  <35.856411, 32.136833, 20.736967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798805, 32.318142, 20.590651>,  <35.702793, 32.620323, 20.346788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798805, 32.318142, 20.590651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456631, -0.466337, -0.757640,
		0.856665, 0.460240, 0.233030,
		0.240026, -0.755452, 0.609655,
		35.870811, 32.091507, 20.773546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433350, 32.493263, 20.210924>,  <35.702793, 32.620323, 20.346788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433350, 32.493263, 20.210924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242870, 32.175236, 20.361176>,  <36.128582, 31.984419, 20.451326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242870, 32.175236, 20.361176>,  <36.433350, 32.493263, 20.210924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242870, 32.175236, 20.361176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257206, -0.534428, -0.805129,
		0.840883, -0.286785, 0.458989,
		-0.476195, -0.795073, 0.375628,
		36.100014, 31.936714, 20.473864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924618, 31.945038, 20.129124>,  <36.433350, 32.493263, 20.210924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924618, 31.945038, 20.129124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564919, 31.772572, 20.158669>,  <36.349098, 31.669092, 20.176395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564919, 31.772572, 20.158669>,  <36.924618, 31.945038, 20.129124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564919, 31.772572, 20.158669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218474, -0.588938, -0.778088,
		0.378985, -0.683555, 0.623797,
		-0.899244, -0.431167, 0.073860,
		36.295147, 31.643221, 20.180826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.953396, 26.097500, 22.384249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856709, 26.440348, 22.202295>,  <34.798695, 26.646057, 22.093124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856709, 26.440348, 22.202295>,  <34.953396, 26.097500, 22.384249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856709, 26.440348, 22.202295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052252, 0.479601, 0.875930,
		0.968938, 0.187961, -0.160715,
		-0.241720, 0.857120, -0.454882,
		34.784191, 26.697483, 22.065830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498199, 26.550581, 22.688663>,  <34.953396, 26.097500, 22.384249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498199, 26.550581, 22.688663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227524, 26.789194, 22.516043>,  <35.065117, 26.932362, 22.412470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227524, 26.789194, 22.516043>,  <35.498199, 26.550581, 22.688663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227524, 26.789194, 22.516043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225557, 0.725914, 0.649748,
		0.700866, 0.342339, -0.625772,
		-0.676691, 0.596533, -0.431551,
		35.024517, 26.968155, 22.386578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749584, 27.236580, 22.694038>,  <35.498199, 26.550581, 22.688663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749584, 27.236580, 22.694038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352879, 27.287151, 22.702200>,  <35.114853, 27.317495, 22.707096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352879, 27.287151, 22.702200>,  <35.749584, 27.236580, 22.694038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352879, 27.287151, 22.702200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102782, 0.690750, 0.715751,
		0.076398, 0.711954, -0.698057,
		-0.991766, 0.126430, 0.020404,
		35.055347, 27.325081, 22.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663265, 27.870174, 22.993143>,  <35.749584, 27.236580, 22.694038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663265, 27.870174, 22.993143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.279926, 27.756542, 23.004971>,  <35.049923, 27.688364, 23.012066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.279926, 27.756542, 23.004971>,  <35.663265, 27.870174, 22.993143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279926, 27.756542, 23.004971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136356, 0.546032, 0.826593,
		-0.250963, 0.788130, -0.562023,
		-0.958345, -0.284079, 0.029567,
		34.992424, 27.671318, 23.013842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344936, 28.471962, 23.064152>,  <35.663265, 27.870174, 22.993143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344936, 28.471962, 23.064152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.098370, 28.186546, 23.197353>,  <34.950428, 28.015297, 23.277275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.098370, 28.186546, 23.197353>,  <35.344936, 28.471962, 23.064152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098370, 28.186546, 23.197353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219069, 0.561616, 0.797870,
		-0.756331, 0.418871, -0.502504,
		-0.616419, -0.713537, 0.333006,
		34.913445, 27.972485, 23.297255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754871, 28.849298, 23.126856>,  <35.344936, 28.471962, 23.064152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754871, 28.849298, 23.126856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.722916, 28.534029, 23.370955>,  <34.703743, 28.344868, 23.517414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.722916, 28.534029, 23.370955>,  <34.754871, 28.849298, 23.126856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722916, 28.534029, 23.370955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215110, 0.611409, 0.761516,
		-0.973317, -0.070437, -0.218386,
		-0.079885, -0.788174, 0.610246,
		34.698952, 28.297577, 23.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237370, 28.967117, 23.564157>,  <34.754871, 28.849298, 23.126856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237370, 28.967117, 23.564157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.414513, 28.679516, 23.778414>,  <34.520798, 28.506954, 23.906967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.414513, 28.679516, 23.778414>,  <34.237370, 28.967117, 23.564157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414513, 28.679516, 23.778414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180177, 0.513864, 0.838737,
		-0.878302, -0.467951, 0.098020,
		0.442857, -0.719003, 0.535641,
		34.547371, 28.463816, 23.939106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846348, 28.758024, 24.167242>,  <34.237370, 28.967117, 23.564157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846348, 28.758024, 24.167242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222332, 28.648663, 24.248945>,  <34.447922, 28.583046, 24.297968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222332, 28.648663, 24.248945>,  <33.846348, 28.758024, 24.167242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222332, 28.648663, 24.248945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050299, 0.480988, 0.875283,
		-0.337553, -0.833007, 0.438358,
		0.939962, -0.273405, 0.204259,
		34.504322, 28.566641, 24.310223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807816, 28.579847, 24.790886>,  <33.846348, 28.758024, 24.167242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807816, 28.579847, 24.790886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.202076, 28.644289, 24.770760>,  <34.438633, 28.682955, 24.758684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.202076, 28.644289, 24.770760>,  <33.807816, 28.579847, 24.790886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202076, 28.644289, 24.770760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037214, 0.498212, 0.866256,
		0.164624, -0.851956, 0.497060,
		0.985654, 0.161104, -0.050313,
		34.497772, 28.692621, 24.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009377, 28.356293, 25.366301>,  <33.807816, 28.579847, 24.790886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009377, 28.356293, 25.366301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312195, 28.596594, 25.263556>,  <34.493885, 28.740774, 25.201908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312195, 28.596594, 25.263556>,  <34.009377, 28.356293, 25.366301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312195, 28.596594, 25.263556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089260, 0.294354, 0.951519,
		0.647238, -0.743269, 0.169216,
		0.757044, 0.600755, -0.256862,
		34.539307, 28.776821, 25.186497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527355, 28.110464, 25.746210>,  <34.009377, 28.356293, 25.366301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527355, 28.110464, 25.746210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596024, 28.488457, 25.634830>,  <34.637226, 28.715252, 25.568003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596024, 28.488457, 25.634830>,  <34.527355, 28.110464, 25.746210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596024, 28.488457, 25.634830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267543, 0.227304, 0.936351,
		0.948130, -0.235241, -0.213802,
		0.171670, 0.944984, -0.278451,
		34.647526, 28.771952, 25.551294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099770, 28.213511, 26.038691>,  <34.527355, 28.110464, 25.746210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099770, 28.213511, 26.038691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983078, 28.592421, 25.985676>,  <34.913063, 28.819767, 25.953867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983078, 28.592421, 25.985676>,  <35.099770, 28.213511, 26.038691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983078, 28.592421, 25.985676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248819, 0.208950, 0.945743,
		0.923571, 0.242924, -0.296656,
		-0.291730, 0.947274, -0.132536,
		34.895557, 28.876602, 25.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612469, 28.685369, 26.304506>,  <35.099770, 28.213511, 26.038691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612469, 28.685369, 26.304506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288761, 28.919039, 26.279749>,  <35.094536, 29.059240, 26.264894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288761, 28.919039, 26.279749>,  <35.612469, 28.685369, 26.304506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288761, 28.919039, 26.279749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200383, 0.373555, 0.905706,
		0.552211, 0.720553, -0.419363,
		-0.809265, 0.584175, -0.061895,
		35.045982, 29.094292, 26.261181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774288, 29.249674, 26.609201>,  <35.612469, 28.685369, 26.304506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774288, 29.249674, 26.609201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378109, 29.303724, 26.620163>,  <35.140400, 29.336155, 26.626740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378109, 29.303724, 26.620163>,  <35.774288, 29.249674, 26.609201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378109, 29.303724, 26.620163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100404, 0.570651, 0.815032,
		0.094494, 0.809999, -0.578768,
		-0.990449, 0.135126, 0.027404,
		35.080975, 29.344263, 26.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215851, 29.797777, 26.411047>,  <35.774288, 29.249674, 26.609201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215851, 29.797777, 26.411047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612961, 29.834517, 26.441925>,  <36.851227, 29.856560, 26.460451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612961, 29.834517, 26.441925>,  <36.215851, 29.797777, 26.411047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612961, 29.834517, 26.441925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106999, -0.386705, -0.915975,
		-0.054279, 0.917618, -0.393740,
		0.992776, 0.091848, 0.077195,
		36.910793, 29.862070, 26.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423122, 29.941525, 25.784119>,  <36.215851, 29.797777, 26.411047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423122, 29.941525, 25.784119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770523, 29.820116, 25.940878>,  <36.978962, 29.747271, 26.034933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770523, 29.820116, 25.940878>,  <36.423122, 29.941525, 25.784119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770523, 29.820116, 25.940878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219380, -0.473605, -0.852978,
		0.444502, 0.826785, -0.344739,
		0.868499, -0.303522, 0.391898,
		37.031075, 29.729059, 26.058447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007317, 30.219028, 25.287228>,  <36.423122, 29.941525, 25.784119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007317, 30.219028, 25.287228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151867, 29.927528, 25.519892>,  <37.238598, 29.752628, 25.659491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151867, 29.927528, 25.519892>,  <37.007317, 30.219028, 25.287228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151867, 29.927528, 25.519892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341613, -0.476961, -0.809820,
		0.867586, 0.491354, 0.076588,
		0.361378, -0.728752, 0.581658,
		37.260281, 29.708902, 25.694389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737133, 30.206823, 25.192265>,  <37.007317, 30.219028, 25.287228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737133, 30.206823, 25.192265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632088, 29.844421, 25.325047>,  <37.569061, 29.626980, 25.404715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632088, 29.844421, 25.325047>,  <37.737133, 30.206823, 25.192265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632088, 29.844421, 25.325047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348529, -0.409869, -0.842933,
		0.899757, -0.105668, 0.423405,
		-0.262612, -0.906003, 0.331954,
		37.553303, 29.572620, 25.424633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293518, 29.788452, 25.273882>,  <37.737133, 30.206823, 25.192265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293518, 29.788452, 25.273882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992901, 29.528708, 25.227388>,  <37.812531, 29.372860, 25.199493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992901, 29.528708, 25.227388>,  <38.293518, 29.788452, 25.273882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992901, 29.528708, 25.227388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411742, -0.324076, -0.851730,
		0.515414, -0.687970, 0.510927,
		-0.751543, -0.649363, -0.116233,
		37.767437, 29.333899, 25.192518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564785, 29.217926, 25.006559>,  <38.293518, 29.788452, 25.273882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564785, 29.217926, 25.006559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175415, 29.144503, 24.951782>,  <37.941792, 29.100449, 24.918917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175415, 29.144503, 24.951782>,  <38.564785, 29.217926, 25.006559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175415, 29.144503, 24.951782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186031, -0.285048, -0.940287,
		0.133561, -0.940773, 0.311620,
		-0.973424, -0.183557, -0.136941,
		37.883389, 29.089436, 24.910700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477303, 28.479731, 24.725557>,  <38.564785, 29.217926, 25.006559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477303, 28.479731, 24.725557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140118, 28.675587, 24.636419>,  <37.937805, 28.793100, 24.582937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140118, 28.675587, 24.636419>,  <38.477303, 28.479731, 24.725557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140118, 28.675587, 24.636419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165807, -0.157598, -0.973484,
		-0.511778, -0.857563, 0.051664,
		-0.842966, 0.489642, -0.222846,
		37.887226, 28.822479, 24.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285095, 28.051878, 24.258844>,  <38.477303, 28.479731, 24.725557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285095, 28.051878, 24.258844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046146, 28.369345, 24.212826>,  <37.902775, 28.559824, 24.185215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046146, 28.369345, 24.212826>,  <38.285095, 28.051878, 24.258844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046146, 28.369345, 24.212826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118182, -0.229012, -0.966223,
		-0.793205, -0.563602, 0.230603,
		-0.597376, 0.793666, -0.115046,
		37.866932, 28.607445, 24.178312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668934, 27.666473, 23.959606>,  <38.285095, 28.051878, 24.258844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668934, 27.666473, 23.959606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679173, 28.057077, 23.874025>,  <37.685314, 28.291439, 23.822676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679173, 28.057077, 23.874025>,  <37.668934, 27.666473, 23.959606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679173, 28.057077, 23.874025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191604, -0.205264, -0.959768,
		-0.981139, 0.065561, 0.181849,
		0.025596, 0.976508, -0.213954,
		37.686852, 28.350029, 23.809839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078983, 27.696714, 23.710875>,  <37.668934, 27.666473, 23.959606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078983, 27.696714, 23.710875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288349, 28.004177, 23.563793>,  <37.413967, 28.188654, 23.475544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288349, 28.004177, 23.563793>,  <37.078983, 27.696714, 23.710875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288349, 28.004177, 23.563793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119126, -0.361288, -0.924814,
		-0.843711, 0.527863, -0.097536,
		0.523413, 0.768656, -0.367705,
		37.445374, 28.234774, 23.453482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662861, 28.159195, 23.266365>,  <37.078983, 27.696714, 23.710875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662861, 28.159195, 23.266365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048988, 28.191044, 23.166910>,  <37.280666, 28.210154, 23.107237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048988, 28.191044, 23.166910>,  <36.662861, 28.159195, 23.266365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048988, 28.191044, 23.166910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234189, -0.156861, -0.959453,
		-0.115398, 0.984406, -0.132774,
		0.965318, 0.079624, -0.248639,
		37.338585, 28.214931, 23.092319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574657, 28.523569, 22.701422>,  <36.662861, 28.159195, 23.266365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574657, 28.523569, 22.701422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941299, 28.363672, 22.698767>,  <37.161285, 28.267735, 22.697174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941299, 28.363672, 22.698767>,  <36.574657, 28.523569, 22.701422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941299, 28.363672, 22.698767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118532, -0.255867, -0.959418,
		0.381822, 0.880192, -0.281911,
		0.916604, -0.399742, -0.006636,
		37.216282, 28.243750, 22.696775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870281, 28.844519, 22.075958>,  <36.574657, 28.523569, 22.701422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870281, 28.844519, 22.075958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102322, 28.526783, 22.148079>,  <37.241547, 28.336142, 22.191351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102322, 28.526783, 22.148079>,  <36.870281, 28.844519, 22.075958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102322, 28.526783, 22.148079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175297, -0.337912, -0.924709,
		0.795457, 0.504819, -0.335269,
		0.580102, -0.794338, 0.180301,
		37.276352, 28.288481, 22.202169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294399, 28.763542, 21.569384>,  <36.870281, 28.844519, 22.075958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294399, 28.763542, 21.569384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263149, 28.395746, 21.723494>,  <37.244400, 28.175070, 21.815960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263149, 28.395746, 21.723494>,  <37.294399, 28.763542, 21.569384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263149, 28.395746, 21.723494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186694, -0.366126, -0.911645,
		0.979307, -0.143151, -0.143059,
		-0.078126, -0.919489, 0.385275,
		37.239712, 28.119900, 21.839077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052795, 28.671467, 21.385759>,  <37.294399, 28.763542, 21.569384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052795, 28.671467, 21.385759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067844, 28.962868, 21.112156>,  <38.076874, 29.137709, 20.947994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067844, 28.962868, 21.112156>,  <38.052795, 28.671467, 21.385759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067844, 28.962868, 21.112156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215623, 0.674285, 0.706290,
		0.975752, 0.120917, 0.182449,
		0.037621, 0.728504, -0.684007,
		38.079132, 29.181419, 20.906954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533470, 29.227386, 21.718521>,  <38.052795, 28.671467, 21.385759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533470, 29.227386, 21.718521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327839, 29.392851, 21.417959>,  <38.204460, 29.492130, 21.237621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327839, 29.392851, 21.417959>,  <38.533470, 29.227386, 21.718521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327839, 29.392851, 21.417959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143636, 0.822139, 0.550869,
		0.845633, 0.391117, -0.363224,
		-0.514075, 0.413661, -0.751406,
		38.173618, 29.516949, 21.192537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831120, 29.813196, 21.575346>,  <38.533470, 29.227386, 21.718521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831120, 29.813196, 21.575346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448997, 29.847078, 21.462057>,  <38.219723, 29.867407, 21.394085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448997, 29.847078, 21.462057>,  <38.831120, 29.813196, 21.575346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448997, 29.847078, 21.462057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048045, 0.900843, 0.431478,
		0.291685, 0.425802, -0.856512,
		-0.955307, 0.084704, -0.283220,
		38.162407, 29.872490, 21.377090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839462, 30.429426, 21.532501>,  <38.831120, 29.813196, 21.575346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839462, 30.429426, 21.532501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450603, 30.336252, 21.542839>,  <38.217289, 30.280348, 21.549042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450603, 30.336252, 21.542839>,  <38.839462, 30.429426, 21.532501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450603, 30.336252, 21.542839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197147, 0.872417, 0.447238,
		-0.126726, 0.429687, -0.894041,
		-0.972149, -0.232934, 0.025847,
		38.158958, 30.266373, 21.550592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491413, 30.999968, 21.246634>,  <38.839462, 30.429426, 21.532501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491413, 30.999968, 21.246634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233624, 30.801348, 21.479214>,  <38.078949, 30.682175, 21.618763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233624, 30.801348, 21.479214>,  <38.491413, 30.999968, 21.246634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233624, 30.801348, 21.479214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151029, 0.828128, 0.539810,
		-0.749560, 0.260079, -0.608703,
		-0.644477, -0.496552, 0.581452,
		38.040279, 30.652382, 21.653648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998116, 31.624950, 21.394136>,  <38.491413, 30.999968, 21.246634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998116, 31.624950, 21.394136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936539, 31.311903, 21.635403>,  <37.899593, 31.124075, 21.780163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936539, 31.311903, 21.635403>,  <37.998116, 31.624950, 21.394136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936539, 31.311903, 21.635403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054907, 0.616274, 0.785615,
		-0.986553, 0.087821, -0.137842,
		-0.153942, -0.782619, 0.603166,
		37.890358, 31.077118, 21.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505901, 31.811274, 21.836416>,  <37.998116, 31.624950, 21.394136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505901, 31.811274, 21.836416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643223, 31.490025, 22.031202>,  <37.725616, 31.297276, 22.148075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643223, 31.490025, 22.031202>,  <37.505901, 31.811274, 21.836416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643223, 31.490025, 22.031202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032487, 0.508014, 0.860736,
		-0.938662, -0.311315, 0.148312,
		0.343305, -0.803122, 0.486967,
		37.746216, 31.249088, 22.177292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016361, 31.707552, 22.290188>,  <37.505901, 31.811274, 21.836416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016361, 31.707552, 22.290188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364227, 31.555273, 22.415886>,  <37.572948, 31.463905, 22.491304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364227, 31.555273, 22.415886>,  <37.016361, 31.707552, 22.290188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364227, 31.555273, 22.415886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112002, 0.467816, 0.876701,
		-0.480768, -0.797632, 0.364204,
		0.869665, -0.380698, 0.314247,
		37.625126, 31.441063, 22.510160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809261, 31.458586, 22.994278>,  <37.016361, 31.707552, 22.290188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809261, 31.458586, 22.994278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205315, 31.508141, 22.968063>,  <37.442947, 31.537872, 22.952333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205315, 31.508141, 22.968063>,  <36.809261, 31.458586, 22.994278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205315, 31.508141, 22.968063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003092, 0.448195, 0.893930,
		0.140119, -0.885310, 0.443388,
		0.990130, 0.123886, -0.065538,
		37.502354, 31.545307, 22.948402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017879, 31.218216, 23.645382>,  <36.809261, 31.458586, 22.994278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017879, 31.218216, 23.645382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337505, 31.417261, 23.510401>,  <37.529282, 31.536688, 23.429413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337505, 31.417261, 23.510401>,  <37.017879, 31.218216, 23.645382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337505, 31.417261, 23.510401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123021, 0.414066, 0.901896,
		0.588523, -0.762188, 0.269649,
		0.799066, 0.497614, -0.337452,
		37.577225, 31.566545, 23.409164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436882, 31.125439, 24.148514>,  <37.017879, 31.218216, 23.645382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436882, 31.125439, 24.148514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598217, 31.431067, 23.947111>,  <37.695019, 31.614443, 23.826269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598217, 31.431067, 23.947111>,  <37.436882, 31.125439, 24.148514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598217, 31.431067, 23.947111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340971, 0.385124, 0.857566,
		0.849149, -0.517572, -0.105188,
		0.403342, 0.764067, -0.503504,
		37.719219, 31.660286, 23.796061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202206, 31.207094, 24.396011>,  <37.436882, 31.125439, 24.148514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202206, 31.207094, 24.396011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072136, 31.565847, 24.276106>,  <37.994095, 31.781099, 24.204163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072136, 31.565847, 24.276106>,  <38.202206, 31.207094, 24.396011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072136, 31.565847, 24.276106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404835, 0.418503, 0.812997,
		0.854617, 0.143012, -0.499178,
		-0.325175, 0.896885, -0.299763,
		37.974583, 31.834913, 24.186176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663216, 31.673845, 24.658792>,  <38.202206, 31.207094, 24.396011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663216, 31.673845, 24.658792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343075, 31.887312, 24.549517>,  <38.150990, 32.015392, 24.483952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343075, 31.887312, 24.549517>,  <38.663216, 31.673845, 24.658792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343075, 31.887312, 24.549517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203767, 0.670691, 0.713199,
		0.563836, 0.515146, -0.645534,
		-0.800355, 0.533666, -0.273190,
		38.102970, 32.047413, 24.467560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956657, 32.382027, 24.655083>,  <38.663216, 31.673845, 24.658792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956657, 32.382027, 24.655083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558498, 32.376297, 24.692989>,  <38.319603, 32.372860, 24.715733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558498, 32.376297, 24.692989>,  <38.956657, 32.382027, 24.655083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558498, 32.376297, 24.692989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062065, 0.657078, 0.751263,
		-0.073031, 0.753687, -0.653164,
		-0.995397, -0.014327, 0.094765,
		38.259880, 32.371998, 24.721418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.974041, 31.210913, 20.037209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.586132, 31.276287, 19.964727>,  <36.353386, 31.315512, 19.921238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.586132, 31.276287, 19.964727>,  <36.974041, 31.210913, 20.037209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586132, 31.276287, 19.964727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011547, -0.711007, -0.703090,
		-0.243749, -0.683928, 0.687626,
		-0.969770, 0.163437, -0.181204,
		36.295200, 31.325317, 19.910366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607727, 30.528282, 20.026716>,  <36.974041, 31.210913, 20.037209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607727, 30.528282, 20.026716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353127, 30.761837, 19.825148>,  <36.200367, 30.901970, 19.704206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353127, 30.761837, 19.825148>,  <36.607727, 30.528282, 20.026716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353127, 30.761837, 19.825148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004348, -0.656071, -0.754686,
		-0.771260, -0.478170, 0.420132,
		-0.636505, 0.583887, -0.503922,
		36.162174, 30.937002, 19.673971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213467, 30.067030, 19.689405>,  <36.607727, 30.528282, 20.026716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213467, 30.067030, 19.689405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127609, 30.395937, 19.478577>,  <36.076096, 30.593281, 19.352079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127609, 30.395937, 19.478577>,  <36.213467, 30.067030, 19.689405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127609, 30.395937, 19.478577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089624, -0.553956, -0.827708,
		-0.972572, -0.130422, 0.192597,
		-0.214641, 0.822267, -0.527074,
		36.063217, 30.642616, 19.320454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743172, 29.818018, 19.167358>,  <36.213467, 30.067030, 19.689405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743172, 29.818018, 19.167358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850456, 30.178972, 19.032444>,  <35.914825, 30.395546, 18.951494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850456, 30.178972, 19.032444>,  <35.743172, 29.818018, 19.167358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850456, 30.178972, 19.032444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018797, -0.345146, -0.938360,
		-0.963178, 0.258015, -0.075609,
		0.268207, 0.902387, -0.337287,
		35.930920, 30.449688, 18.931257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138294, 30.012177, 18.709314>,  <35.743172, 29.818018, 19.167358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138294, 30.012177, 18.709314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489204, 30.182779, 18.621250>,  <35.699753, 30.285141, 18.568411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489204, 30.182779, 18.621250>,  <35.138294, 30.012177, 18.709314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489204, 30.182779, 18.621250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033925, -0.402442, -0.914817,
		-0.478779, 0.810019, -0.338585,
		0.877279, 0.426509, -0.220161,
		35.752388, 30.310732, 18.555202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068123, 30.236038, 17.995365>,  <35.138294, 30.012177, 18.709314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068123, 30.236038, 17.995365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457134, 30.190832, 18.076773>,  <35.690540, 30.163708, 18.125618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457134, 30.190832, 18.076773>,  <35.068123, 30.236038, 17.995365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457134, 30.190832, 18.076773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160940, -0.305263, -0.938570,
		0.168202, 0.945538, -0.278687,
		0.972526, -0.113017, 0.203521,
		35.748894, 30.156927, 18.137829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421795, 30.509298, 17.384783>,  <35.068123, 30.236038, 17.995365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421795, 30.509298, 17.384783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690807, 30.277630, 17.569069>,  <35.852215, 30.138630, 17.679640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690807, 30.277630, 17.569069>,  <35.421795, 30.509298, 17.384783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690807, 30.277630, 17.569069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315640, -0.338596, -0.886411,
		0.669379, 0.741563, -0.044909,
		0.672535, -0.579170, 0.460716,
		35.892567, 30.103878, 17.707283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996056, 30.443277, 16.911413>,  <35.421795, 30.509298, 17.384783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996056, 30.443277, 16.911413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051411, 30.143316, 17.170179>,  <36.084621, 29.963341, 17.325439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051411, 30.143316, 17.170179>,  <35.996056, 30.443277, 16.911413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051411, 30.143316, 17.170179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396495, -0.556618, -0.730047,
		0.907547, 0.357525, 0.220305,
		0.138384, -0.749902, 0.646914,
		36.092926, 29.918346, 17.364254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705338, 30.150469, 16.847511>,  <35.996056, 30.443277, 16.911413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705338, 30.150469, 16.847511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462929, 29.869450, 16.996731>,  <36.317482, 29.700838, 17.086262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462929, 29.869450, 16.996731>,  <36.705338, 30.150469, 16.847511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462929, 29.869450, 16.996731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193480, -0.585082, -0.787556,
		0.771560, -0.405098, 0.490500,
		-0.606020, -0.702549, 0.373048,
		36.281124, 29.658686, 17.108644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024113, 29.500465, 16.630814>,  <36.705338, 30.150469, 16.847511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024113, 29.500465, 16.630814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657196, 29.383667, 16.739117>,  <36.437046, 29.313587, 16.804098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657196, 29.383667, 16.739117>,  <37.024113, 29.500465, 16.630814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657196, 29.383667, 16.739117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033743, -0.620494, -0.783485,
		0.396777, -0.727823, 0.559323,
		-0.917294, -0.291996, 0.270757,
		36.382008, 29.296068, 16.820343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066113, 28.832829, 16.584501>,  <37.024113, 29.500465, 16.630814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066113, 28.832829, 16.584501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677509, 28.924683, 16.561018>,  <36.444347, 28.979795, 16.546928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677509, 28.924683, 16.561018>,  <37.066113, 28.832829, 16.584501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677509, 28.924683, 16.561018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102722, -0.631152, -0.768827,
		-0.213603, -0.740889, 0.636756,
		-0.971505, 0.229633, -0.058710,
		36.386059, 28.993572, 16.543406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791954, 28.181349, 16.471268>,  <37.066113, 28.832829, 16.584501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791954, 28.181349, 16.471268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548409, 28.470549, 16.340700>,  <36.402279, 28.644070, 16.262360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548409, 28.470549, 16.340700>,  <36.791954, 28.181349, 16.471268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548409, 28.470549, 16.340700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118603, -0.489826, -0.863715,
		-0.784355, -0.487174, 0.383990,
		-0.608868, 0.723002, -0.326417,
		36.365749, 28.687449, 16.242775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229877, 27.782553, 17.014132>,  <36.791954, 28.181349, 16.471268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229877, 27.782553, 17.014132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462440, 27.799137, 16.689108>,  <37.601978, 27.809088, 16.494095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462440, 27.799137, 16.689108>,  <37.229877, 27.782553, 17.014132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462440, 27.799137, 16.689108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453906, 0.845367, -0.281646,
		0.675232, 0.532575, 0.510319,
		0.581405, 0.041461, -0.812558,
		37.636864, 27.811575, 16.445341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193222, 27.195034, 16.576803>,  <37.229877, 27.782553, 17.014132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193222, 27.195034, 16.576803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215046, 26.821377, 16.435722>,  <37.228142, 26.597183, 16.351074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215046, 26.821377, 16.435722>,  <37.193222, 27.195034, 16.576803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215046, 26.821377, 16.435722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459495, 0.290116, -0.839463,
		0.886503, 0.207867, -0.413405,
		0.054562, -0.934144, -0.352703,
		37.231415, 26.541134, 16.329912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710560, 26.961498, 15.974501>,  <37.193222, 27.195034, 16.576803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710560, 26.961498, 15.974501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370235, 26.757689, 15.923112>,  <37.166042, 26.635403, 15.892279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370235, 26.757689, 15.923112>,  <37.710560, 26.961498, 15.974501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370235, 26.757689, 15.923112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, 0.396513, -0.912604,
		0.515936, -0.763650, -0.388136,
		-0.850811, -0.509525, -0.128472,
		37.114990, 26.604832, 15.884571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158562, 26.791773, 16.578264>,  <37.710560, 26.961498, 15.974501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158562, 26.791773, 16.578264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555241, 26.774488, 16.529808>,  <38.793247, 26.764118, 16.500734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555241, 26.774488, 16.529808>,  <38.158562, 26.791773, 16.578264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555241, 26.774488, 16.529808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127640, 0.446356, 0.885705,
		0.015799, -0.893811, 0.448165,
		0.991695, -0.043211, -0.121138,
		38.852749, 26.761526, 16.493467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513489, 26.388655, 17.172497>,  <38.158562, 26.791773, 16.578264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513489, 26.388655, 17.172497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789261, 26.639685, 17.027811>,  <38.954723, 26.790302, 16.941000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789261, 26.639685, 17.027811>,  <38.513489, 26.388655, 17.172497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789261, 26.639685, 17.027811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134758, 0.379519, 0.915317,
		0.711708, -0.679790, 0.177080,
		0.689428, 0.627576, -0.361714,
		38.996090, 26.827957, 16.919296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003761, 26.512363, 17.717022>,  <38.513489, 26.388655, 17.172497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003761, 26.512363, 17.717022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066891, 26.813786, 17.461760>,  <39.104771, 26.994638, 17.308601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066891, 26.813786, 17.461760>,  <39.003761, 26.512363, 17.717022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066891, 26.813786, 17.461760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200677, 0.608293, 0.767925,
		0.966861, -0.249261, -0.055218,
		0.157825, 0.753557, -0.638156,
		39.114239, 27.039852, 17.270313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568352, 26.773376, 17.964905>,  <39.003761, 26.512363, 17.717022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568352, 26.773376, 17.964905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456841, 27.072594, 17.724001>,  <39.389935, 27.252123, 17.579458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456841, 27.072594, 17.724001>,  <39.568352, 26.773376, 17.964905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456841, 27.072594, 17.724001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100815, 0.646452, 0.756265,
		0.955050, 0.150113, -0.255630,
		-0.278777, 0.748042, -0.602260,
		39.373207, 27.297007, 17.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979500, 27.169748, 18.165855>,  <39.568352, 26.773376, 17.964905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979500, 27.169748, 18.165855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714272, 27.405756, 17.981588>,  <39.555134, 27.547361, 17.871029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714272, 27.405756, 17.981588>,  <39.979500, 27.169748, 18.165855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714272, 27.405756, 17.981588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026420, 0.633469, 0.773317,
		0.748090, 0.500593, -0.435623,
		-0.663071, 0.590020, -0.460666,
		39.515350, 27.582762, 17.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210102, 27.894737, 18.227333>,  <39.979500, 27.169748, 18.165855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210102, 27.894737, 18.227333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820049, 27.925602, 18.144230>,  <39.586018, 27.944120, 18.094368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820049, 27.925602, 18.144230>,  <40.210102, 27.894737, 18.227333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820049, 27.925602, 18.144230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107825, 0.653825, 0.748924,
		0.193627, 0.752701, -0.629245,
		-0.975132, 0.077163, -0.207758,
		39.527508, 27.948751, 18.081902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035267, 28.649586, 18.248987>,  <40.210102, 27.894737, 18.227333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035267, 28.649586, 18.248987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693932, 28.445045, 18.289646>,  <39.489128, 28.322321, 18.314041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693932, 28.445045, 18.289646>,  <40.035267, 28.649586, 18.248987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693932, 28.445045, 18.289646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265428, 0.593919, 0.759479,
		-0.448730, 0.621114, -0.642541,
		-0.853340, -0.511349, 0.101648,
		39.437931, 28.291641, 18.320141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464199, 29.145395, 18.368141>,  <40.035267, 28.649586, 18.248987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464199, 29.145395, 18.368141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308727, 28.803415, 18.505539>,  <39.215443, 28.598227, 18.587978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308727, 28.803415, 18.505539>,  <39.464199, 29.145395, 18.368141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308727, 28.803415, 18.505539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542959, 0.513731, 0.664286,
		-0.744395, 0.071690, -0.663880,
		-0.388678, -0.854951, 0.343494,
		39.192123, 28.546930, 18.608587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863029, 29.395077, 18.684017>,  <39.464199, 29.145395, 18.368141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863029, 29.395077, 18.684017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889843, 29.030334, 18.846020>,  <38.905930, 28.811489, 18.943222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889843, 29.030334, 18.846020>,  <38.863029, 29.395077, 18.684017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889843, 29.030334, 18.846020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540500, 0.308013, 0.782935,
		-0.838669, -0.271386, -0.472211,
		0.067031, -0.911854, 0.405006,
		38.909954, 28.756779, 18.967522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151714, 29.118813, 18.845142>,  <38.863029, 29.395077, 18.684017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151714, 29.118813, 18.845142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394749, 28.917337, 19.090788>,  <38.540569, 28.796453, 19.238174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394749, 28.917337, 19.090788>,  <38.151714, 29.118813, 18.845142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394749, 28.917337, 19.090788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638702, 0.149752, 0.754741,
		-0.472117, -0.850808, -0.230718,
		0.607590, -0.503686, 0.614114,
		38.577026, 28.766232, 19.275023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755825, 28.682718, 19.259649>,  <38.151714, 29.118813, 18.845142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755825, 28.682718, 19.259649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098686, 28.721905, 19.461916>,  <38.304401, 28.745417, 19.583277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098686, 28.721905, 19.461916>,  <37.755825, 28.682718, 19.259649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098686, 28.721905, 19.461916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509251, 0.308335, 0.803488,
		-0.077200, -0.946220, 0.314179,
		0.857149, 0.097966, 0.505667,
		38.355831, 28.751295, 19.613615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556252, 28.399881, 19.905224>,  <37.755825, 28.682718, 19.259649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556252, 28.399881, 19.905224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875877, 28.627943, 19.981562>,  <38.067654, 28.764780, 20.027365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875877, 28.627943, 19.981562>,  <37.556252, 28.399881, 19.905224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875877, 28.627943, 19.981562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441119, 0.340252, 0.830447,
		0.408555, -0.747760, 0.523391,
		0.799060, 0.570160, 0.190839,
		38.115597, 28.798990, 20.038815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469559, 28.363380, 20.648041>,  <37.556252, 28.399881, 19.905224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469559, 28.363380, 20.648041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710888, 28.666388, 20.548311>,  <37.855686, 28.848192, 20.488474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710888, 28.666388, 20.548311>,  <37.469559, 28.363380, 20.648041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710888, 28.666388, 20.548311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372260, 0.543993, 0.751993,
		0.705279, -0.360885, 0.610199,
		0.603327, 0.757518, -0.249324,
		37.891888, 28.893642, 20.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066788, 27.940435, 21.072048>,  <37.469559, 28.363380, 20.648041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066788, 27.940435, 21.072048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824150, 27.720711, 21.301937>,  <37.678570, 27.588877, 21.439871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824150, 27.720711, 21.301937>,  <38.066788, 27.940435, 21.072048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824150, 27.720711, 21.301937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270078, -0.537533, -0.798822,
		0.747733, -0.639778, 0.177706,
		-0.606592, -0.549311, 0.574721,
		37.642174, 27.555918, 21.474354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254101, 27.216055, 20.990082>,  <38.066788, 27.940435, 21.072048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254101, 27.216055, 20.990082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874905, 27.220142, 21.117338>,  <37.647388, 27.222595, 21.193691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874905, 27.220142, 21.117338>,  <38.254101, 27.216055, 20.990082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874905, 27.220142, 21.117338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261682, -0.594046, -0.760679,
		0.181217, -0.804366, 0.565822,
		-0.947989, 0.010218, 0.318139,
		37.590508, 27.223207, 21.212780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045387, 26.513832, 21.018726>,  <38.254101, 27.216055, 20.990082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045387, 26.513832, 21.018726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693794, 26.698175, 20.969740>,  <37.482838, 26.808783, 20.940348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693794, 26.698175, 20.969740>,  <38.045387, 26.513832, 21.018726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693794, 26.698175, 20.969740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067876, -0.375127, -0.924485,
		-0.471999, -0.804293, 0.361012,
		-0.878982, 0.460860, -0.122467,
		37.430099, 26.836433, 20.933001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724548, 26.002867, 20.768532>,  <38.045387, 26.513832, 21.018726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724548, 26.002867, 20.768532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499519, 26.320784, 20.677483>,  <37.364502, 26.511534, 20.622852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499519, 26.320784, 20.677483>,  <37.724548, 26.002867, 20.768532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499519, 26.320784, 20.677483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102490, -0.340246, -0.934734,
		-0.820369, -0.502529, 0.272872,
		-0.562575, 0.794794, -0.227623,
		37.330746, 26.559221, 20.609196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151485, 25.727421, 20.478685>,  <37.724548, 26.002867, 20.768532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151485, 25.727421, 20.478685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180542, 26.102976, 20.344097>,  <37.197975, 26.328310, 20.263344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180542, 26.102976, 20.344097>,  <37.151485, 25.727421, 20.478685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180542, 26.102976, 20.344097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089605, -0.329854, -0.939770,
		-0.993325, 0.098412, 0.060169,
		0.072637, 0.938889, -0.336470,
		37.202332, 26.384642, 20.243156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454258, 25.833553, 20.132200>,  <37.151485, 25.727421, 20.478685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454258, 25.833553, 20.132200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736877, 26.084867, 20.001944>,  <36.906448, 26.235657, 19.923790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736877, 26.084867, 20.001944>,  <36.454258, 25.833553, 20.132200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736877, 26.084867, 20.001944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082249, -0.384137, -0.919605,
		-0.702866, 0.676532, -0.219737,
		0.706551, 0.628286, -0.325641,
		36.948841, 26.273354, 19.904251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143890, 26.082895, 19.531376>,  <36.454258, 25.833553, 20.132200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143890, 26.082895, 19.531376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 26.177359, 19.483458>,  <36.761044, 26.234035, 19.454706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 26.177359, 19.483458>,  <36.143890, 26.082895, 19.531376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529610, 26.177359, 19.483458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002093, -0.459177, -0.888342,
		-0.264796, 0.856380, -0.443280,
		0.964302, 0.236157, -0.119796,
		36.818901, 26.248205, 19.447519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848751, 26.739498, 19.207563>,  <36.143890, 26.082895, 19.531376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848751, 26.739498, 19.207563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488117, 26.568113, 19.231457>,  <35.271736, 26.465282, 19.245792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488117, 26.568113, 19.231457>,  <35.848751, 26.739498, 19.207563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488117, 26.568113, 19.231457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003035, 0.144337, 0.989524,
		-0.432594, 0.891958, -0.131432,
		-0.901584, -0.428461, 0.059732,
		35.217644, 26.439575, 19.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254761, 27.166288, 19.607204>,  <35.848751, 26.739498, 19.207563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254761, 27.166288, 19.607204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141533, 26.783543, 19.633379>,  <35.073597, 26.553896, 19.649084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141533, 26.783543, 19.633379>,  <35.254761, 27.166288, 19.607204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141533, 26.783543, 19.633379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287175, 0.149659, 0.946115,
		-0.915097, 0.249025, -0.317151,
		-0.283071, -0.956864, 0.065439,
		35.056610, 26.496483, 19.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556606, 27.166313, 19.786587>,  <35.254761, 27.166288, 19.607204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556606, 27.166313, 19.786587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748001, 26.831669, 19.893270>,  <34.862839, 26.630882, 19.957281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748001, 26.831669, 19.893270>,  <34.556606, 27.166313, 19.786587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748001, 26.831669, 19.893270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139575, 0.227414, 0.963744,
		-0.866931, -0.498364, -0.007955,
		0.478486, -0.836610, 0.266711,
		34.891548, 26.580687, 19.973284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120480, 26.935709, 20.206205>,  <34.556606, 27.166313, 19.786587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120480, 26.935709, 20.206205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445465, 26.721075, 20.297407>,  <34.640457, 26.592295, 20.352127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445465, 26.721075, 20.297407>,  <34.120480, 26.935709, 20.206205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445465, 26.721075, 20.297407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060671, 0.311136, 0.948427,
		-0.579851, -0.784392, 0.220231,
		0.812460, -0.536584, 0.228003,
		34.689201, 26.560101, 20.365808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928642, 26.561668, 20.808273>,  <34.120480, 26.935709, 20.206205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928642, 26.561668, 20.808273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327614, 26.589401, 20.800966>,  <34.566998, 26.606041, 20.796581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327614, 26.589401, 20.800966>,  <33.928642, 26.561668, 20.808273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327614, 26.589401, 20.800966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007722, 0.149431, 0.988742,
		0.071281, -0.986338, 0.148511,
		0.997426, 0.069332, -0.018268,
		34.626842, 26.610201, 20.795486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212078, 25.898792, 21.278412>,  <33.928642, 26.561668, 20.808273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212078, 25.898792, 21.278412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460663, 26.211990, 21.267841>,  <34.609814, 26.399910, 21.261499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460663, 26.211990, 21.267841>,  <34.212078, 25.898792, 21.278412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460663, 26.211990, 21.267841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130924, 0.137053, 0.981874,
		0.772425, -0.606740, 0.187687,
		0.621465, 0.782997, -0.026426,
		34.647102, 26.446890, 21.259912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408585, 25.895777, 21.936636>,  <34.212078, 25.898792, 21.278412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408585, 25.895777, 21.936636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577370, 26.227839, 21.790874>,  <34.678642, 26.427076, 21.703419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577370, 26.227839, 21.790874>,  <34.408585, 25.895777, 21.936636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577370, 26.227839, 21.790874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098550, 0.441555, 0.891806,
		0.901242, -0.340396, 0.268131,
		0.421961, 0.830156, -0.364401,
		34.703957, 26.476885, 21.681555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.297928, 29.873730, 14.909108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.638165, 29.952002, 15.104332>,  <33.842308, 29.998964, 15.221466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.638165, 29.952002, 15.104332>,  <33.297928, 29.873730, 14.909108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638165, 29.952002, 15.104332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516811, 0.482251, 0.707348,
		-0.096952, -0.853899, 0.511329,
		0.850592, 0.195682, 0.488059,
		33.893341, 30.010706, 15.250750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135544, 29.827810, 15.630877>,  <33.297928, 29.873730, 14.909108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135544, 29.827810, 15.630877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.493752, 30.005621, 15.622423>,  <33.708675, 30.112307, 15.617351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.493752, 30.005621, 15.622423>,  <33.135544, 29.827810, 15.630877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493752, 30.005621, 15.622423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251533, 0.544761, 0.799979,
		0.367125, -0.711078, 0.599656,
		0.895517, 0.444526, -0.021136,
		33.762405, 30.138979, 15.616082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513557, 29.739418, 16.286905>,  <33.135544, 29.827810, 15.630877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513557, 29.739418, 16.286905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692368, 30.069687, 16.149250>,  <33.799652, 30.267849, 16.066656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692368, 30.069687, 16.149250>,  <33.513557, 29.739418, 16.286905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692368, 30.069687, 16.149250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210291, 0.470938, 0.856735,
		0.869452, -0.310613, 0.384153,
		0.447025, 0.825674, -0.344139,
		33.826473, 30.317389, 16.046009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066650, 29.947392, 16.793989>,  <33.513557, 29.739418, 16.286905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066650, 29.947392, 16.793989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975666, 30.275091, 16.583431>,  <33.921074, 30.471710, 16.457096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975666, 30.275091, 16.583431>,  <34.066650, 29.947392, 16.793989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975666, 30.275091, 16.583431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017620, 0.537013, 0.843390,
		0.973627, 0.201115, -0.107715,
		-0.227463, 0.819250, -0.526394,
		33.907429, 30.520866, 16.425512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458111, 30.430119, 17.044081>,  <34.066650, 29.947392, 16.793989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458111, 30.430119, 17.044081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202000, 30.676163, 16.860043>,  <34.048332, 30.823790, 16.749619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202000, 30.676163, 16.860043>,  <34.458111, 30.430119, 17.044081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202000, 30.676163, 16.860043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017232, 0.587318, 0.809173,
		0.767953, 0.526022, -0.365445,
		-0.640275, 0.615109, -0.460097,
		34.009918, 30.860695, 16.722013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625668, 31.064600, 17.178471>,  <34.458111, 30.430119, 17.044081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625668, 31.064600, 17.178471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244194, 31.128977, 17.076820>,  <34.015308, 31.167603, 17.015829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244194, 31.128977, 17.076820>,  <34.625668, 31.064600, 17.178471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244194, 31.128977, 17.076820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064049, 0.716809, 0.694322,
		0.293906, 0.678442, -0.673303,
		-0.953686, 0.160941, -0.254128,
		33.958088, 31.177259, 17.000582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516277, 31.859955, 17.145924>,  <34.625668, 31.064600, 17.178471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516277, 31.859955, 17.145924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160423, 31.687923, 17.207357>,  <33.946911, 31.584705, 17.244217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160423, 31.687923, 17.207357>,  <34.516277, 31.859955, 17.145924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160423, 31.687923, 17.207357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168818, 0.622197, 0.764442,
		-0.424328, 0.654145, -0.626131,
		-0.889633, -0.430076, 0.153584,
		33.893532, 31.558901, 17.253433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956070, 32.404964, 17.209066>,  <34.516277, 31.859955, 17.145924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956070, 32.404964, 17.209066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782375, 32.088852, 17.381992>,  <33.678158, 31.899185, 17.485748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782375, 32.088852, 17.381992>,  <33.956070, 32.404964, 17.209066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782375, 32.088852, 17.381992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145055, 0.535005, 0.832303,
		-0.889045, 0.298704, -0.346951,
		-0.434233, -0.790282, 0.432315,
		33.652107, 31.851767, 17.511686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308262, 32.652653, 17.422464>,  <33.956070, 32.404964, 17.209066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308262, 32.652653, 17.422464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376934, 32.330471, 17.649363>,  <33.418137, 32.137161, 17.785501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376934, 32.330471, 17.649363>,  <33.308262, 32.652653, 17.422464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376934, 32.330471, 17.649363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287685, 0.509705, 0.810825,
		-0.942212, -0.302391, -0.144211,
		0.171681, -0.805456, 0.567244,
		33.428440, 32.088833, 17.819536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761803, 32.638409, 17.781721>,  <33.308262, 32.652653, 17.422464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761803, 32.638409, 17.781721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024418, 32.423660, 17.993656>,  <33.181988, 32.294811, 18.120817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024418, 32.423660, 17.993656>,  <32.761803, 32.638409, 17.781721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024418, 32.423660, 17.993656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267702, 0.490860, 0.829091,
		-0.705191, -0.686168, 0.178547,
		0.656538, -0.536870, 0.529838,
		33.221378, 32.262600, 18.152607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338535, 32.481365, 18.442453>,  <32.761803, 32.638409, 17.781721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338535, 32.481365, 18.442453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.720810, 32.399551, 18.527147>,  <32.950172, 32.350464, 18.577963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.720810, 32.399551, 18.527147>,  <32.338535, 32.481365, 18.442453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720810, 32.399551, 18.527147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069181, 0.543054, 0.836843,
		-0.286148, -0.814406, 0.504838,
		0.955685, -0.204535, 0.211735,
		33.007515, 32.338192, 18.590668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340908, 32.278477, 19.193056>,  <32.338535, 32.481365, 18.442453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340908, 32.278477, 19.193056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714569, 32.382969, 19.095800>,  <32.938766, 32.445663, 19.037447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714569, 32.382969, 19.095800>,  <32.340908, 32.278477, 19.193056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714569, 32.382969, 19.095800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045845, 0.587818, 0.807693,
		0.353917, -0.765655, 0.537136,
		0.934153, 0.261231, -0.243140,
		32.994816, 32.461338, 19.022858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452950, 31.555231, 19.408329>,  <32.340908, 32.278477, 19.193056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452950, 31.555231, 19.408329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320736, 31.237741, 19.612583>,  <32.241405, 31.047249, 19.735136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320736, 31.237741, 19.612583>,  <32.452950, 31.555231, 19.408329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320736, 31.237741, 19.612583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137638, -0.494723, -0.858082,
		0.933702, -0.353912, 0.054278,
		-0.330538, -0.793723, 0.510636,
		32.221573, 30.999624, 19.765774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700985, 31.027025, 19.053478>,  <32.452950, 31.555231, 19.408329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700985, 31.027025, 19.053478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408703, 30.861845, 19.270935>,  <32.233334, 30.762737, 19.401409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408703, 30.861845, 19.270935>,  <32.700985, 31.027025, 19.053478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408703, 30.861845, 19.270935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210970, -0.620752, -0.755089,
		0.649281, -0.666437, 0.366464,
		-0.730703, -0.412952, 0.543640,
		32.189491, 30.737959, 19.434027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883785, 30.233019, 19.079895>,  <32.700985, 31.027025, 19.053478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883785, 30.233019, 19.079895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.490639, 30.270273, 19.143511>,  <32.254749, 30.292625, 19.181681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.490639, 30.270273, 19.143511>,  <32.883785, 30.233019, 19.079895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490639, 30.270273, 19.143511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176255, -0.727213, -0.663397,
		0.053871, -0.680064, 0.731170,
		-0.982869, 0.093134, 0.159040,
		32.195778, 30.298214, 19.191223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656750, 29.517933, 19.194471>,  <32.883785, 30.233019, 19.079895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656750, 29.517933, 19.194471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.334579, 29.725487, 19.079895>,  <32.141277, 29.850019, 19.011148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.334579, 29.725487, 19.079895>,  <32.656750, 29.517933, 19.194471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334579, 29.725487, 19.079895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311685, -0.781868, -0.539940,
		-0.504125, -0.345602, 0.791465,
		-0.805426, 0.518885, -0.286440,
		32.092953, 29.881153, 18.993963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048019, 29.123833, 19.411636>,  <32.656750, 29.517933, 19.194471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048019, 29.123833, 19.411636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968136, 29.373953, 19.109877>,  <31.920206, 29.524025, 18.928822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968136, 29.373953, 19.109877>,  <32.048019, 29.123833, 19.411636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968136, 29.373953, 19.109877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067440, -0.776852, -0.626062,
		-0.977533, -0.074151, 0.197311,
		-0.199705, 0.625302, -0.754397,
		31.908224, 29.561544, 18.883558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681353, 28.687595, 18.902367>,  <32.048019, 29.123833, 19.411636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681353, 28.687595, 18.902367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803825, 29.008650, 18.697613>,  <31.877308, 29.201283, 18.574760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803825, 29.008650, 18.697613>,  <31.681353, 28.687595, 18.902367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803825, 29.008650, 18.697613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258665, -0.587622, -0.766676,
		-0.916158, 0.102334, -0.387533,
		0.306180, 0.802638, -0.511884,
		31.895679, 29.249441, 18.544048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430136, 28.500673, 18.192780>,  <31.681353, 28.687595, 18.902367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430136, 28.500673, 18.192780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659241, 28.821920, 18.127125>,  <31.796703, 29.014669, 18.087732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659241, 28.821920, 18.127125>,  <31.430136, 28.500673, 18.192780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659241, 28.821920, 18.127125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279158, -0.379374, -0.882126,
		-0.770723, 0.459428, -0.441489,
		0.572762, 0.803120, -0.164139,
		31.831070, 29.062857, 18.077883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249409, 28.824905, 17.515263>,  <31.430136, 28.500673, 18.192780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249409, 28.824905, 17.515263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615616, 28.937950, 17.629776>,  <31.835340, 29.005777, 17.698484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615616, 28.937950, 17.629776>,  <31.249409, 28.824905, 17.515263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615616, 28.937950, 17.629776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395696, -0.504442, -0.767439,
		-0.072473, 0.815885, -0.573654,
		0.915518, 0.282611, 0.286284,
		31.890270, 29.022734, 17.715662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593723, 29.295864, 17.028181>,  <31.249409, 28.824905, 17.515263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593723, 29.295864, 17.028181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856520, 29.079529, 17.238270>,  <32.014198, 28.949728, 17.364323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856520, 29.079529, 17.238270>,  <31.593723, 29.295864, 17.028181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856520, 29.079529, 17.238270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248314, -0.502559, -0.828115,
		0.711829, 0.674485, -0.195880,
		0.656993, -0.540837, 0.525220,
		32.053619, 28.917278, 17.395836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131565, 29.069372, 16.465967>,  <31.593723, 29.295864, 17.028181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131565, 29.069372, 16.465967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.220688, 28.844418, 16.784483>,  <32.274162, 28.709444, 16.975592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.220688, 28.844418, 16.784483>,  <32.131565, 29.069372, 16.465967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220688, 28.844418, 16.784483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242632, -0.759128, -0.604032,
		0.944186, 0.327788, -0.032686,
		0.222807, -0.562387, 0.796290,
		32.287529, 28.675701, 17.023371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628937, 28.750031, 16.149626>,  <32.131565, 29.069372, 16.465967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628937, 28.750031, 16.149626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.519875, 28.544216, 16.474812>,  <32.454437, 28.420727, 16.669924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.519875, 28.544216, 16.474812>,  <32.628937, 28.750031, 16.149626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519875, 28.544216, 16.474812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288849, -0.849776, -0.440961,
		0.917729, 0.114595, 0.380317,
		-0.272653, -0.514537, 0.812965,
		32.438080, 28.389854, 16.718700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116993, 28.234348, 16.062145>,  <32.628937, 28.750031, 16.149626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116993, 28.234348, 16.062145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.835030, 28.097799, 16.310844>,  <32.665852, 28.015869, 16.460064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.835030, 28.097799, 16.310844>,  <33.116993, 28.234348, 16.062145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835030, 28.097799, 16.310844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065785, -0.904253, -0.421898,
		0.706243, -0.256497, 0.659871,
		-0.704907, -0.341372, 0.621749,
		32.623558, 27.995388, 16.497370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435658, 27.724930, 16.502268>,  <33.116993, 28.234348, 16.062145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435658, 27.724930, 16.502268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044224, 27.690847, 16.427317>,  <32.809364, 27.670399, 16.382345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044224, 27.690847, 16.427317>,  <33.435658, 27.724930, 16.502268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044224, 27.690847, 16.427317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130829, -0.960244, -0.246606,
		-0.158918, -0.265840, 0.950828,
		-0.978585, -0.085206, -0.187380,
		32.750648, 27.665285, 16.371103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009525, 27.167309, 16.379545>,  <33.435658, 27.724930, 16.502268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009525, 27.167309, 16.379545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090313, 26.783354, 16.301754>,  <34.138786, 26.552980, 16.255079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090313, 26.783354, 16.301754>,  <34.009525, 27.167309, 16.379545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090313, 26.783354, 16.301754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031202, -0.204777, 0.978311,
		-0.978895, -0.191521, -0.071309,
		0.201969, -0.959889, -0.194479,
		34.150906, 26.495388, 16.243410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574833, 26.743696, 16.843557>,  <34.009525, 27.167309, 16.379545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574833, 26.743696, 16.843557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.889385, 26.519833, 16.738953>,  <34.078117, 26.385515, 16.676189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.889385, 26.519833, 16.738953>,  <33.574833, 26.743696, 16.843557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889385, 26.519833, 16.738953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018667, -0.444668, 0.895501,
		-0.617462, -0.699322, -0.360125,
		0.786380, -0.559660, -0.261511,
		34.125298, 26.351934, 16.660500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466896, 26.045929, 17.238850>,  <33.574833, 26.743696, 16.843557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466896, 26.045929, 17.238850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847912, 26.078604, 17.121553>,  <34.076523, 26.098207, 17.051176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847912, 26.078604, 17.121553>,  <33.466896, 26.045929, 17.238850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847912, 26.078604, 17.121553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303582, -0.325661, 0.895423,
		-0.022353, -0.941951, -0.335005,
		0.952543, 0.081686, -0.293239,
		34.133675, 26.103109, 17.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681885, 25.534094, 17.511135>,  <33.466896, 26.045929, 17.238850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681885, 25.534094, 17.511135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006062, 25.759556, 17.447296>,  <34.200569, 25.894833, 17.408993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006062, 25.759556, 17.447296>,  <33.681885, 25.534094, 17.511135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006062, 25.759556, 17.447296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397136, -0.328354, 0.857010,
		0.430652, -0.757943, -0.489960,
		0.810446, 0.563654, -0.159599,
		34.249195, 25.928652, 17.399416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189922, 25.155966, 17.759958>,  <33.681885, 25.534094, 17.511135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189922, 25.155966, 17.759958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350529, 25.522173, 17.750044>,  <34.446892, 25.741898, 17.744095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350529, 25.522173, 17.750044>,  <34.189922, 25.155966, 17.759958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350529, 25.522173, 17.750044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558895, -0.223492, 0.798553,
		0.725551, -0.334480, -0.601413,
		0.401511, 0.915518, -0.024784,
		34.470982, 25.796829, 17.742609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875854, 25.050230, 17.934792>,  <34.189922, 25.155966, 17.759958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875854, 25.050230, 17.934792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794167, 25.429506, 18.032137>,  <34.745155, 25.657072, 18.090544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794167, 25.429506, 18.032137>,  <34.875854, 25.050230, 17.934792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794167, 25.429506, 18.032137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630011, -0.062975, 0.774028,
		0.749254, 0.311392, -0.584512,
		-0.204216, 0.948193, 0.243365,
		34.732903, 25.713964, 18.105146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409924, 25.169226, 18.294895>,  <34.875854, 25.050230, 17.934792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409924, 25.169226, 18.294895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216320, 25.510555, 18.372437>,  <35.100159, 25.715353, 18.418961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216320, 25.510555, 18.372437>,  <35.409924, 25.169226, 18.294895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216320, 25.510555, 18.372437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534038, 0.112549, 0.837936,
		0.693212, 0.509090, -0.510181,
		-0.484005, 0.853323, 0.193853,
		35.071117, 25.766552, 18.430593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921795, 25.623281, 18.604582>,  <35.409924, 25.169226, 18.294895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921795, 25.623281, 18.604582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.570484, 25.782236, 18.710953>,  <35.359699, 25.877609, 18.774775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.570484, 25.782236, 18.710953>,  <35.921795, 25.623281, 18.604582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570484, 25.782236, 18.710953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388073, 0.267494, 0.881956,
		0.279343, 0.877799, -0.389148,
		-0.878275, 0.397386, 0.265927,
		35.307003, 25.901451, 18.790731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229542, 26.323277, 18.776402>,  <35.921795, 25.623281, 18.604582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229542, 26.323277, 18.776402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.611641, 26.279882, 18.886484>,  <36.840900, 26.253845, 18.952534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.611641, 26.279882, 18.886484>,  <36.229542, 26.323277, 18.776402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611641, 26.279882, 18.886484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233426, -0.295046, -0.926531,
		0.181716, 0.949304, -0.256517,
		0.955244, -0.108487, 0.275207,
		36.898212, 26.247335, 18.969046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677505, 26.713297, 18.231371>,  <36.229542, 26.323277, 18.776402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677505, 26.713297, 18.231371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.890285, 26.425390, 18.409792>,  <37.017956, 26.252645, 18.516844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.890285, 26.425390, 18.409792>,  <36.677505, 26.713297, 18.231371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890285, 26.425390, 18.409792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396634, -0.253608, -0.882250,
		0.748136, 0.646235, 0.150576,
		0.531954, -0.719766, 0.446052,
		37.049873, 26.209461, 18.543608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407135, 26.786106, 18.031263>,  <36.677505, 26.713297, 18.231371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407135, 26.786106, 18.031263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357510, 26.413273, 18.167397>,  <37.327736, 26.189573, 18.249077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357510, 26.413273, 18.167397>,  <37.407135, 26.786106, 18.031263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357510, 26.413273, 18.167397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394359, -0.361046, -0.845060,
		0.910544, 0.029373, 0.412368,
		-0.124062, -0.932085, 0.340331,
		37.320290, 26.133648, 18.269497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986408, 26.385471, 17.677485>,  <37.407135, 26.786106, 18.031263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986408, 26.385471, 17.677485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.788528, 26.063383, 17.808264>,  <37.669800, 25.870131, 17.886732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.788528, 26.063383, 17.808264>,  <37.986408, 26.385471, 17.677485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788528, 26.063383, 17.808264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217299, -0.478865, -0.850570,
		0.841461, -0.349728, 0.411866,
		-0.494696, -0.805220, 0.326950,
		37.640121, 25.821817, 17.906349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396271, 25.726524, 17.454288>,  <37.986408, 26.385471, 17.677485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396271, 25.726524, 17.454288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022667, 25.598076, 17.516907>,  <37.798504, 25.521008, 17.554478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022667, 25.598076, 17.516907>,  <38.396271, 25.726524, 17.454288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022667, 25.598076, 17.516907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083516, -0.622331, -0.778286,
		0.347350, -0.713852, 0.608082,
		-0.934009, -0.321122, 0.156548,
		37.742466, 25.501740, 17.563871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493179, 25.029358, 17.552019>,  <38.396271, 25.726524, 17.454288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493179, 25.029358, 17.552019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110363, 25.087948, 17.451925>,  <37.880672, 25.123102, 17.391869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110363, 25.087948, 17.451925>,  <38.493179, 25.029358, 17.552019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110363, 25.087948, 17.451925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067568, -0.726602, -0.683728,
		-0.281971, -0.671263, 0.685491,
		-0.957041, 0.146475, -0.250237,
		37.823250, 25.131891, 17.376854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166386, 24.311090, 17.511431>,  <38.493179, 25.029358, 17.552019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166386, 24.311090, 17.511431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928349, 24.547398, 17.293489>,  <37.785526, 24.689182, 17.162725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928349, 24.547398, 17.293489>,  <38.166386, 24.311090, 17.511431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928349, 24.547398, 17.293489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002381, -0.679257, -0.733896,
		-0.803657, -0.435436, 0.405625,
		-0.595088, 0.590767, -0.544853,
		37.749821, 24.724627, 17.130033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709568, 23.858030, 17.099541>,  <38.166386, 24.311090, 17.511431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709568, 23.858030, 17.099541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718716, 24.202124, 16.895786>,  <37.724205, 24.408581, 16.773535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718716, 24.202124, 16.895786>,  <37.709568, 23.858030, 17.099541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718716, 24.202124, 16.895786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090601, -0.505638, -0.857975,
		-0.995625, 0.065775, 0.066373,
		0.022873, 0.860235, -0.509385,
		37.725578, 24.460194, 16.742971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191757, 23.769667, 16.496405>,  <37.709568, 23.858030, 17.099541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191757, 23.769667, 16.496405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441700, 24.065462, 16.396235>,  <37.591667, 24.242939, 16.336132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441700, 24.065462, 16.396235>,  <37.191757, 23.769667, 16.496405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441700, 24.065462, 16.396235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106087, -0.398197, -0.911145,
		-0.773497, 0.542770, -0.327266,
		0.624858, 0.739486, -0.250423,
		37.629158, 24.287308, 16.321108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.385727, 31.634954, 30.835829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467148, 31.994282, 30.680092>,  <37.515999, 32.209877, 30.586649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467148, 31.994282, 30.680092>,  <37.385727, 31.634954, 30.835829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467148, 31.994282, 30.680092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067065, -0.383942, -0.920919,
		-0.976764, 0.213566, -0.017907,
		0.203552, 0.898319, -0.389344,
		37.528214, 32.263779, 30.563290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775528, 31.917519, 30.421314>,  <37.385727, 31.634954, 30.835829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775528, 31.917519, 30.421314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144501, 32.013023, 30.299913>,  <37.365883, 32.070328, 30.227074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144501, 32.013023, 30.299913>,  <36.775528, 31.917519, 30.421314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144501, 32.013023, 30.299913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169164, -0.456677, -0.873401,
		-0.347137, 0.856994, -0.380864,
		0.922431, 0.238761, -0.303502,
		37.421230, 32.084652, 30.208862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666859, 32.179688, 29.761698>,  <36.775528, 31.917519, 30.421314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666859, 32.179688, 29.761698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050293, 32.074558, 29.805592>,  <37.280354, 32.011482, 29.831928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050293, 32.074558, 29.805592>,  <36.666859, 32.179688, 29.761698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050293, 32.074558, 29.805592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038937, -0.502596, -0.863644,
		0.282137, 0.823602, -0.492014,
		0.958584, -0.262824, 0.109732,
		37.337868, 31.995710, 29.838511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876747, 32.209263, 29.057709>,  <36.666859, 32.179688, 29.761698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876747, 32.209263, 29.057709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183361, 32.031952, 29.243582>,  <37.367329, 31.925564, 29.355104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183361, 32.031952, 29.243582>,  <36.876747, 32.209263, 29.057709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183361, 32.031952, 29.243582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209948, -0.510840, -0.833645,
		0.606917, 0.736576, -0.298510,
		0.766533, -0.443282, 0.464680,
		37.413322, 31.898968, 29.382986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467346, 32.429726, 28.741489>,  <36.876747, 32.209263, 29.057709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467346, 32.429726, 28.741489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568977, 32.087429, 28.921782>,  <37.629955, 31.882051, 29.029957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568977, 32.087429, 28.921782>,  <37.467346, 32.429726, 28.741489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568977, 32.087429, 28.921782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141630, -0.428080, -0.892574,
		0.956758, 0.290620, 0.012432,
		0.254078, -0.855738, 0.450729,
		37.645203, 31.830708, 29.057001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095131, 32.258560, 28.475559>,  <37.467346, 32.429726, 28.741489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095131, 32.258560, 28.475559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914528, 31.922569, 28.595947>,  <37.806164, 31.720976, 28.668180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914528, 31.922569, 28.595947>,  <38.095131, 32.258560, 28.475559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914528, 31.922569, 28.595947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113178, -0.388500, -0.914472,
		0.885059, -0.378830, 0.270478,
		-0.451510, -0.839974, 0.300970,
		37.779076, 31.670578, 28.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401443, 31.690052, 28.115879>,  <38.095131, 32.258560, 28.475559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401443, 31.690052, 28.115879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066544, 31.528572, 28.263414>,  <37.865604, 31.431684, 28.351936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066544, 31.528572, 28.263414>,  <38.401443, 31.690052, 28.115879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066544, 31.528572, 28.263414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045856, -0.620302, -0.783022,
		0.544899, -0.672496, 0.500834,
		-0.837247, -0.403702, 0.368840,
		37.815369, 31.407461, 28.374065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384594, 30.955498, 27.807079>,  <38.401443, 31.690052, 28.115879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384594, 30.955498, 27.807079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010422, 30.965616, 27.948124>,  <37.785919, 30.971687, 28.032751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010422, 30.965616, 27.948124>,  <38.384594, 30.955498, 27.807079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010422, 30.965616, 27.948124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325158, -0.453000, -0.830098,
		0.138737, -0.891152, 0.431973,
		-0.935427, 0.025294, 0.352613,
		37.729794, 30.973204, 28.053907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112652, 30.262106, 27.934772>,  <38.384594, 30.955498, 27.807079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112652, 30.262106, 27.934772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814838, 30.507172, 27.828711>,  <37.636150, 30.654211, 27.765074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814838, 30.507172, 27.828711>,  <38.112652, 30.262106, 27.934772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814838, 30.507172, 27.828711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360298, -0.703148, -0.612999,
		-0.562005, -0.360866, 0.744262,
		-0.744537, 0.612664, -0.265153,
		37.591476, 30.690971, 27.749165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452759, 29.938347, 27.964010>,  <38.112652, 30.262106, 27.934772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452759, 29.938347, 27.964010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360725, 30.247871, 27.727951>,  <37.305504, 30.433586, 27.586315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360725, 30.247871, 27.727951>,  <37.452759, 29.938347, 27.964010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360725, 30.247871, 27.727951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487731, -0.616451, -0.618147,
		-0.842128, 0.145609, 0.519247,
		-0.230083, 0.773813, -0.590149,
		37.291702, 30.480015, 27.550907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728355, 29.875359, 27.747498>,  <37.452759, 29.938347, 27.964010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728355, 29.875359, 27.747498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907551, 30.110100, 27.477709>,  <37.015068, 30.250944, 27.315836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907551, 30.110100, 27.477709>,  <36.728355, 29.875359, 27.747498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907551, 30.110100, 27.477709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340942, -0.585258, -0.735685,
		-0.826478, 0.559532, -0.062105,
		0.447987, 0.586853, -0.674471,
		37.041946, 30.286156, 27.275368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327133, 29.870943, 27.139469>,  <36.728355, 29.875359, 27.747498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327133, 29.870943, 27.139469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677544, 30.013128, 27.009096>,  <36.887791, 30.098440, 26.930872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677544, 30.013128, 27.009096>,  <36.327133, 29.870943, 27.139469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677544, 30.013128, 27.009096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100186, -0.526953, -0.843969,
		-0.471750, 0.771989, -0.426010,
		0.876022, 0.355463, -0.325933,
		36.940350, 30.119766, 26.911316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677933, 29.887762, 26.912535>,  <36.327133, 29.870943, 27.139469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677933, 29.887762, 26.912535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304096, 29.751261, 26.952702>,  <35.079796, 29.669359, 26.976803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304096, 29.751261, 26.952702>,  <35.677933, 29.887762, 26.912535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304096, 29.751261, 26.952702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129120, 0.588481, 0.798134,
		-0.331461, 0.732963, -0.594052,
		-0.934592, -0.341254, 0.100418,
		35.023720, 29.648884, 26.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125965, 30.529989, 26.918264>,  <35.677933, 29.887762, 26.912535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125965, 30.529989, 26.918264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965618, 30.211946, 27.100300>,  <34.869408, 30.021120, 27.209520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965618, 30.211946, 27.100300>,  <35.125965, 30.529989, 26.918264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965618, 30.211946, 27.100300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245638, 0.571843, 0.782724,
		-0.882590, 0.201984, -0.424544,
		-0.400871, -0.795109, 0.455088,
		34.845356, 29.973413, 27.236826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466873, 30.647987, 26.998959>,  <35.125965, 30.529989, 26.918264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466873, 30.647987, 26.998959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541664, 30.398422, 27.302477>,  <34.586540, 30.248682, 27.484587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541664, 30.398422, 27.302477>,  <34.466873, 30.647987, 26.998959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541664, 30.398422, 27.302477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513408, 0.596470, 0.616957,
		-0.837527, -0.504930, -0.208795,
		0.186980, -0.623915, 0.758794,
		34.597759, 30.211248, 27.530115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789333, 30.628717, 27.528435>,  <34.466873, 30.647987, 26.998959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789333, 30.628717, 27.528435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084816, 30.482454, 27.754923>,  <34.262108, 30.394697, 27.890816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084816, 30.482454, 27.754923>,  <33.789333, 30.628717, 27.528435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084816, 30.482454, 27.754923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330933, 0.535072, 0.777291,
		-0.587190, -0.761573, 0.274255,
		0.738709, -0.365657, 0.566218,
		34.306427, 30.372757, 27.924788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536572, 30.419268, 28.133062>,  <33.789333, 30.628717, 27.528435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536572, 30.419268, 28.133062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917446, 30.425051, 28.255133>,  <34.145969, 30.428520, 28.328375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917446, 30.425051, 28.255133>,  <33.536572, 30.419268, 28.133062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917446, 30.425051, 28.255133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276208, 0.467642, 0.839655,
		-0.130572, -0.883800, 0.449276,
		0.952187, 0.014458, 0.305173,
		34.203102, 30.429388, 28.346685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566074, 29.999371, 28.829874>,  <33.536572, 30.419268, 28.133062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566074, 29.999371, 28.829874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906796, 30.208744, 28.838316>,  <34.111229, 30.334368, 28.843382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906796, 30.208744, 28.838316>,  <33.566074, 29.999371, 28.829874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906796, 30.208744, 28.838316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297355, 0.449944, 0.842099,
		0.431286, -0.723580, 0.538910,
		0.851805, 0.523433, 0.021106,
		34.162338, 30.365774, 28.844646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819736, 29.920769, 29.477385>,  <33.566074, 29.999371, 28.829874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819736, 29.920769, 29.477385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981606, 30.259062, 29.338259>,  <34.078728, 30.462038, 29.254784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981606, 30.259062, 29.338259>,  <33.819736, 29.920769, 29.477385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981606, 30.259062, 29.338259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294556, 0.480632, 0.825972,
		0.865722, -0.231800, 0.443615,
		0.404676, 0.845731, -0.347815,
		34.103008, 30.512781, 29.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067402, 30.161449, 30.028770>,  <33.819736, 29.920769, 29.477385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067402, 30.161449, 30.028770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069859, 30.485174, 29.793833>,  <34.071331, 30.679409, 29.652870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069859, 30.485174, 29.793833>,  <34.067402, 30.161449, 30.028770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069859, 30.485174, 29.793833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400289, 0.540234, 0.740213,
		0.916368, 0.230563, 0.327276,
		0.006140, 0.809313, -0.587345,
		34.071701, 30.727968, 29.617630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319675, 30.651962, 30.392445>,  <34.067402, 30.161449, 30.028770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319675, 30.651962, 30.392445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121628, 30.873341, 30.124548>,  <34.002800, 31.006168, 29.963810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121628, 30.873341, 30.124548>,  <34.319675, 30.651962, 30.392445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121628, 30.873341, 30.124548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300375, 0.614283, 0.729679,
		0.815247, 0.562454, -0.137904,
		-0.495123, 0.553446, -0.669740,
		33.973091, 31.039375, 29.923626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607063, 31.317448, 30.455843>,  <34.319675, 30.651962, 30.392445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607063, 31.317448, 30.455843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248535, 31.376812, 30.288708>,  <34.033421, 31.412432, 30.188427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248535, 31.376812, 30.288708>,  <34.607063, 31.317448, 30.455843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248535, 31.376812, 30.288708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284234, 0.530955, 0.798309,
		0.340333, 0.834302, -0.433720,
		-0.896317, 0.148413, -0.417838,
		33.979641, 31.421335, 30.163357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353981, 32.102757, 30.434978>,  <34.607063, 31.317448, 30.455843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353981, 32.102757, 30.434978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017494, 31.892176, 30.385654>,  <33.815601, 31.765827, 30.356060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017494, 31.892176, 30.385654>,  <34.353981, 32.102757, 30.434978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017494, 31.892176, 30.385654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423528, 0.499784, 0.755540,
		-0.336130, 0.687795, -0.643393,
		-0.841214, -0.526454, -0.123308,
		33.765129, 31.734240, 30.348661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892239, 32.609901, 30.449244>,  <34.353981, 32.102757, 30.434978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892239, 32.609901, 30.449244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655048, 32.296085, 30.521778>,  <33.512733, 32.107796, 30.565298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655048, 32.296085, 30.521778>,  <33.892239, 32.609901, 30.449244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655048, 32.296085, 30.521778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425970, 0.496742, 0.756173,
		-0.683322, 0.371148, -0.628745,
		-0.592976, -0.784536, 0.181337,
		33.477154, 32.060726, 30.576180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175850, 32.890404, 30.331940>,  <33.892239, 32.609901, 30.449244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175850, 32.890404, 30.331940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129555, 32.563370, 30.557562>,  <33.101780, 32.367149, 30.692936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129555, 32.563370, 30.557562>,  <33.175850, 32.890404, 30.331940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129555, 32.563370, 30.557562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552433, 0.524925, 0.647513,
		-0.825484, -0.236663, -0.512413,
		-0.115736, -0.817585, 0.564057,
		33.094833, 32.318096, 30.726780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453514, 32.760597, 30.501158>,  <33.175850, 32.890404, 30.331940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453514, 32.760597, 30.501158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650177, 32.599075, 30.809757>,  <32.768177, 32.502163, 30.994917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650177, 32.599075, 30.809757>,  <32.453514, 32.760597, 30.501158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650177, 32.599075, 30.809757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588774, 0.498610, 0.636186,
		-0.641573, -0.767027, 0.007396,
		0.491660, -0.403805, 0.771500,
		32.797676, 32.477932, 31.041206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952351, 32.603012, 30.960194>,  <32.453514, 32.760597, 30.501158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952351, 32.603012, 30.960194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297653, 32.648838, 31.156830>,  <32.504833, 32.676334, 31.274811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297653, 32.648838, 31.156830>,  <31.952351, 32.603012, 30.960194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297653, 32.648838, 31.156830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440755, 0.645742, 0.623500,
		-0.246012, -0.754912, 0.607936,
		0.863257, 0.114562, 0.491591,
		32.556629, 32.683208, 31.304308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550318, 32.625511, 30.362249>,  <31.952351, 32.603012, 30.960194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550318, 32.625511, 30.362249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513849, 33.006645, 30.246462>,  <31.491968, 33.235325, 30.176989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513849, 33.006645, 30.246462>,  <31.550318, 32.625511, 30.362249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513849, 33.006645, 30.246462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069216, -0.296040, -0.952665,
		-0.993427, -0.066819, 0.092941,
		-0.091170, 0.952836, -0.289469,
		31.486498, 33.292496, 30.159620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034199, 32.612007, 29.774885>,  <31.550318, 32.625511, 30.362249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034199, 32.612007, 29.774885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247135, 32.946228, 29.720535>,  <31.374897, 33.146759, 29.687925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247135, 32.946228, 29.720535>,  <31.034199, 32.612007, 29.774885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247135, 32.946228, 29.720535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167221, -0.261140, -0.950707,
		-0.829849, 0.483380, -0.278738,
		0.532342, 0.835554, -0.135876,
		31.406837, 33.196896, 29.679773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782253, 32.874592, 29.225298>,  <31.034199, 32.612007, 29.774885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782253, 32.874592, 29.225298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.110655, 33.102680, 29.213953>,  <31.307695, 33.239532, 29.207146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.110655, 33.102680, 29.213953>,  <30.782253, 32.874592, 29.225298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110655, 33.102680, 29.213953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232756, -0.379660, -0.895368,
		-0.521325, 0.728497, -0.444423,
		0.821002, 0.570220, -0.028364,
		31.356956, 33.273746, 29.205444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721855, 33.290146, 28.651146>,  <30.782253, 32.874592, 29.225298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721855, 33.290146, 28.651146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112043, 33.264595, 28.735409>,  <31.346157, 33.249264, 28.785967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112043, 33.264595, 28.735409>,  <30.721855, 33.290146, 28.651146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112043, 33.264595, 28.735409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198400, -0.159438, -0.967066,
		0.095356, 0.985139, -0.142855,
		0.975472, -0.063873, 0.210655,
		31.404684, 33.245434, 28.798605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010448, 33.823490, 28.190950>,  <30.721855, 33.290146, 28.651146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010448, 33.823490, 28.190950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308754, 33.583832, 28.307476>,  <31.487738, 33.440037, 28.377392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308754, 33.583832, 28.307476>,  <31.010448, 33.823490, 28.190950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308754, 33.583832, 28.307476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243046, -0.162451, -0.956315,
		0.620292, 0.783989, 0.024469,
		0.745765, -0.599142, 0.291312,
		31.532484, 33.404091, 28.394869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506046, 34.058907, 27.779327>,  <31.010448, 33.823490, 28.190950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506046, 34.058907, 27.779327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605265, 33.692345, 27.904976>,  <31.664797, 33.472408, 27.980366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605265, 33.692345, 27.904976>,  <31.506046, 34.058907, 27.779327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605265, 33.692345, 27.904976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359241, -0.214125, -0.908348,
		0.899677, 0.338159, 0.276097,
		0.248047, -0.916405, 0.314124,
		31.679678, 33.417423, 27.999212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149281, 34.025738, 27.540241>,  <31.506046, 34.058907, 27.779327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149281, 34.025738, 27.540241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071808, 33.644764, 27.634350>,  <32.025322, 33.416180, 27.690815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071808, 33.644764, 27.634350>,  <32.149281, 34.025738, 27.540241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071808, 33.644764, 27.634350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440683, -0.298721, -0.846501,
		0.876519, -0.060272, 0.477579,
		-0.193683, -0.952435, 0.235274,
		32.013702, 33.359032, 27.704931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773216, 33.650143, 27.318558>,  <32.149281, 34.025738, 27.540241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773216, 33.650143, 27.318558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508026, 33.354156, 27.364000>,  <32.348911, 33.176563, 27.391266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508026, 33.354156, 27.364000>,  <32.773216, 33.650143, 27.318558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508026, 33.354156, 27.364000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293337, -0.396377, -0.869965,
		0.688778, -0.543442, 0.479849,
		-0.662977, -0.739970, 0.113604,
		32.309132, 33.132164, 27.398081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044762, 32.905197, 27.410172>,  <32.773216, 33.650143, 27.318558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044762, 32.905197, 27.410172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674042, 32.859764, 27.266985>,  <32.451611, 32.832504, 27.181072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674042, 32.859764, 27.266985>,  <33.044762, 32.905197, 27.410172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674042, 32.859764, 27.266985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367005, -0.476132, -0.799128,
		-0.079677, -0.872008, 0.482963,
		-0.926800, -0.113578, -0.357968,
		32.396000, 32.825691, 27.159595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022667, 32.342632, 27.004330>,  <33.044762, 32.905197, 27.410172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022667, 32.342632, 27.004330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662888, 32.466835, 26.881317>,  <32.447018, 32.541355, 26.807508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662888, 32.466835, 26.881317>,  <33.022667, 32.342632, 27.004330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662888, 32.466835, 26.881317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128423, -0.484837, -0.865125,
		-0.417726, -0.817631, 0.396211,
		-0.899451, 0.310503, -0.307532,
		32.393051, 32.559986, 26.789057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678703, 31.722607, 26.650183>,  <33.022667, 32.342632, 27.004330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678703, 31.722607, 26.650183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522636, 32.060238, 26.503046>,  <32.428997, 32.262817, 26.414764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522636, 32.060238, 26.503046>,  <32.678703, 31.722607, 26.650183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522636, 32.060238, 26.503046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212166, -0.306336, -0.927979,
		-0.895968, -0.440107, -0.059563,
		-0.390164, 0.844076, -0.367843,
		32.405586, 32.313461, 26.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069378, 31.534229, 26.165083>,  <32.678703, 31.722607, 26.650183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069378, 31.534229, 26.165083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176697, 31.905880, 26.063305>,  <32.241089, 32.128872, 26.002239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176697, 31.905880, 26.063305>,  <32.069378, 31.534229, 26.165083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176697, 31.905880, 26.063305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106160, -0.234002, -0.966423,
		-0.957468, 0.286303, 0.035853,
		0.268299, 0.929125, -0.254444,
		32.257187, 32.184616, 25.986971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639095, 31.569635, 25.527378>,  <32.069378, 31.534229, 26.165083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639095, 31.569635, 25.527378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901251, 31.871069, 25.507086>,  <32.058544, 32.051929, 25.494911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901251, 31.871069, 25.507086>,  <31.639095, 31.569635, 25.527378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901251, 31.871069, 25.507086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070451, -0.127867, -0.989286,
		-0.751997, 0.644795, -0.136894,
		0.655391, 0.753584, -0.050729,
		32.097870, 32.097145, 25.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405212, 31.969904, 25.037703>,  <31.639095, 31.569635, 25.527378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405212, 31.969904, 25.037703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795275, 32.054554, 25.063898>,  <32.029312, 32.105343, 25.079615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795275, 32.054554, 25.063898>,  <31.405212, 31.969904, 25.037703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795275, 32.054554, 25.063898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098846, -0.151108, -0.983563,
		-0.198253, 0.965598, -0.168272,
		0.975154, 0.211627, 0.065488,
		32.087822, 32.118042, 25.083544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490614, 32.322285, 24.437569>,  <31.405212, 31.969904, 25.037703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490614, 32.322285, 24.437569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872198, 32.277527, 24.548882>,  <32.101147, 32.250671, 24.615669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872198, 32.277527, 24.548882>,  <31.490614, 32.322285, 24.437569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872198, 32.277527, 24.548882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227921, -0.332686, -0.915080,
		0.194970, 0.936376, -0.291867,
		0.953959, -0.111891, 0.278284,
		32.158386, 32.243961, 24.632366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889023, 32.752331, 23.984138>,  <31.490614, 32.322285, 24.437569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889023, 32.752331, 23.984138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114124, 32.458805, 24.136364>,  <32.249187, 32.282692, 24.227699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114124, 32.458805, 24.136364>,  <31.889023, 32.752331, 23.984138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114124, 32.458805, 24.136364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400911, -0.160321, -0.901980,
		0.722894, 0.660166, 0.203972,
		0.562756, -0.733811, 0.380563,
		32.282951, 32.238663, 24.250532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524971, 32.895485, 23.819292>,  <31.889023, 32.752331, 23.984138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524971, 32.895485, 23.819292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532406, 32.505291, 23.906996>,  <32.536865, 32.271175, 23.959618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532406, 32.505291, 23.906996>,  <32.524971, 32.895485, 23.819292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532406, 32.505291, 23.906996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308046, -0.203044, -0.929452,
		0.951190, 0.084814, 0.296723,
		0.018583, -0.975489, 0.219260,
		32.537979, 32.212643, 23.972775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028633, 32.666237, 23.401457>,  <32.524971, 32.895485, 23.819292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028633, 32.666237, 23.401457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834785, 32.329872, 23.497793>,  <32.718475, 32.128052, 23.555595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834785, 32.329872, 23.497793>,  <33.028633, 32.666237, 23.401457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834785, 32.329872, 23.497793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229815, -0.388061, -0.892521,
		0.843996, -0.377184, 0.381317,
		-0.484619, -0.840916, 0.240840,
		32.689400, 32.077599, 23.570045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546864, 32.163963, 23.232504>,  <33.028633, 32.666237, 23.401457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546864, 32.163963, 23.232504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166405, 32.043518, 23.205229>,  <32.938129, 31.971251, 23.188864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166405, 32.043518, 23.205229>,  <33.546864, 32.163963, 23.232504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166405, 32.043518, 23.205229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202017, -0.439978, -0.874990,
		0.233472, -0.846019, 0.479314,
		-0.951147, -0.301115, -0.068188,
		32.881062, 31.953184, 23.184772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614708, 31.509285, 22.899662>,  <33.546864, 32.163963, 23.232504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614708, 31.509285, 22.899662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227123, 31.607340, 22.886858>,  <32.994572, 31.666174, 22.879175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227123, 31.607340, 22.886858>,  <33.614708, 31.509285, 22.899662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227123, 31.607340, 22.886858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071218, -0.400776, -0.913404,
		-0.236737, -0.882772, 0.405794,
		-0.968960, 0.245136, -0.032009,
		32.936436, 31.680882, 22.877254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348103, 30.979708, 22.749916>,  <33.614708, 31.509285, 22.899662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348103, 30.979708, 22.749916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085598, 31.255491, 22.627302>,  <32.928093, 31.420961, 22.553734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085598, 31.255491, 22.627302>,  <33.348103, 30.979708, 22.749916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085598, 31.255491, 22.627302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153375, -0.519674, -0.840485,
		-0.738778, -0.504566, 0.446789,
		-0.656265, 0.689458, -0.306536,
		32.888718, 31.462328, 22.535341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762600, 30.601858, 22.586817>,  <33.348103, 30.979708, 22.749916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762600, 30.601858, 22.586817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720566, 30.959169, 22.411997>,  <32.695347, 31.173555, 22.307104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720566, 30.959169, 22.411997>,  <32.762600, 30.601858, 22.586817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720566, 30.959169, 22.411997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281522, -0.448227, -0.848433,
		-0.953784, 0.033886, 0.298577,
		-0.105081, 0.893277, -0.437051,
		32.689041, 31.227152, 22.280882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090828, 30.529106, 22.155575>,  <32.762600, 30.601858, 22.586817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090828, 30.529106, 22.155575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293049, 30.844715, 22.015940>,  <32.414379, 31.034081, 21.932159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293049, 30.844715, 22.015940>,  <32.090828, 30.529106, 22.155575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293049, 30.844715, 22.015940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135424, -0.327018, -0.935264,
		-0.852103, 0.520098, -0.058472,
		0.505550, 0.789023, -0.349087,
		32.444714, 31.081423, 21.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641426, 30.945593, 21.565186>,  <32.090828, 30.529106, 22.155575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641426, 30.945593, 21.565186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020412, 31.052544, 21.494965>,  <32.247803, 31.116714, 21.452831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020412, 31.052544, 21.494965>,  <31.641426, 30.945593, 21.565186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020412, 31.052544, 21.494965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144648, -0.131347, -0.980727,
		-0.285283, 0.954598, -0.085770,
		0.947465, 0.267378, -0.175552,
		32.304653, 31.132757, 21.442299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569954, 31.535992, 21.171650>,  <31.641426, 30.945593, 21.565186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569954, 31.535992, 21.171650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935530, 31.394579, 21.091919>,  <32.154877, 31.309731, 21.044081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935530, 31.394579, 21.091919>,  <31.569954, 31.535992, 21.171650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935530, 31.394579, 21.091919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202991, 0.027097, -0.978806,
		0.351440, 0.935030, -0.046999,
		0.913939, -0.353532, -0.199326,
		32.209713, 31.288519, 21.032122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867794, 31.933046, 20.639544>,  <31.569954, 31.535992, 21.171650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867794, 31.933046, 20.639544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078030, 31.592848, 20.631407>,  <32.204170, 31.388729, 20.626524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078030, 31.592848, 20.631407>,  <31.867794, 31.933046, 20.639544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078030, 31.592848, 20.631407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193572, -0.096270, -0.976351,
		0.828424, 0.517097, -0.215230,
		0.525589, -0.850495, -0.020343,
		32.235706, 31.337700, 20.625303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125927, 31.902163, 20.014261>,  <31.867794, 31.933046, 20.639544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125927, 31.902163, 20.014261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164841, 31.513390, 20.099943>,  <32.188190, 31.280127, 20.151352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164841, 31.513390, 20.099943>,  <32.125927, 31.902163, 20.014261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164841, 31.513390, 20.099943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252579, -0.232292, -0.939278,
		0.962673, 0.037275, -0.268089,
		0.097287, -0.971932, 0.214206,
		32.194027, 31.221809, 20.164206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889961, 32.051479, 19.874306>,  <32.125927, 31.902163, 20.014261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889961, 32.051479, 19.874306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073761, 32.338039, 19.664307>,  <33.184040, 32.509975, 19.538307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073761, 32.338039, 19.664307>,  <32.889961, 32.051479, 19.874306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073761, 32.338039, 19.664307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157380, 0.516069, 0.841964,
		0.874122, -0.469508, 0.124387,
		0.459502, 0.716404, -0.524999,
		33.211613, 32.552959, 19.506807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534786, 32.200783, 20.226511>,  <32.889961, 32.051479, 19.874306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534786, 32.200783, 20.226511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449043, 32.529999, 20.016117>,  <33.397598, 32.727528, 19.889881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449043, 32.529999, 20.016117>,  <33.534786, 32.200783, 20.226511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449043, 32.529999, 20.016117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264877, 0.567304, 0.779747,
		0.940155, 0.027824, -0.339610,
		-0.214357, 0.823038, -0.525984,
		33.384735, 32.776909, 19.858322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050438, 32.674744, 20.375597>,  <33.534786, 32.200783, 20.226511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050438, 32.674744, 20.375597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739136, 32.887825, 20.242598>,  <33.552357, 33.015675, 20.162798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739136, 32.887825, 20.242598>,  <34.050438, 32.674744, 20.375597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739136, 32.887825, 20.242598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253666, 0.751061, 0.609558,
		0.574438, 0.390046, -0.719642,
		-0.778251, 0.532702, -0.332497,
		33.505661, 33.047634, 20.142849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319412, 33.386803, 20.330721>,  <34.050438, 32.674744, 20.375597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319412, 33.386803, 20.330721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922752, 33.438370, 20.332190>,  <33.684757, 33.469311, 20.333071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922752, 33.438370, 20.332190>,  <34.319412, 33.386803, 20.330721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922752, 33.438370, 20.332190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091556, 0.683615, 0.724077,
		0.090839, 0.718366, -0.689709,
		-0.991648, 0.128922, 0.003672,
		33.625259, 33.477047, 20.333292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148697, 34.151871, 20.235346>,  <34.319412, 33.386803, 20.330721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148697, 34.151871, 20.235346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816109, 33.994312, 20.392063>,  <33.616554, 33.899776, 20.486094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816109, 33.994312, 20.392063>,  <34.148697, 34.151871, 20.235346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816109, 33.994312, 20.392063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069181, 0.773131, 0.630463,
		-0.551245, 0.497106, -0.670085,
		-0.831470, -0.393897, 0.391794,
		33.566669, 33.876144, 20.509602>
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
