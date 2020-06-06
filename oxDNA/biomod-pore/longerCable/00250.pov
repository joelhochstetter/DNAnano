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
	<24.403164, 34.908981, 35.362129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324774, 35.151192, 35.053600>,  <24.277739, 35.296516, 34.868484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324774, 35.151192, 35.053600>,  <24.403164, 34.908981, 35.362129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324774, 35.151192, 35.053600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208075, -0.794340, -0.570727,
		-0.958279, 0.048643, 0.281666,
		-0.195977, 0.605523, -0.771321,
		24.265980, 35.332848, 34.822205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190405, 35.058247, 35.588886>,  <24.403164, 34.908981, 35.362129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190405, 35.058247, 35.588886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450447, 35.210304, 35.852055>,  <25.606472, 35.301540, 36.009956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450447, 35.210304, 35.852055>,  <25.190405, 35.058247, 35.588886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450447, 35.210304, 35.852055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390229, -0.575916, 0.718361,
		0.651986, -0.723747, -0.226061,
		0.650104, 0.380146, 0.657916,
		25.645479, 35.324348, 36.049431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436180, 34.552238, 36.052750>,  <25.190405, 35.058247, 35.588886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436180, 34.552238, 36.052750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465139, 34.891315, 36.262959>,  <25.482515, 35.094761, 36.389084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465139, 34.891315, 36.262959>,  <25.436180, 34.552238, 36.052750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465139, 34.891315, 36.262959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260449, -0.492559, 0.830393,
		0.962769, -0.196992, 0.185120,
		0.072399, 0.847691, 0.525527,
		25.486858, 35.145622, 36.420616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845852, 34.422630, 36.660709>,  <25.436180, 34.552238, 36.052750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845852, 34.422630, 36.660709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650993, 34.761311, 36.746307>,  <25.534079, 34.964520, 36.797665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650993, 34.761311, 36.746307>,  <25.845852, 34.422630, 36.660709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650993, 34.761311, 36.746307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246242, -0.368257, 0.896522,
		0.837887, 0.384042, 0.387887,
		-0.487144, 0.846698, 0.213991,
		25.504850, 35.015320, 36.810505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054861, 34.603352, 37.378437>,  <25.845852, 34.422630, 36.660709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054861, 34.603352, 37.378437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716137, 34.787804, 37.272404>,  <25.512903, 34.898476, 37.208782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716137, 34.787804, 37.272404>,  <26.054861, 34.603352, 37.378437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716137, 34.787804, 37.272404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442291, -0.333633, 0.832507,
		0.295455, 0.822220, 0.486478,
		-0.846809, 0.461133, -0.265087,
		25.462093, 34.926144, 37.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958645, 35.081669, 37.876522>,  <26.054861, 34.603352, 37.378437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958645, 35.081669, 37.876522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608091, 35.001251, 37.701462>,  <25.397758, 34.953003, 37.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608091, 35.001251, 37.701462>,  <25.958645, 35.081669, 37.876522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608091, 35.001251, 37.701462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397763, -0.210212, 0.893082,
		-0.271545, 0.956762, 0.104259,
		-0.876383, -0.201042, -0.437646,
		25.345177, 34.940937, 37.570168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514782, 35.375607, 38.259655>,  <25.958645, 35.081669, 37.876522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514782, 35.375607, 38.259655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278521, 35.132126, 38.047764>,  <25.136765, 34.986038, 37.920628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278521, 35.132126, 38.047764>,  <25.514782, 35.375607, 38.259655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278521, 35.132126, 38.047764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444846, -0.302083, 0.843124,
		-0.673231, 0.733643, -0.092350,
		-0.590654, -0.608699, -0.529730,
		25.101324, 34.949516, 37.888844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798473, 35.474960, 38.431160>,  <25.514782, 35.375607, 38.259655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798473, 35.474960, 38.431160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911871, 35.107616, 38.320702>,  <24.979910, 34.887211, 38.254429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911871, 35.107616, 38.320702>,  <24.798473, 35.474960, 38.431160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911871, 35.107616, 38.320702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208193, -0.340028, 0.917080,
		-0.936102, -0.202497, -0.287591,
		0.283495, -0.918355, -0.276142,
		24.996920, 34.832111, 38.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505522, 35.156231, 38.982105>,  <24.798473, 35.474960, 38.431160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505522, 35.156231, 38.982105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732035, 34.869747, 38.818951>,  <24.867943, 34.697857, 38.721058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732035, 34.869747, 38.818951>,  <24.505522, 35.156231, 38.982105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732035, 34.869747, 38.818951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060657, -0.529748, 0.845983,
		-0.821976, -0.454324, -0.343430,
		0.566282, -0.716210, -0.407883,
		24.901920, 34.654884, 38.696587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177536, 34.406063, 39.133373>,  <24.505522, 35.156231, 38.982105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177536, 34.406063, 39.133373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562092, 34.354469, 39.036140>,  <24.792826, 34.323513, 38.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562092, 34.354469, 39.036140>,  <24.177536, 34.406063, 39.133373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562092, 34.354469, 39.036140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109085, -0.632347, 0.766966,
		-0.252643, -0.763871, -0.593862,
		0.961391, -0.128987, -0.243085,
		24.850510, 34.315773, 38.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208427, 33.682888, 38.951355>,  <24.177536, 34.406063, 39.133373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208427, 33.682888, 38.951355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582870, 33.789654, 39.042973>,  <24.807537, 33.853714, 39.097942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582870, 33.789654, 39.042973>,  <24.208427, 33.682888, 38.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582870, 33.789654, 39.042973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028605, -0.591274, 0.805963,
		0.350549, -0.761020, -0.545861,
		0.936107, 0.266915, 0.229039,
		24.863703, 33.869728, 39.111683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731075, 33.000057, 38.973080>,  <24.208427, 33.682888, 38.951355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731075, 33.000057, 38.973080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858576, 33.302410, 39.201832>,  <24.935076, 33.483822, 39.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858576, 33.302410, 39.201832>,  <24.731075, 33.000057, 38.973080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858576, 33.302410, 39.201832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083154, -0.578721, 0.811275,
		0.944184, -0.306147, -0.121612,
		0.318749, 0.755881, 0.571877,
		24.954201, 33.529175, 39.373394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444035, 32.829914, 39.208500>,  <24.731075, 33.000057, 38.973080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444035, 32.829914, 39.208500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200418, 33.057705, 39.429325>,  <25.054249, 33.194378, 39.561821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200418, 33.057705, 39.429325>,  <25.444035, 32.829914, 39.208500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200418, 33.057705, 39.429325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069489, -0.655055, 0.752379,
		0.790089, 0.496592, 0.359383,
		-0.609041, 0.569473, 0.552059,
		25.017706, 33.228546, 39.594944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725336, 32.778328, 39.866028>,  <25.444035, 32.829914, 39.208500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725336, 32.778328, 39.866028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356247, 32.923561, 39.917793>,  <25.134792, 33.010700, 39.948853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356247, 32.923561, 39.917793>,  <25.725336, 32.778328, 39.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356247, 32.923561, 39.917793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021069, -0.382750, 0.923612,
		0.384882, 0.849513, 0.360823,
		-0.922725, 0.363084, 0.129416,
		25.079430, 33.032486, 39.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778933, 33.445042, 40.046986>,  <25.725336, 32.778328, 39.866028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778933, 33.445042, 40.046986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839699, 33.337261, 39.666603>,  <25.876158, 33.272594, 39.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839699, 33.337261, 39.666603>,  <25.778933, 33.445042, 40.046986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839699, 33.337261, 39.666603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189862, -0.952161, 0.239461,
		-0.969987, 0.144172, -0.195806,
		0.151916, -0.269450, -0.950957,
		25.885273, 33.256428, 39.381317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700031, 34.288532, 39.896309>,  <25.778933, 33.445042, 40.046986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700031, 34.288532, 39.896309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589634, 33.979218, 39.667976>,  <25.523396, 33.793629, 39.530975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589634, 33.979218, 39.667976>,  <25.700031, 34.288532, 39.896309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589634, 33.979218, 39.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004972, 0.592746, -0.805374,
		0.961147, -0.225114, -0.159748,
		-0.275991, -0.773289, -0.570836,
		25.506836, 33.747231, 39.496727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144632, 34.231125, 39.367138>,  <25.700031, 34.288532, 39.896309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144632, 34.231125, 39.367138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780411, 34.094345, 39.274216>,  <25.561878, 34.012276, 39.218464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780411, 34.094345, 39.274216>,  <26.144632, 34.231125, 39.367138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780411, 34.094345, 39.274216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074669, 0.688746, -0.721147,
		0.406594, -0.639296, -0.652672,
		-0.910552, -0.341948, -0.232305,
		25.507244, 33.991760, 39.204525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113735, 34.102425, 38.687595>,  <26.144632, 34.231125, 39.367138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113735, 34.102425, 38.687595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731977, 34.183277, 38.775482>,  <25.502922, 34.231789, 38.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731977, 34.183277, 38.775482>,  <26.113735, 34.102425, 38.687595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731977, 34.183277, 38.775482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086038, 0.518502, -0.850737,
		-0.285881, -0.830842, -0.477465,
		-0.954395, 0.202130, 0.219714,
		25.445660, 34.243916, 38.841396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729025, 33.785606, 38.232639>,  <26.113735, 34.102425, 38.687595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729025, 33.785606, 38.232639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462454, 34.055702, 38.359081>,  <25.302511, 34.217758, 38.434948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462454, 34.055702, 38.359081>,  <25.729025, 33.785606, 38.232639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462454, 34.055702, 38.359081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217311, 0.229651, -0.948703,
		-0.713195, -0.700937, -0.006310,
		-0.666430, 0.675239, 0.316107,
		25.262526, 34.258274, 38.453915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276096, 33.645725, 37.817371>,  <25.729025, 33.785606, 38.232639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276096, 33.645725, 37.817371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190517, 34.012459, 37.952217>,  <25.139170, 34.232498, 38.033127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190517, 34.012459, 37.952217>,  <25.276096, 33.645725, 37.817371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190517, 34.012459, 37.952217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418521, 0.225796, -0.879691,
		-0.882647, -0.329299, 0.335404,
		-0.213948, 0.916830, 0.337117,
		25.126333, 34.287506, 38.053352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546915, 33.649738, 37.539818>,  <25.276096, 33.645725, 37.817371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546915, 33.649738, 37.539818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607248, 34.002460, 37.718555>,  <24.643448, 34.214092, 37.825798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607248, 34.002460, 37.718555>,  <24.546915, 33.649738, 37.539818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607248, 34.002460, 37.718555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153793, 0.425578, -0.891757,
		-0.976523, 0.203227, -0.071425,
		0.150832, 0.881806, 0.446842,
		24.652498, 34.267002, 37.852608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265039, 34.188858, 37.187016>,  <24.546915, 33.649738, 37.539818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265039, 34.188858, 37.187016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499826, 34.429749, 37.403458>,  <24.640699, 34.574284, 37.533321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499826, 34.429749, 37.403458>,  <24.265039, 34.188858, 37.187016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499826, 34.429749, 37.403458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218272, 0.525888, -0.822070,
		-0.779632, 0.600636, 0.177230,
		0.586968, 0.602228, 0.541101,
		24.675917, 34.610416, 37.565788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086460, 34.884117, 37.046772>,  <24.265039, 34.188858, 37.187016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086460, 34.884117, 37.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464809, 34.901440, 37.175423>,  <24.691820, 34.911831, 37.252613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464809, 34.901440, 37.175423>,  <24.086460, 34.884117, 37.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464809, 34.901440, 37.175423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231771, 0.603577, -0.762874,
		-0.227162, 0.796128, 0.560872,
		0.945875, 0.043302, 0.321629,
		24.748571, 34.914429, 37.271912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.082289, 35.256931, 36.437550>,  <24.086460, 34.884117, 37.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.082289, 35.256931, 36.437550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466711, 35.243732, 36.547298>,  <24.697365, 35.235813, 36.613148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466711, 35.243732, 36.547298>,  <24.082289, 35.256931, 36.437550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466711, 35.243732, 36.547298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067889, -0.990609, 0.118678,
		0.267878, -0.132683, -0.954273,
		0.961058, -0.032993, 0.274370,
		24.755028, 35.233833, 36.629608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414104, 35.638222, 36.975189>,  <24.082289, 35.256931, 36.437550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414104, 35.638222, 36.975189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731516, 35.406750, 37.050503>,  <24.921963, 35.267868, 37.095692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731516, 35.406750, 37.050503>,  <24.414104, 35.638222, 36.975189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731516, 35.406750, 37.050503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553516, 0.557803, -0.618446,
		0.252857, 0.594970, 0.762938,
		0.793526, -0.578677, 0.188281,
		24.969574, 35.233147, 37.106987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899101, 36.106731, 37.234791>,  <24.414104, 35.638222, 36.975189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899101, 36.106731, 37.234791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103142, 35.784637, 37.113861>,  <25.225565, 35.591381, 37.041302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103142, 35.784637, 37.113861>,  <24.899101, 36.106731, 37.234791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103142, 35.784637, 37.113861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552145, 0.576070, -0.602726,
		0.659495, 0.140522, 0.738458,
		0.510100, -0.805231, -0.302327,
		25.256172, 35.543068, 37.023163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512821, 36.329052, 36.983456>,  <24.899101, 36.106731, 37.234791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512821, 36.329052, 36.983456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499311, 35.965660, 36.816826>,  <25.491205, 35.747627, 36.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499311, 35.965660, 36.816826>,  <25.512821, 36.329052, 36.983456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499311, 35.965660, 36.816826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361932, 0.377401, -0.852393,
		0.931593, -0.179559, 0.316060,
		-0.033774, -0.908475, -0.416572,
		25.489180, 35.693119, 36.691853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119652, 36.197525, 36.603024>,  <25.512821, 36.329052, 36.983456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119652, 36.197525, 36.603024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826347, 35.987568, 36.430134>,  <25.650364, 35.861595, 36.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826347, 35.987568, 36.430134>,  <26.119652, 36.197525, 36.603024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826347, 35.987568, 36.430134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225453, 0.412025, -0.882840,
		0.641481, -0.744799, -0.183784,
		-0.733262, -0.524890, -0.432224,
		25.606369, 35.830101, 36.300468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431583, 35.727104, 36.113152>,  <26.119652, 36.197525, 36.603024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431583, 35.727104, 36.113152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074816, 35.881226, 36.018478>,  <25.860754, 35.973698, 35.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074816, 35.881226, 36.018478>,  <26.431583, 35.727104, 36.113152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074816, 35.881226, 36.018478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422878, 0.525336, -0.738374,
		-0.160164, -0.758657, -0.631496,
		-0.891920, 0.385307, -0.236679,
		25.807240, 35.996819, 35.947475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341419, 35.185280, 35.732830>,  <26.431583, 35.727104, 36.113152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341419, 35.185280, 35.732830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599089, 34.906456, 35.606876>,  <26.753691, 34.739162, 35.531303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599089, 34.906456, 35.606876>,  <26.341419, 35.185280, 35.732830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599089, 34.906456, 35.606876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570061, 0.163047, 0.805261,
		-0.509972, -0.698232, 0.502396,
		0.644173, -0.697057, -0.314885,
		26.792341, 34.697338, 35.512409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433155, 34.698715, 36.272972>,  <26.341419, 35.185280, 35.732830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433155, 34.698715, 36.272972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765991, 34.755062, 36.058388>,  <26.965693, 34.788872, 35.929638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765991, 34.755062, 36.058388>,  <26.433155, 34.698715, 36.272972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765991, 34.755062, 36.058388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538161, 0.028986, 0.842343,
		0.134209, -0.989604, -0.051691,
		0.832088, 0.140869, -0.536457,
		27.015617, 34.797321, 35.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012966, 34.464375, 36.760071>,  <26.433155, 34.698715, 36.272972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012966, 34.464375, 36.760071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210861, 34.658676, 36.471825>,  <27.329597, 34.775257, 36.298878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210861, 34.658676, 36.471825>,  <27.012966, 34.464375, 36.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210861, 34.658676, 36.471825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690799, 0.283299, 0.665236,
		0.527287, -0.826915, -0.195398,
		0.494737, 0.485751, -0.720611,
		27.359282, 34.804401, 36.255642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730158, 34.214008, 36.705303>,  <27.012966, 34.464375, 36.760071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730158, 34.214008, 36.705303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738163, 34.591419, 36.573032>,  <27.742966, 34.817867, 36.493671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738163, 34.591419, 36.573032>,  <27.730158, 34.214008, 36.705303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738163, 34.591419, 36.573032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679353, 0.229828, 0.696891,
		0.733538, -0.238593, -0.636392,
		0.020013, 0.943532, -0.330677,
		27.744167, 34.874477, 36.473831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390491, 34.333324, 36.808918>,  <27.730158, 34.214008, 36.705303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390491, 34.333324, 36.808918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238440, 34.701527, 36.772778>,  <28.147209, 34.922447, 36.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238440, 34.701527, 36.772778>,  <28.390491, 34.333324, 36.808918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238440, 34.701527, 36.772778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526958, 0.295816, 0.796748,
		0.760143, 0.255254, -0.597518,
		-0.380129, 0.920510, -0.090354,
		28.124401, 34.977680, 36.745670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795443, 34.862633, 36.578835>,  <28.390491, 34.333324, 36.808918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795443, 34.862633, 36.578835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519489, 35.032768, 36.813148>,  <28.353918, 35.134850, 36.953739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519489, 35.032768, 36.813148>,  <28.795443, 34.862633, 36.578835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519489, 35.032768, 36.813148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705877, 0.215693, 0.674696,
		0.160627, 0.878954, -0.449042,
		-0.689882, 0.425343, 0.585787,
		28.312525, 35.160370, 36.988884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257210, 35.413689, 36.774677>,  <28.795443, 34.862633, 36.578835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257210, 35.413689, 36.774677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892235, 35.463825, 36.618858>,  <28.673250, 35.493908, 36.525368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892235, 35.463825, 36.618858>,  <29.257210, 35.413689, 36.774677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892235, 35.463825, 36.618858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239912, 0.607334, 0.757356,
		0.331517, 0.784496, -0.524082,
		-0.912436, 0.125343, -0.389552,
		28.618504, 35.501427, 36.501991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237450, 36.091148, 36.442459>,  <29.257210, 35.413689, 36.774677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237450, 36.091148, 36.442459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901163, 35.934757, 36.592304>,  <28.699392, 35.840923, 36.682213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901163, 35.934757, 36.592304>,  <29.237450, 36.091148, 36.442459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901163, 35.934757, 36.592304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109381, 0.800199, 0.589675,
		-0.530316, 0.454772, -0.715504,
		-0.840714, -0.390977, 0.374615,
		28.648949, 35.817463, 36.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919064, 36.678154, 36.600918>,  <29.237450, 36.091148, 36.442459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919064, 36.678154, 36.600918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778330, 36.354164, 36.788601>,  <28.693890, 36.159771, 36.901211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778330, 36.354164, 36.788601>,  <28.919064, 36.678154, 36.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778330, 36.354164, 36.788601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114108, 0.460408, 0.880343,
		-0.929080, 0.363278, -0.069564,
		-0.351837, -0.809971, 0.469209,
		28.672779, 36.111172, 36.929363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390270, 36.973949, 36.999889>,  <28.919064, 36.678154, 36.600918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390270, 36.973949, 36.999889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540600, 36.632965, 37.145252>,  <28.630798, 36.428375, 37.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540600, 36.632965, 37.145252>,  <28.390270, 36.973949, 36.999889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540600, 36.632965, 37.145252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221533, 0.463429, 0.857996,
		-0.899822, -0.241951, 0.363017,
		0.375825, -0.852463, 0.363404,
		28.653347, 36.377228, 37.254272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134541, 36.999928, 37.682480>,  <28.390270, 36.973949, 36.999889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134541, 36.999928, 37.682480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462774, 36.774971, 37.641781>,  <28.659714, 36.639996, 37.617363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462774, 36.774971, 37.641781>,  <28.134541, 36.999928, 37.682480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462774, 36.774971, 37.641781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451917, 0.529508, 0.717908,
		-0.349874, -0.635085, 0.688663,
		0.820585, -0.562395, -0.101745,
		28.708950, 36.606251, 37.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804203, 36.690899, 38.082039>,  <28.134541, 36.999928, 37.682480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804203, 36.690899, 38.082039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790907, 36.441200, 38.394245>,  <27.782930, 36.291382, 38.581570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790907, 36.441200, 38.394245>,  <27.804203, 36.690899, 38.082039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790907, 36.441200, 38.394245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266370, -0.758238, -0.595082,
		0.963298, 0.188128, 0.191483,
		-0.033238, -0.624246, 0.780521,
		27.780935, 36.253925, 38.628403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461315, 36.268139, 38.258270>,  <27.804203, 36.690899, 38.082039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461315, 36.268139, 38.258270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164946, 36.031601, 38.385605>,  <27.987123, 35.889679, 38.462006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164946, 36.031601, 38.385605>,  <28.461315, 36.268139, 38.258270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164946, 36.031601, 38.385605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279423, -0.702474, -0.654563,
		0.610700, -0.396030, 0.685716,
		-0.740924, -0.591347, 0.318341,
		27.942669, 35.854198, 38.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701128, 35.650299, 38.431866>,  <28.461315, 36.268139, 38.258270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701128, 35.650299, 38.431866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317938, 35.562572, 38.357910>,  <28.088024, 35.509937, 38.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317938, 35.562572, 38.357910>,  <28.701128, 35.650299, 38.431866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317938, 35.562572, 38.357910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284023, -0.815538, -0.504211,
		-0.040200, -0.535534, 0.843556,
		-0.957975, -0.219320, -0.184889,
		28.030546, 35.496777, 38.302444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983152, 35.258453, 37.756241>,  <28.701128, 35.650299, 38.431866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983152, 35.258453, 37.756241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883331, 35.619007, 37.614693>,  <28.823439, 35.835339, 37.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883331, 35.619007, 37.614693>,  <28.983152, 35.258453, 37.756241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883331, 35.619007, 37.614693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629685, -0.428675, -0.647870,
		-0.735677, 0.061150, 0.674567,
		-0.249552, 0.901387, -0.353871,
		28.808466, 35.889423, 37.508530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151089, 35.169468, 37.615170>,  <28.983152, 35.258453, 37.756241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151089, 35.169468, 37.615170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295151, 35.470062, 37.394058>,  <28.381588, 35.650417, 37.261391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295151, 35.470062, 37.394058>,  <28.151089, 35.169468, 37.615170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295151, 35.470062, 37.394058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591663, -0.274120, -0.758151,
		-0.721265, 0.600108, 0.345900,
		0.360155, 0.751484, -0.552775,
		28.403196, 35.695507, 37.228226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516422, 35.540600, 37.305561>,  <28.151089, 35.169468, 37.615170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516422, 35.540600, 37.305561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874949, 35.567440, 37.130238>,  <28.090065, 35.583542, 37.025043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874949, 35.567440, 37.130238>,  <27.516422, 35.540600, 37.305561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874949, 35.567440, 37.130238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403224, -0.287889, -0.868637,
		-0.184467, 0.955311, -0.230984,
		0.896316, 0.067096, -0.438310,
		28.143843, 35.587570, 36.998745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566704, 36.117397, 36.683868>,  <27.516422, 35.540600, 37.305561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566704, 36.117397, 36.683868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771326, 35.773865, 36.694565>,  <27.894100, 35.567745, 36.700981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771326, 35.773865, 36.694565>,  <27.566704, 36.117397, 36.683868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771326, 35.773865, 36.694565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428658, -0.282051, -0.858312,
		0.744691, 0.427611, -0.512430,
		0.511555, -0.858834, 0.026742,
		27.924793, 35.516216, 36.702587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807446, 36.054939, 36.014866>,  <27.566704, 36.117397, 36.683868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807446, 36.054939, 36.014866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800549, 35.679497, 36.152691>,  <27.796410, 35.454231, 36.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800549, 35.679497, 36.152691>,  <27.807446, 36.054939, 36.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800549, 35.679497, 36.152691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477955, -0.294956, -0.827381,
		0.878215, -0.178953, -0.443525,
		-0.017242, -0.938604, 0.344567,
		27.795376, 35.397915, 36.256062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787601, 35.634392, 35.391937>,  <27.807446, 36.054939, 36.014866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787601, 35.634392, 35.391937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677904, 35.358364, 35.659847>,  <27.612085, 35.192749, 35.820595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677904, 35.358364, 35.659847>,  <27.787601, 35.634392, 35.391937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677904, 35.358364, 35.659847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336863, -0.583416, -0.739018,
		0.900730, -0.428293, -0.072460,
		-0.274242, -0.690065, 0.669777,
		27.595631, 35.151344, 35.860779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047064, 34.866085, 35.183380>,  <27.787601, 35.634392, 35.391937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047064, 34.866085, 35.183380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407246, 34.831799, 35.012814>,  <28.623354, 34.811226, 34.910473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407246, 34.831799, 35.012814>,  <28.047064, 34.866085, 35.183380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407246, 34.831799, 35.012814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284764, -0.857244, -0.429002,
		-0.328773, 0.507726, -0.796318,
		0.900454, -0.085718, -0.426421,
		28.677382, 34.806084, 34.884888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915483, 34.656494, 34.535194>,  <28.047064, 34.866085, 35.183380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915483, 34.656494, 34.535194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264076, 34.497620, 34.650272>,  <28.473232, 34.402294, 34.719318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264076, 34.497620, 34.650272>,  <27.915483, 34.656494, 34.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264076, 34.497620, 34.650272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297946, -0.894728, -0.332701,
		0.389553, 0.204224, -0.898076,
		0.871480, -0.397182, 0.287696,
		28.525520, 34.378464, 34.736580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236650, 34.271130, 33.951565>,  <27.915483, 34.656494, 34.535194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236650, 34.271130, 33.951565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373272, 34.127720, 34.299084>,  <28.455244, 34.041676, 34.507595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373272, 34.127720, 34.299084>,  <28.236650, 34.271130, 33.951565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373272, 34.127720, 34.299084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186872, -0.931833, -0.311073,
		0.921098, -0.056105, -0.385267,
		0.341552, -0.358525, 0.868794,
		28.475737, 34.020161, 34.559723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774784, 33.704071, 33.899811>,  <28.236650, 34.271130, 33.951565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774784, 33.704071, 33.899811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550638, 33.664497, 34.228737>,  <28.416151, 33.640755, 34.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550638, 33.664497, 34.228737>,  <28.774784, 33.704071, 33.899811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550638, 33.664497, 34.228737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247019, -0.927692, -0.279944,
		0.790551, -0.359998, 0.495408,
		-0.560366, -0.098934, 0.822315,
		28.382528, 33.634815, 34.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935968, 33.120792, 34.291431>,  <28.774784, 33.704071, 33.899811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935968, 33.120792, 34.291431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547516, 33.199097, 34.345959>,  <28.314445, 33.246078, 34.378677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547516, 33.199097, 34.345959>,  <28.935968, 33.120792, 34.291431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547516, 33.199097, 34.345959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217194, -0.961925, -0.165910,
		0.098653, -0.190728, 0.976673,
		-0.971130, 0.195760, 0.136322,
		28.256176, 33.257824, 34.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239368, 32.516193, 34.528870>,  <28.935968, 33.120792, 34.291431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239368, 32.516193, 34.528870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459658, 32.329300, 34.805534>,  <29.591831, 32.217163, 34.971535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459658, 32.329300, 34.805534>,  <29.239368, 32.516193, 34.528870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459658, 32.329300, 34.805534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497475, 0.481659, 0.721473,
		-0.670240, -0.741418, 0.032826,
		0.550724, -0.467230, 0.691664,
		29.624874, 32.189133, 35.013035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889786, 32.678505, 35.142319>,  <29.239368, 32.516193, 34.528870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889786, 32.678505, 35.142319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206959, 32.516106, 35.324055>,  <29.397263, 32.418667, 35.433094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206959, 32.516106, 35.324055>,  <28.889786, 32.678505, 35.142319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206959, 32.516106, 35.324055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154425, 0.587405, 0.794423,
		-0.589415, -0.700085, 0.403076,
		0.792933, -0.406000, 0.454336,
		29.444839, 32.394306, 35.460354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671856, 32.493858, 35.798115>,  <28.889786, 32.678505, 35.142319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671856, 32.493858, 35.798115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067965, 32.491028, 35.853706>,  <29.305630, 32.489330, 35.887062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067965, 32.491028, 35.853706>,  <28.671856, 32.493858, 35.798115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067965, 32.491028, 35.853706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107560, 0.594720, 0.796705,
		-0.088292, -0.803902, 0.588172,
		0.990270, -0.007079, 0.138977,
		29.365046, 32.488903, 35.895401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752865, 32.318634, 36.359997>,  <28.671856, 32.493858, 35.798115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752865, 32.318634, 36.359997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082159, 32.530861, 36.279217>,  <29.279736, 32.658199, 36.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082159, 32.530861, 36.279217>,  <28.752865, 32.318634, 36.359997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082159, 32.530861, 36.279217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052704, 0.425618, 0.903367,
		0.565253, -0.733038, 0.378346,
		0.823233, 0.530571, -0.201947,
		29.329128, 32.690033, 36.218632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195681, 32.427071, 36.769154>,  <28.752865, 32.318634, 36.359997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195681, 32.427071, 36.769154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400455, 32.551399, 37.089481>,  <28.523321, 32.625996, 37.281677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400455, 32.551399, 37.089481>,  <28.195681, 32.427071, 36.769154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400455, 32.551399, 37.089481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857247, -0.124959, -0.499512,
		-0.055190, 0.942218, -0.330423,
		0.511939, 0.310822, 0.800817,
		28.554037, 32.644646, 37.329727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496605, 33.104012, 36.590710>,  <28.195681, 32.427071, 36.769154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496605, 33.104012, 36.590710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656189, 32.857746, 36.862534>,  <28.751940, 32.709988, 37.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656189, 32.857746, 36.862534>,  <28.496605, 33.104012, 36.590710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656189, 32.857746, 36.862534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811785, -0.107496, -0.573978,
		0.426424, 0.780646, 0.456896,
		0.398959, -0.615659, 0.679556,
		28.775877, 32.673050, 37.066399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940798, 33.767609, 36.402874>,  <28.496605, 33.104012, 36.590710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940798, 33.767609, 36.402874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219090, 33.924541, 36.643551>,  <29.386065, 34.018700, 36.787956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219090, 33.924541, 36.643551>,  <28.940798, 33.767609, 36.402874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219090, 33.924541, 36.643551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613018, -0.112300, 0.782047,
		0.374392, -0.912943, 0.162376,
		0.695729, 0.392331, 0.601695,
		29.427809, 34.042240, 36.824059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507936, 33.429070, 36.025009>,  <28.940798, 33.767609, 36.402874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507936, 33.429070, 36.025009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681196, 33.231461, 36.326561>,  <29.785152, 33.112896, 36.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681196, 33.231461, 36.326561>,  <29.507936, 33.429070, 36.025009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681196, 33.231461, 36.326561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421506, -0.628288, -0.653901,
		0.796690, 0.601000, -0.063910,
		0.433149, -0.494018, 0.753876,
		29.811140, 33.083256, 36.552723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215654, 33.320633, 35.868000>,  <29.507936, 33.429070, 36.025009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215654, 33.320633, 35.868000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083237, 33.020222, 36.096512>,  <30.003786, 32.839973, 36.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083237, 33.020222, 36.096512>,  <30.215654, 33.320633, 35.868000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083237, 33.020222, 36.096512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091257, -0.628061, -0.772795,
		0.939193, -0.203694, 0.276451,
		-0.331042, -0.751032, 0.571282,
		29.983925, 32.794910, 36.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627264, 32.700493, 35.871269>,  <30.215654, 33.320633, 35.868000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627264, 32.700493, 35.871269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247219, 32.584320, 35.916775>,  <30.019192, 32.514618, 35.944077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247219, 32.584320, 35.916775>,  <30.627264, 32.700493, 35.871269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247219, 32.584320, 35.916775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090210, -0.604993, -0.791104,
		0.298585, -0.741374, 0.601009,
		-0.950110, -0.290429, 0.113762,
		29.962187, 32.497192, 35.950905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546371, 31.927139, 35.966133>,  <30.627264, 32.700493, 35.871269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546371, 31.927139, 35.966133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195395, 32.053608, 35.821838>,  <29.984808, 32.129490, 35.735264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195395, 32.053608, 35.821838>,  <30.546371, 31.927139, 35.966133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195395, 32.053608, 35.821838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082594, -0.641215, -0.762903,
		-0.472516, -0.699199, 0.536516,
		-0.877444, 0.316170, -0.360734,
		29.932161, 32.148460, 35.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123186, 31.354198, 35.851849>,  <30.546371, 31.927139, 35.966133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123186, 31.354198, 35.851849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967939, 31.630527, 35.607838>,  <29.874792, 31.796324, 35.461430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967939, 31.630527, 35.607838>,  <30.123186, 31.354198, 35.851849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967939, 31.630527, 35.607838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082852, -0.633080, -0.769640,
		-0.917879, -0.349252, 0.188472,
		-0.388116, 0.690821, -0.610027,
		29.851505, 31.837774, 35.424831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713749, 30.990942, 35.376404>,  <30.123186, 31.354198, 35.851849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713749, 30.990942, 35.376404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812786, 31.327209, 35.183746>,  <29.872208, 31.528969, 35.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812786, 31.327209, 35.183746>,  <29.713749, 30.990942, 35.376404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812786, 31.327209, 35.183746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100642, -0.516744, -0.850204,
		-0.963623, 0.162029, -0.212548,
		0.247591, 0.840668, -0.481640,
		29.887064, 31.579411, 35.039253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274921, 30.931170, 34.771278>,  <29.713749, 30.990942, 35.376404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274921, 30.931170, 34.771278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580910, 31.167315, 34.668293>,  <29.764503, 31.309002, 34.606503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580910, 31.167315, 34.668293>,  <29.274921, 30.931170, 34.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580910, 31.167315, 34.668293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162748, -0.563960, -0.809606,
		-0.623161, 0.577425, -0.527494,
		0.764973, 0.590364, -0.257463,
		29.810402, 31.344423, 34.591053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284332, 30.926182, 34.104134>,  <29.274921, 30.931170, 34.771278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284332, 30.926182, 34.104134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645647, 31.090433, 34.153870>,  <29.862436, 31.188984, 34.183712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645647, 31.090433, 34.153870>,  <29.284332, 30.926182, 34.104134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645647, 31.090433, 34.153870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305791, -0.412896, -0.857910,
		-0.300943, 0.812959, -0.498529,
		0.903286, 0.410628, 0.124337,
		29.916634, 31.213621, 34.191170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429008, 31.097309, 33.459602>,  <29.284332, 30.926182, 34.104134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429008, 31.097309, 33.459602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781931, 31.093689, 33.647839>,  <29.993685, 31.091516, 33.760780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781931, 31.093689, 33.647839>,  <29.429008, 31.097309, 33.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781931, 31.093689, 33.647839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434469, -0.368896, -0.821676,
		0.181036, 0.929426, -0.321547,
		0.882305, -0.009050, 0.470591,
		30.046623, 31.090975, 33.789017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879478, 31.497557, 33.072624>,  <29.429008, 31.097309, 33.459602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879478, 31.497557, 33.072624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131199, 31.241205, 33.248466>,  <30.282230, 31.087395, 33.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131199, 31.241205, 33.248466>,  <29.879478, 31.497557, 33.072624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131199, 31.241205, 33.248466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286585, -0.334422, -0.897792,
		0.722391, 0.690966, -0.026786,
		0.629301, -0.640881, 0.439604,
		30.319990, 31.048941, 33.380348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503086, 31.492720, 32.698261>,  <29.879478, 31.497557, 33.072624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503086, 31.492720, 32.698261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556273, 31.159391, 32.912888>,  <30.588184, 30.959394, 33.041664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556273, 31.159391, 32.912888>,  <30.503086, 31.492720, 32.698261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556273, 31.159391, 32.912888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484303, -0.417708, -0.768746,
		0.864737, 0.362076, 0.348038,
		0.132966, -0.833320, 0.536562,
		30.596163, 30.909395, 33.073856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256365, 31.239967, 32.860104>,  <30.503086, 31.492720, 32.698261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256365, 31.239967, 32.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061647, 30.894279, 32.910942>,  <30.944817, 30.686867, 32.941444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061647, 30.894279, 32.910942>,  <31.256365, 31.239967, 32.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061647, 30.894279, 32.910942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576838, -0.427304, -0.696182,
		0.655965, -0.265580, 0.706524,
		-0.486793, -0.864221, 0.127100,
		30.915609, 30.635014, 32.949074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764990, 30.751490, 32.817074>,  <31.256365, 31.239967, 32.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764990, 30.751490, 32.817074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427687, 30.537506, 32.796158>,  <31.225304, 30.409117, 32.783607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427687, 30.537506, 32.796158>,  <31.764990, 30.751490, 32.817074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427687, 30.537506, 32.796158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424711, -0.603518, -0.674823,
		0.329447, -0.591257, 0.736125,
		-0.843259, -0.534959, -0.052286,
		31.174709, 30.377018, 32.780472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869848, 30.072115, 33.047550>,  <31.764990, 30.751490, 32.817074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869848, 30.072115, 33.047550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580708, 30.107378, 32.773407>,  <31.407223, 30.128536, 32.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580708, 30.107378, 32.773407>,  <31.869848, 30.072115, 33.047550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580708, 30.107378, 32.773407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521346, -0.581382, -0.624654,
		-0.453520, -0.808840, 0.374295,
		-0.722854, 0.088156, -0.685354,
		31.363852, 30.133825, 32.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137882, 29.557968, 32.540146>,  <31.869848, 30.072115, 33.047550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137882, 29.557968, 32.540146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805006, 29.702354, 32.371780>,  <31.605280, 29.788986, 32.270763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805006, 29.702354, 32.371780>,  <32.137882, 29.557968, 32.540146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805006, 29.702354, 32.371780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272387, -0.395065, -0.877342,
		-0.482978, -0.844764, 0.230446,
		-0.832188, 0.360967, -0.420911,
		31.555349, 29.810644, 32.245506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887026, 29.008492, 32.134022>,  <32.137882, 29.557968, 32.540146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887026, 29.008492, 32.134022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752144, 29.352196, 31.980160>,  <31.671215, 29.558418, 31.887842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752144, 29.352196, 31.980160>,  <31.887026, 29.008492, 32.134022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752144, 29.352196, 31.980160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218947, -0.325804, -0.919736,
		-0.915617, -0.394360, -0.078270,
		-0.337206, 0.859262, -0.384656,
		31.650982, 29.609974, 31.864763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545856, 28.830845, 31.566107>,  <31.887026, 29.008492, 32.134022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545856, 28.830845, 31.566107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623804, 29.219772, 31.514534>,  <31.670572, 29.453129, 31.483589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623804, 29.219772, 31.514534>,  <31.545856, 28.830845, 31.566107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623804, 29.219772, 31.514534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178162, -0.164356, -0.970178,
		-0.964512, 0.166087, -0.205258,
		0.194870, 0.972318, -0.128933,
		31.682264, 29.511467, 31.475855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369207, 28.932018, 30.914162>,  <31.545856, 28.830845, 31.566107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369207, 28.932018, 30.914162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574411, 29.263292, 31.004429>,  <31.697535, 29.462057, 31.058588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574411, 29.263292, 31.004429>,  <31.369207, 28.932018, 30.914162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574411, 29.263292, 31.004429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261011, 0.099944, -0.960148,
		-0.817736, 0.551469, -0.164893,
		0.513012, 0.828187, 0.225667,
		31.728315, 29.511749, 31.072128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194874, 29.425869, 30.402136>,  <31.369207, 28.932018, 30.914162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194874, 29.425869, 30.402136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533567, 29.548615, 30.575975>,  <31.736784, 29.622261, 30.680279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533567, 29.548615, 30.575975>,  <31.194874, 29.425869, 30.402136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533567, 29.548615, 30.575975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461002, -0.015462, -0.887264,
		-0.265547, 0.951629, -0.154556,
		0.846736, 0.306862, 0.434597,
		31.787588, 29.640673, 30.706354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436764, 29.969746, 29.965651>,  <31.194874, 29.425869, 30.402136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436764, 29.969746, 29.965651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736418, 29.801788, 30.170586>,  <31.916210, 29.701014, 30.293547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736418, 29.801788, 30.170586>,  <31.436764, 29.969746, 29.965651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736418, 29.801788, 30.170586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541338, -0.057698, -0.838823,
		0.381775, 0.905738, 0.184080,
		0.749134, -0.419891, 0.512338,
		31.961159, 29.675821, 30.324287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955507, 30.402315, 29.842352>,  <31.436764, 29.969746, 29.965651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955507, 30.402315, 29.842352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141449, 30.061119, 29.937279>,  <32.253014, 29.856401, 29.994236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141449, 30.061119, 29.937279>,  <31.955507, 30.402315, 29.842352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141449, 30.061119, 29.937279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562510, 0.077536, -0.823147,
		0.683734, 0.516137, 0.515858,
		0.464854, -0.852989, 0.237318,
		32.280907, 29.805222, 30.008474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620064, 30.549713, 29.872244>,  <31.955507, 30.402315, 29.842352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620064, 30.549713, 29.872244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623142, 30.157417, 29.794172>,  <32.624989, 29.922041, 29.747330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623142, 30.157417, 29.794172>,  <32.620064, 30.549713, 29.872244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623142, 30.157417, 29.794172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430418, 0.179427, -0.884617,
		0.902597, -0.077198, 0.423508,
		0.007698, -0.980738, -0.195178,
		32.625450, 29.863195, 29.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339722, 30.389626, 29.467083>,  <32.620064, 30.549713, 29.872244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339722, 30.389626, 29.467083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117687, 30.058649, 29.433088>,  <32.984467, 29.860064, 29.412691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117687, 30.058649, 29.433088>,  <33.339722, 30.389626, 29.467083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117687, 30.058649, 29.433088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534322, -0.276405, -0.798812,
		0.637478, -0.488819, 0.595548,
		-0.555087, -0.827440, -0.084985,
		32.951160, 29.810417, 29.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776123, 29.808588, 29.384382>,  <33.339722, 30.389626, 29.467083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776123, 29.808588, 29.384382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433056, 29.697105, 29.211531>,  <33.227215, 29.630217, 29.107821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433056, 29.697105, 29.211531>,  <33.776123, 29.808588, 29.384382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433056, 29.697105, 29.211531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513350, -0.415560, -0.750854,
		0.029693, -0.865814, 0.499485,
		-0.857665, -0.278706, -0.432126,
		33.175755, 29.613493, 29.081892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953617, 29.126057, 28.984064>,  <33.776123, 29.808588, 29.384382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953617, 29.126057, 28.984064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600544, 29.243238, 28.837072>,  <33.388699, 29.313547, 28.748877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600544, 29.243238, 28.837072>,  <33.953617, 29.126057, 28.984064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600544, 29.243238, 28.837072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275679, -0.310510, -0.909716,
		-0.380612, -0.904301, 0.193322,
		-0.882686, 0.292954, -0.367481,
		33.335739, 29.331125, 28.726828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805977, 28.556887, 28.529270>,  <33.953617, 29.126057, 28.984064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805977, 28.556887, 28.529270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577942, 28.869099, 28.426683>,  <33.441120, 29.056425, 28.365131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577942, 28.869099, 28.426683>,  <33.805977, 28.556887, 28.529270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577942, 28.869099, 28.426683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134342, -0.219398, -0.966342,
		-0.810526, -0.585354, 0.020219,
		-0.570088, 0.780529, -0.256465,
		33.406914, 29.103258, 28.349743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330227, 28.270069, 27.918226>,  <33.805977, 28.556887, 28.529270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330227, 28.270069, 27.918226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328648, 28.669281, 27.893171>,  <33.327702, 28.908808, 27.878138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328648, 28.669281, 27.893171>,  <33.330227, 28.270069, 27.918226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328648, 28.669281, 27.893171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117462, -0.061742, -0.991156,
		-0.993069, -0.011271, -0.116987,
		-0.003948, 0.998028, -0.062638,
		33.327461, 28.968689, 27.874380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980862, 28.294277, 27.348597>,  <33.330227, 28.270069, 27.918226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980862, 28.294277, 27.348597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141117, 28.660025, 27.371998>,  <33.237270, 28.879473, 27.386038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141117, 28.660025, 27.371998>,  <32.980862, 28.294277, 27.348597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141117, 28.660025, 27.371998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205850, -0.027607, -0.978194,
		-0.892815, 0.403941, -0.199283,
		0.400634, 0.914368, 0.058503,
		33.261307, 28.934336, 27.389549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678192, 28.731369, 26.801058>,  <32.980862, 28.294277, 27.348597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678192, 28.731369, 26.801058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028301, 28.893988, 26.905830>,  <33.238369, 28.991560, 26.968695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028301, 28.893988, 26.905830>,  <32.678192, 28.731369, 26.801058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028301, 28.893988, 26.905830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284866, 0.004282, -0.958558,
		-0.390822, 0.913619, -0.112063,
		0.875277, 0.406548, 0.261933,
		33.290886, 29.015953, 26.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844936, 29.264204, 26.240217>,  <32.678192, 28.731369, 26.801058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844936, 29.264204, 26.240217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192013, 29.205318, 26.430138>,  <33.400257, 29.169987, 26.544090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192013, 29.205318, 26.430138>,  <32.844936, 29.264204, 26.240217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192013, 29.205318, 26.430138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472191, -0.054485, -0.879811,
		0.155391, 0.987603, 0.022238,
		0.867692, -0.147215, 0.474803,
		33.452320, 29.161154, 26.572578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227654, 29.740376, 25.953857>,  <32.844936, 29.264204, 26.240217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227654, 29.740376, 25.953857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464104, 29.445320, 26.084372>,  <33.605972, 29.268286, 26.162680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464104, 29.445320, 26.084372>,  <33.227654, 29.740376, 25.953857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464104, 29.445320, 26.084372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581064, 0.108882, -0.806541,
		0.559410, 0.666357, 0.492979,
		0.591121, -0.737640, 0.326287,
		33.641441, 29.224028, 26.182257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854221, 29.872086, 25.627640>,  <33.227654, 29.740376, 25.953857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854221, 29.872086, 25.627640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889858, 29.500179, 25.770521>,  <33.911240, 29.277035, 25.856251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889858, 29.500179, 25.770521>,  <33.854221, 29.872086, 25.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889858, 29.500179, 25.770521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663721, -0.211982, -0.717313,
		0.742655, 0.300993, 0.598219,
		0.089095, -0.929767, 0.357205,
		33.916588, 29.221249, 25.877682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538239, 29.705772, 25.602369>,  <33.854221, 29.872086, 25.627640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538239, 29.705772, 25.602369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369949, 29.344049, 25.573456>,  <34.268978, 29.127016, 25.556107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369949, 29.344049, 25.573456>,  <34.538239, 29.705772, 25.602369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369949, 29.344049, 25.573456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586998, -0.210609, -0.781714,
		0.691686, -0.371313, 0.619434,
		-0.420719, -0.904307, -0.072285,
		34.243732, 29.072758, 25.551771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128185, 29.226271, 25.444550>,  <34.538239, 29.705772, 25.602369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128185, 29.226271, 25.444550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796474, 29.024857, 25.347601>,  <34.597446, 28.904007, 25.289433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796474, 29.024857, 25.347601>,  <35.128185, 29.226271, 25.444550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796474, 29.024857, 25.347601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483150, -0.428085, -0.763747,
		0.280819, -0.750462, 0.598287,
		-0.829281, -0.503537, -0.242371,
		34.547691, 28.873795, 25.274889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197048, 28.526947, 25.498110>,  <35.128185, 29.226271, 25.444550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197048, 28.526947, 25.498110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899448, 28.590876, 25.238594>,  <34.720890, 28.629232, 25.082886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899448, 28.590876, 25.238594>,  <35.197048, 28.526947, 25.498110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899448, 28.590876, 25.238594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478825, -0.549707, -0.684507,
		-0.466039, -0.819927, 0.332456,
		-0.743999, 0.159819, -0.648786,
		34.676250, 28.638823, 25.043959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315701, 28.023911, 25.077721>,  <35.197048, 28.526947, 25.498110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315701, 28.023911, 25.077721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054993, 28.248701, 24.874004>,  <34.898567, 28.383575, 24.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054993, 28.248701, 24.874004>,  <35.315701, 28.023911, 25.077721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054993, 28.248701, 24.874004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401045, -0.314570, -0.860354,
		-0.643708, -0.765000, -0.020352,
		-0.651769, 0.561979, -0.509291,
		34.859463, 28.417295, 24.721216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144947, 27.588001, 24.515312>,  <35.315701, 28.023911, 25.077721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144947, 27.588001, 24.515312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023323, 27.943697, 24.378605>,  <34.950348, 28.157114, 24.296581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023323, 27.943697, 24.378605>,  <35.144947, 27.588001, 24.515312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023323, 27.943697, 24.378605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406442, -0.203374, -0.890754,
		-0.861599, -0.409751, -0.299586,
		-0.304059, 0.889238, -0.341767,
		34.932106, 28.210468, 24.276075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782429, 27.405993, 23.989046>,  <35.144947, 27.588001, 24.515312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782429, 27.405993, 23.989046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897137, 27.784092, 23.926731>,  <34.965961, 28.010952, 23.889341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897137, 27.784092, 23.926731>,  <34.782429, 27.405993, 23.989046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897137, 27.784092, 23.926731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425356, -0.271341, -0.863392,
		-0.858391, 0.181330, -0.479880,
		0.286770, 0.945248, -0.155787,
		34.983166, 28.067667, 23.879995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646637, 27.488302, 23.248137>,  <34.782429, 27.405993, 23.989046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646637, 27.488302, 23.248137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900604, 27.766613, 23.382462>,  <35.052986, 27.933599, 23.463057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900604, 27.766613, 23.382462>,  <34.646637, 27.488302, 23.248137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900604, 27.766613, 23.382462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514767, -0.056869, -0.855442,
		-0.576098, 0.716005, -0.394269,
		0.634922, 0.695775, 0.335814,
		35.091080, 27.975346, 23.483206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751186, 27.959675, 22.657848>,  <34.646637, 27.488302, 23.248137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751186, 27.959675, 22.657848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057407, 28.004137, 22.911329>,  <35.241138, 28.030815, 23.063417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057407, 28.004137, 22.911329>,  <34.751186, 27.959675, 22.657848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057407, 28.004137, 22.911329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623212, 0.116539, -0.773321,
		-0.159809, 0.986946, 0.019943,
		0.765550, 0.111155, 0.633701,
		35.287071, 28.037483, 23.101440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163925, 28.643919, 22.476011>,  <34.751186, 27.959675, 22.657848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163925, 28.643919, 22.476011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429371, 28.412758, 22.666019>,  <35.588638, 28.274061, 22.780024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429371, 28.412758, 22.666019>,  <35.163925, 28.643919, 22.476011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429371, 28.412758, 22.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639710, 0.109217, -0.760817,
		0.387797, 0.808765, 0.442168,
		0.663615, -0.577902, 0.475021,
		35.628456, 28.239388, 22.808525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868149, 28.903013, 22.277557>,  <35.163925, 28.643919, 22.476011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868149, 28.903013, 22.277557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970856, 28.551537, 22.438541>,  <36.032478, 28.340651, 22.535131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970856, 28.551537, 22.438541>,  <35.868149, 28.903013, 22.277557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970856, 28.551537, 22.438541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834933, -0.008066, -0.550292,
		0.486783, 0.477324, 0.731576,
		0.256767, -0.878690, 0.402460,
		36.047886, 28.287930, 22.559280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539215, 29.015532, 22.517790>,  <35.868149, 28.903013, 22.277557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539215, 29.015532, 22.517790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506817, 28.621094, 22.459747>,  <36.487377, 28.384430, 22.424921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506817, 28.621094, 22.459747>,  <36.539215, 29.015532, 22.517790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506817, 28.621094, 22.459747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823003, 0.015958, -0.567813,
		0.562233, -0.165412, 0.810267,
		-0.080993, -0.986095, -0.145106,
		36.482517, 28.325266, 22.416216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108585, 28.762886, 22.784172>,  <36.539215, 29.015532, 22.517790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108585, 28.762886, 22.784172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995132, 28.463419, 22.544487>,  <36.927063, 28.283739, 22.400677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995132, 28.463419, 22.544487>,  <37.108585, 28.762886, 22.784172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995132, 28.463419, 22.544487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929338, -0.060555, -0.364230,
		0.236402, -0.660176, 0.712939,
		-0.283627, -0.748666, -0.599211,
		36.910046, 28.238819, 22.364723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677406, 28.256987, 22.819715>,  <37.108585, 28.762886, 22.784172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677406, 28.256987, 22.819715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457352, 28.198832, 22.490786>,  <37.325321, 28.163939, 22.293428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457352, 28.198832, 22.490786>,  <37.677406, 28.256987, 22.819715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457352, 28.198832, 22.490786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832765, -0.022277, -0.553179,
		0.062107, -0.989124, 0.133330,
		-0.550133, -0.145388, -0.822324,
		37.292313, 28.155216, 22.244089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966267, 27.739098, 22.496254>,  <37.677406, 28.256987, 22.819715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966267, 27.739098, 22.496254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756031, 27.936724, 22.219225>,  <37.629890, 28.055300, 22.053007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756031, 27.936724, 22.219225>,  <37.966267, 27.739098, 22.496254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756031, 27.936724, 22.219225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808977, 0.038310, -0.586591,
		-0.263283, -0.868579, -0.419825,
		-0.525584, 0.494068, -0.692574,
		37.598354, 28.084944, 22.011454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232319, 27.454590, 21.868202>,  <37.966267, 27.739098, 22.496254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232319, 27.454590, 21.868202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046242, 27.795887, 21.773907>,  <37.934593, 28.000666, 21.717329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046242, 27.795887, 21.773907>,  <38.232319, 27.454590, 21.868202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046242, 27.795887, 21.773907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756370, 0.244780, -0.606619,
		-0.459889, -0.460502, -0.759237,
		-0.465195, 0.853241, -0.235738,
		37.906685, 28.051859, 21.703186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196918, 27.522076, 21.038807>,  <38.232319, 27.454590, 21.868202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196918, 27.522076, 21.038807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150574, 27.885174, 21.200087>,  <38.122768, 28.103033, 21.296854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150574, 27.885174, 21.200087>,  <38.196918, 27.522076, 21.038807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150574, 27.885174, 21.200087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709384, 0.359756, -0.606094,
		-0.695234, 0.215801, -0.685624,
		-0.115862, 0.907748, 0.403200,
		38.115814, 28.157497, 21.321047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206142, 27.921741, 20.414175>,  <38.196918, 27.522076, 21.038807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206142, 27.921741, 20.414175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247372, 28.176332, 20.719927>,  <38.272110, 28.329086, 20.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247372, 28.176332, 20.719927>,  <38.206142, 27.921741, 20.414175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247372, 28.176332, 20.719927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699004, 0.500371, -0.510903,
		-0.707650, 0.586963, -0.393326,
		0.103073, 0.636477, 0.764377,
		38.278294, 28.367275, 20.949240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919395, 28.598099, 20.225428>,  <38.206142, 27.921741, 20.414175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919395, 28.598099, 20.225428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209099, 28.577099, 20.500439>,  <38.382919, 28.564499, 20.665445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209099, 28.577099, 20.500439>,  <37.919395, 28.598099, 20.225428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209099, 28.577099, 20.500439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613708, 0.503644, -0.608034,
		-0.314347, 0.862314, 0.396989,
		0.724257, -0.052502, 0.687528,
		38.426376, 28.561348, 20.706697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206963, 29.252510, 20.419365>,  <37.919395, 28.598099, 20.225428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206963, 29.252510, 20.419365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274323, 29.646215, 20.440792>,  <38.314739, 29.882439, 20.453648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274323, 29.646215, 20.440792>,  <38.206963, 29.252510, 20.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274323, 29.646215, 20.440792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212177, 0.016873, -0.977086,
		-0.962612, 0.175907, -0.205996,
		0.168400, 0.984262, 0.053566,
		38.324841, 29.941494, 20.456861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877632, 29.615559, 19.889719>,  <38.206963, 29.252510, 20.419365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877632, 29.615559, 19.889719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170650, 29.871538, 19.982538>,  <38.346462, 30.025126, 20.038229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170650, 29.871538, 19.982538>,  <37.877632, 29.615559, 19.889719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170650, 29.871538, 19.982538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289852, 0.015201, -0.956951,
		-0.615927, 0.768267, -0.174355,
		0.732544, 0.639949, 0.232046,
		38.390415, 30.063522, 20.052153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879444, 30.405952, 19.529934>,  <37.877632, 29.615559, 19.889719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879444, 30.405952, 19.529934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246590, 30.284136, 19.631742>,  <38.466877, 30.211046, 19.692827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246590, 30.284136, 19.631742>,  <37.879444, 30.405952, 19.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246590, 30.284136, 19.631742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272069, 0.015876, -0.962147,
		0.288973, 0.952367, 0.097428,
		0.917863, -0.304541, 0.254522,
		38.521950, 30.192774, 19.708099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078419, 30.700790, 18.913677>,  <37.879444, 30.405952, 19.529934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078419, 30.700790, 18.913677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346298, 30.479277, 19.111595>,  <38.507027, 30.346369, 19.230345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346298, 30.479277, 19.111595>,  <38.078419, 30.700790, 18.913677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346298, 30.479277, 19.111595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587397, -0.012650, -0.809200,
		0.454382, 0.832564, 0.316820,
		0.669703, -0.553785, 0.494793,
		38.547211, 30.313141, 19.260033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761173, 31.069242, 19.134359>,  <38.078419, 30.700790, 18.913677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761173, 31.069242, 19.134359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795887, 30.684656, 19.030010>,  <38.816715, 30.453905, 18.967402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795887, 30.684656, 19.030010>,  <38.761173, 31.069242, 19.134359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795887, 30.684656, 19.030010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750350, 0.235337, -0.617731,
		0.655319, -0.142134, 0.741859,
		0.086787, -0.961465, -0.260871,
		38.821922, 30.396217, 18.951750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405460, 30.554691, 19.349207>,  <38.761173, 31.069242, 19.134359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405460, 30.554691, 19.349207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247936, 30.457743, 18.994543>,  <39.153419, 30.399574, 18.781744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247936, 30.457743, 18.994543>,  <39.405460, 30.554691, 19.349207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247936, 30.457743, 18.994543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874795, 0.197336, -0.442485,
		0.282216, -0.949903, 0.134312,
		-0.393813, -0.242372, -0.886661,
		39.129791, 30.385031, 18.728544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710114, 30.286013, 19.989212>,  <39.405460, 30.554691, 19.349207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710114, 30.286013, 19.989212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320950, 30.322098, 19.904076>,  <39.087452, 30.343750, 19.852993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320950, 30.322098, 19.904076>,  <39.710114, 30.286013, 19.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320950, 30.322098, 19.904076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200815, 0.126271, 0.971457,
		0.114516, 0.987885, -0.104734,
		-0.972913, 0.090215, -0.212842,
		39.029076, 30.349163, 19.840223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409168, 30.757965, 20.423536>,  <39.710114, 30.286013, 19.989212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409168, 30.757965, 20.423536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065186, 30.583975, 20.316750>,  <38.858795, 30.479582, 20.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065186, 30.583975, 20.316750>,  <39.409168, 30.757965, 20.423536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065186, 30.583975, 20.316750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366857, 0.163185, 0.915853,
		-0.354807, 0.885533, -0.299905,
		-0.859958, -0.434973, -0.266965,
		38.807198, 30.453484, 20.236660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772987, 31.181452, 20.633207>,  <39.409168, 30.757965, 20.423536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772987, 31.181452, 20.633207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635525, 30.809826, 20.578451>,  <38.553047, 30.586851, 20.545597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635525, 30.809826, 20.578451>,  <38.772987, 31.181452, 20.633207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635525, 30.809826, 20.578451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581841, 0.096228, 0.807589,
		-0.737131, 0.357181, -0.573638,
		-0.343655, -0.929065, -0.136890,
		38.532429, 30.531107, 20.537384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003540, 31.213533, 20.561462>,  <38.772987, 31.181452, 20.633207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003540, 31.213533, 20.561462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077038, 30.848320, 20.707125>,  <38.121136, 30.629192, 20.794521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077038, 30.848320, 20.707125>,  <38.003540, 31.213533, 20.561462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077038, 30.848320, 20.707125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533156, 0.218666, 0.817270,
		-0.825822, -0.344321, -0.446611,
		0.183744, -0.913033, 0.364156,
		38.132160, 30.574409, 20.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319149, 31.001059, 20.719212>,  <38.003540, 31.213533, 20.561462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319149, 31.001059, 20.719212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608326, 30.794460, 20.902773>,  <37.781830, 30.670502, 21.012909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608326, 30.794460, 20.902773>,  <37.319149, 31.001059, 20.719212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608326, 30.794460, 20.902773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460434, 0.135060, 0.877359,
		-0.515133, -0.845571, -0.140173,
		0.722938, -0.516497, 0.458903,
		37.825207, 30.639511, 21.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879879, 30.505461, 21.039631>,  <37.319149, 31.001059, 20.719212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879879, 30.505461, 21.039631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219509, 30.489729, 21.250355>,  <37.423286, 30.480289, 21.376789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219509, 30.489729, 21.250355>,  <36.879879, 30.505461, 21.039631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219509, 30.489729, 21.250355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509372, 0.203419, 0.836158,
		-0.140050, -0.978302, 0.152683,
		0.849074, -0.039332, 0.526808,
		37.474232, 30.477930, 21.408398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787338, 30.178911, 21.725983>,  <36.879879, 30.505461, 21.039631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787338, 30.178911, 21.725983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122665, 30.385084, 21.797039>,  <37.323860, 30.508787, 21.839672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122665, 30.385084, 21.797039>,  <36.787338, 30.178911, 21.725983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122665, 30.385084, 21.797039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324379, 0.209686, 0.922394,
		0.438184, -0.830879, 0.342979,
		0.838316, 0.515433, 0.177639,
		37.374161, 30.539713, 21.850330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163715, 30.012180, 22.350178>,  <36.787338, 30.178911, 21.725983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163715, 30.012180, 22.350178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309109, 30.379553, 22.287743>,  <37.396343, 30.599977, 22.250282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309109, 30.379553, 22.287743>,  <37.163715, 30.012180, 22.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309109, 30.379553, 22.287743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451591, 0.320251, 0.832769,
		0.814830, -0.232208, 0.531161,
		0.363481, 0.918433, -0.156087,
		37.418152, 30.655083, 22.240917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214058, 30.235737, 23.123629>,  <37.163715, 30.012180, 22.350178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214058, 30.235737, 23.123629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276409, 30.580503, 22.930630>,  <37.313820, 30.787363, 22.814831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276409, 30.580503, 22.930630>,  <37.214058, 30.235737, 23.123629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276409, 30.580503, 22.930630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503282, 0.489613, 0.712030,
		0.849946, 0.131842, 0.510107,
		0.155880, 0.861915, -0.482498,
		37.323174, 30.839077, 22.785881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613453, 30.714428, 23.523970>,  <37.214058, 30.235737, 23.123629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613453, 30.714428, 23.523970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414513, 30.951773, 23.270811>,  <37.295147, 31.094179, 23.118916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414513, 30.951773, 23.270811>,  <37.613453, 30.714428, 23.523970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414513, 30.951773, 23.270811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354358, 0.526949, 0.772499,
		0.791878, 0.608477, -0.051816,
		-0.497352, 0.593364, -0.632899,
		37.265308, 31.129782, 23.080942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674118, 31.375240, 23.833797>,  <37.613453, 30.714428, 23.523970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674118, 31.375240, 23.833797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363163, 31.409704, 23.584558>,  <37.176590, 31.430382, 23.435015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363163, 31.409704, 23.584558>,  <37.674118, 31.375240, 23.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363163, 31.409704, 23.584558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504937, 0.505252, 0.699828,
		0.375118, 0.858660, -0.349270,
		-0.777384, 0.086159, -0.623098,
		37.129948, 31.435553, 23.397629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388763, 32.109840, 23.968475>,  <37.674118, 31.375240, 23.833797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388763, 32.109840, 23.968475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108547, 31.914253, 23.760571>,  <36.940418, 31.796902, 23.635828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108547, 31.914253, 23.760571>,  <37.388763, 32.109840, 23.968475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108547, 31.914253, 23.760571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706206, 0.370364, 0.603410,
		-0.102545, 0.789774, -0.604767,
		-0.700541, -0.488967, -0.519764,
		36.898384, 31.767563, 23.604641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868008, 32.461620, 24.089630>,  <37.388763, 32.109840, 23.968475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868008, 32.461620, 24.089630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663414, 32.149544, 23.945583>,  <36.540657, 31.962297, 23.859156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663414, 32.149544, 23.945583>,  <36.868008, 32.461620, 24.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663414, 32.149544, 23.945583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782209, 0.249256, 0.570982,
		-0.355714, 0.573735, -0.737764,
		-0.511485, -0.780192, -0.360117,
		36.509968, 31.915485, 23.837547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127010, 32.721657, 23.839996>,  <36.868008, 32.461620, 24.089630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127010, 32.721657, 23.839996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102318, 32.327023, 23.900454>,  <36.087502, 32.090244, 23.936728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102318, 32.327023, 23.900454>,  <36.127010, 32.721657, 23.839996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102318, 32.327023, 23.900454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881089, 0.125014, 0.456130,
		-0.468904, -0.105013, -0.876984,
		-0.061735, -0.986582, 0.151145,
		36.083797, 32.031048, 23.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428745, 32.546551, 23.797224>,  <36.127010, 32.721657, 23.839996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428745, 32.546551, 23.797224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606953, 32.234791, 23.973429>,  <35.713879, 32.047737, 24.079151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606953, 32.234791, 23.973429>,  <35.428745, 32.546551, 23.797224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606953, 32.234791, 23.973429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739542, -0.043078, 0.671730,
		-0.504568, -0.625048, -0.595589,
		0.445520, -0.779397, 0.440514,
		35.740608, 32.000973, 24.105583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904129, 32.099312, 24.052885>,  <35.428745, 32.546551, 23.797224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904129, 32.099312, 24.052885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226982, 32.026810, 24.277630>,  <35.420692, 31.983309, 24.412477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226982, 32.026810, 24.277630>,  <34.904129, 32.099312, 24.052885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226982, 32.026810, 24.277630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581338, -0.078136, 0.809902,
		-0.102907, -0.980325, -0.168442,
		0.807129, -0.181266, 0.561859,
		35.469120, 31.972435, 24.446188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753056, 31.485624, 24.424198>,  <34.904129, 32.099312, 24.052885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753056, 31.485624, 24.424198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057613, 31.649418, 24.625237>,  <35.240349, 31.747694, 24.745859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057613, 31.649418, 24.625237>,  <34.753056, 31.485624, 24.424198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057613, 31.649418, 24.625237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457283, -0.210308, 0.864097,
		0.459533, -0.887746, 0.027122,
		0.761395, 0.409483, 0.502595,
		35.286034, 31.772263, 24.776014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913120, 30.922235, 24.922585>,  <34.753056, 31.485624, 24.424198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913120, 30.922235, 24.922585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064743, 31.270584, 25.047737>,  <35.155716, 31.479593, 25.122828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064743, 31.270584, 25.047737>,  <34.913120, 30.922235, 24.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064743, 31.270584, 25.047737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336961, -0.184999, 0.923164,
		0.861841, -0.455364, 0.223324,
		0.379061, 0.870872, 0.312880,
		35.178463, 31.531845, 25.141602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045662, 30.778358, 25.636181>,  <34.913120, 30.922235, 24.922585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045662, 30.778358, 25.636181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032780, 31.176638, 25.601427>,  <35.025051, 31.415606, 25.580574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032780, 31.176638, 25.601427>,  <35.045662, 30.778358, 25.636181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032780, 31.176638, 25.601427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460324, 0.062386, 0.885556,
		0.887167, 0.068512, 0.456334,
		-0.032203, 0.995697, -0.086885,
		35.023117, 31.475348, 25.575361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308140, 31.016336, 26.290726>,  <35.045662, 30.778358, 25.636181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308140, 31.016336, 26.290726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115047, 31.336952, 26.149584>,  <34.999191, 31.529322, 26.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115047, 31.336952, 26.149584>,  <35.308140, 31.016336, 26.290726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115047, 31.336952, 26.149584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494534, 0.083033, 0.865183,
		0.722775, 0.592151, 0.356305,
		-0.482734, 0.801538, -0.352853,
		34.970226, 31.577414, 26.043728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313427, 31.472860, 26.792591>,  <35.308140, 31.016336, 26.290726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313427, 31.472860, 26.792591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029190, 31.638426, 26.565002>,  <34.858646, 31.737764, 26.428450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029190, 31.638426, 26.565002>,  <35.313427, 31.472860, 26.792591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029190, 31.638426, 26.565002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568737, 0.138182, 0.810829,
		0.414235, 0.899767, 0.137217,
		-0.710597, 0.413914, -0.568970,
		34.816010, 31.762600, 26.394312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161907, 32.208179, 27.039515>,  <35.313427, 31.472860, 26.792591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161907, 32.208179, 27.039515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854012, 32.055981, 26.834486>,  <34.669273, 31.964663, 26.711470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854012, 32.055981, 26.834486>,  <35.161907, 32.208179, 27.039515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854012, 32.055981, 26.834486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559686, 0.016085, 0.828549,
		-0.307013, 0.924643, -0.225339,
		-0.769737, -0.380494, -0.512572,
		34.623089, 31.941832, 26.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686543, 32.660965, 27.260689>,  <35.161907, 32.208179, 27.039515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686543, 32.660965, 27.260689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471359, 32.377083, 27.078735>,  <34.342247, 32.206753, 26.969564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471359, 32.377083, 27.078735>,  <34.686543, 32.660965, 27.260689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471359, 32.377083, 27.078735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748449, 0.153857, 0.645098,
		-0.387841, 0.687495, -0.613946,
		-0.537962, -0.709703, -0.454883,
		34.309971, 32.164173, 26.942270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102966, 33.011127, 27.188223>,  <34.686543, 32.660965, 27.260689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102966, 33.011127, 27.188223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018093, 32.622437, 27.146799>,  <33.967171, 32.389221, 27.121944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018093, 32.622437, 27.146799>,  <34.102966, 33.011127, 27.188223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018093, 32.622437, 27.146799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721317, 0.084238, 0.687463,
		-0.659303, 0.220566, -0.718797,
		-0.212181, -0.971727, -0.103560,
		33.954437, 32.330917, 27.115732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372040, 32.957359, 27.194111>,  <34.102966, 33.011127, 27.188223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372040, 32.957359, 27.194111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504593, 32.595177, 27.300198>,  <33.584126, 32.377869, 27.363850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504593, 32.595177, 27.300198>,  <33.372040, 32.957359, 27.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504593, 32.595177, 27.300198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603717, 0.012525, 0.797100,
		-0.725059, -0.424260, -0.542487,
		0.331383, -0.905454, 0.265215,
		33.604008, 32.323540, 27.379763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751560, 32.611065, 27.353407>,  <33.372040, 32.957359, 27.194111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751560, 32.611065, 27.353407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061314, 32.420677, 27.520157>,  <33.247166, 32.306442, 27.620207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061314, 32.420677, 27.520157>,  <32.751560, 32.611065, 27.353407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061314, 32.420677, 27.520157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547387, -0.173522, 0.818693,
		-0.317341, -0.862170, -0.394914,
		0.774379, -0.475975, 0.416875,
		33.293629, 32.277885, 27.645220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445129, 32.059818, 27.556255>,  <32.751560, 32.611065, 27.353407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445129, 32.059818, 27.556255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777393, 32.070274, 27.778723>,  <32.976749, 32.076550, 27.912203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777393, 32.070274, 27.778723>,  <32.445129, 32.059818, 27.556255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777393, 32.070274, 27.778723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548571, -0.132520, 0.825535,
		0.095288, -0.990835, -0.095736,
		0.830656, 0.026145, 0.556171,
		33.026588, 32.078117, 27.945574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273045, 31.544060, 28.041647>,  <32.445129, 32.059818, 27.556255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273045, 31.544060, 28.041647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552372, 31.790224, 28.187864>,  <32.719971, 31.937922, 28.275595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552372, 31.790224, 28.187864>,  <32.273045, 31.544060, 28.041647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552372, 31.790224, 28.187864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484699, 0.030776, 0.874140,
		0.526704, -0.787607, 0.319780,
		0.698320, 0.615409, 0.365542,
		32.761868, 31.974846, 28.297527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450119, 31.289244, 28.759836>,  <32.273045, 31.544060, 28.041647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450119, 31.289244, 28.759836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585060, 31.665415, 28.742916>,  <32.666023, 31.891117, 28.732763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585060, 31.665415, 28.742916>,  <32.450119, 31.289244, 28.759836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585060, 31.665415, 28.742916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327976, 0.159536, 0.931118,
		0.882397, -0.300241, 0.362257,
		0.337353, 0.940427, -0.042303,
		32.686268, 31.947542, 28.730225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717499, 31.422285, 29.476244>,  <32.450119, 31.289244, 28.759836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717499, 31.422285, 29.476244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675354, 31.792114, 29.329788>,  <32.650066, 32.014011, 29.241915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675354, 31.792114, 29.329788>,  <32.717499, 31.422285, 29.476244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675354, 31.792114, 29.329788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277057, 0.326318, 0.903746,
		0.955059, 0.196665, 0.221777,
		-0.105366, 0.924575, -0.366141,
		32.643745, 32.069489, 29.219946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046284, 31.911079, 29.972925>,  <32.717499, 31.422285, 29.476244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046284, 31.911079, 29.972925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784386, 32.113888, 29.748697>,  <32.627247, 32.235573, 29.614161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784386, 32.113888, 29.748697>,  <33.046284, 31.911079, 29.972925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784386, 32.113888, 29.748697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307963, 0.498345, 0.810439,
		0.690268, 0.703265, -0.170144,
		-0.654744, 0.507021, -0.560571,
		32.587963, 32.265995, 29.580526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172546, 32.581909, 30.246571>,  <33.046284, 31.911079, 29.972925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172546, 32.581909, 30.246571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808254, 32.558899, 30.082981>,  <32.589680, 32.545094, 29.984827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808254, 32.558899, 30.082981>,  <33.172546, 32.581909, 30.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808254, 32.558899, 30.082981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378953, 0.510102, 0.772134,
		0.164201, 0.858188, -0.486365,
		-0.910732, -0.057524, -0.408973,
		32.535034, 32.541641, 29.960289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888680, 33.281288, 30.252037>,  <33.172546, 32.581909, 30.246571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888680, 33.281288, 30.252037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591942, 33.014297, 30.226301>,  <32.413898, 32.854103, 30.210859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591942, 33.014297, 30.226301>,  <32.888680, 33.281288, 30.252037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591942, 33.014297, 30.226301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479211, 0.460580, 0.747143,
		-0.469068, 0.585097, -0.661541,
		-0.741844, -0.667479, -0.064341,
		32.369389, 32.814053, 30.206999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267395, 33.682926, 30.305542>,  <32.888680, 33.281288, 30.252037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267395, 33.682926, 30.305542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161140, 33.305931, 30.386694>,  <32.097389, 33.079735, 30.435385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161140, 33.305931, 30.386694>,  <32.267395, 33.682926, 30.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161140, 33.305931, 30.386694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459333, 0.308747, 0.832880,
		-0.847615, 0.128053, -0.514928,
		-0.265635, -0.942485, 0.202880,
		32.081451, 33.023186, 30.447557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535749, 33.653488, 30.341988>,  <32.267395, 33.682926, 30.305542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535749, 33.653488, 30.341988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672806, 33.338390, 30.546755>,  <31.755039, 33.149330, 30.669615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672806, 33.338390, 30.546755>,  <31.535749, 33.653488, 30.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672806, 33.338390, 30.546755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435193, 0.349823, 0.829597,
		-0.832590, -0.507035, -0.222958,
		0.342639, -0.787743, 0.511918,
		31.775597, 33.102066, 30.700331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049225, 33.576157, 30.910547>,  <31.535749, 33.653488, 30.341988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049225, 33.576157, 30.910547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346741, 33.343994, 31.043154>,  <31.525249, 33.204697, 31.122717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346741, 33.343994, 31.043154>,  <31.049225, 33.576157, 30.910547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346741, 33.343994, 31.043154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312821, 0.136039, 0.940019,
		-0.590696, -0.802880, -0.080380,
		0.743788, -0.580411, 0.331516,
		31.569878, 33.169872, 31.142609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771362, 33.328991, 31.483006>,  <31.049225, 33.576157, 30.910547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771362, 33.328991, 31.483006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156469, 33.236485, 31.539000>,  <31.387533, 33.180981, 31.572596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156469, 33.236485, 31.539000>,  <30.771362, 33.328991, 31.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156469, 33.236485, 31.539000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121708, 0.091559, 0.988334,
		-0.241385, -0.968572, 0.060003,
		0.962767, -0.231266, 0.139984,
		31.445299, 33.167107, 31.580996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731871, 32.781319, 31.975700>,  <30.771362, 33.328991, 31.483006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731871, 32.781319, 31.975700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104818, 32.925560, 31.985937>,  <31.328587, 33.012104, 31.992079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104818, 32.925560, 31.985937>,  <30.731871, 32.781319, 31.975700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104818, 32.925560, 31.985937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079347, 0.135063, 0.987655,
		0.352697, -0.922888, 0.154541,
		0.932368, 0.360605, 0.025592,
		31.384529, 33.033741, 31.993614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048149, 32.458164, 32.562729>,  <30.731871, 32.781319, 31.975700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048149, 32.458164, 32.562729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249449, 32.795418, 32.486984>,  <31.370230, 32.997772, 32.441536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249449, 32.795418, 32.486984>,  <31.048149, 32.458164, 32.562729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249449, 32.795418, 32.486984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060058, 0.184477, 0.981000,
		0.862051, -0.505061, 0.042201,
		0.503250, 0.843138, -0.189362,
		31.400423, 33.048359, 32.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577501, 32.472446, 33.097515>,  <31.048149, 32.458164, 32.562729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577501, 32.472446, 33.097515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549860, 32.847080, 32.960091>,  <31.533276, 33.071861, 32.877636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549860, 32.847080, 32.960091>,  <31.577501, 32.472446, 33.097515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549860, 32.847080, 32.960091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049682, 0.347186, 0.936479,
		0.996372, 0.047647, -0.070523,
		-0.069105, 0.936585, -0.343559,
		31.529129, 33.128056, 32.857021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022762, 32.794395, 33.502106>,  <31.577501, 32.472446, 33.097515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022762, 32.794395, 33.502106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749897, 33.058502, 33.376438>,  <31.586178, 33.216965, 33.301037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749897, 33.058502, 33.376438>,  <32.022762, 32.794395, 33.502106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749897, 33.058502, 33.376438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183824, 0.261002, 0.947674,
		0.707712, 0.704224, -0.056675,
		-0.682167, 0.660263, -0.314168,
		31.545246, 33.256580, 33.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125420, 33.520973, 33.778316>,  <32.022762, 32.794395, 33.502106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125420, 33.520973, 33.778316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742521, 33.459820, 33.680084>,  <31.512783, 33.423130, 33.621147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742521, 33.459820, 33.680084>,  <32.125420, 33.520973, 33.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742521, 33.459820, 33.680084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267401, 0.143789, 0.952797,
		-0.110354, 0.977728, -0.178522,
		-0.957245, -0.152881, -0.245578,
		31.455347, 33.413956, 33.606411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547634, 33.645576, 34.321754>,  <32.125420, 33.520973, 33.778316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547634, 33.645576, 34.321754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839935, 33.668350, 34.593861>,  <33.015316, 33.682014, 34.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839935, 33.668350, 34.593861>,  <32.547634, 33.645576, 34.321754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839935, 33.668350, 34.593861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631307, 0.322756, -0.705181,
		-0.259710, 0.944768, 0.199910,
		0.730754, 0.056938, 0.680262,
		33.059162, 33.685432, 34.797939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828999, 34.275669, 34.258205>,  <32.547634, 33.645576, 34.321754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828999, 34.275669, 34.258205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128002, 34.070316, 34.426811>,  <33.307404, 33.947105, 34.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128002, 34.070316, 34.426811>,  <32.828999, 34.275669, 34.258205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128002, 34.070316, 34.426811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620768, 0.314071, -0.718336,
		0.236400, 0.798620, 0.553463,
		0.747504, -0.513386, 0.421511,
		33.352253, 33.916302, 34.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402596, 34.711018, 34.296478>,  <32.828999, 34.275669, 34.258205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402596, 34.711018, 34.296478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579105, 34.354797, 34.340656>,  <33.685009, 34.141064, 34.367161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579105, 34.354797, 34.340656>,  <33.402596, 34.711018, 34.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579105, 34.354797, 34.340656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711210, 0.272019, -0.648217,
		0.547229, 0.364588, 0.753403,
		0.441272, -0.890551, 0.110442,
		33.711487, 34.087631, 34.373787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055916, 34.816105, 34.426556>,  <33.402596, 34.711018, 34.296478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055916, 34.816105, 34.426556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023544, 34.460640, 34.246010>,  <34.004124, 34.247360, 34.137680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023544, 34.460640, 34.246010>,  <34.055916, 34.816105, 34.426556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023544, 34.460640, 34.246010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528094, 0.345838, -0.775572,
		0.845321, -0.301128, 0.441309,
		-0.080925, -0.888661, -0.451368,
		33.999268, 34.194042, 34.110600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801277, 34.608147, 34.169949>,  <34.055916, 34.816105, 34.426556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801277, 34.608147, 34.169949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557709, 34.359116, 33.973331>,  <34.411568, 34.209698, 33.855362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557709, 34.359116, 33.973331>,  <34.801277, 34.608147, 34.169949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557709, 34.359116, 33.973331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579212, 0.074414, -0.811774,
		0.541966, -0.779015, 0.315290,
		-0.608922, -0.622574, -0.491545,
		34.375031, 34.172344, 33.825867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222424, 34.065407, 33.883030>,  <34.801277, 34.608147, 34.169949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222424, 34.065407, 33.883030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896099, 34.072418, 33.651810>,  <34.700306, 34.076626, 33.513077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896099, 34.072418, 33.651810>,  <35.222424, 34.065407, 33.883030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896099, 34.072418, 33.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578127, -0.001015, -0.815946,
		-0.014894, -0.999845, -0.009310,
		-0.815811, 0.017535, -0.578053,
		34.651356, 34.077675, 33.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357872, 33.729359, 33.277348>,  <35.222424, 34.065407, 33.883030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357872, 33.729359, 33.277348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050995, 33.949627, 33.145790>,  <34.866867, 34.081787, 33.066856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050995, 33.949627, 33.145790>,  <35.357872, 33.729359, 33.277348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050995, 33.949627, 33.145790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399901, 0.009742, -0.916507,
		-0.501493, -0.834664, -0.227689,
		-0.767193, 0.550674, -0.328897,
		34.820839, 34.114830, 33.047119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114365, 33.329575, 32.663784>,  <35.357872, 33.729359, 33.277348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114365, 33.329575, 32.663784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987400, 33.706978, 32.625751>,  <34.911221, 33.933418, 32.602932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987400, 33.706978, 32.625751>,  <35.114365, 33.329575, 32.663784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987400, 33.706978, 32.625751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505154, 0.083382, -0.858992,
		-0.802538, -0.320687, -0.503084,
		-0.317416, 0.943508, -0.095079,
		34.892174, 33.990028, 32.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000729, 33.381840, 32.080357>,  <35.114365, 33.329575, 32.663784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000729, 33.381840, 32.080357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974957, 33.778465, 32.125336>,  <34.959492, 34.016441, 32.152325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974957, 33.778465, 32.125336>,  <35.000729, 33.381840, 32.080357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974957, 33.778465, 32.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336354, 0.127670, -0.933041,
		-0.939529, -0.022294, -0.341744,
		-0.064432, 0.991566, 0.112451,
		34.955627, 34.075935, 32.159069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531857, 33.627464, 31.523088>,  <35.000729, 33.381840, 32.080357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531857, 33.627464, 31.523088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787163, 33.907814, 31.650459>,  <34.940346, 34.076023, 31.726883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787163, 33.907814, 31.650459>,  <34.531857, 33.627464, 31.523088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787163, 33.907814, 31.650459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239848, 0.212001, -0.947380,
		-0.731501, 0.681051, -0.032791,
		0.638262, 0.700874, 0.318428,
		34.978642, 34.118076, 31.745987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491676, 34.171497, 31.009983>,  <34.531857, 33.627464, 31.523088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491676, 34.171497, 31.009983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849281, 34.229881, 31.179422>,  <35.063843, 34.264912, 31.281086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849281, 34.229881, 31.179422>,  <34.491676, 34.171497, 31.009983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849281, 34.229881, 31.179422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408822, 0.121081, -0.904546,
		-0.183317, 0.981853, 0.048576,
		0.894013, 0.145960, 0.423599,
		35.117485, 34.273670, 31.306501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834908, 34.736912, 30.540720>,  <34.491676, 34.171497, 31.009983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834908, 34.736912, 30.540720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124702, 34.553009, 30.746145>,  <35.298580, 34.442669, 30.869400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124702, 34.553009, 30.746145>,  <34.834908, 34.736912, 30.540720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124702, 34.553009, 30.746145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633024, 0.148956, -0.759666,
		0.272761, 0.875465, 0.398952,
		0.724487, -0.459754, 0.513561,
		35.342049, 34.415085, 30.900213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390804, 35.104408, 30.326122>,  <34.834908, 34.736912, 30.540720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390804, 35.104408, 30.326122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507339, 34.749557, 30.469305>,  <35.577263, 34.536648, 30.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507339, 34.749557, 30.469305>,  <35.390804, 35.104408, 30.326122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507339, 34.749557, 30.469305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449034, -0.203584, -0.870013,
		0.844682, 0.414207, 0.339036,
		0.291343, -0.887123, 0.357957,
		35.594742, 34.483421, 30.576693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971752, 35.004635, 29.960781>,  <35.390804, 35.104408, 30.326122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971752, 35.004635, 29.960781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898434, 34.643703, 30.116831>,  <35.854443, 34.427143, 30.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898434, 34.643703, 30.116831>,  <35.971752, 35.004635, 29.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898434, 34.643703, 30.116831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336971, -0.430477, -0.837341,
		0.923500, -0.022022, 0.382966,
		-0.183298, -0.902333, 0.390125,
		35.843445, 34.373005, 30.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587158, 34.699253, 29.933693>,  <35.971752, 35.004635, 29.960781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587158, 34.699253, 29.933693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293903, 34.427288, 29.927671>,  <36.117950, 34.264107, 29.924059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293903, 34.427288, 29.927671>,  <36.587158, 34.699253, 29.933693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293903, 34.427288, 29.927671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367879, -0.377864, -0.849638,
		0.571995, -0.628436, 0.527153,
		-0.733135, -0.679917, -0.015052,
		36.073963, 34.223312, 29.923157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906189, 34.108906, 29.865707>,  <36.587158, 34.699253, 29.933693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906189, 34.108906, 29.865707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531937, 34.000534, 29.775213>,  <36.307384, 33.935509, 29.720917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531937, 34.000534, 29.775213>,  <36.906189, 34.108906, 29.865707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531937, 34.000534, 29.775213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328305, -0.432612, -0.839680,
		0.129625, -0.859908, 0.493715,
		-0.935635, -0.270933, -0.226235,
		36.251247, 33.919254, 29.707342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995468, 33.388332, 29.772713>,  <36.906189, 34.108906, 29.865707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995468, 33.388332, 29.772713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 33.517780, 29.591448>,  <36.463875, 33.595448, 29.482689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 33.517780, 29.591448>,  <36.995468, 33.388332, 29.772713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663223, 33.517780, 29.591448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289524, -0.444170, -0.847873,
		-0.475673, -0.835453, 0.275235,
		-0.830609, 0.323623, -0.453163,
		36.414040, 33.614864, 29.455500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716415, 32.829773, 29.407852>,  <36.995468, 33.388332, 29.772713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716415, 32.829773, 29.407852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514248, 33.125988, 29.230692>,  <36.392948, 33.303719, 29.124395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514248, 33.125988, 29.230692>,  <36.716415, 32.829773, 29.407852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514248, 33.125988, 29.230692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157459, -0.425512, -0.891149,
		-0.848388, -0.520139, 0.098456,
		-0.505416, 0.740537, -0.442900,
		36.362621, 33.348148, 29.097822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542850, 32.566261, 28.743616>,  <36.716415, 32.829773, 29.407852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542850, 32.566261, 28.743616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467945, 32.949783, 28.658184>,  <36.423004, 33.179897, 28.606924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467945, 32.949783, 28.658184>,  <36.542850, 32.566261, 28.743616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467945, 32.949783, 28.658184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063256, -0.205207, -0.976672,
		-0.980271, -0.196402, -0.022223,
		-0.187260, 0.958809, -0.213582,
		36.411766, 33.237427, 28.594109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899555, 32.632530, 28.283026>,  <36.542850, 32.566261, 28.743616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899555, 32.632530, 28.283026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156487, 32.929443, 28.206673>,  <36.310646, 33.107590, 28.160862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156487, 32.929443, 28.206673>,  <35.899555, 32.632530, 28.283026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156487, 32.929443, 28.206673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087570, -0.318499, -0.943870,
		-0.761411, 0.589558, -0.269582,
		0.642327, 0.742280, -0.190881,
		36.349186, 33.152126, 28.149408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676033, 33.017139, 27.671474>,  <35.899555, 32.632530, 28.283026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676033, 33.017139, 27.671474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070263, 33.026081, 27.738577>,  <36.306801, 33.031445, 27.778839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070263, 33.026081, 27.738577>,  <35.676033, 33.017139, 27.671474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070263, 33.026081, 27.738577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166112, -0.317474, -0.933605,
		0.032392, 0.948004, -0.316607,
		0.985575, 0.022351, 0.167758,
		36.365936, 33.032787, 27.788904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011524, 33.135609, 26.984249>,  <35.676033, 33.017139, 27.671474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011524, 33.135609, 26.984249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286556, 33.001472, 27.241861>,  <36.451576, 32.920990, 27.396429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286556, 33.001472, 27.241861>,  <36.011524, 33.135609, 26.984249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286556, 33.001472, 27.241861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541428, -0.354219, -0.762486,
		0.483823, 0.872968, -0.061990,
		0.687583, -0.335345, 0.644029,
		36.492832, 32.900867, 27.435070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676308, 33.429943, 26.697805>,  <36.011524, 33.135609, 26.984249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676308, 33.429943, 26.697805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751015, 33.119865, 26.939201>,  <36.795837, 32.933819, 27.084040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751015, 33.119865, 26.939201>,  <36.676308, 33.429943, 26.697805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751015, 33.119865, 26.939201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482036, -0.462955, -0.743851,
		0.856014, 0.429829, 0.287205,
		0.186765, -0.775190, 0.603489,
		36.807045, 32.887310, 27.120249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375023, 33.224529, 26.633007>,  <36.676308, 33.429943, 26.697805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375023, 33.224529, 26.633007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223801, 32.890411, 26.792686>,  <37.133068, 32.689941, 26.888494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223801, 32.890411, 26.792686>,  <37.375023, 33.224529, 26.633007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223801, 32.890411, 26.792686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498311, -0.547009, -0.672657,
		0.780232, -0.055373, 0.623034,
		-0.378052, -0.835293, 0.399201,
		37.110386, 32.639824, 26.912447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890011, 32.794807, 26.745071>,  <37.375023, 33.224529, 26.633007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890011, 32.794807, 26.745071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567513, 32.561371, 26.706316>,  <37.374012, 32.421310, 26.683062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567513, 32.561371, 26.706316>,  <37.890011, 32.794807, 26.745071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567513, 32.561371, 26.706316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468392, -0.529700, -0.707125,
		0.361348, -0.615501, 0.700418,
		-0.806248, -0.583589, -0.096890,
		37.325638, 32.386295, 26.677250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142155, 32.135056, 26.836973>,  <37.890011, 32.794807, 26.745071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142155, 32.135056, 26.836973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783394, 32.093544, 26.665018>,  <37.568138, 32.068638, 26.561846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783394, 32.093544, 26.665018>,  <38.142155, 32.135056, 26.836973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783394, 32.093544, 26.665018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374571, -0.695034, -0.613697,
		-0.235094, -0.711447, 0.662249,
		-0.896899, -0.103783, -0.429885,
		37.514324, 32.062408, 26.536053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101849, 31.421022, 26.880548>,  <38.142155, 32.135056, 26.836973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101849, 31.421022, 26.880548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872005, 31.584101, 26.596685>,  <37.734100, 31.681948, 26.426369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872005, 31.584101, 26.596685>,  <38.101849, 31.421022, 26.880548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872005, 31.584101, 26.596685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198703, -0.771656, -0.604206,
		-0.793946, -0.488188, 0.362383,
		-0.574601, 0.407701, -0.709658,
		37.699623, 31.706409, 26.383789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766865, 30.873095, 26.649179>,  <38.101849, 31.421022, 26.880548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766865, 30.873095, 26.649179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748783, 31.156193, 26.367172>,  <37.737934, 31.326052, 26.197968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748783, 31.156193, 26.367172>,  <37.766865, 30.873095, 26.649179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748783, 31.156193, 26.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025825, -0.706331, -0.707410,
		-0.998644, -0.013769, 0.050205,
		-0.045201, 0.707748, -0.705018,
		37.735222, 31.368517, 26.155666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369774, 30.516205, 26.235363>,  <37.766865, 30.873095, 26.649179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369774, 30.516205, 26.235363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516762, 30.821283, 26.022474>,  <37.604954, 31.004332, 25.894741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516762, 30.821283, 26.022474>,  <37.369774, 30.516205, 26.235363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516762, 30.821283, 26.022474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293836, -0.638155, -0.711631,
		-0.882398, 0.105117, -0.458610,
		0.367469, 0.762698, -0.532220,
		37.627003, 31.050093, 25.862808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041504, 30.400951, 25.641392>,  <37.369774, 30.516205, 26.235363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041504, 30.400951, 25.641392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377472, 30.615177, 25.606285>,  <37.579052, 30.743713, 25.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377472, 30.615177, 25.606285>,  <37.041504, 30.400951, 25.641392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377472, 30.615177, 25.606285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368696, -0.681770, -0.631865,
		-0.398243, 0.498356, -0.770093,
		0.839920, 0.535566, -0.087769,
		37.629448, 30.775846, 25.579954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294998, 30.192467, 24.974180>,  <37.041504, 30.400951, 25.641392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294998, 30.192467, 24.974180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628624, 30.342167, 25.136303>,  <37.828800, 30.431986, 25.233578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628624, 30.342167, 25.136303>,  <37.294998, 30.192467, 24.974180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628624, 30.342167, 25.136303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548118, -0.478967, -0.685681,
		-0.062486, 0.794059, -0.604621,
		0.834064, 0.374249, 0.405309,
		37.878841, 30.454441, 25.257896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818913, 30.118961, 24.460173>,  <37.294998, 30.192467, 24.974180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818913, 30.118961, 24.460173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050446, 30.219282, 24.770540>,  <38.189365, 30.279474, 24.956760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050446, 30.219282, 24.770540>,  <37.818913, 30.118961, 24.460173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050446, 30.219282, 24.770540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807231, -0.310951, -0.501684,
		0.115449, 0.916738, -0.382444,
		0.578834, 0.250802, 0.775919,
		38.224094, 30.294523, 25.003315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382874, 30.621723, 24.249876>,  <37.818913, 30.118961, 24.460173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382874, 30.621723, 24.249876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503830, 30.436682, 24.583237>,  <38.576405, 30.325657, 24.783253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503830, 30.436682, 24.583237>,  <38.382874, 30.621723, 24.249876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503830, 30.436682, 24.583237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767101, -0.400879, -0.500851,
		0.565789, 0.790754, 0.233644,
		0.302387, -0.462605, 0.833402,
		38.594547, 30.297901, 24.833258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226788, 30.678726, 24.289717>,  <38.382874, 30.621723, 24.249876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226788, 30.678726, 24.289717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150162, 30.371679, 24.534359>,  <39.104187, 30.187450, 24.681145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150162, 30.371679, 24.534359>,  <39.226788, 30.678726, 24.289717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150162, 30.371679, 24.534359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770828, -0.503410, -0.390388,
		0.607559, 0.396660, 0.688138,
		-0.191564, -0.767619, 0.611607,
		39.092693, 30.141394, 24.717842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843193, 30.482231, 24.478321>,  <39.226788, 30.678726, 24.289717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843193, 30.482231, 24.478321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644150, 30.149553, 24.576847>,  <39.524723, 29.949947, 24.635962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644150, 30.149553, 24.576847>,  <39.843193, 30.482231, 24.478321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644150, 30.149553, 24.576847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759631, -0.554934, -0.339131,
		0.418740, 0.018352, 0.907921,
		-0.497612, -0.831692, 0.246313,
		39.494865, 29.900045, 24.650742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275860, 30.051517, 24.743464>,  <39.843193, 30.482231, 24.478321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275860, 30.051517, 24.743464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994846, 29.802139, 24.606199>,  <39.826237, 29.652512, 24.523840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994846, 29.802139, 24.606199>,  <40.275860, 30.051517, 24.743464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994846, 29.802139, 24.606199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699330, -0.515468, -0.495207,
		0.131846, -0.587884, 0.798128,
		-0.702534, -0.623446, -0.343163,
		39.784084, 29.615105, 24.503250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652184, 29.310991, 24.713804>,  <40.275860, 30.051517, 24.743464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652184, 29.310991, 24.713804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318459, 29.274128, 24.496393>,  <40.118221, 29.252010, 24.365946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318459, 29.274128, 24.496393>,  <40.652184, 29.310991, 24.713804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318459, 29.274128, 24.496393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443185, -0.698505, -0.561852,
		-0.327878, -0.709646, 0.623618,
		-0.834316, -0.092159, -0.543528,
		40.068165, 29.246481, 24.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652950, 28.658710, 24.587202>,  <40.652184, 29.310991, 24.713804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652950, 28.658710, 24.587202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378201, 28.769865, 24.318581>,  <40.213352, 28.836557, 24.157408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378201, 28.769865, 24.318581>,  <40.652950, 28.658710, 24.587202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378201, 28.769865, 24.318581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357910, -0.674868, -0.645332,
		-0.632537, -0.683618, 0.364093,
		-0.686875, 0.277884, -0.671552,
		40.172138, 28.853231, 24.117115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670288, 28.330587, 23.931742>,  <40.652950, 28.658710, 24.587202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670288, 28.330587, 23.931742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833290, 28.022219, 24.127546>,  <40.931091, 27.837198, 24.245029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833290, 28.022219, 24.127546>,  <40.670288, 28.330587, 23.931742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833290, 28.022219, 24.127546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540589, 0.228381, 0.809695,
		-0.736005, -0.594580, -0.323684,
		0.407505, -0.770919, 0.489512,
		40.955544, 27.790943, 24.274401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187992, 28.092464, 24.234512>,  <40.670288, 28.330587, 23.931742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187992, 28.092464, 24.234512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498745, 27.954668, 24.445333>,  <40.685196, 27.871990, 24.571827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498745, 27.954668, 24.445333>,  <40.187992, 28.092464, 24.234512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498745, 27.954668, 24.445333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486048, 0.204021, 0.849784,
		-0.400272, -0.916353, -0.008939,
		0.776878, -0.344490, 0.527055,
		40.731808, 27.851320, 24.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941204, 27.723520, 24.679409>,  <40.187992, 28.092464, 24.234512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941204, 27.723520, 24.679409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292721, 27.795719, 24.856108>,  <40.503632, 27.839039, 24.962128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292721, 27.795719, 24.856108>,  <39.941204, 27.723520, 24.679409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292721, 27.795719, 24.856108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471550, 0.186423, 0.861909,
		0.073222, -0.965747, 0.248942,
		0.878794, 0.180500, 0.441748,
		40.556358, 27.849869, 24.988632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948799, 27.374210, 25.206333>,  <39.941204, 27.723520, 24.679409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948799, 27.374210, 25.206333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227623, 27.648502, 25.290121>,  <40.394917, 27.813078, 25.340393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227623, 27.648502, 25.290121>,  <39.948799, 27.374210, 25.206333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227623, 27.648502, 25.290121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525432, 0.289747, 0.799980,
		0.487880, -0.667696, 0.562277,
		0.697061, 0.685732, 0.209467,
		40.436741, 27.854221, 25.352961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052372, 27.229496, 25.856649>,  <39.948799, 27.374210, 25.206333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052372, 27.229496, 25.856649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188484, 27.601151, 25.798805>,  <40.270153, 27.824142, 25.764099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188484, 27.601151, 25.798805>,  <40.052372, 27.229496, 25.856649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188484, 27.601151, 25.798805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458105, 0.298112, 0.837418,
		0.821187, -0.218711, 0.527084,
		0.340283, 0.929136, -0.144613,
		40.290569, 27.879892, 25.755421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586960, 27.396767, 26.323923>,  <40.052372, 27.229496, 25.856649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586960, 27.396767, 26.323923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418526, 27.738266, 26.201416>,  <40.317467, 27.943165, 26.127913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418526, 27.738266, 26.201416>,  <40.586960, 27.396767, 26.323923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418526, 27.738266, 26.201416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455738, 0.092794, 0.885264,
		0.784212, 0.512351, 0.350012,
		-0.421087, 0.853748, -0.306268,
		40.292198, 27.994390, 26.109535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612453, 27.828888, 27.017286>,  <40.586960, 27.396767, 26.323923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612453, 27.828888, 27.017286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376213, 28.045017, 26.777540>,  <40.234467, 28.174696, 26.633694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376213, 28.045017, 26.777540>,  <40.612453, 27.828888, 27.017286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376213, 28.045017, 26.777540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559147, 0.261527, 0.786739,
		0.581844, 0.799783, 0.147662,
		-0.590603, 0.540324, -0.599364,
		40.199032, 28.207115, 26.597731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481140, 28.518406, 27.344181>,  <40.612453, 27.828888, 27.017286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481140, 28.518406, 27.344181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165379, 28.479507, 27.101734>,  <39.975922, 28.456167, 26.956266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165379, 28.479507, 27.101734>,  <40.481140, 28.518406, 27.344181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165379, 28.479507, 27.101734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598832, 0.339198, 0.725496,
		0.135041, 0.935675, -0.326001,
		-0.789407, -0.097248, -0.606118,
		39.928555, 28.450333, 26.919899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117287, 29.195589, 27.270987>,  <40.481140, 28.518406, 27.344181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117287, 29.195589, 27.270987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846718, 28.914133, 27.183949>,  <39.684376, 28.745260, 27.131725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846718, 28.914133, 27.183949>,  <40.117287, 29.195589, 27.270987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846718, 28.914133, 27.183949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656886, 0.442738, 0.610315,
		-0.333105, 0.555763, -0.761688,
		-0.676419, -0.703641, -0.217595,
		39.643791, 28.703041, 27.118670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458900, 29.487417, 27.174185>,  <40.117287, 29.195589, 27.270987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458900, 29.487417, 27.174185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325356, 29.115713, 27.237438>,  <39.245228, 28.892691, 27.275391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325356, 29.115713, 27.237438>,  <39.458900, 29.487417, 27.174185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325356, 29.115713, 27.237438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711436, 0.358463, 0.604452,
		-0.618380, 0.089303, -0.780789,
		-0.333864, -0.929263, 0.158133,
		39.225197, 28.836935, 27.284878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807022, 29.561514, 27.041325>,  <39.458900, 29.487417, 27.174185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807022, 29.561514, 27.041325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846031, 29.241898, 27.278650>,  <38.869438, 29.050127, 27.421045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846031, 29.241898, 27.278650>,  <38.807022, 29.561514, 27.041325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846031, 29.241898, 27.278650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578459, 0.439603, 0.687121,
		-0.809860, -0.410219, -0.419340,
		0.097527, -0.799043, 0.593312,
		38.875290, 29.002184, 27.456644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147713, 29.507677, 27.387922>,  <38.807022, 29.561514, 27.041325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147713, 29.507677, 27.387922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355247, 29.244196, 27.605881>,  <38.479771, 29.086107, 27.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355247, 29.244196, 27.605881>,  <38.147713, 29.507677, 27.387922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355247, 29.244196, 27.605881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493458, 0.289723, 0.820098,
		-0.698071, -0.694383, -0.174723,
		0.518841, -0.658705, 0.544896,
		38.510899, 29.046585, 27.769350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720596, 28.968912, 27.861496>,  <38.147713, 29.507677, 27.387922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720596, 28.968912, 27.861496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074841, 29.067106, 28.019197>,  <38.287388, 29.126022, 28.113819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074841, 29.067106, 28.019197>,  <37.720596, 28.968912, 27.861496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074841, 29.067106, 28.019197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440776, 0.176783, 0.880036,
		0.146333, -0.953146, 0.264762,
		0.885609, 0.245479, 0.394255,
		38.340523, 29.140753, 28.137474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606441, 28.926292, 28.585625>,  <37.720596, 28.968912, 27.861496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606441, 28.926292, 28.585625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934921, 29.152142, 28.552567>,  <38.132008, 29.287651, 28.532732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934921, 29.152142, 28.552567>,  <37.606441, 28.926292, 28.585625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934921, 29.152142, 28.552567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212437, 0.436907, 0.874061,
		0.529627, -0.700220, 0.478735,
		0.821198, 0.564627, -0.082645,
		38.181282, 29.321529, 28.527773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985584, 28.913033, 29.210451>,  <37.606441, 28.926292, 28.585625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985584, 28.913033, 29.210451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098034, 29.242748, 29.013872>,  <38.165504, 29.440577, 28.895926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098034, 29.242748, 29.013872>,  <37.985584, 28.913033, 29.210451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098034, 29.242748, 29.013872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108497, 0.536114, 0.837144,
		0.953520, -0.182017, 0.240145,
		0.281120, 0.824288, -0.491448,
		38.182369, 29.490034, 28.866438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441917, 29.341328, 29.727444>,  <37.985584, 28.913033, 29.210451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441917, 29.341328, 29.727444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306866, 29.600336, 29.454174>,  <38.225834, 29.755741, 29.290213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306866, 29.600336, 29.454174>,  <38.441917, 29.341328, 29.727444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306866, 29.600336, 29.454174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250173, 0.637957, 0.728302,
		0.907424, 0.416809, -0.053402,
		-0.337631, 0.647519, -0.683172,
		38.205578, 29.794592, 29.249222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659454, 29.914593, 29.983126>,  <38.441917, 29.341328, 29.727444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659454, 29.914593, 29.983126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356941, 30.020861, 29.743975>,  <38.175434, 30.084621, 29.600485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356941, 30.020861, 29.743975>,  <38.659454, 29.914593, 29.983126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356941, 30.020861, 29.743975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241437, 0.736010, 0.632454,
		0.608066, 0.622663, -0.492489,
		-0.756283, 0.265669, -0.597876,
		38.130054, 30.100561, 29.564611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596935, 30.652615, 29.991182>,  <38.659454, 29.914593, 29.983126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596935, 30.652615, 29.991182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235889, 30.539179, 29.861652>,  <38.019260, 30.471117, 29.783936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235889, 30.539179, 29.861652>,  <38.596935, 30.652615, 29.991182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235889, 30.539179, 29.861652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419510, 0.748064, 0.514210,
		0.096415, 0.599981, -0.794183,
		-0.902616, -0.283591, -0.323823,
		37.965103, 30.454102, 29.764505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286068, 31.195555, 30.265564>,  <38.596935, 30.652615, 29.991182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286068, 31.195555, 30.265564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991489, 30.981096, 30.100544>,  <37.814743, 30.852421, 30.001532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991489, 30.981096, 30.100544>,  <38.286068, 31.195555, 30.265564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991489, 30.981096, 30.100544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670032, 0.662199, 0.335484,
		0.093322, 0.523488, -0.846907,
		-0.736443, -0.536146, -0.412551,
		37.770557, 30.820251, 29.976778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782383, 31.653770, 29.877806>,  <38.286068, 31.195555, 30.265564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782383, 31.653770, 29.877806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606606, 31.319788, 30.010315>,  <37.501141, 31.119398, 30.089821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606606, 31.319788, 30.010315>,  <37.782383, 31.653770, 29.877806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606606, 31.319788, 30.010315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687878, 0.549966, 0.473667,
		-0.577680, -0.019728, -0.816025,
		-0.439441, -0.834954, 0.331275,
		37.474773, 31.069302, 30.109697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035305, 31.807175, 29.884430>,  <37.782383, 31.653770, 29.877806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035305, 31.807175, 29.884430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 31.498833, 30.129148>,  <37.148872, 31.313828, 30.275980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 31.498833, 30.129148>,  <37.035305, 31.807175, 29.884430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106285, 31.498833, 30.129148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592250, 0.412839, 0.691956,
		-0.785971, -0.485125, -0.383280,
		0.177452, -0.770855, 0.611795,
		37.159519, 31.267576, 30.312687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442028, 31.826086, 30.247774>,  <37.035305, 31.807175, 29.884430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442028, 31.826086, 30.247774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699329, 31.592476, 30.445820>,  <36.853710, 31.452309, 30.564648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699329, 31.592476, 30.445820>,  <36.442028, 31.826086, 30.247774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699329, 31.592476, 30.445820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348531, 0.352422, 0.868519,
		-0.681728, -0.731240, 0.023144,
		0.643252, -0.584027, 0.495115,
		36.892303, 31.417269, 30.594355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999325, 31.498615, 30.774771>,  <36.442028, 31.826086, 30.247774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999325, 31.498615, 30.774771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381306, 31.512115, 30.892706>,  <36.610493, 31.520216, 30.963467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381306, 31.512115, 30.892706>,  <35.999325, 31.498615, 30.774771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381306, 31.512115, 30.892706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290668, 0.306726, 0.906328,
		-0.059845, -0.951199, 0.302719,
		0.954950, 0.033751, 0.294840,
		36.667789, 31.522242, 30.981157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921749, 31.486092, 31.493586>,  <35.999325, 31.498615, 30.774771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921749, 31.486092, 31.493586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300259, 31.603540, 31.439405>,  <36.527367, 31.674009, 31.406897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300259, 31.603540, 31.439405>,  <35.921749, 31.486092, 31.493586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300259, 31.603540, 31.439405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011359, 0.448812, 0.893554,
		0.323158, -0.844011, 0.428036,
		0.946277, 0.293622, -0.135450,
		36.584141, 31.691628, 31.398769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262104, 31.316957, 32.112007>,  <35.921749, 31.486092, 31.493586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262104, 31.316957, 32.112007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481041, 31.605799, 31.942785>,  <36.612404, 31.779104, 31.841251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481041, 31.605799, 31.942785>,  <36.262104, 31.316957, 32.112007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481041, 31.605799, 31.942785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001557, 0.504619, 0.863340,
		0.836904, -0.473205, 0.275078,
		0.547347, 0.722105, -0.423055,
		36.645245, 31.822430, 31.815868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880379, 31.441544, 32.522907>,  <36.262104, 31.316957, 32.112007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880379, 31.441544, 32.522907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830925, 31.772728, 32.304111>,  <36.801254, 31.971439, 32.172836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830925, 31.772728, 32.304111>,  <36.880379, 31.441544, 32.522907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830925, 31.772728, 32.304111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002025, 0.551425, 0.834222,
		0.992326, 0.102027, -0.069850,
		-0.123630, 0.827962, -0.546986,
		36.793835, 32.021118, 32.140015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461975, 31.917807, 32.649193>,  <36.880379, 31.441544, 32.522907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461975, 31.917807, 32.649193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215595, 32.182255, 32.477833>,  <37.067768, 32.340923, 32.375015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215595, 32.182255, 32.477833>,  <37.461975, 31.917807, 32.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215595, 32.182255, 32.477833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027368, 0.525520, 0.850341,
		0.787313, 0.535489, -0.305599,
		-0.615946, 0.661120, -0.428404,
		37.030811, 32.380592, 32.349312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710854, 32.592476, 32.622940>,  <37.461975, 31.917807, 32.649193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710854, 32.592476, 32.622940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315720, 32.654598, 32.619640>,  <37.078640, 32.691872, 32.617661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315720, 32.654598, 32.619640>,  <37.710854, 32.592476, 32.622940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315720, 32.654598, 32.619640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047859, 0.354042, 0.934004,
		0.147974, 0.922245, -0.357167,
		-0.987833, 0.155302, -0.008251,
		37.019371, 32.701187, 32.617165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549690, 33.314510, 32.788780>,  <37.710854, 32.592476, 32.622940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549690, 33.314510, 32.788780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233112, 33.094658, 32.895752>,  <37.043167, 32.962746, 32.959934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233112, 33.094658, 32.895752>,  <37.549690, 33.314510, 32.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233112, 33.094658, 32.895752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004355, 0.442584, 0.896717,
		-0.611226, 0.708536, -0.352674,
		-0.791444, -0.549632, 0.267433,
		36.995678, 32.929768, 32.975983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235275, 33.757057, 33.391079>,  <37.549690, 33.314510, 32.788780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235275, 33.757057, 33.391079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060295, 33.398041, 33.368938>,  <36.955307, 33.182632, 33.355656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060295, 33.398041, 33.368938>,  <37.235275, 33.757057, 33.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060295, 33.398041, 33.368938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035190, -0.044420, 0.998393,
		-0.898554, 0.438694, -0.012153,
		-0.437449, -0.897538, -0.055352,
		36.929062, 33.128780, 33.352333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619083, 33.872372, 33.813320>,  <37.235275, 33.757057, 33.391079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619083, 33.872372, 33.813320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672939, 33.476395, 33.795914>,  <36.705254, 33.238808, 33.785469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672939, 33.476395, 33.795914>,  <36.619083, 33.872372, 33.813320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672939, 33.476395, 33.795914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091686, -0.056169, 0.994203,
		-0.986644, -0.129870, -0.098326,
		0.134640, -0.989939, -0.043512,
		36.713333, 33.179413, 33.782860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075321, 33.568447, 34.277172>,  <36.619083, 33.872372, 33.813320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075321, 33.568447, 34.277172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352032, 33.281246, 34.246395>,  <36.518059, 33.108925, 34.227928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352032, 33.281246, 34.246395>,  <36.075321, 33.568447, 34.277172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352032, 33.281246, 34.246395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031109, -0.136080, 0.990209,
		-0.721440, -0.682612, -0.116473,
		0.691778, -0.718000, -0.076938,
		36.559566, 33.065845, 34.223312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908463, 32.973419, 34.677048>,  <36.075321, 33.568447, 34.277172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908463, 32.973419, 34.677048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300735, 32.918285, 34.621521>,  <36.536098, 32.885204, 34.588203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300735, 32.918285, 34.621521>,  <35.908463, 32.973419, 34.677048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300735, 32.918285, 34.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095420, -0.282449, 0.954525,
		-0.170778, -0.949328, -0.263840,
		0.980678, -0.137836, -0.138821,
		36.594940, 32.876934, 34.579876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023266, 32.363541, 34.963631>,  <35.908463, 32.973419, 34.677048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023266, 32.363541, 34.963631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386581, 32.530006, 34.946594>,  <36.604572, 32.629887, 34.936371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386581, 32.530006, 34.946594>,  <36.023266, 32.363541, 34.963631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386581, 32.530006, 34.946594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194747, -0.330525, 0.923486,
		0.370241, -0.847090, -0.381260,
		0.908292, 0.416162, -0.042594,
		36.659069, 32.654854, 34.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297848, 31.842014, 35.334473>,  <36.023266, 32.363541, 34.963631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297848, 31.842014, 35.334473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573021, 32.130680, 35.303627>,  <36.738125, 32.303879, 35.285122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573021, 32.130680, 35.303627>,  <36.297848, 31.842014, 35.334473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573021, 32.130680, 35.303627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390065, -0.278042, 0.877805,
		0.612039, -0.633953, -0.472770,
		0.687937, 0.721662, -0.077110,
		36.779404, 32.347179, 35.280495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934425, 31.499357, 35.516335>,  <36.297848, 31.842014, 35.334473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934425, 31.499357, 35.516335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972332, 31.892874, 35.577232>,  <36.995075, 32.128983, 35.613770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972332, 31.892874, 35.577232>,  <36.934425, 31.499357, 35.516335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972332, 31.892874, 35.577232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362976, -0.176549, 0.914920,
		0.926967, -0.031441, -0.373823,
		0.094764, 0.983789, 0.152243,
		37.000763, 32.188011, 35.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546066, 31.569805, 35.669968>,  <36.934425, 31.499357, 35.516335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546066, 31.569805, 35.669968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361782, 31.900082, 35.800182>,  <37.251209, 32.098248, 35.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361782, 31.900082, 35.800182>,  <37.546066, 31.569805, 35.669968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361782, 31.900082, 35.800182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350957, -0.167410, 0.921305,
		0.815214, 0.538706, -0.212655,
		-0.460712, 0.825693, 0.325538,
		37.223568, 32.147789, 35.897842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057449, 32.117611, 35.920185>,  <37.546066, 31.569805, 35.669968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057449, 32.117611, 35.920185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708023, 32.209709, 36.091705>,  <37.498367, 32.264969, 36.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708023, 32.209709, 36.091705>,  <38.057449, 32.117611, 35.920185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708023, 32.209709, 36.091705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433005, -0.034652, 0.900725,
		0.222249, 0.972515, -0.069428,
		-0.873563, 0.230248, 0.428805,
		37.445953, 32.278782, 36.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175255, 32.825653, 36.358467>,  <38.057449, 32.117611, 35.920185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175255, 32.825653, 36.358467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839436, 32.663254, 36.502869>,  <37.637943, 32.565815, 36.589508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839436, 32.663254, 36.502869>,  <38.175255, 32.825653, 36.358467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839436, 32.663254, 36.502869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263894, 0.276070, 0.924200,
		-0.474882, 0.871179, -0.124636,
		-0.839552, -0.405995, 0.360999,
		37.587570, 32.541454, 36.611168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170807, 33.125469, 36.928707>,  <38.175255, 32.825653, 36.358467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170807, 33.125469, 36.928707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905918, 32.832230, 36.990707>,  <37.746983, 32.656288, 37.027908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905918, 32.832230, 36.990707>,  <38.170807, 33.125469, 36.928707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905918, 32.832230, 36.990707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148164, 0.074662, 0.986140,
		-0.734509, 0.676014, 0.059176,
		-0.662226, -0.733097, 0.155001,
		37.707249, 32.612301, 37.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655056, 33.347599, 37.381176>,  <38.170807, 33.125469, 36.928707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655056, 33.347599, 37.381176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712486, 32.953075, 37.413628>,  <37.746944, 32.716362, 37.433098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712486, 32.953075, 37.413628>,  <37.655056, 33.347599, 37.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712486, 32.953075, 37.413628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218971, 0.111603, 0.969328,
		-0.965110, -0.121408, 0.231997,
		0.143576, -0.986309, 0.081125,
		37.755558, 32.657185, 37.437965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564426, 33.243069, 38.102951>,  <37.655056, 33.347599, 37.381176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564426, 33.243069, 38.102951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748196, 32.924618, 37.945419>,  <37.858456, 32.733547, 37.850899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748196, 32.924618, 37.945419>,  <37.564426, 33.243069, 38.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748196, 32.924618, 37.945419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322459, -0.263649, 0.909126,
		-0.827617, -0.544668, 0.135593,
		0.459423, -0.796131, -0.393834,
		37.886024, 32.685780, 37.827271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333218, 32.664364, 38.520321>,  <37.564426, 33.243069, 38.102951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333218, 32.664364, 38.520321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703934, 32.714413, 38.378670>,  <37.926361, 32.744442, 38.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703934, 32.714413, 38.378670>,  <37.333218, 32.664364, 38.520321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703934, 32.714413, 38.378670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362521, -0.051482, 0.930553,
		0.098205, -0.990804, -0.093074,
		0.926787, 0.125126, -0.354131,
		37.981972, 32.751949, 38.272430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501438, 33.232567, 38.988731>,  <37.333218, 32.664364, 38.520321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501438, 33.232567, 38.988731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564541, 33.475994, 39.299797>,  <37.602402, 33.622051, 39.486435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564541, 33.475994, 39.299797>,  <37.501438, 33.232567, 38.988731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564541, 33.475994, 39.299797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429000, -0.667088, 0.609059,
		0.889422, -0.429700, 0.155839,
		0.157754, 0.608566, 0.777664,
		37.611866, 33.658566, 39.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879192, 32.928329, 39.527157>,  <37.501438, 33.232567, 38.988731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879192, 32.928329, 39.527157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667812, 33.208733, 39.718708>,  <37.540985, 33.376976, 39.833637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667812, 33.208733, 39.718708>,  <37.879192, 32.928329, 39.527157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667812, 33.208733, 39.718708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383688, -0.700387, 0.601865,
		0.757315, 0.134314, 0.639088,
		-0.528448, 0.701012, 0.478879,
		37.509277, 33.419037, 39.862373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906097, 32.740250, 40.217117>,  <37.879192, 32.928329, 39.527157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906097, 32.740250, 40.217117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583992, 32.975639, 40.188129>,  <37.390728, 33.116871, 40.170734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583992, 32.975639, 40.188129>,  <37.906097, 32.740250, 40.217117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583992, 32.975639, 40.188129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501462, -0.610729, 0.612819,
		0.316365, 0.529823, 0.786893,
		-0.805264, 0.588471, -0.072473,
		37.342411, 33.152180, 40.166389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668358, 32.931072, 40.962933>,  <37.906097, 32.740250, 40.217117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668358, 32.931072, 40.962933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362656, 32.939144, 40.705093>,  <37.179234, 32.943985, 40.550392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362656, 32.939144, 40.705093>,  <37.668358, 32.931072, 40.962933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362656, 32.939144, 40.705093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557689, -0.522626, 0.644861,
		-0.323870, 0.852323, 0.410674,
		-0.764259, 0.020178, -0.644594,
		37.133377, 32.945198, 40.511715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049416, 33.002243, 41.469166>,  <37.668358, 32.931072, 40.962933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049416, 33.002243, 41.469166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849121, 32.945614, 41.127590>,  <36.728943, 32.911636, 40.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849121, 32.945614, 41.127590>,  <37.049416, 33.002243, 41.469166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849121, 32.945614, 41.127590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739072, -0.443615, 0.506930,
		-0.450590, 0.884965, 0.117501,
		-0.500740, -0.141576, -0.853941,
		36.698898, 32.903141, 40.871407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241695, 33.180111, 41.534836>,  <37.049416, 33.002243, 41.469166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241695, 33.180111, 41.534836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266186, 32.911327, 41.239613>,  <36.280880, 32.750057, 41.062477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266186, 32.911327, 41.239613>,  <36.241695, 33.180111, 41.534836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266186, 32.911327, 41.239613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629178, -0.600014, 0.494083,
		-0.774846, 0.434120, -0.459514,
		0.061223, -0.671954, -0.738057,
		36.284554, 32.709740, 41.018196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552261, 32.773521, 41.514263>,  <36.241695, 33.180111, 41.534836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552261, 32.773521, 41.514263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750549, 32.537331, 41.259518>,  <35.869522, 32.395615, 41.106670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750549, 32.537331, 41.259518>,  <35.552261, 32.773521, 41.514263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750549, 32.537331, 41.259518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596853, -0.764324, 0.244081,
		-0.630897, 0.259122, -0.731317,
		0.495716, -0.590479, -0.636867,
		35.899265, 32.360188, 41.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145153, 32.494804, 41.034355>,  <35.552261, 32.773521, 41.514263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145153, 32.494804, 41.034355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427025, 32.212925, 41.001305>,  <35.596149, 32.043797, 40.981476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427025, 32.212925, 41.001305>,  <35.145153, 32.494804, 41.034355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427025, 32.212925, 41.001305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708398, -0.705336, -0.025926,
		-0.040006, 0.076799, -0.996244,
		0.704678, -0.704700, -0.082623,
		35.638428, 32.001514, 40.976517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829166, 31.981638, 40.576176>,  <35.145153, 32.494804, 41.034355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829166, 31.981638, 40.576176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126244, 31.778063, 40.750256>,  <35.304489, 31.655918, 40.854702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126244, 31.778063, 40.750256>,  <34.829166, 31.981638, 40.576176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126244, 31.778063, 40.750256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561027, -0.827730, -0.010555,
		0.365599, -0.236319, -0.900273,
		0.742689, -0.508936, 0.435198,
		35.349049, 31.625381, 40.880814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825890, 31.470036, 40.115379>,  <34.829166, 31.981638, 40.576176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825890, 31.470036, 40.115379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945721, 31.367952, 40.483101>,  <35.017620, 31.306704, 40.703735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945721, 31.367952, 40.483101>,  <34.825890, 31.470036, 40.115379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945721, 31.367952, 40.483101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635484, -0.772080, -0.007248,
		0.711627, -0.582033, -0.393476,
		0.299577, -0.255206, 0.919306,
		35.035595, 31.291391, 40.758892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843571, 30.743397, 40.134293>,  <34.825890, 31.470036, 40.115379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843571, 30.743397, 40.134293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825367, 30.815050, 40.527401>,  <34.814445, 30.858042, 40.763268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825367, 30.815050, 40.527401>,  <34.843571, 30.743397, 40.134293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825367, 30.815050, 40.527401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498660, -0.856528, 0.133033,
		0.865602, -0.484015, 0.128304,
		-0.045506, 0.179133, 0.982772,
		34.811714, 30.868790, 40.822231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206318, 30.209072, 40.490524>,  <34.843571, 30.743397, 40.134293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206318, 30.209072, 40.490524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929935, 30.350489, 40.742744>,  <34.764107, 30.435339, 40.894077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929935, 30.350489, 40.742744>,  <35.206318, 30.209072, 40.490524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929935, 30.350489, 40.742744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189373, -0.930311, 0.314100,
		0.697655, 0.097618, 0.709752,
		-0.690952, 0.353541, 0.630551,
		34.722649, 30.456551, 40.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484543, 30.101025, 41.127968>,  <35.206318, 30.209072, 40.490524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484543, 30.101025, 41.127968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084625, 30.108812, 41.130016>,  <34.844673, 30.113485, 41.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084625, 30.108812, 41.130016>,  <35.484543, 30.101025, 41.127968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084625, 30.108812, 41.130016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018336, -0.985670, 0.167687,
		0.008312, 0.167559, 0.985827,
		-0.999797, 0.019470, 0.005120,
		34.784687, 30.114653, 41.131554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168831, 29.504410, 41.550564>,  <35.484543, 30.101025, 41.127968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168831, 29.504410, 41.550564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813026, 29.593613, 41.391045>,  <34.599545, 29.647135, 41.295334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813026, 29.593613, 41.391045>,  <35.168831, 29.504410, 41.550564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813026, 29.593613, 41.391045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170231, -0.971715, -0.163683,
		-0.424021, -0.077709, 0.902312,
		-0.889510, 0.223007, -0.398799,
		34.546173, 29.660515, 41.271404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595451, 29.200480, 41.922215>,  <35.168831, 29.504410, 41.550564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595451, 29.200480, 41.922215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493450, 29.240004, 41.537464>,  <34.432247, 29.263718, 41.306614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493450, 29.240004, 41.537464>,  <34.595451, 29.200480, 41.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493450, 29.240004, 41.537464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104769, -0.991732, -0.074101,
		-0.961247, 0.081879, 0.263251,
		-0.255007, 0.098810, -0.961877,
		34.416946, 29.269646, 41.248901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023834, 28.836565, 41.865376>,  <34.595451, 29.200480, 41.922215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023834, 28.836565, 41.865376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112843, 28.876579, 41.477463>,  <34.166248, 28.900589, 41.244717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112843, 28.876579, 41.477463>,  <34.023834, 28.836565, 41.865376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112843, 28.876579, 41.477463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411013, -0.892377, -0.186363,
		-0.884053, 0.440063, -0.157459,
		0.222525, 0.100037, -0.969781,
		34.179600, 28.906590, 41.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507080, 28.819000, 41.378498>,  <34.023834, 28.836565, 41.865376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507080, 28.819000, 41.378498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837341, 28.650379, 41.228512>,  <34.035496, 28.549208, 41.138519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837341, 28.650379, 41.228512>,  <33.507080, 28.819000, 41.378498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837341, 28.650379, 41.228512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504792, -0.848794, -0.157270,
		-0.251970, 0.319129, -0.913602,
		0.825649, -0.421551, -0.374964,
		34.085037, 28.523914, 41.116024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234360, 28.382999, 40.680252>,  <33.507080, 28.819000, 41.378498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234360, 28.382999, 40.680252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581974, 28.272297, 40.844292>,  <33.790543, 28.205875, 40.942715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581974, 28.272297, 40.844292>,  <33.234360, 28.382999, 40.680252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581974, 28.272297, 40.844292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165386, -0.943724, -0.286413,
		0.466288, 0.181078, -0.865902,
		0.869036, -0.276759, 0.410100,
		33.842686, 28.189270, 40.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584476, 27.867434, 40.332722>,  <33.234360, 28.382999, 40.680252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584476, 27.867434, 40.332722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761738, 27.812513, 40.687069>,  <33.868095, 27.779562, 40.899677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761738, 27.812513, 40.687069>,  <33.584476, 27.867434, 40.332722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761738, 27.812513, 40.687069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085732, -0.990163, -0.110576,
		0.892338, -0.026945, -0.450563,
		0.443152, -0.137299, 0.885870,
		33.894684, 27.771324, 40.952831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985744, 27.255445, 39.998508>,  <33.584476, 27.867434, 40.332722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985744, 27.255445, 39.998508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176331, 27.547825, 39.803082>,  <34.290684, 27.723253, 39.685825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176331, 27.547825, 39.803082>,  <33.985744, 27.255445, 39.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176331, 27.547825, 39.803082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105229, 0.599112, 0.793720,
		0.872874, -0.326768, 0.362372,
		0.476463, 0.730950, -0.488563,
		34.319271, 27.767111, 39.656513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266987, 27.533171, 40.559971>,  <33.985744, 27.255445, 39.998508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266987, 27.533171, 40.559971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334606, 27.793682, 40.264065>,  <34.375175, 27.949989, 40.086521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334606, 27.793682, 40.264065>,  <34.266987, 27.533171, 40.559971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334606, 27.793682, 40.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050979, 0.755344, 0.653342,
		0.984289, -0.072731, 0.160888,
		0.169044, 0.651280, -0.739769,
		34.385319, 27.989065, 40.042133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838612, 28.110920, 40.741631>,  <34.266987, 27.533171, 40.559971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838612, 28.110920, 40.741631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570148, 28.246887, 40.478115>,  <34.409069, 28.328466, 40.320004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570148, 28.246887, 40.478115>,  <34.838612, 28.110920, 40.741631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570148, 28.246887, 40.478115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245158, 0.736901, 0.629980,
		0.699604, 0.584324, -0.411243,
		-0.671157, 0.339917, -0.658790,
		34.368801, 28.348862, 40.280479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068249, 28.808044, 40.510773>,  <34.838612, 28.110920, 40.741631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068249, 28.808044, 40.510773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672112, 28.761484, 40.480671>,  <34.434429, 28.733547, 40.462612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672112, 28.761484, 40.480671>,  <35.068249, 28.808044, 40.510773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672112, 28.761484, 40.480671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138574, 0.819389, 0.556237,
		-0.003086, 0.561296, -0.827610,
		-0.990347, -0.116402, -0.075252,
		34.375008, 28.726564, 40.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863064, 29.274624, 40.068325>,  <35.068249, 28.808044, 40.510773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863064, 29.274624, 40.068325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620590, 29.143141, 40.358013>,  <34.475105, 29.064251, 40.531826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620590, 29.143141, 40.358013>,  <34.863064, 29.274624, 40.068325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620590, 29.143141, 40.358013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044909, 0.923288, 0.381473,
		-0.794055, 0.198719, -0.574445,
		-0.606185, -0.328709, 0.724217,
		34.438736, 29.044529, 40.575279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107121, 29.609011, 40.055470>,  <34.863064, 29.274624, 40.068325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107121, 29.609011, 40.055470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196743, 29.484957, 40.425034>,  <34.250515, 29.410524, 40.646774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196743, 29.484957, 40.425034>,  <34.107121, 29.609011, 40.055470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196743, 29.484957, 40.425034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032782, 0.949877, 0.310902,
		-0.974025, -0.039371, 0.222992,
		0.224056, -0.310136, 0.923913,
		34.263958, 29.391916, 40.702206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538597, 29.893400, 40.527794>,  <34.107121, 29.609011, 40.055470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538597, 29.893400, 40.527794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861450, 29.830662, 40.755451>,  <34.055164, 29.793018, 40.892048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861450, 29.830662, 40.755451>,  <33.538597, 29.893400, 40.527794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861450, 29.830662, 40.755451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041977, 0.946376, 0.320329,
		-0.588870, -0.282441, 0.757271,
		0.807137, -0.156844, 0.569148,
		34.103592, 29.783609, 40.926197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409737, 30.093351, 41.242058>,  <33.538597, 29.893400, 40.527794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409737, 30.093351, 41.242058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786758, 30.135132, 41.115143>,  <34.012974, 30.160200, 41.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786758, 30.135132, 41.115143>,  <33.409737, 30.093351, 41.242058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786758, 30.135132, 41.115143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006483, 0.943956, 0.330008,
		0.333979, -0.313109, 0.889056,
		0.942558, 0.104452, -0.317291,
		34.069527, 30.166468, 41.019955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635891, 30.649536, 41.681530>,  <33.409737, 30.093351, 41.242058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635891, 30.649536, 41.681530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957024, 30.604286, 41.447376>,  <34.149704, 30.577137, 41.306885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957024, 30.604286, 41.447376>,  <33.635891, 30.649536, 41.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957024, 30.604286, 41.447376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276786, 0.940336, 0.197884,
		0.528069, -0.320892, 0.786238,
		0.802828, -0.113124, -0.585381,
		34.197872, 30.570349, 41.271763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125126, 31.011003, 42.040386>,  <33.635891, 30.649536, 41.681530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125126, 31.011003, 42.040386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315670, 30.907272, 41.704334>,  <34.429996, 30.845034, 41.502701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315670, 30.907272, 41.704334>,  <34.125126, 31.011003, 42.040386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315670, 30.907272, 41.704334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712752, 0.673395, 0.196276,
		0.514842, -0.692305, 0.505620,
		0.476364, -0.259330, -0.840134,
		34.458580, 30.829473, 41.452293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921078, 31.025221, 42.169411>,  <34.125126, 31.011003, 42.040386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921078, 31.025221, 42.169411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891678, 31.016411, 41.770592>,  <34.874039, 31.011126, 41.531300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891678, 31.016411, 41.770592>,  <34.921078, 31.025221, 42.169411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891678, 31.016411, 41.770592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906180, 0.416009, -0.075994,
		0.416456, -0.909094, -0.010625,
		-0.073506, -0.022020, -0.997052,
		34.869625, 31.009804, 41.471478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528008, 30.979506, 41.948391>,  <34.921078, 31.025221, 42.169411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528008, 30.979506, 41.948391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381233, 31.069866, 41.587429>,  <35.293167, 31.124083, 41.370853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381233, 31.069866, 41.587429>,  <35.528008, 30.979506, 41.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381233, 31.069866, 41.587429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824753, 0.527699, -0.203262,
		0.430280, -0.818842, -0.379943,
		-0.366935, 0.225900, -0.902401,
		35.271152, 31.137636, 41.316708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147415, 30.916618, 41.514130>,  <35.528008, 30.979506, 41.948391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147415, 30.916618, 41.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909946, 31.150051, 41.292503>,  <35.767464, 31.290112, 41.159527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909946, 31.150051, 41.292503>,  <36.147415, 30.916618, 41.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909946, 31.150051, 41.292503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787540, 0.562809, -0.251050,
		0.165323, -0.585388, -0.793719,
		-0.593674, 0.583581, -0.554062,
		35.731846, 31.325125, 41.126286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679234, 31.244640, 41.014908>,  <36.147415, 30.916618, 41.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679234, 31.244640, 41.014908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354771, 31.475609, 40.977783>,  <36.160095, 31.614189, 40.955509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354771, 31.475609, 40.977783>,  <36.679234, 31.244640, 41.014908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354771, 31.475609, 40.977783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575594, 0.760120, -0.301511,
		-0.103549, -0.297996, -0.948934,
		-0.811153, 0.577422, -0.092815,
		36.111423, 31.648836, 40.949940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773285, 31.633091, 40.411003>,  <36.679234, 31.244640, 41.014908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773285, 31.633091, 40.411003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490227, 31.838591, 40.605030>,  <36.320393, 31.961891, 40.721447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490227, 31.838591, 40.605030>,  <36.773285, 31.633091, 40.411003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490227, 31.838591, 40.605030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444898, 0.857323, -0.258967,
		-0.548905, 0.032549, -0.835250,
		-0.707650, 0.513749, 0.485070,
		36.277931, 31.992716, 40.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427715, 32.107334, 39.969795>,  <36.773285, 31.633091, 40.411003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427715, 32.107334, 39.969795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420944, 32.238091, 40.347759>,  <36.416882, 32.316544, 40.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420944, 32.238091, 40.347759>,  <36.427715, 32.107334, 39.969795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420944, 32.238091, 40.347759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462134, 0.840602, -0.282524,
		-0.886648, 0.431893, -0.165298,
		-0.016930, 0.326889, 0.944911,
		36.415867, 32.336159, 40.631233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183815, 32.673355, 39.712929>,  <36.427715, 32.107334, 39.969795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183815, 32.673355, 39.712929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350643, 32.731197, 40.071846>,  <36.450741, 32.765903, 40.287197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350643, 32.731197, 40.071846>,  <36.183815, 32.673355, 39.712929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350643, 32.731197, 40.071846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414552, 0.848319, -0.329397,
		-0.808824, 0.509358, 0.293866,
		0.417073, 0.144602, 0.897296,
		36.475765, 32.774578, 40.341034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145279, 33.398304, 39.820747>,  <36.183815, 32.673355, 39.712929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145279, 33.398304, 39.820747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439026, 33.267441, 40.058628>,  <36.615273, 33.188923, 40.201355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439026, 33.267441, 40.058628>,  <36.145279, 33.398304, 39.820747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439026, 33.267441, 40.058628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584131, 0.750848, -0.308251,
		-0.345682, 0.573753, 0.742504,
		0.734367, -0.327162, 0.594701,
		36.659336, 33.169292, 40.237038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336609, 33.955673, 40.270195>,  <36.145279, 33.398304, 39.820747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336609, 33.955673, 40.270195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642197, 33.707191, 40.200378>,  <36.825550, 33.558102, 40.158489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642197, 33.707191, 40.200378>,  <36.336609, 33.955673, 40.270195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642197, 33.707191, 40.200378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521858, 0.753921, -0.399083,
		0.379500, 0.213802, 0.900149,
		0.763966, -0.621202, -0.174539,
		36.871387, 33.520832, 40.148018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778820, 34.359798, 40.394848>,  <36.336609, 33.955673, 40.270195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778820, 34.359798, 40.394848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987492, 34.061321, 40.229416>,  <37.112694, 33.882236, 40.130157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987492, 34.061321, 40.229416>,  <36.778820, 34.359798, 40.394848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987492, 34.061321, 40.229416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601576, 0.665480, -0.441863,
		0.604947, -0.018293, 0.796056,
		0.521676, -0.746192, -0.413584,
		37.143993, 33.837463, 40.105339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457821, 34.499580, 40.475792>,  <36.778820, 34.359798, 40.394848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457821, 34.499580, 40.475792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417412, 34.263851, 40.155170>,  <37.393166, 34.122414, 39.962795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417412, 34.263851, 40.155170>,  <37.457821, 34.499580, 40.475792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417412, 34.263851, 40.155170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562237, 0.630872, -0.534688,
		0.820783, -0.504679, 0.267608,
		-0.101020, -0.589322, -0.801558,
		37.387104, 34.087055, 39.914703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223194, 34.086037, 40.124878>,  <37.457821, 34.499580, 40.475792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223194, 34.086037, 40.124878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912373, 34.205959, 39.903500>,  <37.725880, 34.277912, 39.770672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912373, 34.205959, 39.903500>,  <38.223194, 34.086037, 40.124878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912373, 34.205959, 39.903500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614969, 0.549012, -0.566038,
		0.134146, -0.780195, -0.610984,
		-0.777057, 0.299805, -0.553443,
		37.679256, 34.295902, 39.737465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447292, 34.664467, 39.698471>,  <38.223194, 34.086037, 40.124878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447292, 34.664467, 39.698471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648266, 34.784966, 39.374294>,  <38.768848, 34.857265, 39.179787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648266, 34.784966, 39.374294>,  <38.447292, 34.664467, 39.698471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648266, 34.784966, 39.374294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549617, -0.834863, 0.030411,
		-0.667445, -0.460711, -0.585031,
		0.502432, 0.301245, -0.810440,
		38.798996, 34.875340, 39.131161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509670, 34.128963, 39.259209>,  <38.447292, 34.664467, 39.698471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509670, 34.128963, 39.259209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795403, 34.380482, 39.136349>,  <38.966843, 34.531395, 39.062634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795403, 34.380482, 39.136349>,  <38.509670, 34.128963, 39.259209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795403, 34.380482, 39.136349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656704, -0.753973, -0.016245,
		-0.241795, -0.190100, -0.951524,
		0.714335, 0.628798, -0.307146,
		39.009705, 34.569122, 39.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969322, 33.769455, 38.836327>,  <38.509670, 34.128963, 39.259209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969322, 33.769455, 38.836327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189022, 34.095428, 38.910305>,  <39.320843, 34.291012, 38.954693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189022, 34.095428, 38.910305>,  <38.969322, 33.769455, 38.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189022, 34.095428, 38.910305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784969, -0.579050, 0.220284,
		0.286608, 0.024182, -0.957743,
		0.549253, 0.814934, 0.184943,
		39.353798, 34.339909, 38.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493137, 33.745949, 38.417526>,  <38.969322, 33.769455, 38.836327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493137, 33.745949, 38.417526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610077, 33.983212, 38.717579>,  <39.680241, 34.125568, 38.897610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610077, 33.983212, 38.717579>,  <39.493137, 33.745949, 38.417526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610077, 33.983212, 38.717579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849726, -0.520995, 0.080810,
		0.438749, 0.613784, -0.656330,
		0.292345, 0.593156, 0.750134,
		39.697781, 34.161160, 38.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304886, 33.927494, 38.355602>,  <39.493137, 33.745949, 38.417526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304886, 33.927494, 38.355602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179314, 33.963856, 38.733635>,  <40.103970, 33.985672, 38.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179314, 33.963856, 38.733635>,  <40.304886, 33.927494, 38.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179314, 33.963856, 38.733635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788492, -0.529534, 0.312848,
		0.528894, 0.843404, 0.094557,
		-0.313928, 0.090906, 0.945085,
		40.085136, 33.991127, 39.017159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586861, 33.719719, 37.763939>,  <40.304886, 33.927494, 38.355602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586861, 33.719719, 37.763939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838837, 33.507683, 37.990982>,  <40.990021, 33.380463, 38.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838837, 33.507683, 37.990982>,  <40.586861, 33.719719, 37.763939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838837, 33.507683, 37.990982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595528, -0.798815, -0.085090,
		0.498520, -0.284426, -0.818889,
		0.629939, -0.530090, 0.567609,
		41.027817, 33.348656, 38.161266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340614, 33.696236, 37.712353>,  <40.586861, 33.719719, 37.763939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340614, 33.696236, 37.712353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439548, 33.682816, 37.325012>,  <41.498909, 33.674763, 37.092609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439548, 33.682816, 37.325012>,  <41.340614, 33.696236, 37.712353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439548, 33.682816, 37.325012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283961, 0.953009, -0.105548,
		0.926387, 0.301079, 0.226181,
		0.247331, -0.033552, -0.968350,
		41.513748, 33.672749, 37.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904560, 34.093487, 37.587051>,  <41.340614, 33.696236, 37.712353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904560, 34.093487, 37.587051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639175, 34.070160, 37.288677>,  <41.479942, 34.056164, 37.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639175, 34.070160, 37.288677>,  <41.904560, 34.093487, 37.587051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639175, 34.070160, 37.288677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098911, 0.995044, 0.010181,
		0.741642, 0.080536, -0.665944,
		-0.663464, -0.058319, -0.745932,
		41.440136, 34.052666, 37.064896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397999, 34.140587, 37.075420>,  <41.904560, 34.093487, 37.587051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397999, 34.140587, 37.075420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421619, 34.184776, 36.678570>,  <42.435791, 34.211292, 36.440460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421619, 34.184776, 36.678570>,  <42.397999, 34.140587, 37.075420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421619, 34.184776, 36.678570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985724, -0.163436, 0.040469,
		-0.157678, -0.980349, -0.118548,
		0.059049, 0.110475, -0.992123,
		42.439335, 34.217918, 36.380932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689278, 33.564171, 36.762890>,  <42.397999, 34.140587, 37.075420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689278, 33.564171, 36.762890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766983, 33.871742, 36.519249>,  <42.813606, 34.056286, 36.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766983, 33.871742, 36.519249>,  <42.689278, 33.564171, 36.762890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766983, 33.871742, 36.519249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980264, -0.128969, 0.149829,
		0.036652, -0.626192, -0.778807,
		0.194264, 0.768928, -0.609107,
		42.825264, 34.102421, 36.336517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189480, 33.304340, 36.226780>,  <42.689278, 33.564171, 36.762890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189480, 33.304340, 36.226780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205978, 33.702152, 36.265171>,  <43.215878, 33.940838, 36.288204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205978, 33.702152, 36.265171>,  <43.189480, 33.304340, 36.226780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205978, 33.702152, 36.265171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999140, -0.041473, 0.000343,
		0.004322, 0.095882, -0.995383,
		0.041248, 0.994528, 0.095979,
		43.218353, 34.000511, 36.293964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487560, 33.742313, 35.743946>,  <43.189480, 33.304340, 36.226780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487560, 33.742313, 35.743946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559982, 33.977676, 36.059158>,  <43.603436, 34.118893, 36.248287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559982, 33.977676, 36.059158>,  <43.487560, 33.742313, 35.743946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559982, 33.977676, 36.059158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971360, 0.018381, -0.236899,
		-0.153877, 0.808357, -0.568226,
		0.181054, 0.588405, 0.788035,
		43.614300, 34.154198, 36.295570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538628, 34.351322, 35.422058>,  <43.487560, 33.742313, 35.743946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538628, 34.351322, 35.422058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742146, 34.324451, 35.765362>,  <43.864258, 34.308331, 35.971344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742146, 34.324451, 35.765362>,  <43.538628, 34.351322, 35.422058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742146, 34.324451, 35.765362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859140, -0.023893, -0.511183,
		0.054846, 0.997455, 0.045557,
		0.508793, -0.067176, 0.858264,
		43.894783, 34.304298, 36.022842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093494, 34.866032, 35.401119>,  <43.538628, 34.351322, 35.422058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093494, 34.866032, 35.401119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187447, 34.585747, 35.670586>,  <44.243816, 34.417576, 35.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187447, 34.585747, 35.670586>,  <44.093494, 34.866032, 35.401119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187447, 34.585747, 35.670586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835892, -0.208116, -0.507909,
		0.496102, 0.682410, 0.536842,
		0.234877, -0.700716, 0.673668,
		44.257908, 34.375530, 35.872684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743149, 34.963356, 35.931339>,  <44.093494, 34.866032, 35.401119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743149, 34.963356, 35.931339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723827, 34.568409, 35.870987>,  <44.712234, 34.331440, 35.834774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723827, 34.568409, 35.870987>,  <44.743149, 34.963356, 35.931339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723827, 34.568409, 35.870987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818251, 0.047518, -0.572894,
		0.572828, -0.151131, 0.805622,
		-0.048301, -0.987371, -0.150883,
		44.709335, 34.272198, 35.825722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298992, 34.645168, 36.210880>,  <44.743149, 34.963356, 35.931339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298992, 34.645168, 36.210880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161774, 34.442383, 35.894577>,  <45.079441, 34.320709, 35.704796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161774, 34.442383, 35.894577>,  <45.298992, 34.645168, 36.210880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161774, 34.442383, 35.894577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853215, 0.183924, -0.488053,
		0.392867, -0.842115, 0.369458,
		-0.343045, -0.506967, -0.790762,
		45.058861, 34.290295, 35.657349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688908, 33.921616, 36.044456>,  <45.298992, 34.645168, 36.210880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688908, 33.921616, 36.044456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550884, 34.134853, 35.735458>,  <45.468071, 34.262794, 35.550060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550884, 34.134853, 35.735458>,  <45.688908, 33.921616, 36.044456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550884, 34.134853, 35.735458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936970, 0.147462, -0.316768,
		-0.054954, -0.833106, -0.550376,
		-0.345061, 0.533094, -0.772492,
		45.447365, 34.294781, 35.503712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062256, 33.733414, 35.471310>,  <45.688908, 33.921616, 36.044456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062256, 33.733414, 35.471310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938477, 34.106140, 35.395458>,  <45.864208, 34.329777, 35.349949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938477, 34.106140, 35.395458>,  <46.062256, 33.733414, 35.471310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938477, 34.106140, 35.395458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922425, 0.245702, -0.297930,
		-0.231025, -0.267111, -0.935564,
		-0.309450, 0.931817, -0.189626,
		45.845642, 34.385685, 35.338570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174709, 34.027817, 34.734501>,  <46.062256, 33.733414, 35.471310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174709, 34.027817, 34.734501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173138, 34.334526, 34.991261>,  <46.172195, 34.518555, 35.145317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173138, 34.334526, 34.991261>,  <46.174709, 34.027817, 34.734501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173138, 34.334526, 34.991261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841056, 0.349764, -0.412661,
		-0.540933, 0.538253, -0.646278,
		-0.003928, 0.766778, 0.641900,
		46.171959, 34.564560, 35.183830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178364, 34.666153, 34.373169>,  <46.174709, 34.027817, 34.734501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178364, 34.666153, 34.373169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341328, 34.670876, 34.738438>,  <46.439106, 34.673710, 34.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341328, 34.670876, 34.738438>,  <46.178364, 34.666153, 34.373169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341328, 34.670876, 34.738438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912376, 0.038405, -0.407548,
		-0.039881, 0.999193, 0.004877,
		0.407406, 0.011804, 0.913171,
		46.463551, 34.674416, 35.012390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611053, 35.256111, 34.400993>,  <46.178364, 34.666153, 34.373169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611053, 35.256111, 34.400993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749180, 34.987148, 34.662872>,  <46.832054, 34.825771, 34.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749180, 34.987148, 34.662872>,  <46.611053, 35.256111, 34.400993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749180, 34.987148, 34.662872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916661, 0.092076, -0.388916,
		0.201228, 0.734431, 0.648165,
		0.345312, -0.672408, 0.654696,
		46.852772, 34.785427, 34.859280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170033, 35.481926, 34.880962>,  <46.611053, 35.256111, 34.400993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170033, 35.481926, 34.880962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174835, 35.097603, 34.770184>,  <47.177715, 34.867008, 34.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174835, 35.097603, 34.770184>,  <47.170033, 35.481926, 34.880962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174835, 35.097603, 34.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786301, 0.180174, -0.590989,
		0.617727, -0.210668, 0.757649,
		0.012006, -0.960810, -0.276947,
		47.178436, 34.809361, 34.687099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911106, 35.329281, 34.955925>,  <47.170033, 35.481926, 34.880962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911106, 35.329281, 34.955925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730541, 35.057808, 34.724197>,  <47.622200, 34.894924, 34.585159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730541, 35.057808, 34.724197>,  <47.911106, 35.329281, 34.955925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730541, 35.057808, 34.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765600, 0.038899, -0.642139,
		0.458344, -0.733401, 0.502040,
		-0.451416, -0.678683, -0.579321,
		47.595116, 34.854202, 34.550400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.438652, 26.442970, 28.434343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079559, 26.333225, 28.296473>,  <35.864105, 26.267378, 28.213751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079559, 26.333225, 28.296473>,  <36.438652, 26.442970, 28.434343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079559, 26.333225, 28.296473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439560, 0.610016, 0.659293,
		0.029374, 0.743375, -0.668230,
		-0.897733, -0.274361, -0.344676,
		35.810238, 26.250917, 28.193069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103119, 27.171915, 28.348604>,  <36.438652, 26.442970, 28.434343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103119, 27.171915, 28.348604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815475, 26.893953, 28.348660>,  <35.642891, 26.727177, 28.348694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815475, 26.893953, 28.348660>,  <36.103119, 27.171915, 28.348604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815475, 26.893953, 28.348660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544348, 0.563431, 0.621474,
		-0.431943, 0.446829, -0.783435,
		-0.719104, -0.694903, 0.000140,
		35.599743, 26.685482, 28.348701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442181, 27.598518, 28.245169>,  <36.103119, 27.171915, 28.348604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442181, 27.598518, 28.245169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378620, 27.246134, 28.423452>,  <35.340485, 27.034702, 28.530422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378620, 27.246134, 28.423452>,  <35.442181, 27.598518, 28.245169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378620, 27.246134, 28.423452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587923, 0.447107, 0.674124,
		-0.793156, -0.154922, -0.588984,
		-0.158902, -0.880962, 0.445708,
		35.330948, 26.981846, 28.557165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771214, 27.656401, 28.378443>,  <35.442181, 27.598518, 28.245169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771214, 27.656401, 28.378443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923443, 27.381369, 28.625795>,  <35.014782, 27.216349, 28.774206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923443, 27.381369, 28.625795>,  <34.771214, 27.656401, 28.378443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923443, 27.381369, 28.625795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397326, 0.482250, 0.780748,
		-0.835042, -0.542832, -0.089661,
		0.380576, -0.687581, 0.618380,
		35.037617, 27.175095, 28.811310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211460, 27.407640, 28.785833>,  <34.771214, 27.656401, 28.378443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211460, 27.407640, 28.785833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538937, 27.320841, 28.998497>,  <34.735420, 27.268761, 29.126095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538937, 27.320841, 28.998497>,  <34.211460, 27.407640, 28.785833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538937, 27.320841, 28.998497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362200, 0.523311, 0.771335,
		-0.445603, -0.824049, 0.349831,
		0.818688, -0.217000, 0.531659,
		34.784542, 27.255741, 29.157995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982388, 27.289259, 29.362839>,  <34.211460, 27.407640, 28.785833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982388, 27.289259, 29.362839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366268, 27.378170, 29.431627>,  <34.596596, 27.431517, 29.472900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366268, 27.378170, 29.431627>,  <33.982388, 27.289259, 29.362839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366268, 27.378170, 29.431627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238493, 0.320434, 0.916757,
		0.148669, -0.920823, 0.360532,
		0.959697, 0.222278, 0.171971,
		34.654179, 27.444855, 29.483219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049248, 27.185806, 30.105427>,  <33.982388, 27.289259, 29.362839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049248, 27.185806, 30.105427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406738, 27.354887, 30.045332>,  <34.621235, 27.456335, 30.009275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406738, 27.354887, 30.045332>,  <34.049248, 27.185806, 30.105427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406738, 27.354887, 30.045332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013267, 0.309847, 0.950694,
		0.448414, -0.851655, 0.271310,
		0.893727, 0.422705, -0.150239,
		34.674858, 27.481699, 30.000261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457500, 26.958225, 30.592064>,  <34.049248, 27.185806, 30.105427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457500, 26.958225, 30.592064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576111, 27.322781, 30.477907>,  <34.647278, 27.541513, 30.409412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576111, 27.322781, 30.477907>,  <34.457500, 26.958225, 30.592064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576111, 27.322781, 30.477907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077112, 0.320703, 0.944036,
		0.951908, -0.257921, 0.165374,
		0.296523, 0.911387, -0.285391,
		34.665070, 27.596197, 30.392290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748219, 27.207262, 31.137754>,  <34.457500, 26.958225, 30.592064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748219, 27.207262, 31.137754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666397, 27.538910, 30.929632>,  <34.617302, 27.737898, 30.804758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666397, 27.538910, 30.929632>,  <34.748219, 27.207262, 31.137754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666397, 27.538910, 30.929632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238095, 0.473437, 0.848038,
		0.949456, 0.297354, 0.100565,
		-0.204557, 0.829119, -0.520306,
		34.605030, 27.787645, 30.773540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163811, 27.694124, 31.343792>,  <34.748219, 27.207262, 31.137754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163811, 27.694124, 31.343792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857796, 27.909920, 31.203129>,  <34.674187, 28.039396, 31.118731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857796, 27.909920, 31.203129>,  <35.163811, 27.694124, 31.343792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857796, 27.909920, 31.203129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018841, 0.527082, 0.849605,
		0.643705, 0.656609, -0.393075,
		-0.765042, 0.539489, -0.351657,
		34.628284, 28.071766, 31.097631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335575, 28.359034, 31.572577>,  <35.163811, 27.694124, 31.343792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335575, 28.359034, 31.572577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955742, 28.384306, 31.449745>,  <34.727840, 28.399469, 31.376047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955742, 28.384306, 31.449745>,  <35.335575, 28.359034, 31.572577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955742, 28.384306, 31.449745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215412, 0.580172, 0.785492,
		0.227786, 0.812040, -0.537313,
		-0.949585, 0.063180, -0.307078,
		34.670868, 28.403259, 31.357622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063232, 29.045435, 31.575636>,  <35.335575, 28.359034, 31.572577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063232, 29.045435, 31.575636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720570, 28.843149, 31.616421>,  <34.514973, 28.721777, 31.640892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720570, 28.843149, 31.616421>,  <35.063232, 29.045435, 31.575636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720570, 28.843149, 31.616421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315981, 0.670575, 0.671181,
		-0.407799, 0.542753, -0.734248,
		-0.856654, -0.505715, 0.101960,
		34.463573, 28.691435, 31.647009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445187, 29.509962, 31.390272>,  <35.063232, 29.045435, 31.575636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445187, 29.509962, 31.390272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316872, 29.211187, 31.623232>,  <34.239883, 29.031923, 31.763008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316872, 29.211187, 31.623232>,  <34.445187, 29.509962, 31.390272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316872, 29.211187, 31.623232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280850, 0.662251, 0.694656,
		-0.904556, 0.059267, -0.422215,
		-0.320783, -0.746935, 0.582398,
		34.220638, 28.987106, 31.797951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086311, 29.857107, 31.894266>,  <34.445187, 29.509962, 31.390272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086311, 29.857107, 31.894266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085682, 29.487196, 32.046467>,  <34.085304, 29.265249, 32.137787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085682, 29.487196, 32.046467>,  <34.086311, 29.857107, 31.894266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085682, 29.487196, 32.046467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205416, 0.372685, 0.904937,
		-0.978674, -0.076741, -0.190550,
		-0.001570, -0.924780, 0.380500,
		34.085213, 29.209763, 32.160618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385414, 29.811615, 32.287247>,  <34.086311, 29.857107, 31.894266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385414, 29.811615, 32.287247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627090, 29.517946, 32.411144>,  <33.772099, 29.341745, 32.485485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627090, 29.517946, 32.411144>,  <33.385414, 29.811615, 32.287247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627090, 29.517946, 32.411144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287410, 0.161767, 0.944048,
		-0.743199, -0.659413, -0.113269,
		0.604195, -0.734170, 0.309746,
		33.808350, 29.297695, 32.504066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983540, 29.466040, 32.824001>,  <33.385414, 29.811615, 32.287247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983540, 29.466040, 32.824001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370167, 29.377558, 32.875881>,  <33.602142, 29.324469, 32.907009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370167, 29.377558, 32.875881>,  <32.983540, 29.466040, 32.824001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370167, 29.377558, 32.875881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051482, 0.328083, 0.943245,
		-0.251203, -0.918384, 0.305725,
		0.966564, -0.221206, 0.129695,
		33.660137, 29.311195, 32.914791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043991, 29.058647, 33.508209>,  <32.983540, 29.466040, 32.824001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043991, 29.058647, 33.508209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.377747, 29.242653, 33.386765>,  <33.577999, 29.353056, 33.313896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.377747, 29.242653, 33.386765>,  <33.043991, 29.058647, 33.508209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377747, 29.242653, 33.386765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108511, 0.402969, 0.908758,
		0.540392, -0.791202, 0.286315,
		0.834387, 0.460017, -0.303615,
		33.628063, 29.380657, 33.295681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465557, 28.888277, 34.091267>,  <33.043991, 29.058647, 33.508209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465557, 28.888277, 34.091267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684109, 29.176691, 33.920818>,  <33.815239, 29.349739, 33.818550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684109, 29.176691, 33.920818>,  <33.465557, 28.888277, 34.091267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684109, 29.176691, 33.920818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158210, 0.410763, 0.897911,
		0.822460, -0.558015, 0.110357,
		0.546378, 0.721036, -0.426120,
		33.848022, 29.393002, 33.792984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053810, 28.901815, 34.467476>,  <33.465557, 28.888277, 34.091267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053810, 28.901815, 34.467476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 29.273911, 34.320869>,  <34.065418, 29.497168, 34.232906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 29.273911, 34.320869>,  <34.053810, 28.901815, 34.467476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061066, 29.273911, 34.320869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261162, 0.349438, 0.899826,
		0.965125, -0.112043, -0.236603,
		0.018141, 0.930236, -0.366512,
		34.066509, 29.552982, 34.210915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652328, 29.163471, 34.698399>,  <34.053810, 28.901815, 34.467476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652328, 29.163471, 34.698399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448238, 29.489111, 34.587467>,  <34.325783, 29.684494, 34.520908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448238, 29.489111, 34.587467>,  <34.652328, 29.163471, 34.698399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448238, 29.489111, 34.587467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260311, 0.453520, 0.852383,
		0.819700, 0.362715, -0.443317,
		-0.510226, 0.814099, -0.277332,
		34.295170, 29.733341, 34.504269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132954, 29.617746, 34.827930>,  <34.652328, 29.163471, 34.698399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132954, 29.617746, 34.827930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774094, 29.792330, 34.855118>,  <34.558777, 29.897079, 34.871429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774094, 29.792330, 34.855118>,  <35.132954, 29.617746, 34.827930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774094, 29.792330, 34.855118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249486, 0.373711, 0.893363,
		0.364515, 0.818441, -0.444166,
		-0.897154, 0.436457, 0.067966,
		34.504948, 29.923267, 34.875507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306202, 30.237152, 35.018742>,  <35.132954, 29.617746, 34.827930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306202, 30.237152, 35.018742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916409, 30.238430, 35.108517>,  <34.682533, 30.239197, 35.162384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916409, 30.238430, 35.108517>,  <35.306202, 30.237152, 35.018742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916409, 30.238430, 35.108517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184108, 0.583379, 0.791059,
		-0.128408, 0.812194, -0.569080,
		-0.974482, 0.003194, 0.224442,
		34.624065, 30.239388, 35.175850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381454, 30.642614, 35.584705>,  <35.306202, 30.237152, 35.018742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381454, 30.642614, 35.584705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686199, 30.708338, 35.835323>,  <35.869045, 30.747772, 35.985695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686199, 30.708338, 35.835323>,  <35.381454, 30.642614, 35.584705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686199, 30.708338, 35.835323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645315, -0.276086, -0.712282,
		0.055947, 0.946984, -0.316371,
		0.761865, 0.164309, 0.626550,
		35.914757, 30.757631, 36.023289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856651, 30.793653, 35.093204>,  <35.381454, 30.642614, 35.584705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856651, 30.793653, 35.093204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091366, 30.734577, 35.411667>,  <36.232193, 30.699131, 35.602745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091366, 30.734577, 35.411667>,  <35.856651, 30.793653, 35.093204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091366, 30.734577, 35.411667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747273, -0.279925, -0.602682,
		0.311876, 0.948593, -0.053890,
		0.586785, -0.147692, 0.796160,
		36.267403, 30.690269, 35.650517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468800, 31.141783, 35.058643>,  <35.856651, 30.793653, 35.093204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468800, 31.141783, 35.058643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534508, 30.832626, 35.303806>,  <36.573933, 30.647133, 35.450905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534508, 30.832626, 35.303806>,  <36.468800, 31.141783, 35.058643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534508, 30.832626, 35.303806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669774, -0.368763, -0.644528,
		0.724167, 0.516388, 0.457084,
		0.164271, -0.772889, 0.612909,
		36.583790, 30.600760, 35.487679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172821, 30.911936, 34.941902>,  <36.468800, 31.141783, 35.058643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172821, 30.911936, 34.941902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014893, 30.594036, 35.126289>,  <36.920135, 30.403296, 35.236923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014893, 30.594036, 35.126289>,  <37.172821, 30.911936, 34.941902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014893, 30.594036, 35.126289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574846, -0.605077, -0.550848,
		0.716708, 0.047501, 0.695753,
		-0.394818, -0.794748, 0.460970,
		36.896446, 30.355612, 35.264580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756451, 30.489588, 35.047901>,  <37.172821, 30.911936, 34.941902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756451, 30.489588, 35.047901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453381, 30.231462, 35.086887>,  <37.271538, 30.076588, 35.110279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453381, 30.231462, 35.086887>,  <37.756451, 30.489588, 35.047901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453381, 30.231462, 35.086887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489338, -0.660545, -0.569411,
		0.431827, -0.383736, 0.816255,
		-0.757676, -0.645312, 0.097464,
		37.226078, 30.037868, 35.116127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008469, 29.865536, 35.224712>,  <37.756451, 30.489588, 35.047901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008469, 29.865536, 35.224712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652077, 29.787569, 35.060680>,  <37.438244, 29.740789, 34.962261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652077, 29.787569, 35.060680>,  <38.008469, 29.865536, 35.224712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652077, 29.787569, 35.060680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431792, -0.643033, -0.632506,
		-0.140410, -0.740618, 0.657092,
		-0.890977, -0.194918, -0.410081,
		37.384785, 29.729094, 34.937656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028103, 29.164351, 35.121754>,  <38.008469, 29.865536, 35.224712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028103, 29.164351, 35.121754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728497, 29.290033, 34.888428>,  <37.548733, 29.365444, 34.748432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728497, 29.290033, 34.888428>,  <38.028103, 29.164351, 35.121754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728497, 29.290033, 34.888428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308242, -0.614065, -0.726575,
		-0.586484, -0.724017, 0.363094,
		-0.749015, 0.314203, -0.583311,
		37.503792, 29.384296, 34.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808868, 28.586233, 34.838337>,  <38.028103, 29.164351, 35.121754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808868, 28.586233, 34.838337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668312, 28.879227, 34.605103>,  <37.583977, 29.055023, 34.465160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668312, 28.879227, 34.605103>,  <37.808868, 28.586233, 34.838337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668312, 28.879227, 34.605103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194676, -0.552024, -0.810784,
		-0.915763, -0.398418, 0.051382,
		-0.351396, 0.732483, -0.583086,
		37.562893, 29.098972, 34.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472637, 28.205727, 34.318050>,  <37.808868, 28.586233, 34.838337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472637, 28.205727, 34.318050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513672, 28.571915, 34.162415>,  <37.538292, 28.791628, 34.069035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513672, 28.571915, 34.162415>,  <37.472637, 28.205727, 34.318050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513672, 28.571915, 34.162415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234030, -0.402383, -0.885053,
		-0.966802, -0.000263, -0.255527,
		0.102587, 0.915471, -0.389086,
		37.544449, 28.846556, 34.045689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950264, 28.259836, 33.763138>,  <37.472637, 28.205727, 34.318050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950264, 28.259836, 33.763138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249775, 28.514900, 33.690777>,  <37.429482, 28.667938, 33.647362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249775, 28.514900, 33.690777>,  <36.950264, 28.259836, 33.763138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249775, 28.514900, 33.690777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084211, -0.362230, -0.928277,
		-0.657450, 0.679840, -0.324927,
		0.748778, 0.637658, -0.180898,
		37.474407, 28.706198, 33.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777691, 28.517609, 33.004089>,  <36.950264, 28.259836, 33.763138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777691, 28.517609, 33.004089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159016, 28.599073, 33.093273>,  <37.387810, 28.647951, 33.146786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159016, 28.599073, 33.093273>,  <36.777691, 28.517609, 33.004089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159016, 28.599073, 33.093273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242170, -0.074522, -0.967368,
		-0.180398, 0.976201, -0.120364,
		0.953315, 0.203660, 0.222963,
		37.445011, 28.660172, 33.160164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069130, 28.940603, 32.460518>,  <36.777691, 28.517609, 33.004089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069130, 28.940603, 32.460518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374001, 28.748749, 32.634430>,  <37.556923, 28.633636, 32.738777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374001, 28.748749, 32.634430>,  <37.069130, 28.940603, 32.460518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374001, 28.748749, 32.634430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308243, -0.321710, -0.895259,
		0.569271, 0.816365, -0.097356,
		0.762179, -0.479636, 0.434779,
		37.602654, 28.604858, 32.764862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680168, 29.103115, 32.123962>,  <37.069130, 28.940603, 32.460518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680168, 29.103115, 32.123962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675190, 28.739006, 32.289494>,  <37.672203, 28.520540, 32.388813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675190, 28.739006, 32.289494>,  <37.680168, 29.103115, 32.123962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675190, 28.739006, 32.289494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349341, -0.391738, -0.851177,
		0.936913, 0.133972, 0.322871,
		-0.012447, -0.910271, 0.413826,
		37.671455, 28.465925, 32.413643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179535, 28.682652, 31.757120>,  <37.680168, 29.103115, 32.123962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179535, 28.682652, 31.757120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015968, 28.372458, 31.949539>,  <37.917828, 28.186340, 32.064991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015968, 28.372458, 31.949539>,  <38.179535, 28.682652, 31.757120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015968, 28.372458, 31.949539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085656, -0.557423, -0.825798,
		0.908543, -0.296478, 0.294364,
		-0.408916, -0.775487, 0.481048,
		37.893295, 28.139811, 32.093853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613621, 28.176018, 31.627996>,  <38.179535, 28.682652, 31.757120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613621, 28.176018, 31.627996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255257, 28.018269, 31.709799>,  <38.040237, 27.923618, 31.758881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255257, 28.018269, 31.709799>,  <38.613621, 28.176018, 31.627996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255257, 28.018269, 31.709799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092423, -0.615740, -0.782510,
		0.434524, -0.682154, 0.588094,
		-0.895906, -0.394373, 0.204507,
		37.986485, 27.899958, 31.771151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726582, 27.471144, 31.594780>,  <38.613621, 28.176018, 31.627996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726582, 27.471144, 31.594780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331699, 27.521524, 31.555666>,  <38.094769, 27.551754, 31.532198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331699, 27.521524, 31.555666>,  <38.726582, 27.471144, 31.594780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331699, 27.521524, 31.555666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003709, -0.631211, -0.775602,
		-0.159413, -0.765316, 0.623602,
		-0.987206, 0.125954, -0.097785,
		38.035538, 27.559311, 31.526331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537113, 26.886488, 31.343040>,  <38.726582, 27.471144, 31.594780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537113, 26.886488, 31.343040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203079, 27.080923, 31.240007>,  <38.002659, 27.197584, 31.178188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203079, 27.080923, 31.240007>,  <38.537113, 26.886488, 31.343040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203079, 27.080923, 31.240007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070080, -0.558415, -0.826597,
		-0.545626, -0.672235, 0.500393,
		-0.835093, 0.486080, -0.257576,
		37.952553, 27.226749, 31.162733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037388, 26.464144, 31.173361>,  <38.537113, 26.886488, 31.343040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037388, 26.464144, 31.173361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923824, 26.792000, 30.974329>,  <37.855686, 26.988712, 30.854910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923824, 26.792000, 30.974329>,  <38.037388, 26.464144, 31.173361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923824, 26.792000, 30.974329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087794, -0.494534, -0.864713,
		-0.954823, -0.289187, 0.068444,
		-0.283912, 0.819639, -0.497581,
		37.838650, 27.037891, 30.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.383690, 26.268486, 30.811138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514153, 26.598724, 30.626961>,  <37.592430, 26.796867, 30.516455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514153, 26.598724, 30.626961>,  <37.383690, 26.268486, 30.811138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514153, 26.598724, 30.626961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016560, -0.482016, -0.876006,
		-0.945170, 0.293341, -0.143541,
		0.326158, 0.825598, -0.460445,
		37.612000, 26.846403, 30.488827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921780, 26.334394, 30.220301>,  <37.383690, 26.268486, 30.811138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921780, 26.334394, 30.220301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217068, 26.592325, 30.141079>,  <37.394241, 26.747084, 30.093546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217068, 26.592325, 30.141079>,  <36.921780, 26.334394, 30.220301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217068, 26.592325, 30.141079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004917, -0.298744, -0.954321,
		-0.674537, 0.703529, -0.223711,
		0.738224, 0.644825, -0.198055,
		37.438534, 26.785772, 30.081663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673805, 26.794472, 29.655767>,  <36.921780, 26.334394, 30.220301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673805, 26.794472, 29.655767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071533, 26.752897, 29.664850>,  <37.310173, 26.727953, 29.670300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071533, 26.752897, 29.664850>,  <36.673805, 26.794472, 29.655767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071533, 26.752897, 29.664850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019862, -0.391033, -0.920162,
		0.104517, 0.914489, -0.390878,
		0.994325, -0.103937, 0.022706,
		37.369831, 26.721716, 29.671661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883072, 27.065527, 28.964365>,  <36.673805, 26.794472, 29.655767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883072, 27.065527, 28.964365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209152, 26.873596, 29.094110>,  <37.404800, 26.758438, 29.171957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209152, 26.873596, 29.094110>,  <36.883072, 27.065527, 28.964365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209152, 26.873596, 29.094110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107514, -0.424940, -0.898814,
		0.569109, 0.767590, -0.294824,
		0.815203, -0.479825, 0.324363,
		37.453712, 26.729649, 29.191420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325409, 27.132719, 28.431759>,  <36.883072, 27.065527, 28.964365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325409, 27.132719, 28.431759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491016, 26.834661, 28.640890>,  <37.590382, 26.655827, 28.766369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491016, 26.834661, 28.640890>,  <37.325409, 27.132719, 28.431759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491016, 26.834661, 28.640890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257627, -0.454960, -0.852432,
		0.873050, 0.487617, 0.003607,
		0.414019, -0.745145, 0.522826,
		37.615223, 26.611118, 28.797737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075089, 27.068974, 28.209146>,  <37.325409, 27.132719, 28.431759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075089, 27.068974, 28.209146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979511, 26.708811, 28.354568>,  <37.922165, 26.492714, 28.441822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979511, 26.708811, 28.354568>,  <38.075089, 27.068974, 28.209146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979511, 26.708811, 28.354568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491261, -0.435045, -0.754585,
		0.837596, -0.001705, 0.546287,
		-0.238946, -0.900407, 0.363555,
		37.907829, 26.438688, 28.463634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639240, 26.665695, 28.149773>,  <38.075089, 27.068974, 28.209146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639240, 26.665695, 28.149773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365501, 26.375525, 28.179249>,  <38.201260, 26.201422, 28.196936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365501, 26.375525, 28.179249>,  <38.639240, 26.665695, 28.149773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365501, 26.375525, 28.179249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418235, -0.473305, -0.775282,
		0.597289, -0.499739, 0.627302,
		-0.684343, -0.725427, 0.073692,
		38.160198, 26.157896, 28.201357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106258, 26.023283, 28.083036>,  <38.639240, 26.665695, 28.149773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106258, 26.023283, 28.083036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721706, 25.974653, 27.984274>,  <38.490974, 25.945477, 27.925016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721706, 25.974653, 27.984274>,  <39.106258, 26.023283, 28.083036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721706, 25.974653, 27.984274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265301, -0.170750, -0.948926,
		0.073206, -0.977785, 0.196410,
		-0.961383, -0.121575, -0.246907,
		38.433292, 25.938181, 27.910202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958054, 25.349833, 28.000179>,  <39.106258, 26.023283, 28.083036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958054, 25.349833, 28.000179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671818, 25.521931, 27.780066>,  <38.500076, 25.625191, 27.647997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671818, 25.521931, 27.780066>,  <38.958054, 25.349833, 28.000179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671818, 25.521931, 27.780066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464455, -0.295347, -0.834897,
		-0.521737, -0.853029, 0.011517,
		-0.715592, 0.430247, -0.550286,
		38.457142, 25.651005, 27.614979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724899, 24.807732, 27.498249>,  <38.958054, 25.349833, 28.000179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724899, 24.807732, 27.498249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590118, 25.154648, 27.351677>,  <38.509251, 25.362797, 27.263733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590118, 25.154648, 27.351677>,  <38.724899, 24.807732, 27.498249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590118, 25.154648, 27.351677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383525, -0.229001, -0.894688,
		-0.859866, -0.442006, -0.255464,
		-0.336956, 0.867288, -0.366431,
		38.489033, 25.414835, 27.241747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497082, 24.641428, 26.931952>,  <38.724899, 24.807732, 27.498249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497082, 24.641428, 26.931952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572365, 25.028545, 26.865072>,  <38.617535, 25.260815, 26.824945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572365, 25.028545, 26.865072>,  <38.497082, 24.641428, 26.931952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572365, 25.028545, 26.865072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326384, -0.222199, -0.918750,
		-0.926310, 0.118347, -0.357692,
		0.188210, 0.967792, -0.167198,
		38.628826, 25.318884, 26.814913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480545, 24.749472, 26.253874>,  <38.497082, 24.641428, 26.931952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480545, 24.749472, 26.253874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638752, 25.102798, 26.354525>,  <38.733677, 25.314795, 26.414915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638752, 25.102798, 26.354525>,  <38.480545, 24.749472, 26.253874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638752, 25.102798, 26.354525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521484, 0.009545, -0.853208,
		-0.756055, 0.468677, -0.456861,
		0.395518, 0.883318, 0.251625,
		38.757408, 25.367794, 26.430012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692631, 25.128887, 25.536409>,  <38.480545, 24.749472, 26.253874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692631, 25.128887, 25.536409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893513, 25.296103, 25.839205>,  <39.014042, 25.396433, 26.020882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893513, 25.296103, 25.839205>,  <38.692631, 25.128887, 25.536409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893513, 25.296103, 25.839205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794909, 0.121474, -0.594445,
		-0.340456, 0.900270, -0.271299,
		0.502205, 0.418041, 0.756989,
		39.044174, 25.421515, 26.066301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 25.673620, 25.239689>,  <38.692631, 25.128887, 25.536409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836422, 25.673620, 25.239689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081982, 25.664436, 25.555309>,  <39.229317, 25.658926, 25.744682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081982, 25.664436, 25.555309>,  <38.836422, 25.673620, 25.239689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081982, 25.664436, 25.555309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785985, 0.110474, -0.608296,
		-0.073203, 0.993614, 0.085867,
		0.613897, -0.022962, 0.789052,
		39.266151, 25.657547, 25.792025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266453, 26.279022, 25.334906>,  <38.836422, 25.673620, 25.239689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266453, 26.279022, 25.334906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472057, 25.960968, 25.463627>,  <39.595421, 25.770136, 25.540859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472057, 25.960968, 25.463627>,  <39.266453, 26.279022, 25.334906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472057, 25.960968, 25.463627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604390, 0.069499, -0.793651,
		0.608695, 0.602437, 0.516295,
		0.514007, -0.795135, 0.321804,
		39.626259, 25.722427, 25.560167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956768, 26.398937, 25.202486>,  <39.266453, 26.279022, 25.334906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956768, 26.398937, 25.202486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017864, 26.008610, 25.265032>,  <40.054523, 25.774414, 25.302559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017864, 26.008610, 25.265032>,  <39.956768, 26.398937, 25.202486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017864, 26.008610, 25.265032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646035, -0.021142, -0.763015,
		0.747869, 0.217565, 0.627182,
		0.152745, -0.975817, 0.156366,
		40.063686, 25.715864, 25.311941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640274, 26.355480, 25.109798>,  <39.956768, 26.398937, 25.202486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640274, 26.355480, 25.109798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507824, 25.983526, 25.045710>,  <40.428352, 25.760353, 25.007257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507824, 25.983526, 25.045710>,  <40.640274, 26.355480, 25.109798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507824, 25.983526, 25.045710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702610, -0.129640, -0.699666,
		0.629838, -0.344248, 0.696274,
		-0.331124, -0.929885, -0.160220,
		40.408485, 25.704561, 24.997644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293610, 26.032524, 24.897524>,  <40.640274, 26.355480, 25.109798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293610, 26.032524, 24.897524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018154, 25.764875, 24.785774>,  <40.852882, 25.604286, 24.718723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018154, 25.764875, 24.785774>,  <41.293610, 26.032524, 24.897524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018154, 25.764875, 24.785774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492772, -0.149212, -0.857270,
		0.531932, -0.728018, 0.432478,
		-0.688639, -0.669123, -0.279376,
		40.811562, 25.564138, 24.701962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633450, 25.351746, 24.718960>,  <41.293610, 26.032524, 24.897524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633450, 25.351746, 24.718960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285629, 25.350830, 24.521421>,  <41.076939, 25.350281, 24.402899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285629, 25.350830, 24.521421>,  <41.633450, 25.351746, 24.718960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285629, 25.350830, 24.521421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477547, -0.258712, -0.839653,
		-0.125842, -0.965952, 0.226055,
		-0.869547, -0.002288, -0.493845,
		41.024765, 25.350143, 24.373268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474674, 24.672773, 24.365644>,  <41.633450, 25.351746, 24.718960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474674, 24.672773, 24.365644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260143, 24.938311, 24.157160>,  <41.131424, 25.097633, 24.032068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260143, 24.938311, 24.157160>,  <41.474674, 24.672773, 24.365644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260143, 24.938311, 24.157160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417693, -0.327854, -0.847375,
		-0.733407, -0.672177, -0.101446,
		-0.536327, 0.663844, -0.521214,
		41.099247, 25.137465, 24.000795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308594, 24.392591, 23.726717>,  <41.474674, 24.672773, 24.365644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308594, 24.392591, 23.726717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.253780, 24.780983, 23.648306>,  <41.220894, 25.014017, 23.601259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.253780, 24.780983, 23.648306>,  <41.308594, 24.392591, 23.726717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253780, 24.780983, 23.648306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583380, -0.080826, -0.808168,
		-0.800557, -0.225101, -0.555373,
		-0.137031, 0.970977, -0.196026,
		41.212669, 25.072277, 23.589499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911861, 24.426083, 23.097845>,  <41.308594, 24.392591, 23.726717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911861, 24.426083, 23.097845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126194, 24.757563, 23.162514>,  <41.254795, 24.956451, 23.201315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126194, 24.757563, 23.162514>,  <40.911861, 24.426083, 23.097845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126194, 24.757563, 23.162514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539920, -0.189096, -0.820201,
		-0.649130, 0.526779, -0.548756,
		0.535832, 0.828702, 0.161671,
		41.286945, 25.006174, 23.211016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902637, 24.819212, 22.468750>,  <40.911861, 24.426083, 23.097845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902637, 24.819212, 22.468750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.215946, 24.908543, 22.700821>,  <41.403931, 24.962141, 22.840063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.215946, 24.908543, 22.700821>,  <40.902637, 24.819212, 22.468750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215946, 24.908543, 22.700821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619512, -0.202593, -0.758394,
		-0.051830, 0.953457, -0.297040,
		0.783274, 0.223327, 0.580178,
		41.450928, 24.975540, 22.874874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217983, 24.714727, 22.151991>,  <40.902637, 24.819212, 22.468750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217983, 24.714727, 22.151991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045784, 24.742138, 21.791998>,  <39.942463, 24.758583, 21.576002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045784, 24.742138, 21.791998>,  <40.217983, 24.714727, 22.151991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045784, 24.742138, 21.791998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711420, 0.587883, 0.385065,
		0.555473, 0.806038, -0.204335,
		-0.430502, 0.068525, -0.899984,
		39.916634, 24.762695, 21.522003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096012, 25.387241, 22.088840>,  <40.217983, 24.714727, 22.151991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096012, 25.387241, 22.088840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.843468, 25.170809, 21.866629>,  <39.691940, 25.040949, 21.733301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.843468, 25.170809, 21.866629>,  <40.096012, 25.387241, 22.088840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843468, 25.170809, 21.866629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746003, 0.619429, 0.244513,
		0.211811, 0.568804, -0.794731,
		-0.631360, -0.541082, -0.555531,
		39.654060, 25.008484, 21.699968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763905, 25.827818, 21.639780>,  <40.096012, 25.387241, 22.088840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763905, 25.827818, 21.639780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528332, 25.505655, 21.666552>,  <39.386990, 25.312357, 21.682613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528332, 25.505655, 21.666552>,  <39.763905, 25.827818, 21.639780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528332, 25.505655, 21.666552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728700, 0.565001, 0.387002,
		-0.349508, 0.179148, -0.919647,
		-0.588932, -0.805407, 0.066927,
		39.351650, 25.264032, 21.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197857, 26.033583, 21.308407>,  <39.763905, 25.827818, 21.639780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197857, 26.033583, 21.308407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105606, 25.759209, 21.584467>,  <39.050255, 25.594585, 21.750103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105606, 25.759209, 21.584467>,  <39.197857, 26.033583, 21.308407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105606, 25.759209, 21.584467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715740, 0.600082, 0.357236,
		-0.659186, -0.411578, -0.629347,
		-0.230630, -0.685934, 0.690149,
		39.036419, 25.553429, 21.791512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571751, 26.243509, 21.443100>,  <39.197857, 26.033583, 21.308407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571751, 26.243509, 21.443100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596024, 25.956999, 21.721169>,  <38.610588, 25.785091, 21.888010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596024, 25.956999, 21.721169>,  <38.571751, 26.243509, 21.443100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596024, 25.956999, 21.721169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797264, 0.384261, 0.465526,
		-0.600573, -0.582485, -0.547744,
		0.060685, -0.716279, 0.695171,
		38.614227, 25.742115, 21.929720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858704, 26.273996, 21.756336>,  <38.571751, 26.243509, 21.443100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858704, 26.273996, 21.756336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068970, 26.065536, 22.025284>,  <38.195129, 25.940460, 22.186653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068970, 26.065536, 22.025284>,  <37.858704, 26.273996, 21.756336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068970, 26.065536, 22.025284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676326, 0.223393, 0.701910,
		-0.516002, -0.823711, -0.235037,
		0.525666, -0.521149, 0.672368,
		38.226669, 25.909191, 22.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408821, 25.840591, 21.996902>,  <37.858704, 26.273996, 21.756336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408821, 25.840591, 21.996902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705658, 25.865551, 22.263859>,  <37.883759, 25.880527, 22.424032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705658, 25.865551, 22.263859>,  <37.408821, 25.840591, 21.996902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705658, 25.865551, 22.263859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666416, -0.038340, 0.744593,
		0.072050, -0.997315, 0.013132,
		0.742090, 0.062399, 0.667389,
		37.928284, 25.884270, 22.464075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274078, 25.294725, 22.539997>,  <37.408821, 25.840591, 21.996902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274078, 25.294725, 22.539997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513027, 25.569489, 22.705557>,  <37.656395, 25.734346, 22.804892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513027, 25.569489, 22.705557>,  <37.274078, 25.294725, 22.539997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513027, 25.569489, 22.705557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598206, 0.037920, 0.800444,
		0.534136, -0.725755, 0.433564,
		0.597367, 0.686907, 0.413897,
		37.692238, 25.775560, 22.829725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476910, 25.078201, 23.221794>,  <37.274078, 25.294725, 22.539997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476910, 25.078201, 23.221794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554577, 25.469269, 23.253950>,  <37.601177, 25.703909, 23.273245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554577, 25.469269, 23.253950>,  <37.476910, 25.078201, 23.221794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554577, 25.469269, 23.253950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456147, 0.017432, 0.889734,
		0.868463, -0.209430, 0.449345,
		0.194170, 0.977668, 0.080392,
		37.612827, 25.762569, 23.278069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712223, 25.239809, 23.817200>,  <37.476910, 25.078201, 23.221794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712223, 25.239809, 23.817200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586372, 25.612759, 23.745995>,  <37.510860, 25.836529, 23.703272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586372, 25.612759, 23.745995>,  <37.712223, 25.239809, 23.817200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586372, 25.612759, 23.745995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225062, 0.108913, 0.968238,
		0.922147, 0.344700, 0.175575,
		-0.314629, 0.932373, -0.178013,
		37.491985, 25.892471, 23.692591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029926, 25.697664, 24.285566>,  <37.712223, 25.239809, 23.817200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029926, 25.697664, 24.285566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703503, 25.892736, 24.161493>,  <37.507648, 26.009781, 24.087049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703503, 25.892736, 24.161493>,  <38.029926, 25.697664, 24.285566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703503, 25.892736, 24.161493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260279, 0.169087, 0.950613,
		0.516045, 0.856490, -0.011051,
		-0.816059, 0.487683, -0.310182,
		37.458683, 26.039042, 24.068439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022499, 26.229742, 24.677532>,  <38.029926, 25.697664, 24.285566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022499, 26.229742, 24.677532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649498, 26.200214, 24.536121>,  <37.425697, 26.182497, 24.451275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649498, 26.200214, 24.536121>,  <38.022499, 26.229742, 24.677532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649498, 26.200214, 24.536121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361002, 0.162273, 0.918338,
		-0.010425, 0.983981, -0.177970,
		-0.932507, -0.073821, -0.353527,
		37.369747, 26.178068, 24.430063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644844, 26.679853, 25.079935>,  <38.022499, 26.229742, 24.677532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644844, 26.679853, 25.079935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349895, 26.450548, 24.937019>,  <37.172928, 26.312965, 24.851271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349895, 26.450548, 24.937019>,  <37.644844, 26.679853, 25.079935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349895, 26.450548, 24.937019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433112, -0.004660, 0.901328,
		-0.518365, 0.819357, -0.244851,
		-0.737368, -0.573265, -0.357289,
		37.128685, 26.278568, 24.829832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977310, 26.883207, 25.310499>,  <37.644844, 26.679853, 25.079935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977310, 26.883207, 25.310499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885532, 26.501568, 25.233503>,  <36.830467, 26.272585, 25.187305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885532, 26.501568, 25.233503>,  <36.977310, 26.883207, 25.310499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885532, 26.501568, 25.233503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562244, -0.031511, 0.826371,
		-0.794504, 0.297832, -0.529206,
		-0.229444, -0.954098, -0.192490,
		36.816700, 26.215338, 25.175756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349682, 26.922531, 25.547615>,  <36.977310, 26.883207, 25.310499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349682, 26.922531, 25.547615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428551, 26.531282, 25.521093>,  <36.475872, 26.296532, 25.505180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428551, 26.531282, 25.521093>,  <36.349682, 26.922531, 25.547615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428551, 26.531282, 25.521093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598469, -0.173656, 0.782099,
		-0.776503, -0.114529, -0.619617,
		0.197173, -0.978124, -0.066303,
		36.487701, 26.237844, 25.501202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658936, 26.630638, 25.699249>,  <36.349682, 26.922531, 25.547615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658936, 26.630638, 25.699249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943130, 26.359898, 25.776268>,  <36.113647, 26.197453, 25.822479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943130, 26.359898, 25.776268>,  <35.658936, 26.630638, 25.699249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943130, 26.359898, 25.776268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534852, -0.341584, 0.772822,
		-0.457317, -0.652065, -0.604708,
		0.710489, -0.676854, 0.192546,
		36.156277, 26.156841, 25.834032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281754, 26.083052, 25.904802>,  <35.658936, 26.630638, 25.699249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281754, 26.083052, 25.904802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644604, 26.007660, 26.055319>,  <35.862316, 25.962425, 26.145628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644604, 26.007660, 26.055319>,  <35.281754, 26.083052, 25.904802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644604, 26.007660, 26.055319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420531, -0.441016, 0.792880,
		0.016508, -0.877485, -0.479319,
		0.907128, -0.188480, 0.376291,
		35.916740, 25.951117, 26.168205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206688, 25.470873, 26.174749>,  <35.281754, 26.083052, 25.904802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206688, 25.470873, 26.174749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549091, 25.580315, 26.350199>,  <35.754532, 25.645979, 26.455469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549091, 25.580315, 26.350199>,  <35.206688, 25.470873, 26.174749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549091, 25.580315, 26.350199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354078, -0.307910, 0.883075,
		0.376669, -0.911226, -0.166696,
		0.856008, 0.273603, 0.438625,
		35.805893, 25.662395, 26.481787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383533, 24.892830, 26.570478>,  <35.206688, 25.470873, 26.174749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383533, 24.892830, 26.570478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519302, 25.247890, 26.694977>,  <35.600761, 25.460926, 26.769676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519302, 25.247890, 26.694977>,  <35.383533, 24.892830, 26.570478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519302, 25.247890, 26.694977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342896, -0.191357, 0.919676,
		0.875909, -0.418880, 0.239421,
		0.339419, 0.887649, 0.311244,
		35.621128, 25.514185, 26.788349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612595, 24.756758, 27.254248>,  <35.383533, 24.892830, 26.570478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612595, 24.756758, 27.254248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599880, 25.156507, 27.248005>,  <35.592251, 25.396357, 27.244259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599880, 25.156507, 27.248005>,  <35.612595, 24.756758, 27.254248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599880, 25.156507, 27.248005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334421, 0.004082, 0.942415,
		0.941888, 0.035175, 0.334082,
		-0.031786, 0.999373, -0.015608,
		35.590343, 25.456320, 27.243322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057274, 24.969433, 27.853565>,  <35.612595, 24.756758, 27.254248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057274, 24.969433, 27.853565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801666, 25.255388, 27.740013>,  <35.648300, 25.426962, 27.671883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801666, 25.255388, 27.740013>,  <36.057274, 24.969433, 27.853565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801666, 25.255388, 27.740013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284152, 0.123555, 0.950785,
		0.714779, 0.688237, 0.124182,
		-0.639022, 0.714888, -0.283878,
		35.609959, 25.469854, 27.654850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.688271, 28.153063, 33.287106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358955, 28.295479, 33.110271>,  <38.161366, 28.380928, 33.004173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358955, 28.295479, 33.110271>,  <38.688271, 28.153063, 33.287106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358955, 28.295479, 33.110271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173584, 0.583594, 0.793276,
		0.540434, 0.729831, -0.418661,
		-0.823286, 0.356041, -0.442081,
		38.111969, 28.402290, 32.977646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705341, 28.865644, 33.485119>,  <38.688271, 28.153063, 33.287106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705341, 28.865644, 33.485119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327370, 28.802715, 33.370331>,  <38.100586, 28.764957, 33.301460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327370, 28.802715, 33.370331>,  <38.705341, 28.865644, 33.485119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327370, 28.802715, 33.370331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325937, 0.531262, 0.782001,
		0.029428, 0.832472, -0.553285,
		-0.944933, -0.157323, -0.286968,
		38.043888, 28.755518, 33.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428295, 29.539604, 33.394650>,  <38.705341, 28.865644, 33.485119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428295, 29.539604, 33.394650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110245, 29.299805, 33.431267>,  <37.919415, 29.155924, 33.453236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110245, 29.299805, 33.431267>,  <38.428295, 29.539604, 33.394650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110245, 29.299805, 33.431267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367236, 0.596095, 0.714009,
		-0.482616, 0.534107, -0.694127,
		-0.795123, -0.599500, 0.091542,
		37.871708, 29.119955, 33.458729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853447, 29.993076, 33.478649>,  <38.428295, 29.539604, 33.394650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853447, 29.993076, 33.478649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742722, 29.641197, 33.633316>,  <37.676289, 29.430071, 33.726116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742722, 29.641197, 33.633316>,  <37.853447, 29.993076, 33.478649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742722, 29.641197, 33.633316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441962, 0.473855, 0.761663,
		-0.853256, 0.039944, -0.519960,
		-0.276810, -0.879696, 0.386666,
		37.659679, 29.377289, 33.749317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135265, 30.026173, 33.632469>,  <37.853447, 29.993076, 33.478649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135265, 30.026173, 33.632469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.264851, 29.731916, 33.870422>,  <37.342602, 29.555363, 34.013195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.264851, 29.731916, 33.870422>,  <37.135265, 30.026173, 33.632469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264851, 29.731916, 33.870422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300362, 0.516282, 0.802020,
		-0.897122, -0.438506, -0.053700,
		0.323966, -0.735639, 0.594878,
		37.362041, 29.511225, 34.048885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519276, 29.825708, 33.939114>,  <37.135265, 30.026173, 33.632469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519276, 29.825708, 33.939114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817142, 29.698996, 34.174103>,  <36.995861, 29.622967, 34.315098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817142, 29.698996, 34.174103>,  <36.519276, 29.825708, 33.939114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817142, 29.698996, 34.174103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541432, 0.227992, 0.809241,
		-0.390294, -0.920688, -0.001740,
		0.744662, -0.316785, 0.587474,
		37.040543, 29.603960, 34.350346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200260, 29.545485, 34.518078>,  <36.519276, 29.825708, 33.939114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200260, 29.545485, 34.518078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571175, 29.633690, 34.639088>,  <36.793724, 29.686613, 34.711693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571175, 29.633690, 34.639088>,  <36.200260, 29.545485, 34.518078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571175, 29.633690, 34.639088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355980, 0.269270, 0.894859,
		0.115868, -0.937480, 0.328187,
		0.927282, 0.220513, 0.302524,
		36.849358, 29.699844, 34.729843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239208, 29.230421, 35.196774>,  <36.200260, 29.545485, 34.518078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239208, 29.230421, 35.196774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532234, 29.499973, 35.158348>,  <36.708050, 29.661705, 35.135292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532234, 29.499973, 35.158348>,  <36.239208, 29.230421, 35.196774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532234, 29.499973, 35.158348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258795, 0.406252, 0.876347,
		0.629579, -0.617124, 0.472005,
		0.732568, 0.673882, -0.096059,
		36.752007, 29.702137, 35.129532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514862, 29.283644, 35.833698>,  <36.239208, 29.230421, 35.196774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514862, 29.283644, 35.833698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.626732, 29.623602, 35.655056>,  <36.693851, 29.827578, 35.547871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.626732, 29.623602, 35.655056>,  <36.514862, 29.283644, 35.833698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626732, 29.623602, 35.655056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219862, 0.509504, 0.831905,
		0.934583, -0.134467, 0.329354,
		0.279671, 0.849897, -0.446609,
		36.710632, 29.878571, 35.521072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856098, 29.599874, 36.307148>,  <36.514862, 29.283644, 35.833698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856098, 29.599874, 36.307148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.763519, 29.897636, 36.056614>,  <36.707973, 30.076294, 35.906296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.763519, 29.897636, 36.056614>,  <36.856098, 29.599874, 36.307148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763519, 29.897636, 36.056614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217723, 0.587847, 0.779123,
		0.948171, 0.316693, 0.026019,
		-0.231448, 0.744407, -0.626330,
		36.694084, 30.120958, 35.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027508, 30.230917, 36.601505>,  <36.856098, 29.599874, 36.307148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027508, 30.230917, 36.601505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793243, 30.391237, 36.319695>,  <36.652687, 30.487431, 36.150608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793243, 30.391237, 36.319695>,  <37.027508, 30.230917, 36.601505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793243, 30.391237, 36.319695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334086, 0.672566, 0.660335,
		0.738506, 0.622104, -0.259991,
		-0.585658, 0.400802, -0.704530,
		36.617546, 30.511478, 36.108337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011620, 30.923632, 36.756126>,  <37.027508, 30.230917, 36.601505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011620, 30.923632, 36.756126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.677006, 30.860565, 36.546230>,  <36.476238, 30.822725, 36.420292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.677006, 30.860565, 36.546230>,  <37.011620, 30.923632, 36.756126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677006, 30.860565, 36.546230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537960, 0.418063, 0.731999,
		0.103961, 0.894631, -0.434543,
		-0.836535, -0.157667, -0.524738,
		36.426044, 30.813265, 36.388809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708500, 30.806633, 36.853405>,  <37.011620, 30.923632, 36.756126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708500, 30.806633, 36.853405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781452, 30.757006, 36.463257>,  <37.825222, 30.727230, 36.229168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781452, 30.757006, 36.463257>,  <37.708500, 30.806633, 36.853405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781452, 30.757006, 36.463257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763640, 0.607004, -0.219998,
		0.619348, 0.784954, 0.015960,
		0.182376, -0.124068, -0.975370,
		37.836166, 30.719786, 36.170647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639992, 31.417835, 37.383343>,  <37.708500, 30.806633, 36.853405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639992, 31.417835, 37.383343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618683, 31.809048, 37.463955>,  <37.605900, 32.043774, 37.512321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618683, 31.809048, 37.463955>,  <37.639992, 31.417835, 37.383343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618683, 31.809048, 37.463955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526546, 0.143973, -0.837867,
		-0.848476, -0.150748, 0.507310,
		-0.053268, 0.978032, 0.201533,
		37.602703, 32.102459, 37.524414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890743, 31.718678, 37.452019>,  <37.639992, 31.417835, 37.383343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890743, 31.718678, 37.452019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148960, 31.996758, 37.325546>,  <37.303890, 32.163605, 37.249660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148960, 31.996758, 37.325546>,  <36.890743, 31.718678, 37.452019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148960, 31.996758, 37.325546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634047, 0.257058, -0.729318,
		-0.425745, 0.671281, 0.606731,
		0.645543, 0.695200, -0.316183,
		37.342625, 32.205318, 37.230690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466187, 32.152443, 37.104534>,  <36.890743, 31.718678, 37.452019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466187, 32.152443, 37.104534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823418, 32.239403, 36.946976>,  <37.037754, 32.291576, 36.852440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823418, 32.239403, 36.946976>,  <36.466187, 32.152443, 37.104534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823418, 32.239403, 36.946976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445758, 0.308919, -0.840160,
		-0.060965, 0.925909, 0.372793,
		0.893075, 0.217396, -0.393898,
		37.091339, 32.304623, 36.828808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289333, 32.733727, 36.736938>,  <36.466187, 32.152443, 37.104534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289333, 32.733727, 36.736938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.637810, 32.593880, 36.599072>,  <36.846897, 32.509972, 36.516350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.637810, 32.593880, 36.599072>,  <36.289333, 32.733727, 36.736938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637810, 32.593880, 36.599072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285196, 0.211045, -0.934946,
		0.399612, 0.912813, 0.084152,
		0.871191, -0.349616, -0.344667,
		36.899166, 32.488995, 36.495670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628708, 33.276222, 36.334839>,  <36.289333, 32.733727, 36.736938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628708, 33.276222, 36.334839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791355, 32.935852, 36.201817>,  <36.888943, 32.731632, 36.122002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791355, 32.935852, 36.201817>,  <36.628708, 33.276222, 36.334839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791355, 32.935852, 36.201817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166282, 0.288995, -0.942779,
		0.898337, 0.438652, -0.023981,
		0.406622, -0.850921, -0.332555,
		36.913342, 32.680576, 36.102051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132462, 33.446857, 35.884422>,  <36.628708, 33.276222, 36.334839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132462, 33.446857, 35.884422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112019, 33.060844, 35.781586>,  <37.099754, 32.829235, 35.719883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112019, 33.060844, 35.781586>,  <37.132462, 33.446857, 35.884422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112019, 33.060844, 35.781586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318418, 0.228246, -0.920062,
		0.946572, -0.128882, 0.295620,
		-0.051105, -0.965035, -0.257090,
		37.096687, 32.771336, 35.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610973, 33.313946, 35.452377>,  <37.132462, 33.446857, 35.884422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610973, 33.313946, 35.452377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357487, 33.013123, 35.379913>,  <37.205395, 32.832630, 35.336433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357487, 33.013123, 35.379913>,  <37.610973, 33.313946, 35.452377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357487, 33.013123, 35.379913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047149, 0.196200, -0.979430,
		0.772128, -0.629222, -0.088877,
		-0.633716, -0.752054, -0.181159,
		37.167374, 32.787506, 35.325565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861969, 33.089813, 34.835033>,  <37.610973, 33.313946, 35.452377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861969, 33.089813, 34.835033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 32.983448, 34.865353>,  <37.246922, 32.919628, 34.883545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 32.983448, 34.865353>,  <37.861969, 33.089813, 34.835033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477566, 32.983448, 34.865353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095336, 0.061331, -0.993554,
		0.259550, -0.962044, -0.084291,
		-0.961012, -0.265913, 0.075799,
		37.189262, 32.903675, 34.888092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839752, 32.713169, 34.323784>,  <37.861969, 33.089813, 34.835033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839752, 32.713169, 34.323784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.452572, 32.752068, 34.416397>,  <37.220264, 32.775406, 34.471966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.452572, 32.752068, 34.416397>,  <37.839752, 32.713169, 34.323784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452572, 32.752068, 34.416397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239961, -0.086288, -0.966940,
		-0.074052, -0.991513, 0.106858,
		-0.967954, 0.097245, 0.231535,
		37.162186, 32.781242, 34.485859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486637, 32.200054, 34.003349>,  <37.839752, 32.713169, 34.323784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486637, 32.200054, 34.003349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209602, 32.481491, 34.066952>,  <37.043381, 32.650352, 34.105114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209602, 32.481491, 34.066952>,  <37.486637, 32.200054, 34.003349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209602, 32.481491, 34.066952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261066, -0.039003, -0.964532,
		-0.672434, -0.709535, 0.210697,
		-0.692587, 0.703590, 0.159009,
		37.001827, 32.692570, 34.114655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879784, 31.914047, 33.776794>,  <37.486637, 32.200054, 34.003349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879784, 31.914047, 33.776794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836464, 32.311611, 33.768692>,  <36.810471, 32.550152, 33.763828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836464, 32.311611, 33.768692>,  <36.879784, 31.914047, 33.776794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836464, 32.311611, 33.768692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260425, -0.048032, -0.964299,
		-0.959401, -0.099156, 0.264042,
		-0.108298, 0.993912, -0.020259,
		36.803974, 32.609783, 33.762615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239098, 31.985003, 33.525566>,  <36.879784, 31.914047, 33.776794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239098, 31.985003, 33.525566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448757, 32.321075, 33.469902>,  <36.574554, 32.522720, 33.436504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448757, 32.321075, 33.469902>,  <36.239098, 31.985003, 33.525566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448757, 32.321075, 33.469902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167364, -0.058592, -0.984153,
		-0.835020, 0.539131, 0.109906,
		0.524148, 0.840181, -0.139157,
		36.606003, 32.573132, 33.428154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814632, 32.288521, 33.121132>,  <36.239098, 31.985003, 33.525566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814632, 32.288521, 33.121132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.167141, 32.472416, 33.077301>,  <36.378647, 32.582752, 33.051003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.167141, 32.472416, 33.077301>,  <35.814632, 32.288521, 33.121132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167141, 32.472416, 33.077301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028939, -0.178934, -0.983435,
		-0.471728, 0.869842, -0.144385,
		0.881269, 0.459736, -0.109580,
		36.431522, 32.610336, 33.044426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740322, 32.729626, 32.526421>,  <35.814632, 32.288521, 33.121132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740322, 32.729626, 32.526421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139862, 32.723824, 32.544697>,  <36.379585, 32.720341, 32.555660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139862, 32.723824, 32.544697>,  <35.740322, 32.729626, 32.526421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139862, 32.723824, 32.544697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044544, -0.071277, -0.996461,
		0.017713, 0.997351, -0.070549,
		0.998850, -0.014508, 0.045688,
		36.439518, 32.719471, 32.558403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084602, 33.136105, 31.877256>,  <35.740322, 32.729626, 32.526421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084602, 33.136105, 31.877256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371357, 32.895985, 32.019081>,  <36.543411, 32.751915, 32.104176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371357, 32.895985, 32.019081>,  <36.084602, 33.136105, 31.877256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371357, 32.895985, 32.019081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132558, -0.381923, -0.914638,
		0.684470, 0.702694, -0.194222,
		0.716889, -0.600296, 0.354563,
		36.586422, 32.715897, 32.125450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279381, 33.822979, 31.578781>,  <36.084602, 33.136105, 31.877256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279381, 33.822979, 31.578781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002262, 34.022919, 31.370865>,  <35.835991, 34.142883, 31.246115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002262, 34.022919, 31.370865>,  <36.279381, 33.822979, 31.578781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002262, 34.022919, 31.370865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374224, 0.366943, 0.851651,
		0.616433, 0.784538, -0.067159,
		-0.692796, 0.499853, -0.519789,
		35.794422, 34.172874, 31.214928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283997, 34.484547, 31.835197>,  <36.279381, 33.822979, 31.578781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283997, 34.484547, 31.835197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923733, 34.405766, 31.680264>,  <35.707577, 34.358498, 31.587303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923733, 34.405766, 31.680264>,  <36.283997, 34.484547, 31.835197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923733, 34.405766, 31.680264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413722, 0.116110, 0.902969,
		-0.132871, 0.973513, -0.186060,
		-0.900655, -0.196956, -0.387336,
		35.653538, 34.346680, 31.564062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749634, 35.092052, 32.076859>,  <36.283997, 34.484547, 31.835197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749634, 35.092052, 32.076859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558121, 34.750626, 31.994694>,  <35.443214, 34.545769, 31.945395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558121, 34.750626, 31.994694>,  <35.749634, 35.092052, 32.076859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558121, 34.750626, 31.994694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528827, 0.093624, 0.843550,
		-0.700792, 0.512506, -0.496213,
		-0.478782, -0.853564, -0.205416,
		35.414486, 34.494556, 31.933069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106976, 35.331245, 32.334518>,  <35.749634, 35.092052, 32.076859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106976, 35.331245, 32.334518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036747, 34.942917, 32.269180>,  <34.994610, 34.709919, 32.229977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036747, 34.942917, 32.269180>,  <35.106976, 35.331245, 32.334518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036747, 34.942917, 32.269180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642225, -0.012809, 0.766409,
		-0.746138, 0.239464, -0.621237,
		-0.175570, -0.970821, -0.163347,
		34.984077, 34.651672, 32.220177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403561, 35.194233, 32.476398>,  <35.106976, 35.331245, 32.334518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403561, 35.194233, 32.476398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554661, 34.825378, 32.509792>,  <34.645321, 34.604065, 32.529827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554661, 34.825378, 32.509792>,  <34.403561, 35.194233, 32.476398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554661, 34.825378, 32.509792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704906, -0.227951, 0.671674,
		-0.600346, -0.312570, -0.736128,
		0.377746, -0.922138, 0.083483,
		34.667984, 34.548737, 32.534836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801468, 34.685040, 32.501793>,  <34.403561, 35.194233, 32.476398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801468, 34.685040, 32.501793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 34.506973, 32.679146>,  <34.299370, 34.400131, 32.785557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 34.506973, 32.679146>,  <33.801468, 34.685040, 32.501793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112656, 34.506973, 32.679146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601209, -0.322459, 0.731141,
		-0.182507, -0.835373, -0.518502,
		0.777971, -0.445166, 0.443383,
		34.346046, 34.373421, 32.812160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603859, 34.016495, 32.724377>,  <33.801468, 34.685040, 32.501793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603859, 34.016495, 32.724377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.934032, 34.023617, 32.950062>,  <34.132137, 34.027889, 33.085472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.934032, 34.023617, 32.950062>,  <33.603859, 34.016495, 32.724377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934032, 34.023617, 32.950062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522674, -0.353450, 0.775813,
		0.213238, -0.935284, -0.282442,
		0.825434, 0.017807, 0.564217,
		34.181664, 34.028957, 33.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599049, 33.433319, 33.132191>,  <33.603859, 34.016495, 32.724377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599049, 33.433319, 33.132191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831451, 33.686989, 33.336250>,  <33.970894, 33.839191, 33.458687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831451, 33.686989, 33.336250>,  <33.599049, 33.433319, 33.132191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831451, 33.686989, 33.336250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384611, -0.338467, 0.858786,
		0.717289, -0.695172, 0.047258,
		0.581009, 0.634174, 0.510149,
		34.005753, 33.877239, 33.489296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891544, 32.993828, 33.616039>,  <33.599049, 33.433319, 33.132191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891544, 32.993828, 33.616039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911896, 33.367855, 33.756355>,  <33.924107, 33.592274, 33.840546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911896, 33.367855, 33.756355>,  <33.891544, 32.993828, 33.616039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911896, 33.367855, 33.756355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332876, -0.315280, 0.888702,
		0.941597, -0.161987, 0.295222,
		0.050881, 0.935072, 0.350788,
		33.927158, 33.648376, 33.861591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074215, 32.869152, 34.362843>,  <33.891544, 32.993828, 33.616039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074215, 32.869152, 34.362843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.970192, 33.255379, 34.359871>,  <33.907776, 33.487114, 34.358086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.970192, 33.255379, 34.359871>,  <34.074215, 32.869152, 34.362843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970192, 33.255379, 34.359871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334992, -0.083001, 0.938558,
		0.905620, 0.246573, 0.345042,
		-0.260062, 0.965563, -0.007433,
		33.892174, 33.545048, 34.357639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302372, 33.161583, 35.088814>,  <34.074215, 32.869152, 34.362843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302372, 33.161583, 35.088814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.026962, 33.398243, 34.921055>,  <33.861717, 33.540237, 34.820400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.026962, 33.398243, 34.921055>,  <34.302372, 33.161583, 35.088814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026962, 33.398243, 34.921055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457807, 0.093918, 0.884077,
		0.562450, 0.800708, 0.206195,
		-0.688522, 0.591647, -0.419394,
		33.820404, 33.575737, 34.795238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131496, 33.802559, 35.566589>,  <34.302372, 33.161583, 35.088814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131496, 33.802559, 35.566589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.809509, 33.751225, 35.334881>,  <33.616318, 33.720425, 35.195858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.809509, 33.751225, 35.334881>,  <34.131496, 33.802559, 35.566589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809509, 33.751225, 35.334881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587757, 0.039176, 0.808089,
		-0.081014, 0.990956, -0.106967,
		-0.804971, -0.128337, -0.579268,
		33.568016, 33.712723, 35.161102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.561531, 33.621758, 27.814417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169697, 33.575413, 27.748713>,  <36.934597, 33.547604, 27.709290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169697, 33.575413, 27.748713>,  <37.561531, 33.621758, 27.814417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169697, 33.575413, 27.748713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189491, 0.259608, 0.946941,
		-0.067076, 0.958738, -0.276265,
		-0.979589, -0.115867, -0.164259,
		36.875820, 33.540653, 27.699434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187439, 34.124649, 28.115847>,  <37.561531, 33.621758, 27.814417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187439, 34.124649, 28.115847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909958, 33.836559, 28.112841>,  <36.743469, 33.663708, 28.111036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909958, 33.836559, 28.112841>,  <37.187439, 34.124649, 28.115847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909958, 33.836559, 28.112841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319229, 0.298088, 0.899576,
		-0.645655, 0.626437, -0.436701,
		-0.693702, -0.720222, -0.007514,
		36.701847, 33.620491, 28.110586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599041, 34.507832, 28.428738>,  <37.187439, 34.124649, 28.115847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599041, 34.507832, 28.428738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519573, 34.117393, 28.463985>,  <36.471893, 33.883129, 28.485134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519573, 34.117393, 28.463985>,  <36.599041, 34.507832, 28.428738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519573, 34.117393, 28.463985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524864, 0.181896, 0.831524,
		-0.827677, 0.118946, -0.548455,
		-0.198668, -0.976097, 0.088121,
		36.459972, 33.824566, 28.490421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831703, 34.393219, 28.508497>,  <36.599041, 34.507832, 28.428738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831703, 34.393219, 28.508497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995861, 34.081757, 28.698351>,  <36.094357, 33.894878, 28.812263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995861, 34.081757, 28.698351>,  <35.831703, 34.393219, 28.508497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995861, 34.081757, 28.698351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472081, 0.263905, 0.841127,
		-0.780205, -0.569256, -0.259283,
		0.410390, -0.778654, 0.474635,
		36.118977, 33.848160, 28.840742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332352, 34.107002, 28.892656>,  <35.831703, 34.393219, 28.508497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332352, 34.107002, 28.892656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651920, 33.936062, 29.061930>,  <35.843662, 33.833496, 29.163494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651920, 33.936062, 29.061930>,  <35.332352, 34.107002, 28.892656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651920, 33.936062, 29.061930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446139, 0.050763, 0.893523,
		-0.403334, -0.902658, -0.150104,
		0.798925, -0.427355, 0.423186,
		35.891598, 33.807854, 29.188885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021992, 33.699066, 29.425446>,  <35.332352, 34.107002, 28.892656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021992, 33.699066, 29.425446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408405, 33.740749, 29.520033>,  <35.640255, 33.765759, 29.576786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408405, 33.740749, 29.520033>,  <35.021992, 33.699066, 29.425446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408405, 33.740749, 29.520033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252915, 0.193540, 0.947933,
		0.053019, -0.975542, 0.213322,
		0.966035, 0.104211, 0.236468,
		35.698215, 33.772011, 29.590973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157364, 33.331360, 30.069790>,  <35.021992, 33.699066, 29.425446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157364, 33.331360, 30.069790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467674, 33.580814, 30.031303>,  <35.653858, 33.730488, 30.008211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467674, 33.580814, 30.031303>,  <35.157364, 33.331360, 30.069790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467674, 33.580814, 30.031303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048223, 0.210629, 0.976376,
		0.629167, -0.752806, 0.193473,
		0.775773, 0.623634, -0.096218,
		35.700405, 33.767906, 30.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550835, 33.183788, 30.606850>,  <35.157364, 33.331360, 30.069790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550835, 33.183788, 30.606850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657986, 33.546745, 30.477314>,  <35.722275, 33.764519, 30.399591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657986, 33.546745, 30.477314>,  <35.550835, 33.183788, 30.606850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657986, 33.546745, 30.477314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068457, 0.317349, 0.945835,
		0.961018, -0.275536, 0.022892,
		0.267877, 0.907397, -0.323841,
		35.738350, 33.818966, 30.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019974, 33.334606, 31.046984>,  <35.550835, 33.183788, 30.606850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019974, 33.334606, 31.046984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893959, 33.690186, 30.914003>,  <35.818352, 33.903534, 30.834215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893959, 33.690186, 30.914003>,  <36.019974, 33.334606, 31.046984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893959, 33.690186, 30.914003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009758, 0.347234, 0.937728,
		0.949029, 0.298663, -0.100717,
		-0.315037, 0.888948, -0.332449,
		35.799446, 33.956871, 30.814268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738216, 33.075027, 31.369347>,  <36.019974, 33.334606, 31.046984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738216, 33.075027, 31.369347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772816, 32.764301, 31.618851>,  <36.793575, 32.577866, 31.768553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772816, 32.764301, 31.618851>,  <36.738216, 33.075027, 31.369347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772816, 32.764301, 31.618851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360401, -0.559304, -0.746519,
		0.928778, 0.289377, 0.231585,
		0.086499, -0.776814, 0.623761,
		36.798767, 32.531258, 31.805979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466049, 32.762413, 31.276957>,  <36.738216, 33.075027, 31.369347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466049, 32.762413, 31.276957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220402, 32.483788, 31.425362>,  <37.073013, 32.316612, 31.514404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220402, 32.483788, 31.425362>,  <37.466049, 32.762413, 31.276957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220402, 32.483788, 31.425362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343468, -0.659145, -0.668998,
		0.710551, -0.283416, 0.644044,
		-0.614123, -0.696565, 0.371012,
		37.036163, 32.274818, 31.536665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806767, 32.103710, 31.359587>,  <37.466049, 32.762413, 31.276957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806767, 32.103710, 31.359587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426025, 31.982859, 31.338800>,  <37.197582, 31.910349, 31.326328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426025, 31.982859, 31.338800>,  <37.806767, 32.103710, 31.359587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426025, 31.982859, 31.338800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267708, -0.736585, -0.621108,
		0.149378, -0.605112, 0.782001,
		-0.951850, -0.302128, -0.051964,
		37.140469, 31.892220, 31.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846825, 31.399866, 31.498995>,  <37.806767, 32.103710, 31.359587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846825, 31.399866, 31.498995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495117, 31.452677, 31.315926>,  <37.284092, 31.484364, 31.206085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495117, 31.452677, 31.315926>,  <37.846825, 31.399866, 31.498995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495117, 31.452677, 31.315926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256218, -0.678894, -0.688081,
		-0.401553, -0.722269, 0.563101,
		-0.879265, 0.132024, -0.457671,
		37.231339, 31.492285, 31.178625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672821, 30.760550, 31.353361>,  <37.846825, 31.399866, 31.498995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672821, 30.760550, 31.353361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417572, 30.964430, 31.122538>,  <37.264423, 31.086758, 30.984043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417572, 30.964430, 31.122538>,  <37.672821, 30.760550, 31.353361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417572, 30.964430, 31.122538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093027, -0.692964, -0.714946,
		-0.764292, -0.509907, 0.394782,
		-0.638125, 0.509702, -0.577061,
		37.226135, 31.117340, 30.949419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263313, 30.210638, 31.172987>,  <37.672821, 30.760550, 31.353361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263313, 30.210638, 31.172987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257362, 30.520123, 30.919641>,  <37.253792, 30.705814, 30.767635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257362, 30.520123, 30.919641>,  <37.263313, 30.210638, 31.172987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257362, 30.520123, 30.919641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177684, -0.621304, -0.763157,
		-0.983975, -0.123892, -0.128232,
		-0.014878, 0.773713, -0.633362,
		37.252899, 30.752235, 30.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966892, 29.940639, 30.542103>,  <37.263313, 30.210638, 31.172987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966892, 29.940639, 30.542103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116669, 30.291952, 30.423164>,  <37.206535, 30.502741, 30.351801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116669, 30.291952, 30.423164>,  <36.966892, 29.940639, 30.542103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116669, 30.291952, 30.423164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400730, -0.442458, -0.802276,
		-0.836189, 0.181247, -0.517627,
		0.374439, 0.878282, -0.297348,
		37.229000, 30.555437, 30.333960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687355, 30.136250, 29.828241>,  <36.966892, 29.940639, 30.542103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687355, 30.136250, 29.828241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046753, 30.305733, 29.874168>,  <37.262390, 30.407423, 29.901724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046753, 30.305733, 29.874168>,  <36.687355, 30.136250, 29.828241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046753, 30.305733, 29.874168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313790, -0.436982, -0.842960,
		-0.306997, 0.793421, -0.525581,
		0.898492, 0.423708, 0.114815,
		37.316299, 30.432846, 29.908613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898674, 30.016457, 29.170637>,  <36.687355, 30.136250, 29.828241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898674, 30.016457, 29.170637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218098, 30.167244, 29.358337>,  <37.409752, 30.257717, 29.470957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218098, 30.167244, 29.358337>,  <36.898674, 30.016457, 29.170637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218098, 30.167244, 29.358337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555704, -0.162163, -0.815412,
		-0.231289, 0.911920, -0.338980,
		0.798560, 0.376968, 0.469251,
		37.457664, 30.280334, 29.499113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199802, 30.473066, 28.731438>,  <36.898674, 30.016457, 29.170637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199802, 30.473066, 28.731438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479401, 30.358629, 28.993599>,  <37.647160, 30.289967, 29.150896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479401, 30.358629, 28.993599>,  <37.199802, 30.473066, 28.731438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479401, 30.358629, 28.993599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523824, -0.419083, -0.741605,
		0.486834, 0.861697, -0.143077,
		0.699000, -0.286091, 0.655401,
		37.689102, 30.272802, 29.190220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805218, 30.629814, 28.365717>,  <37.199802, 30.473066, 28.731438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805218, 30.629814, 28.365717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922886, 30.379290, 28.654491>,  <37.993488, 30.228975, 28.827757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922886, 30.379290, 28.654491>,  <37.805218, 30.629814, 28.365717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922886, 30.379290, 28.654491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523062, -0.526699, -0.670071,
		0.799917, 0.574736, 0.172659,
		0.294175, -0.626312, 0.721938,
		38.011139, 30.191397, 28.871073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543709, 30.565195, 28.266676>,  <37.805218, 30.629814, 28.365717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543709, 30.565195, 28.266676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433929, 30.233871, 28.462055>,  <38.368061, 30.035078, 28.579283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433929, 30.233871, 28.462055>,  <38.543709, 30.565195, 28.266676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433929, 30.233871, 28.462055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556331, -0.551083, -0.621935,
		0.784330, 0.101047, 0.612059,
		-0.274451, -0.828309, 0.488447,
		38.351593, 29.985378, 28.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173214, 30.153542, 28.611301>,  <38.543709, 30.565195, 28.266676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173214, 30.153542, 28.611301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858364, 29.917042, 28.541046>,  <38.669453, 29.775141, 28.498892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858364, 29.917042, 28.541046>,  <39.173214, 30.153542, 28.611301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858364, 29.917042, 28.541046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567418, -0.582508, -0.581998,
		0.241795, -0.557769, 0.793996,
		-0.787129, -0.591251, -0.175640,
		38.622227, 29.739666, 28.488354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432682, 29.409708, 28.732698>,  <39.173214, 30.153542, 28.611301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432682, 29.409708, 28.732698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093124, 29.351929, 28.529324>,  <38.889389, 29.317261, 28.407299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093124, 29.351929, 28.529324>,  <39.432682, 29.409708, 28.732698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093124, 29.351929, 28.529324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499637, -0.533122, -0.682747,
		-0.172438, -0.833616, 0.524737,
		-0.848898, -0.144446, -0.508436,
		38.838455, 29.308594, 28.376793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.450050, 28.314632, 24.948502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.808231, 28.452389, 25.061325>,  <34.023140, 28.535042, 25.129019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.808231, 28.452389, 25.061325>,  <33.450050, 28.314632, 24.948502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808231, 28.452389, 25.061325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366767, 0.211694, 0.905907,
		0.252284, -0.914645, 0.315876,
		0.895452, 0.344398, 0.282054,
		34.076866, 28.555706, 25.145943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649906, 27.946939, 25.647078>,  <33.450050, 28.314632, 24.948502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649906, 27.946939, 25.647078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843590, 28.296312, 25.626461>,  <33.959801, 28.505936, 25.614090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843590, 28.296312, 25.626461>,  <33.649906, 27.946939, 25.647078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843590, 28.296312, 25.626461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334004, 0.238970, 0.911776,
		0.808691, -0.424276, 0.407441,
		0.484210, 0.873432, -0.051543,
		33.988853, 28.558342, 25.610998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035225, 28.003363, 26.246458>,  <33.649906, 27.946939, 25.647078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035225, 28.003363, 26.246458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 28.379904, 26.125448>,  <33.939579, 28.605829, 26.052843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 28.379904, 26.125448>,  <34.035225, 28.003363, 26.246458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975445, 28.379904, 26.125448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238466, 0.262612, 0.934970,
		0.959583, 0.211871, 0.185234,
		-0.149448, 0.941353, -0.302522,
		33.930611, 28.662310, 26.034691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527370, 28.317928, 26.593193>,  <34.035225, 28.003363, 26.246458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527370, 28.317928, 26.593193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238754, 28.579910, 26.503387>,  <34.065582, 28.737101, 26.449505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238754, 28.579910, 26.503387>,  <34.527370, 28.317928, 26.593193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238754, 28.579910, 26.503387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101003, 0.221229, 0.969977,
		0.684963, 0.722557, -0.093474,
		-0.721543, 0.654957, -0.224514,
		34.022293, 28.776398, 26.436033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593449, 28.797487, 27.174772>,  <34.527370, 28.317928, 26.593193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593449, 28.797487, 27.174772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255394, 28.900822, 26.987579>,  <34.052563, 28.962822, 26.875263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255394, 28.900822, 26.987579>,  <34.593449, 28.797487, 27.174772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255394, 28.900822, 26.987579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303603, 0.488586, 0.817991,
		0.439966, 0.833394, -0.334490,
		-0.845136, 0.258336, -0.467982,
		34.001854, 28.978323, 26.847185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403149, 29.549065, 27.404787>,  <34.593449, 28.797487, 27.174772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403149, 29.549065, 27.404787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057632, 29.411217, 27.257765>,  <33.850323, 29.328508, 27.169552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057632, 29.411217, 27.257765>,  <34.403149, 29.549065, 27.404787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057632, 29.411217, 27.257765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461121, 0.246738, 0.852343,
		-0.203043, 0.905736, -0.372042,
		-0.863795, -0.344619, -0.367556,
		33.798492, 29.307831, 27.147499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893311, 30.056320, 27.423094>,  <34.403149, 29.549065, 27.404787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893311, 30.056320, 27.423094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710644, 29.700468, 27.424515>,  <33.601044, 29.486958, 27.425367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710644, 29.700468, 27.424515>,  <33.893311, 30.056320, 27.423094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710644, 29.700468, 27.424515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412295, 0.215177, 0.885275,
		-0.788330, 0.402815, -0.465055,
		-0.456671, -0.889628, 0.003551,
		33.573643, 29.433580, 27.425581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225826, 30.233919, 27.758646>,  <33.893311, 30.056320, 27.423094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225826, 30.233919, 27.758646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251648, 29.835199, 27.777521>,  <33.267139, 29.595968, 27.788847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251648, 29.835199, 27.777521>,  <33.225826, 30.233919, 27.758646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251648, 29.835199, 27.777521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582144, 0.000792, 0.813085,
		-0.810519, -0.079960, -0.580229,
		0.064555, -0.996798, 0.047190,
		33.271015, 29.536160, 27.791677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539413, 29.943596, 27.908812>,  <33.225826, 30.233919, 27.758646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539413, 29.943596, 27.908812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796959, 29.677572, 28.060146>,  <32.951485, 29.517958, 28.150948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796959, 29.677572, 28.060146>,  <32.539413, 29.943596, 27.908812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796959, 29.677572, 28.060146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406998, 0.121021, 0.905376,
		-0.647917, -0.736918, -0.192758,
		0.643860, -0.665061, 0.378336,
		32.990116, 29.478054, 28.173647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144390, 29.660742, 28.284739>,  <32.539413, 29.943596, 27.908812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144390, 29.660742, 28.284739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.505692, 29.547148, 28.413414>,  <32.722473, 29.478991, 28.490620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.505692, 29.547148, 28.413414>,  <32.144390, 29.660742, 28.284739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505692, 29.547148, 28.413414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335673, -0.000608, 0.941979,
		-0.267311, -0.958829, -0.095875,
		0.903255, -0.283984, 0.321690,
		32.776669, 29.461952, 28.509920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109867, 29.088898, 28.623661>,  <32.144390, 29.660742, 28.284739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109867, 29.088898, 28.623661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422050, 29.277130, 28.788309>,  <32.609360, 29.390070, 28.887098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422050, 29.277130, 28.788309>,  <32.109867, 29.088898, 28.623661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422050, 29.277130, 28.788309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418314, -0.096247, 0.903189,
		0.464642, -0.877091, 0.121734,
		0.780462, 0.470583, 0.411620,
		32.656189, 29.418304, 28.911795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072964, 28.844547, 29.281908>,  <32.109867, 29.088898, 28.623661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072964, 28.844547, 29.281908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.358219, 29.123608, 29.309389>,  <32.529373, 29.291044, 29.325878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.358219, 29.123608, 29.309389>,  <32.072964, 28.844547, 29.281908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358219, 29.123608, 29.309389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153286, 0.059556, 0.986385,
		0.684060, -0.713959, 0.149412,
		0.713137, 0.697650, 0.068700,
		32.572159, 29.332903, 29.330000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565388, 28.648363, 29.889595>,  <32.072964, 28.844547, 29.281908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565388, 28.648363, 29.889595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.634098, 29.038506, 29.834206>,  <32.675323, 29.272591, 29.800972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.634098, 29.038506, 29.834206>,  <32.565388, 28.648363, 29.889595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634098, 29.038506, 29.834206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001170, 0.140765, 0.990043,
		0.985135, -0.169906, 0.025322,
		0.171778, 0.975355, -0.138474,
		32.685631, 29.331112, 29.792664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057308, 28.823015, 30.341026>,  <32.565388, 28.648363, 29.889595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057308, 28.823015, 30.341026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.803593, 29.117662, 30.247158>,  <32.651363, 29.294451, 30.190838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.803593, 29.117662, 30.247158>,  <33.057308, 28.823015, 30.341026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803593, 29.117662, 30.247158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344627, 0.002309, 0.938737,
		0.692031, 0.676307, 0.252394,
		-0.634292, 0.736617, -0.234671,
		32.613304, 29.338648, 30.176756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767418, 28.744806, 30.456795>,  <33.057308, 28.823015, 30.341026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767418, 28.744806, 30.456795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040245, 28.539738, 30.665392>,  <34.203941, 28.416697, 30.790550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040245, 28.539738, 30.665392>,  <33.767418, 28.744806, 30.456795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040245, 28.539738, 30.665392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365292, -0.378924, -0.850282,
		0.633523, 0.770443, -0.071174,
		0.682063, -0.512674, 0.521493,
		34.244865, 28.385935, 30.821840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492393, 28.868387, 30.204639>,  <33.767418, 28.744806, 30.456795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492393, 28.868387, 30.204639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575588, 28.529936, 30.400928>,  <34.625504, 28.326864, 30.518702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575588, 28.529936, 30.400928>,  <34.492393, 28.868387, 30.204639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575588, 28.529936, 30.400928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534502, -0.321846, -0.781487,
		0.819175, 0.424832, 0.385317,
		0.207988, -0.846128, 0.490722,
		34.637985, 28.276098, 30.548145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107880, 28.710291, 29.858492>,  <34.492393, 28.868387, 30.204639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107880, 28.710291, 29.858492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993412, 28.361792, 30.018007>,  <34.924732, 28.152693, 30.113716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993412, 28.361792, 30.018007>,  <35.107880, 28.710291, 29.858492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993412, 28.361792, 30.018007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285718, -0.474851, -0.832395,
		0.914588, -0.124267, 0.384820,
		-0.286171, -0.871249, 0.398788,
		34.907562, 28.100416, 30.137644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748322, 28.236866, 29.811216>,  <35.107880, 28.710291, 29.858492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748322, 28.236866, 29.811216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417671, 28.019382, 29.869280>,  <35.219280, 27.888893, 29.904118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417671, 28.019382, 29.869280>,  <35.748322, 28.236866, 29.811216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417671, 28.019382, 29.869280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252843, -0.589277, -0.767349,
		0.502751, -0.597609, 0.624584,
		-0.826627, -0.543707, 0.145158,
		35.169682, 27.856270, 29.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953365, 27.500156, 29.770836>,  <35.748322, 28.236866, 29.811216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953365, 27.500156, 29.770836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559338, 27.495077, 29.702164>,  <35.322922, 27.492029, 29.660961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559338, 27.495077, 29.702164>,  <35.953365, 27.500156, 29.770836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559338, 27.495077, 29.702164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134144, -0.681637, -0.719289,
		-0.107891, -0.731580, 0.673164,
		-0.985071, -0.012696, -0.171680,
		35.263817, 27.491268, 29.650660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827454, 26.864126, 29.791452>,  <35.953365, 27.500156, 29.770836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827454, 26.864126, 29.791452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492100, 26.976995, 29.604908>,  <35.290890, 27.044718, 29.492981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492100, 26.976995, 29.604908>,  <35.827454, 26.864126, 29.791452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492100, 26.976995, 29.604908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171831, -0.675137, -0.717401,
		-0.517290, -0.681592, 0.517536,
		-0.838383, 0.282176, -0.466361,
		35.240585, 27.061647, 29.465000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460979, 26.226068, 29.642637>,  <35.827454, 26.864126, 29.791452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460979, 26.226068, 29.642637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315445, 26.500435, 29.390560>,  <35.228127, 26.665054, 29.239313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315445, 26.500435, 29.390560>,  <35.460979, 26.226068, 29.642637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315445, 26.500435, 29.390560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053041, -0.660207, -0.749209,
		-0.929953, -0.306013, 0.203823,
		-0.363833, 0.685918, -0.630192,
		35.206295, 26.706211, 29.201502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075882, 25.846743, 29.174908>,  <35.460979, 26.226068, 29.642637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075882, 25.846743, 29.174908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146427, 26.193762, 28.988895>,  <35.188755, 26.401974, 28.877287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146427, 26.193762, 28.988895>,  <35.075882, 25.846743, 29.174908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146427, 26.193762, 28.988895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155721, -0.491078, -0.857084,
		-0.971930, 0.078740, -0.221702,
		0.176360, 0.867550, -0.465032,
		35.199337, 26.454027, 28.849386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675137, 25.724360, 28.480675>,  <35.075882, 25.846743, 29.174908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675137, 25.724360, 28.480675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954548, 26.007618, 28.439514>,  <35.122196, 26.177572, 28.414818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954548, 26.007618, 28.439514>,  <34.675137, 25.724360, 28.480675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954548, 26.007618, 28.439514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345206, -0.459437, -0.818383,
		-0.626812, 0.536140, -0.565386,
		0.698527, 0.708146, -0.102902,
		35.164104, 26.220062, 28.408644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583965, 26.025318, 27.849566>,  <34.675137, 25.724360, 28.480675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583965, 26.025318, 27.849566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967831, 26.050440, 27.959177>,  <35.198151, 26.065514, 28.024944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967831, 26.050440, 27.959177>,  <34.583965, 26.025318, 27.849566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967831, 26.050440, 27.959177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280713, -0.267484, -0.921766,
		0.015407, 0.961513, -0.274326,
		0.959668, 0.062805, 0.274030,
		35.255730, 26.069281, 28.041386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846333, 26.466740, 27.308830>,  <34.583965, 26.025318, 27.849566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846333, 26.466740, 27.308830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112488, 26.197435, 27.437809>,  <35.272182, 26.035852, 27.515196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112488, 26.197435, 27.437809>,  <34.846333, 26.466740, 27.308830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112488, 26.197435, 27.437809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369964, -0.077751, -0.925787,
		0.648368, 0.735304, 0.197348,
		0.665391, -0.673263, 0.322447,
		35.312103, 25.995457, 27.534544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497982, 26.739542, 27.228928>,  <34.846333, 26.466740, 27.308830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497982, 26.739542, 27.228928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534328, 26.341208, 27.231939>,  <35.556137, 26.102207, 27.233746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534328, 26.341208, 27.231939>,  <35.497982, 26.739542, 27.228928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534328, 26.341208, 27.231939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449220, 0.034241, -0.892765,
		0.888789, 0.084505, 0.450460,
		0.090867, -0.995835, 0.007529,
		35.561588, 26.042458, 27.234198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220417, 26.585493, 27.152105>,  <35.497982, 26.739542, 27.228928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220417, 26.585493, 27.152105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011921, 26.259640, 27.050375>,  <35.886822, 26.064129, 26.989336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011921, 26.259640, 27.050375>,  <36.220417, 26.585493, 27.152105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011921, 26.259640, 27.050375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657596, -0.193449, -0.728110,
		0.543943, -0.546765, 0.636533,
		-0.521241, -0.814633, -0.254325,
		35.855549, 26.015249, 26.974077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747662, 26.122248, 27.233839>,  <36.220417, 26.585493, 27.152105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747662, 26.122248, 27.233839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467312, 25.981956, 26.985399>,  <36.299103, 25.897781, 26.836336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467312, 25.981956, 26.985399>,  <36.747662, 26.122248, 27.233839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467312, 25.981956, 26.985399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643126, 0.065856, -0.762923,
		0.308480, -0.934160, 0.179404,
		-0.700877, -0.350726, -0.621098,
		36.257050, 25.876740, 26.799070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133087, 25.696131, 27.674063>,  <36.747662, 26.122248, 27.233839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133087, 25.696131, 27.674063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526981, 25.731678, 27.733931>,  <37.763317, 25.753006, 27.769852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526981, 25.731678, 27.733931>,  <37.133087, 25.696131, 27.674063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526981, 25.731678, 27.733931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158262, 0.099111, 0.982410,
		0.072455, -0.991102, 0.111660,
		0.984735, 0.088852, 0.149673,
		37.822403, 25.758339, 27.778831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335114, 25.206961, 28.317446>,  <37.133087, 25.696131, 27.674063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335114, 25.206961, 28.317446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570404, 25.524948, 28.258106>,  <37.711578, 25.715740, 28.222504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570404, 25.524948, 28.258106>,  <37.335114, 25.206961, 28.317446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570404, 25.524948, 28.258106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036345, 0.209244, 0.977188,
		0.807876, -0.569420, 0.151977,
		0.588231, 0.794970, -0.148348,
		37.746872, 25.763439, 28.213602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598473, 25.273827, 28.959101>,  <37.335114, 25.206961, 28.317446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598473, 25.273827, 28.959101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690300, 25.629562, 28.800924>,  <37.745396, 25.843004, 28.706018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690300, 25.629562, 28.800924>,  <37.598473, 25.273827, 28.959101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690300, 25.629562, 28.800924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080612, 0.387522, 0.918329,
		0.969948, -0.242700, 0.017272,
		0.229571, 0.889339, -0.395441,
		37.759171, 25.896364, 28.682291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942848, 25.556511, 29.479349>,  <37.598473, 25.273827, 28.959101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942848, 25.556511, 29.479349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893841, 25.892641, 29.268126>,  <37.864437, 26.094318, 29.141392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893841, 25.892641, 29.268126>,  <37.942848, 25.556511, 29.479349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893841, 25.892641, 29.268126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021082, 0.534149, 0.845127,
		0.992242, 0.092411, -0.083159,
		-0.122518, 0.840324, -0.528057,
		37.857086, 26.144739, 29.109709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459064, 26.055717, 29.694817>,  <37.942848, 25.556511, 29.479349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459064, 26.055717, 29.694817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155094, 26.255619, 29.528561>,  <37.972710, 26.375559, 29.428808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155094, 26.255619, 29.528561>,  <38.459064, 26.055717, 29.694817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155094, 26.255619, 29.528561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011319, 0.629167, 0.777187,
		0.649907, 0.595312, -0.472466,
		-0.759929, 0.499752, -0.415638,
		37.927116, 26.405544, 29.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663689, 26.778303, 29.643585>,  <38.459064, 26.055717, 29.694817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663689, 26.778303, 29.643585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268742, 26.721577, 29.671852>,  <38.031773, 26.687540, 29.688812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268742, 26.721577, 29.671852>,  <38.663689, 26.778303, 29.643585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268742, 26.721577, 29.671852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020302, 0.555551, 0.831235,
		-0.157141, 0.819300, -0.551412,
		-0.987368, -0.141815, 0.070667,
		37.972530, 26.679031, 29.693052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515125, 27.472126, 29.823154>,  <38.663689, 26.778303, 29.643585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515125, 27.472126, 29.823154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184883, 27.258688, 29.896528>,  <37.986736, 27.130625, 29.940554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184883, 27.258688, 29.896528>,  <38.515125, 27.472126, 29.823154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184883, 27.258688, 29.896528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272776, 0.662036, 0.698070,
		-0.493927, 0.526296, -0.692134,
		-0.825609, -0.533593, 0.183436,
		37.937199, 27.098610, 29.951559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024757, 27.891186, 29.852692>,  <38.515125, 27.472126, 29.823154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024757, 27.891186, 29.852692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904819, 27.572945, 30.063255>,  <37.832859, 27.382000, 30.189594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904819, 27.572945, 30.063255>,  <38.024757, 27.891186, 29.852692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904819, 27.572945, 30.063255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207226, 0.592943, 0.778123,
		-0.931210, 0.124228, -0.342659,
		-0.299842, -0.795604, 0.526411,
		37.814865, 27.334263, 30.221178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297081, 28.014618, 30.231936>,  <38.024757, 27.891186, 29.852692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297081, 28.014618, 30.231936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477207, 27.711990, 30.421598>,  <37.585281, 27.530415, 30.535397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477207, 27.711990, 30.421598>,  <37.297081, 28.014618, 30.231936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477207, 27.711990, 30.421598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237162, 0.410621, 0.880423,
		-0.860799, -0.508916, 0.005478,
		0.450311, -0.756568, 0.474157,
		37.612301, 27.485020, 30.563845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925175, 28.001051, 30.856905>,  <37.297081, 28.014618, 30.231936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925175, 28.001051, 30.856905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230286, 27.761692, 30.954966>,  <37.413353, 27.618076, 31.013802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230286, 27.761692, 30.954966>,  <36.925175, 28.001051, 30.856905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230286, 27.761692, 30.954966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067560, 0.303286, 0.950502,
		-0.643127, -0.741580, 0.190911,
		0.762773, -0.598395, 0.245153,
		37.459118, 27.582174, 31.028511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704109, 27.705591, 31.444679>,  <36.925175, 28.001051, 30.856905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704109, 27.705591, 31.444679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101608, 27.663757, 31.460270>,  <37.340107, 27.638657, 31.469625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101608, 27.663757, 31.460270>,  <36.704109, 27.705591, 31.444679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101608, 27.663757, 31.460270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009630, 0.428257, 0.903606,
		-0.111198, -0.897584, 0.426588,
		0.993752, -0.104587, 0.038978,
		37.399734, 27.632381, 31.471964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804905, 27.371908, 31.992712>,  <36.704109, 27.705591, 31.444679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804905, 27.371908, 31.992712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158516, 27.547033, 31.927202>,  <37.370682, 27.652109, 31.887896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158516, 27.547033, 31.927202>,  <36.804905, 27.371908, 31.992712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158516, 27.547033, 31.927202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044151, 0.427002, 0.903172,
		0.465357, -0.791192, 0.396809,
		0.884021, 0.437817, -0.163777,
		37.423721, 27.678377, 31.878069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225632, 27.105490, 32.505722>,  <36.804905, 27.371908, 31.992712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225632, 27.105490, 32.505722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428768, 27.429661, 32.388893>,  <37.550652, 27.624163, 32.318794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428768, 27.429661, 32.388893>,  <37.225632, 27.105490, 32.505722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428768, 27.429661, 32.388893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162365, 0.423017, 0.891456,
		0.846011, -0.405296, 0.346411,
		0.507841, 0.810427, -0.292071,
		37.581120, 27.672789, 32.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547382, 27.326834, 33.015827>,  <37.225632, 27.105490, 32.505722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547382, 27.326834, 33.015827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605888, 27.674187, 32.826294>,  <37.640991, 27.882599, 32.712574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605888, 27.674187, 32.826294>,  <37.547382, 27.326834, 33.015827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605888, 27.674187, 32.826294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183800, 0.494502, 0.849521,
		0.972021, -0.037163, 0.231936,
		0.146264, 0.868382, -0.473835,
		37.649769, 27.934702, 32.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.304329, 28.423180, 28.495859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025600, 28.567131, 28.247690>,  <38.858364, 28.653502, 28.098789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025600, 28.567131, 28.247690>,  <39.304329, 28.423180, 28.495859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025600, 28.567131, 28.247690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483526, -0.403195, -0.776941,
		-0.529757, -0.841380, 0.106943,
		-0.696821, 0.359880, -0.620424,
		38.816555, 28.675095, 28.061563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985374, 27.845688, 28.100863>,  <39.304329, 28.423180, 28.495859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985374, 27.845688, 28.100863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926544, 28.187277, 27.901222>,  <38.891247, 28.392229, 27.781437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926544, 28.187277, 27.901222>,  <38.985374, 27.845688, 28.100863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926544, 28.187277, 27.901222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455495, -0.389430, -0.800543,
		-0.878006, -0.345077, -0.331704,
		-0.147074, 0.853971, -0.499102,
		38.882423, 28.443468, 27.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638638, 27.717337, 27.441845>,  <38.985374, 27.845688, 28.100863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638638, 27.717337, 27.441845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818542, 28.068880, 27.378195>,  <38.926487, 28.279806, 27.340004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818542, 28.068880, 27.378195>,  <38.638638, 27.717337, 27.441845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818542, 28.068880, 27.378195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383090, -0.350768, -0.854520,
		-0.806818, 0.323372, -0.494444,
		0.449763, 0.878859, -0.159125,
		38.953472, 28.332539, 27.330458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842014, 27.746922, 26.737617>,  <38.638638, 27.717337, 27.441845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842014, 27.746922, 26.737617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063183, 28.058491, 26.855976>,  <39.195885, 28.245432, 26.926991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063183, 28.058491, 26.855976>,  <38.842014, 27.746922, 26.737617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063183, 28.058491, 26.855976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598947, -0.124673, -0.791024,
		-0.579258, 0.614600, -0.535469,
		0.552922, 0.778925, 0.295895,
		39.229061, 28.292168, 26.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928341, 28.231089, 26.253933>,  <38.842014, 27.746922, 26.737617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928341, 28.231089, 26.253933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276279, 28.286077, 26.443447>,  <39.485043, 28.319071, 26.557156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276279, 28.286077, 26.443447>,  <38.928341, 28.231089, 26.253933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276279, 28.286077, 26.443447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465317, 0.090364, -0.880520,
		-0.163860, 0.986375, 0.014635,
		0.869845, 0.137472, 0.473784,
		39.537231, 28.327320, 26.585583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229534, 28.742954, 25.908228>,  <38.928341, 28.231089, 26.253933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229534, 28.742954, 25.908228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539482, 28.580564, 26.102039>,  <39.725449, 28.483131, 26.218327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539482, 28.580564, 26.102039>,  <39.229534, 28.742954, 25.908228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539482, 28.580564, 26.102039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564323, 0.098896, -0.819609,
		0.284821, 0.908518, 0.305731,
		0.774866, -0.405973, 0.484530,
		39.771942, 28.458773, 26.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881985, 29.149538, 25.749994>,  <39.229534, 28.742954, 25.908228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881985, 29.149538, 25.749994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011162, 28.791338, 25.872494>,  <40.088669, 28.576418, 25.945993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011162, 28.791338, 25.872494>,  <39.881985, 29.149538, 25.749994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011162, 28.791338, 25.872494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657980, -0.020153, -0.752765,
		0.680274, 0.444603, 0.582714,
		0.322938, -0.895501, 0.306250,
		40.108044, 28.522688, 25.964369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644592, 29.121977, 25.640594>,  <39.881985, 29.149538, 25.749994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644592, 29.121977, 25.640594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544342, 28.735451, 25.664001>,  <40.484192, 28.503534, 25.678045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544342, 28.735451, 25.664001>,  <40.644592, 29.121977, 25.640594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544342, 28.735451, 25.664001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759253, -0.233702, -0.607387,
		0.600603, -0.107796, 0.792248,
		-0.250623, -0.966315, 0.058518,
		40.469154, 28.445557, 25.681557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321854, 28.753712, 25.617785>,  <40.644592, 29.121977, 25.640594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321854, 28.753712, 25.617785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039021, 28.491831, 25.510897>,  <40.869320, 28.334703, 25.446764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039021, 28.491831, 25.510897>,  <41.321854, 28.753712, 25.617785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039021, 28.491831, 25.510897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629024, -0.409698, -0.660664,
		0.323058, -0.635229, 0.701511,
		-0.707080, -0.654700, -0.267218,
		40.826897, 28.295422, 25.430731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751484, 28.185575, 25.361921>,  <41.321854, 28.753712, 25.617785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751484, 28.185575, 25.361921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385792, 28.061651, 25.257456>,  <41.166378, 27.987297, 25.194777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385792, 28.061651, 25.257456>,  <41.751484, 28.185575, 25.361921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385792, 28.061651, 25.257456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394010, -0.529239, -0.751441,
		0.094587, -0.789888, 0.605913,
		-0.914226, -0.309812, -0.261165,
		41.111523, 27.968708, 25.179106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741993, 27.495800, 25.321384>,  <41.751484, 28.185575, 25.361921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741993, 27.495800, 25.321384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.430092, 27.604694, 25.095863>,  <41.242950, 27.670031, 24.960550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.430092, 27.604694, 25.095863>,  <41.741993, 27.495800, 25.321384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430092, 27.604694, 25.095863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385449, -0.500893, -0.774942,
		-0.493369, -0.821582, 0.285642,
		-0.779754, 0.272232, -0.563803,
		41.196167, 27.686365, 24.926722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666985, 26.919188, 24.886280>,  <41.741993, 27.495800, 25.321384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666985, 26.919188, 24.886280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421398, 27.176006, 24.702621>,  <41.274044, 27.330097, 24.592426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421398, 27.176006, 24.702621>,  <41.666985, 26.919188, 24.886280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421398, 27.176006, 24.702621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238160, -0.403897, -0.883259,
		-0.752544, -0.651644, 0.095070,
		-0.613969, 0.642049, -0.459145,
		41.237206, 27.368622, 24.564878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239868, 26.572163, 24.333040>,  <41.666985, 26.919188, 24.886280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239868, 26.572163, 24.333040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321507, 26.957556, 24.263702>,  <41.370491, 27.188791, 24.222099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321507, 26.957556, 24.263702>,  <41.239868, 26.572163, 24.333040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321507, 26.957556, 24.263702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361405, -0.238721, -0.901332,
		-0.909798, 0.121309, -0.396929,
		0.204095, 0.963481, -0.173346,
		41.382736, 27.246601, 24.211699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470764, 26.736626, 23.614353>,  <41.239868, 26.572163, 24.333040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470764, 26.736626, 23.614353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447796, 27.129707, 23.684778>,  <41.434017, 27.365557, 23.727034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447796, 27.129707, 23.684778>,  <41.470764, 26.736626, 23.614353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447796, 27.129707, 23.684778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283240, 0.185140, -0.941009,
		-0.957329, -0.004162, -0.288971,
		-0.057416, 0.982703, 0.176061,
		41.430573, 27.424519, 23.737597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684402, 26.267305, 23.211149>,  <41.470764, 26.736626, 23.614353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684402, 26.267305, 23.211149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580589, 25.881769, 23.235331>,  <41.518299, 25.650448, 23.249840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580589, 25.881769, 23.235331>,  <41.684402, 26.267305, 23.211149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580589, 25.881769, 23.235331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702673, 0.231413, 0.672829,
		-0.662488, 0.132145, -0.737324,
		-0.259537, -0.963839, 0.060454,
		41.502728, 25.592617, 23.253468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933186, 26.263552, 23.218605>,  <41.684402, 26.267305, 23.211149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933186, 26.263552, 23.218605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035263, 25.895191, 23.336464>,  <41.096508, 25.674175, 23.407179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035263, 25.895191, 23.336464>,  <40.933186, 26.263552, 23.218605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035263, 25.895191, 23.336464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650236, 0.062080, 0.757192,
		-0.715591, -0.384818, -0.582962,
		0.255190, -0.920903, 0.294646,
		41.111820, 25.618921, 23.424858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189980, 25.925066, 23.459162>,  <40.933186, 26.263552, 23.218605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189980, 25.925066, 23.459162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.465660, 25.668356, 23.593700>,  <40.631069, 25.514330, 23.674423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.465660, 25.668356, 23.593700>,  <40.189980, 25.925066, 23.459162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465660, 25.668356, 23.593700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581333, -0.212685, 0.785377,
		-0.432500, -0.736810, -0.519668,
		0.689200, -0.641775, 0.336346,
		40.672421, 25.475824, 23.694605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851189, 25.312233, 23.667133>,  <40.189980, 25.925066, 23.459162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851189, 25.312233, 23.667133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191326, 25.341969, 23.875511>,  <40.395409, 25.359810, 24.000538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191326, 25.341969, 23.875511>,  <39.851189, 25.312233, 23.667133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191326, 25.341969, 23.875511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513430, -0.099765, 0.852312,
		0.115330, -0.992230, -0.046668,
		0.850346, 0.074336, 0.520947,
		40.446430, 25.364269, 24.031796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800228, 24.810022, 24.249668>,  <39.851189, 25.312233, 23.667133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800228, 24.810022, 24.249668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.105694, 25.045324, 24.356083>,  <40.288971, 25.186506, 24.419931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.105694, 25.045324, 24.356083>,  <39.800228, 24.810022, 24.249668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105694, 25.045324, 24.356083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397729, 0.104064, 0.911582,
		0.508559, -0.801951, 0.313436,
		0.763662, 0.588256, 0.266036,
		40.334793, 25.221802, 24.435894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107708, 24.479664, 24.773291>,  <39.800228, 24.810022, 24.249668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107708, 24.479664, 24.773291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194241, 24.865135, 24.835936>,  <40.246159, 25.096418, 24.873522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194241, 24.865135, 24.835936>,  <40.107708, 24.479664, 24.773291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194241, 24.865135, 24.835936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449276, -0.044158, 0.892301,
		0.866806, -0.263394, 0.423405,
		0.216330, 0.963677, 0.156613,
		40.259140, 25.154238, 24.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252922, 24.445971, 25.487595>,  <40.107708, 24.479664, 24.773291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252922, 24.445971, 25.487595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195515, 24.840805, 25.459133>,  <40.161072, 25.077705, 25.442057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195515, 24.840805, 25.459133>,  <40.252922, 24.445971, 25.487595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195515, 24.840805, 25.459133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515119, -0.013119, 0.857018,
		0.845018, 0.159649, 0.510350,
		-0.143517, 0.987087, -0.071153,
		40.152458, 25.136930, 25.437788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319153, 24.745413, 26.164701>,  <40.252922, 24.445971, 25.487595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319153, 24.745413, 26.164701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113071, 25.025187, 25.966570>,  <39.989422, 25.193050, 25.847691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113071, 25.025187, 25.966570>,  <40.319153, 24.745413, 26.164701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113071, 25.025187, 25.966570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548556, 0.174950, 0.817605,
		0.658520, 0.692952, 0.293545,
		-0.515206, 0.699436, -0.495331,
		39.958511, 25.235018, 25.817970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165001, 25.149460, 26.633238>,  <40.319153, 24.745413, 26.164701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165001, 25.149460, 26.633238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901035, 25.290817, 26.368021>,  <39.742657, 25.375631, 26.208891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901035, 25.290817, 26.368021>,  <40.165001, 25.149460, 26.633238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901035, 25.290817, 26.368021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654721, 0.162442, 0.738209,
		0.368585, 0.921263, 0.124178,
		-0.659913, 0.353395, -0.663044,
		39.703060, 25.396835, 26.169107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876072, 25.793869, 26.926514>,  <40.165001, 25.149460, 26.633238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876072, 25.793869, 26.926514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602528, 25.650328, 26.672409>,  <39.438400, 25.564203, 26.519947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602528, 25.650328, 26.672409>,  <39.876072, 25.793869, 26.926514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602528, 25.650328, 26.672409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728468, 0.287148, 0.621997,
		-0.040791, 0.888128, -0.457782,
		-0.683864, -0.358851, -0.635260,
		39.397369, 25.542673, 26.481831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362213, 26.373137, 26.910959>,  <39.876072, 25.793869, 26.926514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362213, 26.373137, 26.910959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160908, 26.081432, 26.725527>,  <39.040123, 25.906410, 26.614267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160908, 26.081432, 26.725527>,  <39.362213, 26.373137, 26.910959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160908, 26.081432, 26.725527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801707, 0.193837, 0.565414,
		-0.322474, 0.656208, -0.682203,
		-0.503266, -0.729258, -0.463579,
		39.009930, 25.862656, 26.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691868, 26.562315, 26.553919>,  <39.362213, 26.373137, 26.910959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691868, 26.562315, 26.553919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677338, 26.174496, 26.650793>,  <38.668621, 25.941803, 26.708918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677338, 26.174496, 26.650793>,  <38.691868, 26.562315, 26.553919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677338, 26.174496, 26.650793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717036, 0.194091, 0.669468,
		-0.696089, -0.149342, -0.702252,
		-0.036321, -0.969549, 0.242188,
		38.666443, 25.883631, 26.723450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939667, 26.531969, 26.808849>,  <38.691868, 26.562315, 26.553919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939667, 26.531969, 26.808849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102196, 26.188395, 26.933512>,  <38.199711, 25.982250, 27.008308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102196, 26.188395, 26.933512>,  <37.939667, 26.531969, 26.808849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102196, 26.188395, 26.933512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650196, -0.032147, 0.759087,
		-0.641990, -0.511068, -0.571540,
		0.406319, -0.858939, 0.311656,
		38.224091, 25.930714, 27.027008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482536, 26.095291, 26.919773>,  <37.939667, 26.531969, 26.808849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482536, 26.095291, 26.919773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779144, 25.976692, 27.160519>,  <37.957108, 25.905533, 27.304966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779144, 25.976692, 27.160519>,  <37.482536, 26.095291, 26.919773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779144, 25.976692, 27.160519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636297, -0.026283, 0.770996,
		-0.212780, -0.954672, -0.208149,
		0.741519, -0.296497, 0.601862,
		38.001598, 25.887743, 27.341078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035461, 25.633932, 26.754887>,  <37.482536, 26.095291, 26.919773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035461, 25.633932, 26.754887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699596, 25.743656, 26.567387>,  <36.498077, 25.809490, 26.454887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699596, 25.743656, 26.567387>,  <37.035461, 25.633932, 26.754887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699596, 25.743656, 26.567387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522658, 0.173475, -0.834707,
		-0.147651, -0.945865, -0.289029,
		-0.839660, 0.274308, -0.468750,
		36.447697, 25.825949, 26.426762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059990, 25.281483, 26.194609>,  <37.035461, 25.633932, 26.754887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059990, 25.281483, 26.194609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796406, 25.564785, 26.093302>,  <36.638256, 25.734766, 26.032516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796406, 25.564785, 26.093302>,  <37.059990, 25.281483, 26.194609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796406, 25.564785, 26.093302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461255, 0.114523, -0.879846,
		-0.594150, -0.696605, -0.402153,
		-0.658961, 0.708256, -0.253269,
		36.598717, 25.777262, 26.017321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720722, 24.982569, 25.504433>,  <37.059990, 25.281483, 26.194609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720722, 24.982569, 25.504433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664455, 25.378578, 25.501234>,  <36.630695, 25.616184, 25.499315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664455, 25.378578, 25.501234>,  <36.720722, 24.982569, 25.504433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664455, 25.378578, 25.501234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276636, 0.031548, -0.960457,
		-0.950624, -0.137312, -0.278314,
		-0.140663, 0.990025, -0.007995,
		36.622257, 25.675587, 25.498835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387989, 25.065649, 24.788040>,  <36.720722, 24.982569, 25.504433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387989, 25.065649, 24.788040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543941, 25.416525, 24.900135>,  <36.637512, 25.627050, 24.967392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543941, 25.416525, 24.900135>,  <36.387989, 25.065649, 24.788040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543941, 25.416525, 24.900135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199229, 0.216760, -0.955679,
		-0.899054, 0.428436, -0.090250,
		0.389885, 0.877187, 0.280235,
		36.660908, 25.679682, 24.984205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283314, 25.462507, 24.288702>,  <36.387989, 25.065649, 24.788040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283314, 25.462507, 24.288702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533154, 25.716309, 24.470814>,  <36.683056, 25.868589, 24.580082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533154, 25.716309, 24.470814>,  <36.283314, 25.462507, 24.288702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533154, 25.716309, 24.470814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264002, 0.377111, -0.887744,
		-0.734970, 0.674678, 0.068032,
		0.624597, 0.634505, 0.455282,
		36.720531, 25.906660, 24.607399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161751, 26.103409, 23.994139>,  <36.283314, 25.462507, 24.288702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161751, 26.103409, 23.994139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533474, 26.133884, 24.138683>,  <36.756508, 26.152170, 24.225410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533474, 26.133884, 24.138683>,  <36.161751, 26.103409, 23.994139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533474, 26.133884, 24.138683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300985, 0.410730, -0.860645,
		-0.213995, 0.908568, 0.358762,
		0.929309, 0.076191, 0.361359,
		36.812267, 26.156742, 24.247091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400211, 26.733585, 23.700653>,  <36.161751, 26.103409, 23.994139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400211, 26.733585, 23.700653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716419, 26.514442, 23.810143>,  <36.906143, 26.382956, 23.875837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716419, 26.514442, 23.810143>,  <36.400211, 26.733585, 23.700653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716419, 26.514442, 23.810143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456137, 0.228451, -0.860086,
		0.408673, 0.804774, 0.430495,
		0.790522, -0.547859, 0.273726,
		36.953575, 26.350084, 23.892260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430122, 27.508604, 23.566435>,  <36.400211, 26.733585, 23.700653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430122, 27.508604, 23.566435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.191589, 27.734360, 23.338100>,  <36.048470, 27.869812, 23.201099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.191589, 27.734360, 23.338100>,  <36.430122, 27.508604, 23.566435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191589, 27.734360, 23.338100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475147, 0.324994, 0.817688,
		0.647012, 0.758845, 0.074362,
		-0.596332, 0.564387, -0.570838,
		36.012691, 27.903675, 23.166849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347649, 28.238783, 23.826342>,  <36.430122, 27.508604, 23.566435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347649, 28.238783, 23.826342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020096, 28.164312, 23.609171>,  <35.823563, 28.119631, 23.478868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020096, 28.164312, 23.609171>,  <36.347649, 28.238783, 23.826342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020096, 28.164312, 23.609171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570267, 0.371015, 0.732900,
		0.064985, 0.909773, -0.409988,
		-0.818884, -0.186175, -0.542924,
		35.774429, 28.108459, 23.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967823, 28.863361, 23.874134>,  <36.347649, 28.238783, 23.826342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967823, 28.863361, 23.874134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703098, 28.585686, 23.760921>,  <35.544262, 28.419081, 23.692995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703098, 28.585686, 23.760921>,  <35.967823, 28.863361, 23.874134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703098, 28.585686, 23.760921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676647, 0.390613, 0.624155,
		-0.322726, 0.604586, -0.728233,
		-0.661812, -0.694189, -0.283030,
		35.504555, 28.377430, 23.676012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367691, 29.275385, 23.733988>,  <35.967823, 28.863361, 23.874134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367691, 29.275385, 23.733988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250248, 28.895815, 23.780170>,  <35.179783, 28.668072, 23.807880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250248, 28.895815, 23.780170>,  <35.367691, 29.275385, 23.733988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250248, 28.895815, 23.780170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668556, 0.290169, 0.684715,
		-0.683246, 0.123850, -0.719608,
		-0.293610, -0.948927, 0.115456,
		35.162167, 28.611137, 23.814808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624920, 29.296019, 23.688883>,  <35.367691, 29.275385, 23.733988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624920, 29.296019, 23.688883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726913, 28.958353, 23.877508>,  <34.788109, 28.755754, 23.990683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726913, 28.958353, 23.877508>,  <34.624920, 29.296019, 23.688883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726913, 28.958353, 23.877508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718763, 0.160747, 0.676417,
		-0.646809, -0.511418, -0.565765,
		0.254987, -0.844163, 0.471561,
		34.803410, 28.705105, 24.018976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084770, 29.135441, 23.984726>,  <34.624920, 29.296019, 23.688883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084770, 29.135441, 23.984726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316948, 28.898174, 24.207880>,  <34.456257, 28.755814, 24.341772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316948, 28.898174, 24.207880>,  <34.084770, 29.135441, 23.984726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316948, 28.898174, 24.207880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515471, 0.262710, 0.815642,
		-0.630374, -0.761010, -0.153272,
		0.580446, -0.593167, 0.557884,
		34.491081, 28.720224, 24.375246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608295, 28.736162, 24.293589>,  <34.084770, 29.135441, 23.984726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608295, 28.736162, 24.293589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944756, 28.728292, 24.509768>,  <34.146629, 28.723570, 24.639475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944756, 28.728292, 24.509768>,  <33.608295, 28.736162, 24.293589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944756, 28.728292, 24.509768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513483, 0.284571, 0.809540,
		-0.169724, -0.958453, 0.229264,
		0.841148, -0.019675, 0.540447,
		34.197102, 28.722389, 24.671902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.513256, 29.696508, 23.255180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688957, 29.428312, 23.494347>,  <39.794376, 29.267395, 23.637846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688957, 29.428312, 23.494347>,  <39.513256, 29.696508, 23.255180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688957, 29.428312, 23.494347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622224, 0.253005, 0.740828,
		-0.647992, -0.697447, -0.306061,
		0.439253, -0.670489, 0.597914,
		39.820732, 29.227165, 23.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054836, 29.045362, 23.498131>,  <39.513256, 29.696508, 23.255180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054836, 29.045362, 23.498131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333382, 29.126238, 23.773579>,  <39.500507, 29.174763, 23.938847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333382, 29.126238, 23.773579>,  <39.054836, 29.045362, 23.498131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333382, 29.126238, 23.773579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716542, 0.250057, 0.651183,
		-0.040533, -0.946885, 0.319007,
		0.696365, 0.202187, 0.688619,
		39.542290, 29.186893, 23.980164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832840, 28.764606, 24.113714>,  <39.054836, 29.045362, 23.498131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832840, 28.764606, 24.113714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.107933, 29.037596, 24.212709>,  <39.272991, 29.201389, 24.272106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.107933, 29.037596, 24.212709>,  <38.832840, 28.764606, 24.113714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107933, 29.037596, 24.212709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620853, 0.376246, 0.687736,
		0.376246, -0.626633, 0.682473,
		-0.687736, -0.682473, -0.247486,
		39.314255, 29.242338, 24.286955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811069, 28.822783, 24.866711>,  <38.832840, 28.764606, 24.113714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811069, 28.822783, 24.866711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011337, 29.161777, 24.796183>,  <39.131500, 29.365175, 24.753866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011337, 29.161777, 24.796183>,  <38.811069, 28.822783, 24.866711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011337, 29.161777, 24.796183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549077, 0.468390, 0.692189,
		0.669210, -0.249744, 0.699847,
		0.500672, 0.847490, -0.176323,
		39.161537, 29.416025, 24.743286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772110, 29.103317, 25.485037>,  <38.811069, 28.822783, 24.866711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772110, 29.103317, 25.485037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868465, 29.415886, 25.254784>,  <38.926277, 29.603428, 25.116632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868465, 29.415886, 25.254784>,  <38.772110, 29.103317, 25.485037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868465, 29.415886, 25.254784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502568, 0.607820, 0.614802,
		0.830300, 0.141196, 0.539133,
		0.240888, 0.781421, -0.575634,
		38.940731, 29.650312, 25.082094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081490, 29.689085, 25.847055>,  <38.772110, 29.103317, 25.485037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081490, 29.689085, 25.847055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905666, 29.850271, 25.525957>,  <38.800171, 29.946983, 25.333298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905666, 29.850271, 25.525957>,  <39.081490, 29.689085, 25.847055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905666, 29.850271, 25.525957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554805, 0.581042, 0.595468,
		0.706384, 0.707113, -0.031835,
		-0.439560, 0.402967, -0.802748,
		38.773800, 29.971161, 25.285133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992085, 30.337269, 25.996229>,  <39.081490, 29.689085, 25.847055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992085, 30.337269, 25.996229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742756, 30.352585, 25.683819>,  <38.593159, 30.361774, 25.496372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742756, 30.352585, 25.683819>,  <38.992085, 30.337269, 25.996229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742756, 30.352585, 25.683819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524763, 0.720010, 0.454103,
		0.579735, 0.692907, -0.428705,
		-0.623323, 0.038291, -0.781026,
		38.555759, 30.364073, 25.449511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924515, 31.038849, 25.715286>,  <38.992085, 30.337269, 25.996229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924515, 31.038849, 25.715286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589485, 30.871420, 25.574852>,  <38.388466, 30.770962, 25.490591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589485, 30.871420, 25.574852>,  <38.924515, 31.038849, 25.715286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589485, 30.871420, 25.574852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514839, 0.819744, 0.250920,
		0.182771, 0.390917, -0.902097,
		-0.837577, -0.418573, -0.351085,
		38.338211, 30.745848, 25.469526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677998, 31.435616, 25.259611>,  <38.924515, 31.038849, 25.715286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677998, 31.435616, 25.259611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356106, 31.220570, 25.360312>,  <38.162971, 31.091543, 25.420732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356106, 31.220570, 25.360312>,  <38.677998, 31.435616, 25.259611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356106, 31.220570, 25.360312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451938, 0.829798, 0.327394,
		-0.384915, 0.149689, -0.910733,
		-0.804732, -0.537613, 0.251752,
		38.114685, 31.059286, 25.435837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253132, 31.889563, 25.063276>,  <38.677998, 31.435616, 25.259611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253132, 31.889563, 25.063276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069229, 31.645243, 25.321127>,  <37.958885, 31.498652, 25.475838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069229, 31.645243, 25.321127>,  <38.253132, 31.889563, 25.063276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069229, 31.645243, 25.321127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503867, 0.777162, 0.377011,
		-0.731259, -0.151472, -0.665069,
		-0.459760, -0.610799, 0.644628,
		37.931301, 31.462004, 25.514515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504520, 32.070969, 25.062496>,  <38.253132, 31.889563, 25.063276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504520, 32.070969, 25.062496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580639, 31.875572, 25.403122>,  <37.626312, 31.758335, 25.607498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580639, 31.875572, 25.403122>,  <37.504520, 32.070969, 25.062496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580639, 31.875572, 25.403122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557010, 0.660556, 0.503393,
		-0.808409, -0.570127, -0.146389,
		0.190300, -0.488488, 0.851567,
		37.637730, 31.729027, 25.658592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980820, 32.210541, 25.383762>,  <37.504520, 32.070969, 25.062496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980820, 32.210541, 25.383762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206314, 32.051044, 25.673096>,  <37.341610, 31.955347, 25.846697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206314, 32.051044, 25.673096>,  <36.980820, 32.210541, 25.383762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206314, 32.051044, 25.673096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465470, 0.570074, 0.677018,
		-0.682308, -0.718347, 0.135767,
		0.563731, -0.398740, 0.723335,
		37.375435, 31.931423, 25.890097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491787, 31.646643, 25.173794>,  <36.980820, 32.210541, 25.383762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491787, 31.646643, 25.173794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.172180, 31.737597, 24.951134>,  <35.980415, 31.792170, 24.817537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.172180, 31.737597, 24.951134>,  <36.491787, 31.646643, 25.173794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172180, 31.737597, 24.951134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526137, -0.183799, -0.830300,
		-0.291110, -0.956302, 0.027223,
		-0.799021, 0.227386, -0.556652,
		35.932472, 31.805813, 24.784138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505722, 31.146427, 24.717651>,  <36.491787, 31.646643, 25.173794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505722, 31.146427, 24.717651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254162, 31.398853, 24.535997>,  <36.103226, 31.550308, 24.427004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254162, 31.398853, 24.535997>,  <36.505722, 31.146427, 24.717651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254162, 31.398853, 24.535997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564845, -0.030526, -0.824632,
		-0.534259, -0.775129, -0.337255,
		-0.628902, 0.631064, -0.454137,
		36.065491, 31.588173, 24.399755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350414, 30.793358, 24.122913>,  <36.505722, 31.146427, 24.717651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350414, 30.793358, 24.122913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.222820, 31.168667, 24.069405>,  <36.146263, 31.393852, 24.037300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.222820, 31.168667, 24.069405>,  <36.350414, 30.793358, 24.122913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222820, 31.168667, 24.069405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399955, 0.005305, -0.916519,
		-0.859234, -0.345862, -0.376958,
		-0.318989, 0.938271, -0.133771,
		36.127125, 31.450148, 24.029274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916523, 30.820608, 23.455828>,  <36.350414, 30.793358, 24.122913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916523, 30.820608, 23.455828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095390, 31.167494, 23.543447>,  <36.202709, 31.375626, 23.596020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095390, 31.167494, 23.543447>,  <35.916523, 30.820608, 23.455828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095390, 31.167494, 23.543447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615871, -0.120922, -0.778512,
		-0.648649, 0.483029, -0.588165,
		0.447165, 0.867215, 0.219048,
		36.229542, 31.427658, 23.609161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915489, 31.252754, 22.898056>,  <35.916523, 30.820608, 23.455828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915489, 31.252754, 22.898056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220127, 31.394892, 23.114834>,  <36.402908, 31.480175, 23.244900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220127, 31.394892, 23.114834>,  <35.915489, 31.252754, 22.898056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220127, 31.394892, 23.114834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586997, -0.023900, -0.809236,
		-0.274604, 0.934430, -0.226788,
		0.761595, 0.355343, 0.541945,
		36.448605, 31.501495, 23.277418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247097, 31.717180, 22.485739>,  <35.915489, 31.252754, 22.898056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247097, 31.717180, 22.485739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.519043, 31.619225, 22.762236>,  <36.682209, 31.560452, 22.928135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.519043, 31.619225, 22.762236>,  <36.247097, 31.717180, 22.485739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519043, 31.619225, 22.762236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706014, -0.036349, -0.707265,
		0.198327, 0.968870, 0.148183,
		0.679861, -0.244889, 0.691244,
		36.723000, 31.545757, 22.969608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826237, 32.099770, 22.395664>,  <36.247097, 31.717180, 22.485739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826237, 32.099770, 22.395664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960804, 31.785339, 22.603090>,  <37.041546, 31.596682, 22.727547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960804, 31.785339, 22.603090>,  <36.826237, 32.099770, 22.395664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960804, 31.785339, 22.603090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689754, -0.169220, -0.703992,
		0.641140, 0.594520, 0.485268,
		0.336420, -0.786073, 0.518566,
		37.061729, 31.549517, 22.758659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358826, 31.971825, 22.150551>,  <36.826237, 32.099770, 22.395664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358826, 31.971825, 22.150551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380016, 31.620533, 22.340668>,  <37.392731, 31.409758, 22.454739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380016, 31.620533, 22.340668>,  <37.358826, 31.971825, 22.150551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380016, 31.620533, 22.340668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675754, -0.318902, -0.664573,
		0.735221, 0.356387, 0.576575,
		0.052974, -0.878231, 0.475293,
		37.395908, 31.357063, 22.483255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076729, 31.791216, 22.257938>,  <37.358826, 31.971825, 22.150551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076729, 31.791216, 22.257938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869884, 31.448942, 22.249891>,  <37.745777, 31.243578, 22.245064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869884, 31.448942, 22.249891>,  <38.076729, 31.791216, 22.257938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869884, 31.448942, 22.249891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626288, -0.362253, -0.690316,
		0.583404, -0.369568, 0.723229,
		-0.517111, -0.855682, -0.020116,
		37.714752, 31.192238, 22.243856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479019, 31.159428, 22.110929>,  <38.076729, 31.791216, 22.257938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479019, 31.159428, 22.110929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140972, 30.963394, 22.025515>,  <37.938145, 30.845774, 21.974266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140972, 30.963394, 22.025515>,  <38.479019, 31.159428, 22.110929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140972, 30.963394, 22.025515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461710, -0.467804, -0.753647,
		0.269457, -0.735510, 0.621625,
		-0.845114, -0.490086, -0.213539,
		37.887440, 30.816368, 21.961452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573555, 30.406021, 22.019331>,  <38.479019, 31.159428, 22.110929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573555, 30.406021, 22.019331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.241978, 30.482582, 21.809109>,  <38.043030, 30.528519, 21.682976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.241978, 30.482582, 21.809109>,  <38.573555, 30.406021, 22.019331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241978, 30.482582, 21.809109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410765, -0.429426, -0.804280,
		-0.379624, -0.882588, 0.277353,
		-0.828950, 0.191397, -0.525556,
		37.993294, 30.540003, 21.651442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706097, 29.904930, 21.674911>,  <38.573555, 30.406021, 22.019331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706097, 29.904930, 21.674911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430855, 30.125944, 21.486778>,  <38.265709, 30.258553, 21.373898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430855, 30.125944, 21.486778>,  <38.706097, 29.904930, 21.674911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430855, 30.125944, 21.486778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261551, -0.415747, -0.871060,
		-0.676833, -0.722397, 0.141561,
		-0.688105, 0.552537, -0.470335,
		38.224422, 30.291704, 21.345678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449654, 29.384674, 21.225529>,  <38.706097, 29.904930, 21.674911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449654, 29.384674, 21.225529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.358852, 29.752184, 21.096329>,  <38.304371, 29.972689, 21.018808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.358852, 29.752184, 21.096329>,  <38.449654, 29.384674, 21.225529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358852, 29.752184, 21.096329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237001, -0.269571, -0.933360,
		-0.944617, -0.288423, -0.156557,
		-0.227000, 0.918773, -0.322998,
		38.290752, 30.027815, 20.999430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532139, 29.155617, 21.911911>,  <38.449654, 29.384674, 21.225529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532139, 29.155617, 21.911911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 28.941559, 21.594213>,  <38.347988, 28.813124, 21.403595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 28.941559, 21.594213>,  <38.532139, 29.155617, 21.911911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417046, 28.941559, 21.594213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876000, -0.188125, 0.444109,
		-0.387081, 0.823546, -0.414656,
		-0.287738, -0.535145, -0.794246,
		38.330723, 28.781015, 21.355940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829826, 29.408302, 21.654625>,  <38.532139, 29.155617, 21.911911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829826, 29.408302, 21.654625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885269, 29.030481, 21.535557>,  <37.918533, 28.803789, 21.464117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885269, 29.030481, 21.535557>,  <37.829826, 29.408302, 21.654625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885269, 29.030481, 21.535557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847922, -0.268481, 0.457107,
		-0.511680, 0.189042, -0.838121,
		0.138607, -0.944553, -0.297669,
		37.926849, 28.747116, 21.446257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250694, 29.047876, 21.228014>,  <37.829826, 29.408302, 21.654625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250694, 29.047876, 21.228014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433342, 28.724352, 21.376245>,  <37.542931, 28.530237, 21.465183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433342, 28.724352, 21.376245>,  <37.250694, 29.047876, 21.228014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433342, 28.724352, 21.376245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856271, -0.286491, 0.429794,
		-0.241453, -0.513568, -0.823376,
		0.456618, -0.808809, 0.370579,
		37.570328, 28.481709, 21.487419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824757, 28.496414, 21.042315>,  <37.250694, 29.047876, 21.228014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824757, 28.496414, 21.042315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075653, 28.376520, 21.329849>,  <37.226192, 28.304583, 21.502371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075653, 28.376520, 21.329849>,  <36.824757, 28.496414, 21.042315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075653, 28.376520, 21.329849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768431, -0.388470, 0.508532,
		0.126822, -0.871349, -0.473991,
		0.627240, -0.299737, 0.718838,
		37.263824, 28.286598, 21.545500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487869, 27.879208, 21.257175>,  <36.824757, 28.496414, 21.042315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487869, 27.879208, 21.257175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738598, 27.963179, 21.557316>,  <36.889034, 28.013561, 21.737400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738598, 27.963179, 21.557316>,  <36.487869, 27.879208, 21.257175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738598, 27.963179, 21.557316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634190, -0.422013, 0.647849,
		0.452660, -0.881950, -0.131391,
		0.626819, 0.209929, 0.750352,
		36.926643, 28.026157, 21.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553623, 27.244873, 21.556673>,  <36.487869, 27.879208, 21.257175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553623, 27.244873, 21.556673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651169, 27.543707, 21.804026>,  <36.709694, 27.723007, 21.952438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651169, 27.543707, 21.804026>,  <36.553623, 27.244873, 21.556673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651169, 27.543707, 21.804026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666261, -0.334282, 0.666597,
		0.704718, -0.574562, 0.416234,
		0.243862, 0.747084, 0.618382,
		36.724327, 27.767832, 21.989540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335396, 27.028444, 22.228048>,  <36.553623, 27.244873, 21.556673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335396, 27.028444, 22.228048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406288, 27.414959, 22.302752>,  <36.448822, 27.646868, 22.347574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406288, 27.414959, 22.302752>,  <36.335396, 27.028444, 22.228048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406288, 27.414959, 22.302752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668502, -0.021071, 0.743411,
		0.722285, -0.256601, 0.642231,
		0.177227, 0.966287, 0.186758,
		36.459457, 27.704845, 22.358778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270836, 27.084499, 23.025064>,  <36.335396, 27.028444, 22.228048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270836, 27.084499, 23.025064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216164, 27.456263, 22.887938>,  <36.183361, 27.679319, 22.805662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216164, 27.456263, 22.887938>,  <36.270836, 27.084499, 23.025064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216164, 27.456263, 22.887938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656975, 0.173966, 0.733567,
		0.741420, 0.325484, 0.586819,
		-0.136678, 0.929406, -0.342816,
		36.175159, 27.735085, 22.785093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924171, 27.016352, 23.315792>,  <36.270836, 27.084499, 23.025064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924171, 27.016352, 23.315792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090824, 26.669050, 23.423534>,  <37.190815, 26.460669, 23.488180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090824, 26.669050, 23.423534>,  <36.924171, 27.016352, 23.315792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090824, 26.669050, 23.423534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472700, -0.046180, -0.880013,
		0.776514, 0.493965, 0.391184,
		0.416631, -0.868254, 0.269356,
		37.215813, 26.408573, 23.504341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621231, 26.990566, 23.050737>,  <36.924171, 27.016352, 23.315792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621231, 26.990566, 23.050737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628059, 26.606419, 23.162022>,  <37.632156, 26.375931, 23.228792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628059, 26.606419, 23.162022>,  <37.621231, 26.990566, 23.050737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628059, 26.606419, 23.162022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776603, -0.162522, -0.608667,
		0.629760, 0.226447, 0.743051,
		0.017069, -0.960369, 0.278209,
		37.633179, 26.318308, 23.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356133, 26.878609, 23.169748>,  <37.621231, 26.990566, 23.050737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356133, 26.878609, 23.169748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.175056, 26.528412, 23.102114>,  <38.066410, 26.318295, 23.061533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.175056, 26.528412, 23.102114>,  <38.356133, 26.878609, 23.169748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175056, 26.528412, 23.102114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747738, -0.269421, -0.606877,
		0.485759, -0.401159, 0.776601,
		-0.452687, -0.875491, -0.169088,
		38.039249, 26.265764, 23.051388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936512, 26.333792, 23.242510>,  <38.356133, 26.878609, 23.169748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936512, 26.333792, 23.242510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630215, 26.170275, 23.043901>,  <38.446438, 26.072165, 22.924736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630215, 26.170275, 23.043901>,  <38.936512, 26.333792, 23.242510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630215, 26.170275, 23.043901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642878, -0.463971, -0.609457,
		0.018770, -0.785887, 0.618084,
		-0.765738, -0.408792, -0.496521,
		38.400494, 26.047636, 22.894945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068840, 25.549080, 23.101561>,  <38.936512, 26.333792, 23.242510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068840, 25.549080, 23.101561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794544, 25.626230, 22.820831>,  <38.629967, 25.672522, 22.652393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794544, 25.626230, 22.820831>,  <39.068840, 25.549080, 23.101561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794544, 25.626230, 22.820831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491062, -0.589117, -0.641715,
		-0.537226, -0.784691, 0.309271,
		-0.685745, 0.192875, -0.701821,
		38.588821, 25.684093, 22.610285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789810, 24.905775, 22.905022>,  <39.068840, 25.549080, 23.101561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789810, 24.905775, 22.905022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.738598, 25.174549, 22.613237>,  <38.707870, 25.335814, 22.438168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.738598, 25.174549, 22.613237>,  <38.789810, 24.905775, 22.905022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738598, 25.174549, 22.613237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487872, -0.597698, -0.636190,
		-0.863475, -0.437336, -0.251293,
		-0.128032, 0.671933, -0.729461,
		38.700188, 25.376129, 22.394400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454445, 24.565090, 22.381437>,  <38.789810, 24.905775, 22.905022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454445, 24.565090, 22.381437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656139, 24.866327, 22.212397>,  <38.777157, 25.047070, 22.110973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656139, 24.866327, 22.212397>,  <38.454445, 24.565090, 22.381437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656139, 24.866327, 22.212397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445900, -0.646142, -0.619415,
		-0.739537, 0.123897, -0.661615,
		0.504241, 0.753094, -0.422600,
		38.807411, 25.092255, 22.085617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471672, 24.333408, 21.642139>,  <38.454445, 24.565090, 22.381437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471672, 24.333408, 21.642139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.763260, 24.605349, 21.674164>,  <38.938213, 24.768513, 21.693378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.763260, 24.605349, 21.674164>,  <38.471672, 24.333408, 21.642139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763260, 24.605349, 21.674164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469834, -0.411822, -0.780807,
		-0.497861, 0.606797, -0.619622,
		0.728965, 0.679853, 0.080063,
		38.981949, 24.809305, 21.698183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731312, 24.379917, 21.017435>,  <38.471672, 24.333408, 21.642139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731312, 24.379917, 21.017435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027184, 24.509151, 21.253569>,  <39.204704, 24.586691, 21.395248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027184, 24.509151, 21.253569>,  <38.731312, 24.379917, 21.017435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027184, 24.509151, 21.253569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669193, -0.445827, -0.594490,
		0.071116, 0.834778, -0.545974,
		0.739677, 0.323084, 0.590334,
		39.249088, 24.606077, 21.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.263702, 30.184294, 35.271542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660625, 30.224325, 35.242386>,  <33.898781, 30.248344, 35.224892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660625, 30.224325, 35.242386>,  <33.263702, 30.184294, 35.271542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660625, 30.224325, 35.242386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065876, -0.071685, -0.995250,
		-0.104827, 0.992394, -0.064541,
		0.992306, 0.100077, -0.072890,
		33.958317, 30.254349, 35.220520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382851, 30.753460, 34.854828>,  <33.263702, 30.184294, 35.271542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382851, 30.753460, 34.854828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696312, 30.505337, 34.841507>,  <33.884388, 30.356462, 34.833515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696312, 30.505337, 34.841507>,  <33.382851, 30.753460, 34.854828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696312, 30.505337, 34.841507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156213, -0.144897, -0.977038,
		0.601241, 0.770857, -0.210449,
		0.783650, -0.620309, -0.033300,
		33.931408, 30.319244, 34.831516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661854, 30.832476, 34.210026>,  <33.382851, 30.753460, 34.854828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661854, 30.832476, 34.210026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859352, 30.496273, 34.299255>,  <33.977852, 30.294552, 34.352795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859352, 30.496273, 34.299255>,  <33.661854, 30.832476, 34.210026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859352, 30.496273, 34.299255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170707, -0.345216, -0.922868,
		0.852684, 0.417585, -0.313930,
		0.493749, -0.840505, 0.223075,
		34.007477, 30.244122, 34.366177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020462, 30.751007, 33.662334>,  <33.661854, 30.832476, 34.210026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020462, 30.751007, 33.662334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990013, 30.387608, 33.826694>,  <33.971745, 30.169567, 33.925308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990013, 30.387608, 33.826694>,  <34.020462, 30.751007, 33.662334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990013, 30.387608, 33.826694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027044, -0.410059, -0.911658,
		0.996732, -0.080510, 0.006646,
		-0.076123, -0.908498, 0.410896,
		33.967175, 30.115059, 33.949963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559948, 30.350756, 33.255058>,  <34.020462, 30.751007, 33.662334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559948, 30.350756, 33.255058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318848, 30.066872, 33.400940>,  <34.174187, 29.896542, 33.488468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318848, 30.066872, 33.400940>,  <34.559948, 30.350756, 33.255058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318848, 30.066872, 33.400940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108795, -0.525892, -0.843564,
		0.790482, -0.468777, 0.394192,
		-0.602746, -0.709708, 0.364708,
		34.138023, 29.853960, 33.510353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933273, 29.708954, 33.161686>,  <34.559948, 30.350756, 33.255058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933273, 29.708954, 33.161686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540627, 29.638588, 33.191315>,  <34.305038, 29.596369, 33.209091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540627, 29.638588, 33.191315>,  <34.933273, 29.708954, 33.161686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540627, 29.638588, 33.191315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053085, -0.624377, -0.779317,
		0.183345, -0.761056, 0.622236,
		-0.981614, -0.175916, 0.074076,
		34.246143, 29.585814, 33.213539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975513, 29.103092, 33.021091>,  <34.933273, 29.708954, 33.161686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975513, 29.103092, 33.021091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584148, 29.178410, 32.987038>,  <34.349327, 29.223600, 32.966606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584148, 29.178410, 32.987038>,  <34.975513, 29.103092, 33.021091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584148, 29.178410, 32.987038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068894, -0.685653, -0.724661,
		-0.194822, -0.703154, 0.683826,
		-0.978416, 0.188292, -0.085137,
		34.290623, 29.234898, 32.961494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672138, 28.415632, 33.034195>,  <34.975513, 29.103092, 33.021091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672138, 28.415632, 33.034195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407230, 28.669203, 32.874424>,  <34.248287, 28.821344, 32.778561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407230, 28.669203, 32.874424>,  <34.672138, 28.415632, 33.034195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407230, 28.669203, 32.874424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016972, -0.520262, -0.853838,
		-0.749076, -0.572247, 0.333793,
		-0.662266, 0.633925, -0.399428,
		34.208549, 28.859381, 32.754597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119335, 28.042160, 32.718079>,  <34.672138, 28.415632, 33.034195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119335, 28.042160, 32.718079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101414, 28.399504, 32.539238>,  <34.090660, 28.613911, 32.431934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101414, 28.399504, 32.539238>,  <34.119335, 28.042160, 32.718079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101414, 28.399504, 32.539238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106032, -0.440771, -0.891335,
		-0.993353, -0.087344, -0.074976,
		-0.044806, 0.893360, -0.447102,
		34.087971, 28.667511, 32.405106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547916, 27.966990, 32.253437>,  <34.119335, 28.042160, 32.718079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547916, 27.966990, 32.253437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766479, 28.281870, 32.139065>,  <33.897617, 28.470798, 32.070442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766479, 28.281870, 32.139065>,  <33.547916, 27.966990, 32.253437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766479, 28.281870, 32.139065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092071, -0.395793, -0.913713,
		-0.832444, 0.472932, -0.288742,
		0.546406, 0.787200, -0.285932,
		33.930401, 28.518030, 32.053284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331444, 28.132238, 31.554968>,  <33.547916, 27.966990, 32.253437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331444, 28.132238, 31.554968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680973, 28.326405, 31.566311>,  <33.890690, 28.442904, 31.573116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680973, 28.326405, 31.566311>,  <33.331444, 28.132238, 31.554968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680973, 28.326405, 31.566311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179938, -0.268640, -0.946285,
		-0.451723, 0.831989, -0.322089,
		0.873824, 0.485415, 0.028355,
		33.943119, 28.472029, 31.574818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399464, 28.548918, 31.033993>,  <33.331444, 28.132238, 31.554968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399464, 28.548918, 31.033993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785320, 28.505947, 31.130266>,  <34.016834, 28.480165, 31.188030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785320, 28.505947, 31.130266>,  <33.399464, 28.548918, 31.033993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785320, 28.505947, 31.130266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222020, -0.160936, -0.961669,
		0.142044, 0.981101, -0.131394,
		0.964640, -0.107427, 0.240684,
		34.074711, 28.473719, 31.202471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025459, 29.265087, 30.998062>,  <33.399464, 28.548918, 31.033993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025459, 29.265087, 30.998062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711945, 29.398144, 30.788292>,  <32.523834, 29.477978, 30.662430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711945, 29.398144, 30.788292>,  <33.025459, 29.265087, 30.998062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711945, 29.398144, 30.788292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440262, 0.297956, 0.846990,
		0.438000, 0.894747, -0.087086,
		-0.783789, 0.332641, -0.524428,
		32.476807, 29.497936, 30.630964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931206, 30.029280, 31.060717>,  <33.025459, 29.265087, 30.998062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931206, 30.029280, 31.060717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568169, 29.898060, 30.955904>,  <32.350346, 29.819328, 30.893017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568169, 29.898060, 30.955904>,  <32.931206, 30.029280, 31.060717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568169, 29.898060, 30.955904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374580, 0.350762, 0.858286,
		-0.189650, 0.877125, -0.441230,
		-0.907592, -0.328050, -0.262031,
		32.295891, 29.799644, 30.877295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462742, 30.598900, 31.261997>,  <32.931206, 30.029280, 31.060717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462742, 30.598900, 31.261997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235893, 30.274052, 31.207092>,  <32.099785, 30.079144, 31.174150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235893, 30.274052, 31.207092>,  <32.462742, 30.598900, 31.261997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235893, 30.274052, 31.207092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575336, 0.271358, 0.771591,
		-0.589376, 0.516555, -0.621133,
		-0.567119, -0.812118, -0.137261,
		32.065758, 30.030416, 31.165915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789391, 30.757200, 31.111006>,  <32.462742, 30.598900, 31.261997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789391, 30.757200, 31.111006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771910, 30.386351, 31.259882>,  <31.761421, 30.163841, 31.349209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771910, 30.386351, 31.259882>,  <31.789391, 30.757200, 31.111006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771910, 30.386351, 31.259882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697492, 0.295038, 0.653037,
		-0.715258, -0.231063, -0.659557,
		-0.043702, -0.927126, 0.372193,
		31.758799, 30.108213, 31.371540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282955, 30.859903, 31.622131>,  <31.789391, 30.757200, 31.111006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282955, 30.859903, 31.622131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393436, 30.477900, 31.665337>,  <31.459724, 30.248697, 31.691259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393436, 30.477900, 31.665337>,  <31.282955, 30.859903, 31.622131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393436, 30.477900, 31.665337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684810, -0.116700, 0.719317,
		-0.674351, -0.272643, -0.686234,
		0.276201, -0.955011, 0.108012,
		31.476297, 30.191397, 31.697741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628298, 30.410736, 31.521049>,  <31.282955, 30.859903, 31.622131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628298, 30.410736, 31.521049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916519, 30.245495, 31.743813>,  <31.089453, 30.146351, 31.877470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916519, 30.245495, 31.743813>,  <30.628298, 30.410736, 31.521049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916519, 30.245495, 31.743813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642648, -0.096249, 0.760092,
		-0.260396, -0.905583, -0.334833,
		0.720554, -0.413104, 0.556908,
		31.132685, 30.121563, 31.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280933, 29.943054, 31.813272>,  <30.628298, 30.410736, 31.521049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280933, 29.943054, 31.813272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597851, 29.987469, 32.053253>,  <30.788002, 30.014116, 32.197243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597851, 29.987469, 32.053253>,  <30.280933, 29.943054, 31.813272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597851, 29.987469, 32.053253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590742, -0.106377, 0.799818,
		0.152629, -0.988107, -0.018688,
		0.792293, 0.111036, 0.599952,
		30.835539, 30.020779, 32.233238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094492, 29.707960, 32.550236>,  <30.280933, 29.943054, 31.813272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094492, 29.707960, 32.550236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434881, 29.905272, 32.622372>,  <30.639114, 30.023659, 32.665653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434881, 29.905272, 32.622372>,  <30.094492, 29.707960, 32.550236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434881, 29.905272, 32.622372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321863, 0.218459, 0.921238,
		0.415031, -0.841993, 0.344670,
		0.850973, 0.493279, 0.180339,
		30.690172, 30.053255, 32.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323986, 29.581190, 33.270187>,  <30.094492, 29.707960, 32.550236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323986, 29.581190, 33.270187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502085, 29.915403, 33.141411>,  <30.608944, 30.115931, 33.064144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502085, 29.915403, 33.141411>,  <30.323986, 29.581190, 33.270187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502085, 29.915403, 33.141411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267303, 0.467177, 0.842790,
		0.854580, -0.289193, 0.431348,
		0.445245, 0.835532, -0.321938,
		30.635658, 30.166063, 33.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758717, 29.811371, 33.831985>,  <30.323986, 29.581190, 33.270187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758717, 29.811371, 33.831985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689650, 30.134340, 33.606331>,  <30.648211, 30.328121, 33.470936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689650, 30.134340, 33.606331>,  <30.758717, 29.811371, 33.831985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689650, 30.134340, 33.606331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199828, 0.532116, 0.822752,
		0.964497, 0.254792, 0.069467,
		-0.172667, 0.807424, -0.564139,
		30.637850, 30.376568, 33.437088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153027, 30.356705, 34.102509>,  <30.758717, 29.811371, 33.831985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153027, 30.356705, 34.102509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863810, 30.542444, 33.897926>,  <30.690279, 30.653887, 33.775177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863810, 30.542444, 33.897926>,  <31.153027, 30.356705, 34.102509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863810, 30.542444, 33.897926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079272, 0.679721, 0.729175,
		0.686240, 0.567769, -0.454657,
		-0.723042, 0.464347, -0.511460,
		30.646896, 30.681749, 33.744488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255440, 31.021217, 34.332253>,  <31.153027, 30.356705, 34.102509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255440, 31.021217, 34.332253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.892017, 31.043257, 34.166607>,  <30.673964, 31.056480, 34.067219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.892017, 31.043257, 34.166607>,  <31.255440, 31.021217, 34.332253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892017, 31.043257, 34.166607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305628, 0.588143, 0.748785,
		0.284817, 0.806878, -0.517521,
		-0.908554, 0.055098, -0.414118,
		30.619452, 31.059786, 34.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003029, 31.683718, 34.536926>,  <31.255440, 31.021217, 34.332253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003029, 31.683718, 34.536926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657627, 31.559317, 34.378113>,  <30.450386, 31.484676, 34.282825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657627, 31.559317, 34.378113>,  <31.003029, 31.683718, 34.536926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657627, 31.559317, 34.378113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504336, 0.529812, 0.681869,
		-0.001711, 0.789035, -0.614345,
		-0.863506, -0.311003, -0.397032,
		30.398575, 31.466015, 34.259003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588034, 32.248749, 34.156189>,  <31.003029, 31.683718, 34.536926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588034, 32.248749, 34.156189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.336882, 31.973061, 34.300823>,  <30.186192, 31.807648, 34.387604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.336882, 31.973061, 34.300823>,  <30.588034, 32.248749, 34.156189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336882, 31.973061, 34.300823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478009, 0.708114, 0.519693,
		-0.614228, 0.153462, -0.774063,
		-0.627879, -0.689219, 0.361587,
		30.148518, 31.766294, 34.409298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076145, 32.635696, 34.471554>,  <30.588034, 32.248749, 34.156189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076145, 32.635696, 34.471554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990005, 32.270042, 34.608948>,  <29.938322, 32.050652, 34.691383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990005, 32.270042, 34.608948>,  <30.076145, 32.635696, 34.471554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990005, 32.270042, 34.608948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574657, 0.403019, 0.712281,
		-0.789553, -0.043998, -0.612104,
		-0.215350, -0.914134, 0.343488,
		29.925400, 31.995802, 34.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280479, 32.980289, 33.825878>,  <30.076145, 32.635696, 34.471554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280479, 32.980289, 33.825878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588310, 33.234497, 33.850769>,  <30.773008, 33.387020, 33.865704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588310, 33.234497, 33.850769>,  <30.280479, 32.980289, 33.825878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588310, 33.234497, 33.850769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227050, -0.181247, -0.956869,
		-0.596827, 0.750512, -0.283777,
		0.769575, 0.635517, 0.062231,
		30.819183, 33.425152, 33.869438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260761, 33.377178, 33.195473>,  <30.280479, 32.980289, 33.825878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260761, 33.377178, 33.195473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635614, 33.431644, 33.323997>,  <30.860527, 33.464325, 33.401112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635614, 33.431644, 33.323997>,  <30.260761, 33.377178, 33.195473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635614, 33.431644, 33.323997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333289, -0.076292, -0.939733,
		-0.103449, 0.987744, -0.116879,
		0.937132, 0.136169, 0.321312,
		30.916754, 33.472496, 33.420391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556322, 33.927879, 32.709328>,  <30.260761, 33.377178, 33.195473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556322, 33.927879, 32.709328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856527, 33.741756, 32.897038>,  <31.036650, 33.630081, 33.009663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856527, 33.741756, 32.897038>,  <30.556322, 33.927879, 32.709328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856527, 33.741756, 32.897038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476086, -0.111797, -0.872263,
		0.458337, 0.878059, 0.137623,
		0.750512, -0.465311, 0.469273,
		31.081680, 33.602161, 33.037819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202477, 34.336285, 32.578697>,  <30.556322, 33.927879, 32.709328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202477, 34.336285, 32.578697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281116, 33.948368, 32.636463>,  <31.328300, 33.715618, 32.671124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281116, 33.948368, 32.636463>,  <31.202477, 34.336285, 32.578697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281116, 33.948368, 32.636463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612554, 0.006480, -0.790403,
		0.765589, 0.243855, 0.595322,
		0.196602, -0.969790, 0.144413,
		31.340097, 33.657433, 32.679787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813530, 34.227100, 32.171234>,  <31.202477, 34.336285, 32.578697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813530, 34.227100, 32.171234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691261, 33.855724, 32.255669>,  <31.617901, 33.632896, 32.306332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691261, 33.855724, 32.255669>,  <31.813530, 34.227100, 32.171234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691261, 33.855724, 32.255669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500878, -0.345344, -0.793637,
		0.809746, -0.136860, 0.570598,
		-0.305669, -0.928443, 0.211091,
		31.599560, 33.577190, 32.318996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495087, 33.704662, 32.169846>,  <31.813530, 34.227100, 32.171234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495087, 33.704662, 32.169846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165359, 33.487278, 32.106407>,  <31.967524, 33.356850, 32.068344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165359, 33.487278, 32.106407>,  <32.495087, 33.704662, 32.169846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165359, 33.487278, 32.106407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431213, -0.421212, -0.797895,
		0.366819, -0.726108, 0.581559,
		-0.824317, -0.543459, -0.158599,
		31.918064, 33.324242, 32.058826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725609, 33.142216, 31.849977>,  <32.495087, 33.704662, 32.169846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725609, 33.142216, 31.849977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336384, 33.136383, 31.757946>,  <32.102848, 33.132885, 31.702726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336384, 33.136383, 31.757946>,  <32.725609, 33.142216, 31.849977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336384, 33.136383, 31.757946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222922, -0.313969, -0.922892,
		-0.058782, -0.949321, 0.308762,
		-0.973063, -0.014580, -0.230081,
		32.044464, 33.132008, 31.688921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657692, 32.503021, 31.560888>,  <32.725609, 33.142216, 31.849977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657692, 32.503021, 31.560888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319859, 32.682049, 31.443340>,  <32.117157, 32.789463, 31.372812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319859, 32.682049, 31.443340>,  <32.657692, 32.503021, 31.560888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319859, 32.682049, 31.443340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195852, -0.252568, -0.947550,
		-0.498313, -0.857842, 0.125659,
		-0.844586, 0.447566, -0.293869,
		32.066483, 32.816319, 31.355179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192745, 32.002544, 31.247013>,  <32.657692, 32.503021, 31.560888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192745, 32.002544, 31.247013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070953, 32.359661, 31.114223>,  <31.997877, 32.573933, 31.034550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070953, 32.359661, 31.114223>,  <32.192745, 32.002544, 31.247013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070953, 32.359661, 31.114223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010980, -0.345211, -0.938461,
		-0.952455, -0.289390, 0.095308,
		-0.304482, 0.892795, -0.331976,
		31.979609, 32.627499, 31.014631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785654, 31.764175, 30.698477>,  <32.192745, 32.002544, 31.247013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785654, 31.764175, 30.698477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858440, 32.151058, 30.627596>,  <31.902113, 32.383186, 30.585068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858440, 32.151058, 30.627596>,  <31.785654, 31.764175, 30.698477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858440, 32.151058, 30.627596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175376, -0.209243, -0.962009,
		-0.967539, 0.143976, -0.207700,
		0.181965, 0.967207, -0.177201,
		31.913031, 32.441219, 30.574436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345732, 32.023315, 30.090641>,  <31.785654, 31.764175, 30.698477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345732, 32.023315, 30.090641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659403, 32.269558, 30.121887>,  <31.847605, 32.417301, 30.140635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659403, 32.269558, 30.121887>,  <31.345732, 32.023315, 30.090641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659403, 32.269558, 30.121887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221638, -0.160274, -0.961867,
		-0.579607, 0.771587, -0.262124,
		0.784176, 0.615602, 0.078117,
		31.894655, 32.454239, 30.145323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355181, 32.313686, 29.400341>,  <31.345732, 32.023315, 30.090641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355181, 32.313686, 29.400341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712023, 32.391922, 29.563263>,  <31.926128, 32.438862, 29.661016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712023, 32.391922, 29.563263>,  <31.355181, 32.313686, 29.400341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712023, 32.391922, 29.563263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444226, -0.214973, -0.869741,
		-0.082548, 0.956835, -0.278662,
		0.892104, 0.195585, 0.407306,
		31.979654, 32.450596, 29.685455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713865, 32.929695, 28.970398>,  <31.355181, 32.313686, 29.400341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713865, 32.929695, 28.970398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014778, 32.740959, 29.154325>,  <32.195328, 32.627716, 29.264681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014778, 32.740959, 29.154325>,  <31.713865, 32.929695, 28.970398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014778, 32.740959, 29.154325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491670, -0.062505, -0.868535,
		0.438553, 0.879464, 0.184969,
		0.752284, -0.471843, 0.459818,
		32.240463, 32.599407, 29.292271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362919, 33.190254, 28.640171>,  <31.713865, 32.929695, 28.970398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362919, 33.190254, 28.640171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.456821, 32.839924, 28.808842>,  <32.513165, 32.629726, 28.910044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.456821, 32.839924, 28.808842>,  <32.362919, 33.190254, 28.640171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456821, 32.839924, 28.808842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708388, -0.142913, -0.691203,
		0.665640, 0.460976, 0.586877,
		0.234756, -0.875829, 0.421678,
		32.527248, 32.577175, 28.935345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985664, 33.192146, 28.536455>,  <32.362919, 33.190254, 28.640171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985664, 33.192146, 28.536455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873978, 32.814793, 28.608088>,  <32.806965, 32.588383, 28.651068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873978, 32.814793, 28.608088>,  <32.985664, 33.192146, 28.536455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873978, 32.814793, 28.608088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647466, -0.322689, -0.690405,
		0.709104, -0.076821, 0.700907,
		-0.279213, -0.943382, 0.179081,
		32.790215, 32.531776, 28.661812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555996, 32.872211, 28.707806>,  <32.985664, 33.192146, 28.536455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555996, 32.872211, 28.707806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322659, 32.570545, 28.587177>,  <33.182655, 32.389545, 28.514801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322659, 32.570545, 28.587177>,  <33.555996, 32.872211, 28.707806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322659, 32.570545, 28.587177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691776, -0.266754, -0.671036,
		0.425627, -0.600063, 0.677323,
		-0.583342, -0.754166, -0.301571,
		33.147655, 32.344296, 28.496706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935886, 32.228859, 28.803064>,  <33.555996, 32.872211, 28.707806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935886, 32.228859, 28.803064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650753, 32.196903, 28.524355>,  <33.479675, 32.177731, 28.357130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650753, 32.196903, 28.524355>,  <33.935886, 32.228859, 28.803064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650753, 32.196903, 28.524355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684220, -0.297367, -0.665895,
		-0.154001, -0.951415, 0.266632,
		-0.712830, -0.079886, -0.696772,
		33.436905, 32.172939, 28.315323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182320, 31.735878, 28.424841>,  <33.935886, 32.228859, 28.803064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182320, 31.735878, 28.424841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928261, 31.920605, 28.177193>,  <33.775826, 32.031441, 28.028605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928261, 31.920605, 28.177193>,  <34.182320, 31.735878, 28.424841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928261, 31.920605, 28.177193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639925, -0.134233, -0.756623,
		-0.432527, -0.876760, -0.210269,
		-0.635151, 0.461816, -0.619120,
		33.737717, 32.059151, 27.991457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982475, 31.227943, 27.878801>,  <34.182320, 31.735878, 28.424841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982475, 31.227943, 27.878801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923035, 31.589231, 27.717749>,  <33.887371, 31.806004, 27.621117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923035, 31.589231, 27.717749>,  <33.982475, 31.227943, 27.878801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923035, 31.589231, 27.717749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473779, -0.292357, -0.830699,
		-0.868015, -0.314203, -0.384481,
		-0.148603, 0.903219, -0.402633,
		33.878452, 31.860197, 27.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846474, 31.028524, 27.138014>,  <33.982475, 31.227943, 27.878801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846474, 31.028524, 27.138014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885525, 31.426546, 27.145351>,  <33.908955, 31.665359, 27.149754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885525, 31.426546, 27.145351>,  <33.846474, 31.028524, 27.138014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885525, 31.426546, 27.145351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391762, -0.021480, -0.919816,
		-0.914872, 0.096990, -0.391921,
		0.097631, 0.995054, 0.018346,
		33.914814, 31.725061, 27.150854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543064, 31.219025, 26.489700>,  <33.846474, 31.028524, 27.138014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543064, 31.219025, 26.489700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773724, 31.518721, 26.620003>,  <33.912121, 31.698538, 26.698185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773724, 31.518721, 26.620003>,  <33.543064, 31.219025, 26.489700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773724, 31.518721, 26.620003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390035, 0.097892, -0.915582,
		-0.717879, 0.655025, -0.235780,
		0.576648, 0.749239, 0.325757,
		33.946716, 31.743492, 26.717730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508656, 31.707914, 25.982208>,  <33.543064, 31.219025, 26.489700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508656, 31.707914, 25.982208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832935, 31.775639, 26.206387>,  <34.027504, 31.816273, 26.340895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832935, 31.775639, 26.206387>,  <33.508656, 31.707914, 25.982208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832935, 31.775639, 26.206387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534057, 0.178389, -0.826415,
		-0.239897, 0.969284, 0.054199,
		0.810699, 0.169309, 0.560448,
		34.076145, 31.826431, 26.374521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859154, 32.234554, 25.644005>,  <33.508656, 31.707914, 25.982208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859154, 32.234554, 25.644005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150307, 32.061516, 25.856813>,  <34.324997, 31.957691, 25.984499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150307, 32.061516, 25.856813>,  <33.859154, 32.234554, 25.644005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150307, 32.061516, 25.856813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631959, 0.122116, -0.765320,
		0.266109, 0.893278, 0.362271,
		0.727883, -0.432599, 0.532019,
		34.368671, 31.931736, 26.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334713, 32.647350, 25.471134>,  <33.859154, 32.234554, 25.644005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334713, 32.647350, 25.471134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509750, 32.325191, 25.631054>,  <34.614773, 32.131897, 25.727007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509750, 32.325191, 25.631054>,  <34.334713, 32.647350, 25.471134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509750, 32.325191, 25.631054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763507, 0.097968, -0.638325,
		0.474939, 0.584579, 0.657800,
		0.437595, -0.805400, 0.399801,
		34.641029, 32.083572, 25.750994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974171, 32.775143, 25.506071>,  <34.334713, 32.647350, 25.471134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974171, 32.775143, 25.506071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994850, 32.376251, 25.527473>,  <35.007259, 32.136917, 25.540316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994850, 32.376251, 25.527473>,  <34.974171, 32.775143, 25.506071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994850, 32.376251, 25.527473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791633, 0.008263, -0.610941,
		0.608806, 0.073943, 0.789866,
		0.051702, -0.997228, 0.053505,
		35.010361, 32.077084, 25.543526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725433, 32.661442, 25.617548>,  <34.974171, 32.775143, 25.506071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725433, 32.661442, 25.617548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539764, 32.338291, 25.472288>,  <35.428364, 32.144402, 25.385132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539764, 32.338291, 25.472288>,  <35.725433, 32.661442, 25.617548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539764, 32.338291, 25.472288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787048, -0.188118, -0.587509,
		0.406319, -0.558523, 0.723157,
		-0.464176, -0.807876, -0.363149,
		35.400513, 32.095928, 25.363344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239300, 32.250286, 25.465786>,  <35.725433, 32.661442, 25.617548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239300, 32.250286, 25.465786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932167, 32.095501, 25.261555>,  <35.747887, 32.002628, 25.139017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932167, 32.095501, 25.261555>,  <36.239300, 32.250286, 25.465786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932167, 32.095501, 25.261555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617622, -0.235375, -0.750428,
		0.170210, -0.891549, 0.419726,
		-0.767836, -0.386962, -0.510576,
		35.701817, 31.979412, 25.108381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386391, 31.832977, 26.086494>,  <36.239300, 32.250286, 25.465786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386391, 31.832977, 26.086494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753757, 31.862864, 26.241894>,  <36.974178, 31.880795, 26.335135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753757, 31.862864, 26.241894>,  <36.386391, 31.832977, 26.086494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753757, 31.862864, 26.241894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393029, 0.284498, 0.874408,
		-0.045197, -0.955761, 0.290652,
		0.918415, 0.074714, 0.388500,
		37.029282, 31.885279, 26.358444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290375, 31.620214, 26.873812>,  <36.386391, 31.832977, 26.086494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290375, 31.620214, 26.873812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623043, 31.833691, 26.812490>,  <36.822643, 31.961777, 26.775698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623043, 31.833691, 26.812490>,  <36.290375, 31.620214, 26.873812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623043, 31.833691, 26.812490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079743, 0.388022, 0.918194,
		0.549518, -0.751407, 0.365263,
		0.831667, 0.533692, -0.153306,
		36.872543, 31.993797, 26.766499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721825, 31.546181, 27.516636>,  <36.290375, 31.620214, 26.873812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721825, 31.546181, 27.516636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813290, 31.886135, 27.326727>,  <36.868168, 32.090107, 27.212782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813290, 31.886135, 27.326727>,  <36.721825, 31.546181, 27.516636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813290, 31.886135, 27.326727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094917, 0.504834, 0.857982,
		0.968868, -0.151122, 0.196104,
		0.228660, 0.849885, -0.474774,
		36.881889, 32.141102, 27.184296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103031, 31.895096, 27.915565>,  <36.721825, 31.546181, 27.516636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103031, 31.895096, 27.915565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983406, 32.187553, 27.670294>,  <36.911629, 32.363029, 27.523130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983406, 32.187553, 27.670294>,  <37.103031, 31.895096, 27.915565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983406, 32.187553, 27.670294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127314, 0.606271, 0.785001,
		0.945701, 0.312833, -0.088230,
		-0.299066, 0.731144, -0.613179,
		36.893688, 32.406895, 27.486340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359215, 32.559677, 28.303627>,  <37.103031, 31.895096, 27.915565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359215, 32.559677, 28.303627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082291, 32.672607, 28.037996>,  <36.916138, 32.740364, 27.878618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082291, 32.672607, 28.037996>,  <37.359215, 32.559677, 28.303627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082291, 32.672607, 28.037996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313975, 0.710749, 0.629488,
		0.649713, 0.644305, -0.403415,
		-0.692309, 0.282324, -0.664079,
		36.874599, 32.757305, 27.838772>
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
