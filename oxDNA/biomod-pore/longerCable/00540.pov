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
	<23.874832, 34.662956, 35.067528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224255, 34.828915, 35.169319>,  <24.433908, 34.928490, 35.230392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224255, 34.828915, 35.169319>,  <23.874832, 34.662956, 35.067528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224255, 34.828915, 35.169319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482894, 0.673346, 0.559838,
		0.060921, -0.611937, 0.788557,
		0.873557, 0.414896, 0.254480,
		24.486322, 34.953384, 35.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468121, 34.729248, 34.594440>,  <23.874832, 34.662956, 35.067528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468121, 34.729248, 34.594440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671156, 34.675110, 34.254078>,  <24.792976, 34.642628, 34.049862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671156, 34.675110, 34.254078>,  <24.468121, 34.729248, 34.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671156, 34.675110, 34.254078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114267, -0.989436, 0.089214,
		-0.853988, 0.051946, -0.517692,
		0.507589, -0.135343, -0.850903,
		24.823433, 34.634506, 33.998806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028751, 34.264736, 34.123253>,  <24.468121, 34.729248, 34.594440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028751, 34.264736, 34.123253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418667, 34.213703, 34.050026>,  <24.652617, 34.183083, 34.006092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418667, 34.213703, 34.050026>,  <24.028751, 34.264736, 34.123253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418667, 34.213703, 34.050026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064189, -0.946074, 0.317528,
		-0.213702, -0.297772, -0.930411,
		0.974788, -0.127578, -0.183064,
		24.711103, 34.175430, 33.995106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.993801, 33.555340, 33.880272>,  <24.028751, 34.264736, 34.123253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.993801, 33.555340, 33.880272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378828, 33.635269, 33.953526>,  <24.609844, 33.683228, 33.997478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378828, 33.635269, 33.953526>,  <23.993801, 33.555340, 33.880272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378828, 33.635269, 33.953526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177955, -0.975537, 0.129076,
		0.204444, -0.091655, -0.974578,
		0.962567, 0.199820, 0.183132,
		24.667599, 33.695213, 34.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487173, 33.237583, 33.387096>,  <23.993801, 33.555340, 33.880272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487173, 33.237583, 33.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625004, 33.276726, 33.760555>,  <24.707703, 33.300213, 33.984631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625004, 33.276726, 33.760555>,  <24.487173, 33.237583, 33.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625004, 33.276726, 33.760555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020772, -0.995103, 0.096631,
		0.938528, -0.013903, -0.344924,
		0.344578, 0.097856, 0.933643,
		24.728376, 33.306084, 34.040649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944225, 32.717461, 33.429928>,  <24.487173, 33.237583, 33.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944225, 32.717461, 33.429928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838306, 32.846752, 33.793335>,  <24.774755, 32.924328, 34.011379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838306, 32.846752, 33.793335>,  <24.944225, 32.717461, 33.429928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838306, 32.846752, 33.793335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154753, -0.944183, 0.290809,
		0.951805, -0.063590, 0.300039,
		-0.264799, 0.323226, 0.908519,
		24.758867, 32.943718, 34.065891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635279, 32.930561, 32.723732>,  <24.944225, 32.717461, 33.429928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635279, 32.930561, 32.723732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913692, 33.077213, 32.970673>,  <25.080740, 33.165203, 33.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913692, 33.077213, 32.970673>,  <24.635279, 32.930561, 32.723732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913692, 33.077213, 32.970673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714887, -0.433950, -0.548292,
		0.066881, 0.822966, -0.564140,
		0.696034, 0.366626, 0.617351,
		25.122503, 33.187202, 33.155876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098763, 33.164284, 32.382347>,  <24.635279, 32.930561, 32.723732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098763, 33.164284, 32.382347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298397, 33.102913, 32.723492>,  <25.418179, 33.066090, 32.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298397, 33.102913, 32.723492>,  <25.098763, 33.164284, 32.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298397, 33.102913, 32.723492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736064, -0.444328, -0.510668,
		0.457300, 0.882629, -0.108827,
		0.499086, -0.153425, 0.852862,
		25.448122, 33.056885, 32.979351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813534, 33.379898, 32.299355>,  <25.098763, 33.164284, 32.382347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813534, 33.379898, 32.299355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823687, 33.129707, 32.611286>,  <25.829779, 32.979591, 32.798447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823687, 33.129707, 32.611286>,  <25.813534, 33.379898, 32.299355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823687, 33.129707, 32.611286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806736, -0.447869, -0.385475,
		0.590367, 0.638901, 0.493227,
		0.025380, -0.625476, 0.779831,
		25.831301, 32.942066, 32.845234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467182, 33.349808, 32.462917>,  <25.813534, 33.379898, 32.299355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467182, 33.349808, 32.462917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328844, 33.023315, 32.648026>,  <26.245842, 32.827419, 32.759090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328844, 33.023315, 32.648026>,  <26.467182, 33.349808, 32.462917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328844, 33.023315, 32.648026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769554, -0.528926, -0.357803,
		0.536822, 0.232382, 0.811062,
		-0.345845, -0.816233, 0.462769,
		26.225090, 32.778446, 32.786858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050064, 33.003086, 32.793274>,  <26.467182, 33.349808, 32.462917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050064, 33.003086, 32.793274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765369, 32.725952, 32.746948>,  <26.594553, 32.559673, 32.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765369, 32.725952, 32.746948>,  <27.050064, 33.003086, 32.793274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765369, 32.725952, 32.746948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647766, -0.583581, -0.489727,
		0.271714, -0.423575, 0.864150,
		-0.711738, -0.692832, -0.115810,
		26.551847, 32.518101, 32.712204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372864, 32.374889, 33.042755>,  <27.050064, 33.003086, 32.793274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372864, 32.374889, 33.042755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076338, 32.335060, 32.777264>,  <26.898422, 32.311165, 32.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076338, 32.335060, 32.777264>,  <27.372864, 32.374889, 33.042755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076338, 32.335060, 32.777264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608036, -0.518327, -0.601356,
		-0.284152, -0.849366, 0.444787,
		-0.741317, -0.099570, -0.663728,
		26.853943, 32.305191, 32.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414095, 31.799578, 32.529167>,  <27.372864, 32.374889, 33.042755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414095, 31.799578, 32.529167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552299, 31.436092, 32.622856>,  <27.635221, 31.218000, 32.679070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552299, 31.436092, 32.622856>,  <27.414095, 31.799578, 32.529167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552299, 31.436092, 32.622856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101728, 0.211848, 0.971994,
		-0.932884, -0.359661, -0.019246,
		0.345512, -0.908715, 0.234218,
		27.655952, 31.163477, 32.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076717, 31.980717, 31.787918>,  <27.414095, 31.799578, 32.529167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076717, 31.980717, 31.787918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894226, 31.641222, 31.894878>,  <26.784731, 31.437525, 31.959055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894226, 31.641222, 31.894878>,  <27.076717, 31.980717, 31.787918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894226, 31.641222, 31.894878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599482, 0.515220, 0.612511,
		-0.657630, 0.119144, -0.743860,
		-0.456229, -0.848736, 0.267399,
		26.757357, 31.386600, 31.975098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326445, 31.930756, 31.571913>,  <27.076717, 31.980717, 31.787918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326445, 31.930756, 31.571913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447838, 31.749474, 31.907175>,  <26.520674, 31.640705, 32.108334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447838, 31.749474, 31.907175>,  <26.326445, 31.930756, 31.571913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447838, 31.749474, 31.907175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565048, 0.622678, 0.541288,
		-0.767215, -0.637870, -0.067109,
		0.303484, -0.453204, 0.838155,
		26.538883, 31.613512, 32.158623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718424, 31.824734, 32.025532>,  <26.326445, 31.930756, 31.571913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718424, 31.824734, 32.025532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049894, 31.875399, 32.243614>,  <26.248775, 31.905798, 32.374466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049894, 31.875399, 32.243614>,  <25.718424, 31.824734, 32.025532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049894, 31.875399, 32.243614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512648, 0.562776, 0.648441,
		-0.224699, -0.816848, 0.531291,
		0.828675, 0.126661, 0.545211,
		26.298496, 31.913397, 32.407177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614725, 31.608206, 32.619366>,  <25.718424, 31.824734, 32.025532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614725, 31.608206, 32.619366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891384, 31.896412, 32.639297>,  <26.057379, 32.069336, 32.651257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891384, 31.896412, 32.639297>,  <25.614725, 31.608206, 32.619366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891384, 31.896412, 32.639297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544332, 0.474689, 0.691645,
		0.474689, -0.505496, 0.720516,
		-0.691645, -0.720516, -0.049829,
		26.098877, 32.112568, 32.654247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682558, 31.720936, 33.370571>,  <25.614725, 31.608206, 32.619366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682558, 31.720936, 33.370571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839489, 32.039818, 33.187031>,  <25.933647, 32.231148, 33.076908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839489, 32.039818, 33.187031>,  <25.682558, 31.720936, 33.370571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839489, 32.039818, 33.187031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535137, 0.603552, 0.591061,
		0.748138, 0.013660, 0.663403,
		0.392324, 0.797206, -0.458850,
		25.957186, 32.278980, 33.049377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925230, 32.134663, 33.879471>,  <25.682558, 31.720936, 33.370571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925230, 32.134663, 33.879471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878849, 32.377243, 33.564823>,  <25.851021, 32.522793, 33.376034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878849, 32.377243, 33.564823>,  <25.925230, 32.134663, 33.879471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878849, 32.377243, 33.564823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559315, 0.614594, 0.556274,
		0.820805, 0.504471, 0.267932,
		-0.115954, 0.606451, -0.786620,
		25.844063, 32.559177, 33.328838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963350, 32.800919, 34.224567>,  <25.925230, 32.134663, 33.879471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963350, 32.800919, 34.224567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830462, 32.857578, 33.851566>,  <25.750729, 32.891575, 33.627766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830462, 32.857578, 33.851566>,  <25.963350, 32.800919, 34.224567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830462, 32.857578, 33.851566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688413, 0.639419, 0.342389,
		0.644759, 0.755698, -0.114919,
		-0.332224, 0.141647, -0.932504,
		25.730795, 32.900074, 33.571815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621937, 32.697910, 34.054733>,  <25.963350, 32.800919, 34.224567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621937, 32.697910, 34.054733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837244, 32.381004, 33.939789>,  <26.966429, 32.190861, 33.870823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837244, 32.381004, 33.939789>,  <26.621937, 32.697910, 34.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837244, 32.381004, 33.939789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542538, 0.064819, 0.837526,
		-0.644920, -0.606719, 0.464726,
		0.538266, -0.792269, -0.287365,
		26.998724, 32.143322, 33.853580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614273, 32.108200, 34.537018>,  <26.621937, 32.697910, 34.054733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614273, 32.108200, 34.537018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961172, 32.135181, 34.339703>,  <27.169312, 32.151371, 34.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961172, 32.135181, 34.339703>,  <26.614273, 32.108200, 34.537018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961172, 32.135181, 34.339703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495387, -0.017942, 0.868487,
		0.049728, -0.997561, -0.048973,
		0.867248, 0.067449, -0.493286,
		27.221346, 32.155415, 34.191715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179226, 31.768194, 34.874489>,  <26.614273, 32.108200, 34.537018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179226, 31.768194, 34.874489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409136, 32.017139, 34.661964>,  <27.547083, 32.166508, 34.534451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409136, 32.017139, 34.661964>,  <27.179226, 31.768194, 34.874489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409136, 32.017139, 34.661964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633503, 0.072569, 0.770329,
		0.517982, -0.779357, -0.352559,
		0.574777, 0.622364, -0.531315,
		27.581570, 32.203850, 34.502571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725893, 31.639166, 35.234802>,  <27.179226, 31.768194, 34.874489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725893, 31.639166, 35.234802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811827, 31.988508, 35.059944>,  <27.863386, 32.198112, 34.955029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811827, 31.988508, 35.059944>,  <27.725893, 31.639166, 35.234802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811827, 31.988508, 35.059944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703067, 0.172386, 0.689914,
		0.677897, -0.455561, -0.576992,
		0.214833, 0.873354, -0.437150,
		27.876276, 32.250515, 34.928799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456263, 31.597542, 35.055202>,  <27.725893, 31.639166, 35.234802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456263, 31.597542, 35.055202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340668, 31.979223, 35.086140>,  <28.271311, 32.208233, 35.104702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340668, 31.979223, 35.086140>,  <28.456263, 31.597542, 35.055202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340668, 31.979223, 35.086140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816158, 0.203339, 0.540869,
		0.500373, 0.219426, -0.837544,
		-0.288986, 0.954204, 0.077341,
		28.253971, 32.265484, 35.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002735, 32.050419, 34.826984>,  <28.456263, 31.597542, 35.055202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002735, 32.050419, 34.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800224, 32.198708, 35.138432>,  <28.678719, 32.287682, 35.325302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800224, 32.198708, 35.138432>,  <29.002735, 32.050419, 34.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800224, 32.198708, 35.138432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843175, 0.402234, 0.356740,
		-0.180937, 0.837123, -0.516224,
		-0.506278, 0.370719, 0.778621,
		28.648340, 32.309925, 35.372017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858559, 32.297348, 34.106869>,  <29.002735, 32.050419, 34.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858559, 32.297348, 34.106869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658033, 32.351543, 33.765034>,  <28.537718, 32.384060, 33.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658033, 32.351543, 33.765034>,  <28.858559, 32.297348, 34.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658033, 32.351543, 33.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686911, -0.538265, -0.488288,
		-0.526154, -0.831813, 0.176771,
		-0.501314, 0.135489, -0.854592,
		28.507639, 32.392189, 33.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450035, 31.746113, 33.807636>,  <28.858559, 32.297348, 34.106869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450035, 31.746113, 33.807636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634516, 31.987770, 33.547695>,  <28.745203, 32.132763, 33.391731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634516, 31.987770, 33.547695>,  <28.450035, 31.746113, 33.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634516, 31.987770, 33.547695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354869, -0.796859, -0.488961,
		-0.813242, -0.005103, -0.581903,
		0.461200, 0.604143, -0.649850,
		28.772875, 32.169014, 33.352741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436295, 31.448347, 33.096455>,  <28.450035, 31.746113, 33.807636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436295, 31.448347, 33.096455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761536, 31.681149, 33.101086>,  <28.956680, 31.820829, 33.103863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761536, 31.681149, 33.101086>,  <28.436295, 31.448347, 33.096455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761536, 31.681149, 33.101086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544633, -0.753575, -0.368104,
		-0.205513, 0.305612, -0.929713,
		0.813105, 0.582002, 0.011577,
		29.005466, 31.855749, 33.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759754, 31.515905, 32.420155>,  <28.436295, 31.448347, 33.096455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759754, 31.515905, 32.420155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059799, 31.564749, 32.680130>,  <29.239826, 31.594055, 32.836113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059799, 31.564749, 32.680130>,  <28.759754, 31.515905, 32.420155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059799, 31.564749, 32.680130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509875, -0.732662, -0.450815,
		0.421137, 0.669550, -0.611839,
		0.750115, 0.122106, 0.649937,
		29.284834, 31.601381, 32.875111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345154, 31.733614, 32.074429>,  <28.759754, 31.515905, 32.420155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345154, 31.733614, 32.074429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439404, 31.541231, 32.412224>,  <29.495953, 31.425802, 32.614902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439404, 31.541231, 32.412224>,  <29.345154, 31.733614, 32.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439404, 31.541231, 32.412224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533486, -0.662314, -0.526053,
		0.812326, 0.574474, 0.100527,
		0.235623, -0.480957, 0.844489,
		29.510090, 31.396944, 32.665569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675406, 31.127434, 31.842937>,  <29.345154, 31.733614, 32.074429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675406, 31.127434, 31.842937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716961, 31.041288, 32.231335>,  <29.741894, 30.989601, 32.464375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716961, 31.041288, 32.231335>,  <29.675406, 31.127434, 31.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716961, 31.041288, 32.231335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497959, -0.833839, -0.238223,
		0.860955, 0.508263, 0.020616,
		0.103890, -0.215365, 0.970992,
		29.748127, 30.976679, 32.522633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385014, 30.924355, 32.008934>,  <29.675406, 31.127434, 31.842937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385014, 30.924355, 32.008934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140472, 30.748352, 32.272038>,  <29.993748, 30.642750, 32.429897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140472, 30.748352, 32.272038>,  <30.385014, 30.924355, 32.008934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140472, 30.748352, 32.272038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551318, -0.833088, -0.044873,
		0.567713, 0.335199, 0.751893,
		-0.611352, -0.440007, 0.657756,
		29.957067, 30.616350, 32.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927105, 30.447121, 32.348167>,  <30.385014, 30.924355, 32.008934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927105, 30.447121, 32.348167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557323, 30.336382, 32.453041>,  <30.335455, 30.269939, 32.515965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557323, 30.336382, 32.453041>,  <30.927105, 30.447121, 32.348167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557323, 30.336382, 32.453041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309737, -0.946268, 0.092948,
		0.222361, 0.167134, 0.960532,
		-0.924456, -0.276845, 0.262181,
		30.279987, 30.253328, 32.531696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103615, 30.150482, 32.941620>,  <30.927105, 30.447121, 32.348167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103615, 30.150482, 32.941620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745298, 30.005741, 32.838379>,  <30.530308, 29.918896, 32.776432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745298, 30.005741, 32.838379>,  <31.103615, 30.150482, 32.941620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745298, 30.005741, 32.838379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323399, -0.928986, 0.179993,
		-0.304907, 0.077765, 0.949202,
		-0.895793, -0.361852, -0.258105,
		30.476561, 29.897186, 32.760948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824524, 29.793697, 33.520935>,  <31.103615, 30.150482, 32.941620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824524, 29.793697, 33.520935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630640, 29.606113, 33.225601>,  <30.514311, 29.493563, 33.048401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630640, 29.606113, 33.225601>,  <30.824524, 29.793697, 33.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630640, 29.606113, 33.225601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457252, -0.855448, 0.243163,
		-0.745640, -0.219741, 0.629075,
		-0.484708, -0.468958, -0.738333,
		30.485228, 29.465425, 33.004101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545361, 29.174473, 33.829849>,  <30.824524, 29.793697, 33.520935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545361, 29.174473, 33.829849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544502, 29.121796, 33.433334>,  <30.543987, 29.090189, 33.195427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544502, 29.121796, 33.433334>,  <30.545361, 29.174473, 33.829849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544502, 29.121796, 33.433334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513714, -0.850633, 0.111894,
		-0.857959, -0.508999, 0.069479,
		-0.002147, -0.131693, -0.991288,
		30.543858, 29.082287, 33.135948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185715, 28.506731, 33.577164>,  <30.545361, 29.174473, 33.829849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185715, 28.506731, 33.577164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473761, 28.609900, 33.319508>,  <30.646587, 28.671801, 33.164913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473761, 28.609900, 33.319508>,  <30.185715, 28.506731, 33.577164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473761, 28.609900, 33.319508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437859, -0.889076, 0.133507,
		-0.538255, -0.378182, -0.753167,
		0.720112, 0.257920, -0.644139,
		30.689795, 28.687275, 33.126266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333454, 27.966066, 33.231514>,  <30.185715, 28.506731, 33.577164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333454, 27.966066, 33.231514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668074, 28.176517, 33.170353>,  <30.868845, 28.302788, 33.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668074, 28.176517, 33.170353>,  <30.333454, 27.966066, 33.231514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668074, 28.176517, 33.170353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543512, -0.832114, 0.110369,
		-0.069166, -0.175435, -0.982058,
		0.836547, 0.526127, -0.152905,
		30.919037, 28.334356, 33.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920435, 27.758986, 32.697937>,  <30.333454, 27.966066, 33.231514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920435, 27.758986, 32.697937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037394, 27.912420, 33.048336>,  <31.107569, 28.004480, 33.258575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037394, 27.912420, 33.048336>,  <30.920435, 27.758986, 32.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037394, 27.912420, 33.048336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546571, -0.818696, 0.176058,
		0.784707, 0.427314, -0.449041,
		0.292396, 0.383587, 0.875994,
		31.125113, 28.027496, 33.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752129, 27.793468, 32.662064>,  <30.920435, 27.758986, 32.697937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752129, 27.793468, 32.662064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578842, 27.792173, 33.022575>,  <31.474871, 27.791397, 33.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578842, 27.792173, 33.022575>,  <31.752129, 27.793468, 32.662064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578842, 27.792173, 33.022575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394554, -0.899764, 0.186418,
		0.810340, 0.436365, 0.391069,
		-0.433216, -0.003236, 0.901284,
		31.448877, 27.791203, 33.292961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533098, 28.258934, 32.162476>,  <31.752129, 27.793468, 32.662064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533098, 28.258934, 32.162476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248547, 28.276716, 32.443035>,  <31.077816, 28.287386, 32.611370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248547, 28.276716, 32.443035>,  <31.533098, 28.258934, 32.162476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248547, 28.276716, 32.443035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260998, 0.909918, -0.322380,
		-0.652549, -0.412398, -0.635694,
		-0.711379, 0.044454, 0.701401,
		31.035133, 28.290052, 32.653454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306410, 28.903540, 32.083916>,  <31.533098, 28.258934, 32.162476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306410, 28.903540, 32.083916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048817, 28.810644, 32.375492>,  <30.894260, 28.754906, 32.550438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048817, 28.810644, 32.375492>,  <31.306410, 28.903540, 32.083916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048817, 28.810644, 32.375492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591719, 0.755151, -0.282163,
		-0.484928, -0.613034, -0.623725,
		-0.643983, -0.232241, 0.728938,
		30.855621, 28.740973, 32.594173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652822, 28.941618, 31.794601>,  <31.306410, 28.903540, 32.083916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652822, 28.941618, 31.794601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606491, 28.965649, 32.191181>,  <30.578691, 28.980066, 32.429131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606491, 28.965649, 32.191181>,  <30.652822, 28.941618, 31.794601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606491, 28.965649, 32.191181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700063, 0.703163, -0.124394,
		-0.704624, -0.708486, -0.039389,
		-0.115829, 0.060077, 0.991451,
		30.571743, 28.983671, 32.488617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025930, 29.235121, 31.736670>,  <30.652822, 28.941618, 31.794601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025930, 29.235121, 31.736670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140381, 29.278481, 32.117485>,  <30.209051, 29.304497, 32.345974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140381, 29.278481, 32.117485>,  <30.025930, 29.235121, 31.736670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140381, 29.278481, 32.117485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691579, 0.711069, 0.126884,
		-0.663213, -0.694716, 0.278421,
		0.286125, 0.108400, 0.952041,
		30.226219, 29.311001, 32.403099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421167, 29.371201, 32.138084>,  <30.025930, 29.235121, 31.736670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421167, 29.371201, 32.138084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722918, 29.528952, 32.347996>,  <29.903967, 29.623602, 32.473942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722918, 29.528952, 32.347996>,  <29.421167, 29.371201, 32.138084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722918, 29.528952, 32.347996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551764, 0.814030, 0.181417,
		-0.355635, -0.426408, 0.831685,
		0.754374, 0.394375, 0.524775,
		29.949230, 29.647264, 32.505428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155273, 29.573551, 32.856590>,  <29.421167, 29.371201, 32.138084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155273, 29.573551, 32.856590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485254, 29.781046, 32.766819>,  <29.683243, 29.905544, 32.712955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485254, 29.781046, 32.766819>,  <29.155273, 29.573551, 32.856590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485254, 29.781046, 32.766819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456869, 0.845776, 0.275560,
		0.332757, -0.124790, 0.934719,
		0.824950, 0.518739, -0.224425,
		29.732738, 29.936668, 32.699490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260767, 30.129959, 33.472607>,  <29.155273, 29.573551, 32.856590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260767, 30.129959, 33.472607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508469, 30.274513, 33.193771>,  <29.657089, 30.361246, 33.026470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508469, 30.274513, 33.193771>,  <29.260767, 30.129959, 33.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508469, 30.274513, 33.193771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193113, 0.930616, 0.310904,
		0.761075, -0.057911, 0.646074,
		0.619251, 0.361386, -0.697085,
		29.694244, 30.382929, 32.984646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917305, 30.591606, 33.828362>,  <29.260767, 30.129959, 33.472607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917305, 30.591606, 33.828362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842142, 30.688978, 33.447746>,  <29.797045, 30.747402, 33.219376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842142, 30.688978, 33.447746>,  <29.917305, 30.591606, 33.828362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842142, 30.688978, 33.447746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018889, 0.967725, 0.251300,
		0.982005, 0.065194, -0.177245,
		-0.187908, 0.243430, -0.951542,
		29.785770, 30.762007, 33.162285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916557, 31.236267, 33.946175>,  <29.917305, 30.591606, 33.828362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916557, 31.236267, 33.946175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798069, 31.239479, 33.564140>,  <29.726976, 31.241405, 33.334919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798069, 31.239479, 33.564140>,  <29.916557, 31.236267, 33.946175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798069, 31.239479, 33.564140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230613, 0.969778, 0.079679,
		0.926860, 0.243858, -0.285418,
		-0.296222, 0.008031, -0.955085,
		29.709202, 31.241888, 33.277615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204920, 31.795193, 33.766434>,  <29.916557, 31.236267, 33.946175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204920, 31.795193, 33.766434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921381, 31.728174, 33.492363>,  <29.751257, 31.687963, 33.327923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921381, 31.728174, 33.492363>,  <30.204920, 31.795193, 33.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921381, 31.728174, 33.492363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390731, 0.901995, 0.183668,
		0.587251, 0.397911, -0.704843,
		-0.708848, -0.167545, -0.685174,
		29.708727, 31.677910, 33.286812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111515, 32.414257, 33.268337>,  <30.204920, 31.795193, 33.766434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111515, 32.414257, 33.268337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765087, 32.228111, 33.341389>,  <29.557230, 32.116425, 33.385220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765087, 32.228111, 33.341389>,  <30.111515, 32.414257, 33.268337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765087, 32.228111, 33.341389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365858, 0.838971, 0.402834,
		-0.340688, 0.282066, -0.896867,
		-0.866072, -0.465366, 0.182632,
		29.505266, 32.088501, 33.396179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572206, 32.642708, 32.856155>,  <30.111515, 32.414257, 33.268337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572206, 32.642708, 32.856155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542810, 32.542427, 33.242264>,  <29.525173, 32.482258, 33.473930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542810, 32.542427, 33.242264>,  <29.572206, 32.642708, 32.856155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542810, 32.542427, 33.242264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062406, 0.967147, 0.246438,
		-0.995342, -0.042128, -0.086720,
		-0.073489, -0.250702, 0.965271,
		29.520763, 32.467216, 33.531845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930460, 32.878529, 33.096703>,  <29.572206, 32.642708, 32.856155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930460, 32.878529, 33.096703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226904, 32.883522, 33.365208>,  <29.404770, 32.886520, 33.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226904, 32.883522, 33.365208>,  <28.930460, 32.878529, 33.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226904, 32.883522, 33.365208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091857, 0.992311, 0.082955,
		-0.665069, -0.123140, 0.736559,
		0.741111, 0.012487, 0.671267,
		29.449238, 32.887268, 33.566589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711666, 33.174320, 33.692852>,  <28.930460, 32.878529, 33.096703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711666, 33.174320, 33.692852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101343, 33.237453, 33.628311>,  <29.335150, 33.275333, 33.589584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101343, 33.237453, 33.628311>,  <28.711666, 33.174320, 33.692852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101343, 33.237453, 33.628311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116033, 0.963366, 0.241791,
		0.193607, -0.216829, 0.956818,
		0.974193, 0.157835, -0.161355,
		29.393600, 33.284805, 33.579906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108393, 32.848110, 33.333847>,  <28.711666, 33.174320, 33.692852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108393, 32.848110, 33.333847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066704, 33.109051, 33.033558>,  <28.041691, 33.265614, 32.853386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066704, 33.109051, 33.033558>,  <28.108393, 32.848110, 33.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066704, 33.109051, 33.033558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935983, -0.190875, -0.295808,
		-0.336264, -0.733490, -0.590694,
		-0.104223, 0.652349, -0.750718,
		28.035437, 33.304756, 32.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296986, 32.443382, 32.623230>,  <28.108393, 32.848110, 33.333847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296986, 32.443382, 32.623230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337368, 32.840294, 32.594406>,  <28.361597, 33.078442, 32.577110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337368, 32.840294, 32.594406>,  <28.296986, 32.443382, 32.623230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337368, 32.840294, 32.594406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952557, -0.117311, -0.280845,
		-0.287130, -0.040289, -0.957044,
		0.100957, 0.992278, -0.072060,
		28.367655, 33.137978, 32.572788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426996, 32.718567, 31.906479>,  <28.296986, 32.443382, 32.623230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426996, 32.718567, 31.906479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592403, 32.987514, 32.152058>,  <28.691647, 33.148884, 32.299404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592403, 32.987514, 32.152058>,  <28.426996, 32.718567, 31.906479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592403, 32.987514, 32.152058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750347, 0.130289, -0.648077,
		-0.515735, 0.728663, -0.450631,
		0.413517, 0.672366, 0.613945,
		28.716459, 33.189224, 32.336243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340174, 33.426224, 31.560425>,  <28.426996, 32.718567, 31.906479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340174, 33.426224, 31.560425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656691, 33.364632, 31.797115>,  <28.846601, 33.327675, 31.939131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656691, 33.364632, 31.797115>,  <28.340174, 33.426224, 31.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656691, 33.364632, 31.797115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606625, 0.076549, -0.791294,
		0.076549, 0.985104, 0.153982,
		0.791294, -0.153982, 0.591729,
		28.894079, 33.318436, 31.974634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978788, 33.800678, 31.383881>,  <28.340174, 33.426224, 31.560425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978788, 33.800678, 31.383881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071655, 33.459518, 31.570925>,  <29.127377, 33.254822, 31.683151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071655, 33.459518, 31.570925>,  <28.978788, 33.800678, 31.383881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071655, 33.459518, 31.570925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782929, -0.121397, -0.610151,
		0.577165, 0.507763, 0.639576,
		0.232170, -0.852901, 0.467609,
		29.141306, 33.203648, 31.711206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612097, 33.841156, 30.979988>,  <28.978788, 33.800678, 31.383881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612097, 33.841156, 30.979988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637230, 33.585648, 31.286720>,  <29.652309, 33.432343, 31.470758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637230, 33.585648, 31.286720>,  <29.612097, 33.841156, 30.979988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637230, 33.585648, 31.286720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873877, -0.335919, -0.351423,
		0.482070, 0.692194, 0.537099,
		0.062831, -0.638769, 0.766829,
		29.656078, 33.394016, 31.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233519, 33.682613, 31.419525>,  <29.612097, 33.841156, 30.979988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233519, 33.682613, 31.419525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108559, 33.311081, 31.339838>,  <30.033583, 33.088161, 31.292027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108559, 33.311081, 31.339838>,  <30.233519, 33.682613, 31.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108559, 33.311081, 31.339838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872822, -0.197877, -0.446124,
		0.374952, -0.313250, 0.872517,
		-0.312400, -0.928827, -0.199217,
		30.014839, 33.032433, 31.280073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603613, 33.138611, 31.924929>,  <30.233519, 33.682613, 31.419525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603613, 33.138611, 31.924929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489334, 33.010197, 31.563749>,  <30.420767, 32.933147, 31.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489334, 33.010197, 31.563749>,  <30.603613, 33.138611, 31.924929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489334, 33.010197, 31.563749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956412, -0.154953, -0.247519,
		-0.060452, -0.934304, 0.351313,
		-0.285695, -0.321037, -0.902947,
		30.403625, 32.913887, 31.292866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819334, 32.338608, 31.680574>,  <30.603613, 33.138611, 31.924929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819334, 32.338608, 31.680574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772909, 32.598160, 31.379778>,  <30.745054, 32.753891, 31.199301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772909, 32.598160, 31.379778>,  <30.819334, 32.338608, 31.680574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772909, 32.598160, 31.379778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886944, -0.273066, -0.372512,
		-0.447057, -0.710208, -0.543824,
		-0.116061, 0.648876, -0.751991,
		30.738091, 32.792824, 31.154181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947947, 31.922819, 31.118475>,  <30.819334, 32.338608, 31.680574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947947, 31.922819, 31.118475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052916, 32.308784, 31.115080>,  <31.115898, 32.540363, 31.113043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052916, 32.308784, 31.115080>,  <30.947947, 31.922819, 31.118475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052916, 32.308784, 31.115080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915508, -0.251748, -0.313795,
		-0.304923, 0.074575, -0.949453,
		0.262424, 0.964915, -0.008490,
		31.131643, 32.598259, 31.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534193, 31.961399, 31.607468>,  <30.947947, 31.922819, 31.118475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534193, 31.961399, 31.607468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213284, 31.758688, 31.733662>,  <31.020737, 31.637062, 31.809378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213284, 31.758688, 31.733662>,  <31.534193, 31.961399, 31.607468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213284, 31.758688, 31.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310866, -0.096503, -0.945542,
		0.509624, -0.856659, -0.080118,
		-0.802275, -0.506776, 0.315486,
		30.972601, 31.606655, 31.828308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052818, 31.884424, 32.159000>,  <31.534193, 31.961399, 31.607468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052818, 31.884424, 32.159000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038315, 31.996565, 31.775314>,  <32.029613, 32.063850, 31.545103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038315, 31.996565, 31.775314>,  <32.052818, 31.884424, 32.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038315, 31.996565, 31.775314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888242, 0.448884, 0.097620,
		0.457943, -0.848473, -0.265296,
		-0.036259, 0.280351, -0.959212,
		32.027435, 32.080669, 31.487551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703533, 31.877684, 31.883022>,  <32.052818, 31.884424, 32.159000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703533, 31.877684, 31.883022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485954, 32.138828, 31.672159>,  <32.355408, 32.295513, 31.545641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485954, 32.138828, 31.672159>,  <32.703533, 31.877684, 31.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485954, 32.138828, 31.672159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745484, 0.664367, 0.053565,
		0.385197, -0.363851, -0.848077,
		-0.543946, 0.652861, -0.527158,
		32.322769, 32.334686, 31.514011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074284, 32.049839, 31.117634>,  <32.703533, 31.877684, 31.883022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074284, 32.049839, 31.117634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826870, 32.349766, 31.211603>,  <32.678421, 32.529724, 31.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826870, 32.349766, 31.211603>,  <33.074284, 32.049839, 31.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826870, 32.349766, 31.211603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743403, 0.655259, -0.134118,
		-0.254501, 0.091688, -0.962716,
		-0.618531, 0.749819, 0.234926,
		32.641312, 32.574711, 31.282082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045078, 32.533161, 30.540569>,  <33.074284, 32.049839, 31.117634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045078, 32.533161, 30.540569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936871, 32.764389, 30.848507>,  <32.871944, 32.903126, 31.033270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936871, 32.764389, 30.848507>,  <33.045078, 32.533161, 30.540569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936871, 32.764389, 30.848507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608665, 0.722253, -0.328448,
		-0.745886, 0.379725, -0.547232,
		-0.270520, 0.578066, 0.769844,
		32.855713, 32.937809, 31.079460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975975, 33.178440, 30.331322>,  <33.045078, 32.533161, 30.540569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975975, 33.178440, 30.331322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962162, 33.260963, 30.722473>,  <32.953873, 33.310478, 30.957163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962162, 33.260963, 30.722473>,  <32.975975, 33.178440, 30.331322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962162, 33.260963, 30.722473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523452, 0.837248, -0.158159,
		-0.851355, 0.506410, -0.136906,
		-0.034531, 0.206313, 0.977877,
		32.951801, 33.322857, 31.015837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680820, 33.845200, 30.468439>,  <32.975975, 33.178440, 30.331322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680820, 33.845200, 30.468439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921638, 33.772995, 30.779554>,  <33.066132, 33.729671, 30.966223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921638, 33.772995, 30.779554>,  <32.680820, 33.845200, 30.468439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921638, 33.772995, 30.779554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613243, 0.728365, -0.305641,
		-0.511340, 0.660983, 0.549210,
		0.602050, -0.180513, 0.777786,
		33.102253, 33.718842, 31.012890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884224, 34.498127, 30.672647>,  <32.680820, 33.845200, 30.468439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884224, 34.498127, 30.672647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159008, 34.291752, 30.877350>,  <33.323879, 34.167927, 31.000172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159008, 34.291752, 30.877350>,  <32.884224, 34.498127, 30.672647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159008, 34.291752, 30.877350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626704, 0.777111, -0.057796,
		-0.367874, 0.360424, 0.857183,
		0.686958, -0.515939, 0.511758,
		33.365097, 34.136971, 31.030878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047787, 34.946106, 31.185785>,  <32.884224, 34.498127, 30.672647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047787, 34.946106, 31.185785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354527, 34.691532, 31.152584>,  <33.538570, 34.538788, 31.132664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354527, 34.691532, 31.152584>,  <33.047787, 34.946106, 31.185785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354527, 34.691532, 31.152584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636844, 0.770590, -0.024909,
		0.079814, -0.033758, 0.996238,
		0.766850, -0.636436, -0.083003,
		33.584583, 34.500603, 31.127684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580372, 35.247589, 31.483347>,  <33.047787, 34.946106, 31.185785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580372, 35.247589, 31.483347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795479, 34.947151, 31.330166>,  <33.924545, 34.766888, 31.238256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795479, 34.947151, 31.330166>,  <33.580372, 35.247589, 31.483347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795479, 34.947151, 31.330166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746115, 0.635490, -0.198658,
		0.392574, -0.178893, 0.902154,
		0.537772, -0.751099, -0.382952,
		33.956810, 34.721821, 31.215281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305431, 35.415192, 31.762701>,  <33.580372, 35.247589, 31.483347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305431, 35.415192, 31.762701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329140, 35.173950, 31.444519>,  <34.343365, 35.029205, 31.253609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329140, 35.173950, 31.444519>,  <34.305431, 35.415192, 31.762701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329140, 35.173950, 31.444519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750197, 0.552608, -0.363081,
		0.658552, -0.575230, 0.485201,
		0.059271, -0.603104, -0.795457,
		34.346920, 34.993019, 31.205881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110012, 35.268581, 31.705242>,  <34.305431, 35.415192, 31.762701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110012, 35.268581, 31.705242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 35.227646, 31.352077>,  <34.816730, 35.203083, 31.140179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 35.227646, 31.352077>,  <35.110012, 35.268581, 31.705242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926712, 35.227646, 31.352077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686312, 0.590464, -0.424650,
		0.564785, -0.800549, -0.200345,
		-0.458250, -0.102337, -0.882913,
		34.789238, 35.196945, 31.087204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617428, 35.114594, 31.191681>,  <35.110012, 35.268581, 31.705242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617428, 35.114594, 31.191681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306797, 35.271271, 30.994297>,  <35.120419, 35.365276, 30.875868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306797, 35.271271, 30.994297>,  <35.617428, 35.114594, 31.191681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306797, 35.271271, 30.994297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610188, 0.662582, -0.434345,
		0.156827, -0.638406, -0.753554,
		-0.776579, 0.391693, -0.493458,
		35.073822, 35.388779, 30.846260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954712, 35.249004, 30.530745>,  <35.617428, 35.114594, 31.191681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954712, 35.249004, 30.530745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622780, 35.472206, 30.529242>,  <35.423622, 35.606129, 30.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622780, 35.472206, 30.529242>,  <35.954712, 35.249004, 30.530745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622780, 35.472206, 30.529242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504038, 0.746645, -0.434127,
		-0.239442, -0.362144, -0.900844,
		-0.829827, 0.558008, -0.003756,
		35.373833, 35.639610, 30.528114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135120, 35.699135, 30.028830>,  <35.954712, 35.249004, 30.530745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135120, 35.699135, 30.028830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812500, 35.871181, 30.191050>,  <35.618927, 35.974411, 30.288382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812500, 35.871181, 30.191050>,  <36.135120, 35.699135, 30.028830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812500, 35.871181, 30.191050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325526, 0.895788, -0.302649,
		-0.493462, -0.112085, -0.862515,
		-0.806553, 0.430116, 0.405551,
		35.570534, 36.000217, 30.312716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571564, 36.029053, 29.524193>,  <36.135120, 35.699135, 30.028830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571564, 36.029053, 29.524193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580879, 36.214184, 29.878651>,  <35.586468, 36.325260, 30.091326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580879, 36.214184, 29.878651>,  <35.571564, 36.029053, 29.524193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580879, 36.214184, 29.878651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156143, 0.873823, -0.460493,
		-0.987460, 0.149088, -0.051919,
		0.023286, 0.462825, 0.886144,
		35.587864, 36.353031, 30.144493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258057, 36.633736, 29.227222>,  <35.571564, 36.029053, 29.524193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258057, 36.633736, 29.227222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374401, 36.747128, 29.592745>,  <35.444206, 36.815163, 29.812057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374401, 36.747128, 29.592745>,  <35.258057, 36.633736, 29.227222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374401, 36.747128, 29.592745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087508, 0.943214, -0.320452,
		-0.952755, 0.173172, 0.249538,
		0.290861, 0.283476, 0.913806,
		35.461658, 36.832169, 29.866886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842529, 37.235188, 29.471243>,  <35.258057, 36.633736, 29.227222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842529, 37.235188, 29.471243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198009, 37.233978, 29.654634>,  <35.411297, 37.233253, 29.764669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198009, 37.233978, 29.654634>,  <34.842529, 37.235188, 29.471243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198009, 37.233978, 29.654634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171687, 0.929414, -0.326671,
		-0.425129, 0.369027, 0.826489,
		0.888701, -0.003021, 0.458478,
		35.464619, 37.233070, 29.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933434, 37.856522, 29.822939>,  <34.842529, 37.235188, 29.471243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933434, 37.856522, 29.822939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320107, 37.755131, 29.808674>,  <35.552109, 37.694294, 29.800114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320107, 37.755131, 29.808674>,  <34.933434, 37.856522, 29.822939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320107, 37.755131, 29.808674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230412, 0.922348, -0.310136,
		0.111508, 0.291586, 0.950023,
		0.966683, -0.253479, -0.035664,
		35.610111, 37.679089, 29.797976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337082, 38.407322, 30.179756>,  <34.933434, 37.856522, 29.822939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337082, 38.407322, 30.179756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593941, 38.217430, 29.938995>,  <35.748055, 38.103497, 29.794538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593941, 38.217430, 29.938995>,  <35.337082, 38.407322, 30.179756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593941, 38.217430, 29.938995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323046, 0.879631, -0.349129,
		0.695191, 0.029750, 0.718209,
		0.642146, -0.474726, -0.601900,
		35.786583, 38.075012, 29.758425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791828, 38.909271, 30.101658>,  <35.337082, 38.407322, 30.179756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791828, 38.909271, 30.101658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926548, 38.647045, 29.831308>,  <36.007381, 38.489712, 29.669098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926548, 38.647045, 29.831308>,  <35.791828, 38.909271, 30.101658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926548, 38.647045, 29.831308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314500, 0.754909, -0.575501,
		0.887499, -0.018733, 0.460428,
		0.336801, -0.655562, -0.675873,
		36.027588, 38.450378, 29.628546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466160, 39.106010, 29.915606>,  <35.791828, 38.909271, 30.101658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466160, 39.106010, 29.915606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295696, 38.881054, 29.632168>,  <36.193420, 38.746078, 29.462105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295696, 38.881054, 29.632168>,  <36.466160, 39.106010, 29.915606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295696, 38.881054, 29.632168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101514, 0.748604, -0.655200,
		0.898936, -0.351150, -0.261931,
		-0.426156, -0.562393, -0.708594,
		36.167850, 38.712337, 29.419590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945724, 39.192898, 29.407848>,  <36.466160, 39.106010, 29.915606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945724, 39.192898, 29.407848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625843, 39.045616, 29.218151>,  <36.433914, 38.957249, 29.104334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625843, 39.045616, 29.218151>,  <36.945724, 39.192898, 29.407848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625843, 39.045616, 29.218151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270823, 0.483736, -0.832258,
		0.535848, -0.793993, -0.287126,
		-0.799701, -0.368204, -0.474241,
		36.385933, 38.935154, 29.075878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245415, 38.951000, 28.688194>,  <36.945724, 39.192898, 29.407848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245415, 38.951000, 28.688194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851551, 39.019939, 28.677317>,  <36.615231, 39.061302, 28.670790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851551, 39.019939, 28.677317>,  <37.245415, 38.951000, 28.688194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851551, 39.019939, 28.677317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106637, 0.471101, -0.875610,
		-0.138096, -0.865079, -0.482254,
		-0.984661, 0.172344, -0.027192,
		36.556152, 39.071644, 28.669159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094433, 38.954865, 27.988010>,  <37.245415, 38.951000, 28.688194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094433, 38.954865, 27.988010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739098, 39.081673, 28.120892>,  <36.525898, 39.157757, 28.200621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739098, 39.081673, 28.120892>,  <37.094433, 38.954865, 27.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739098, 39.081673, 28.120892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094864, 0.581142, -0.808254,
		-0.449292, -0.749514, -0.486174,
		-0.888334, 0.317022, 0.332205,
		36.472599, 39.176781, 28.220552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421822, 38.806000, 27.484854>,  <37.094433, 38.954865, 27.988010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421822, 38.806000, 27.484854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349865, 39.129795, 27.708414>,  <36.306690, 39.324070, 27.842550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349865, 39.129795, 27.708414>,  <36.421822, 38.806000, 27.484854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349865, 39.129795, 27.708414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003136, 0.568639, -0.822581,
		-0.983681, -0.146224, -0.104833,
		-0.179893, 0.809486, 0.558901,
		36.295898, 39.372643, 27.876083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906693, 39.279751, 27.094421>,  <36.421822, 38.806000, 27.484854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906693, 39.279751, 27.094421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082256, 39.524464, 27.357656>,  <36.187595, 39.671291, 27.515598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082256, 39.524464, 27.357656>,  <35.906693, 39.279751, 27.094421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082256, 39.524464, 27.357656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080882, 0.702532, -0.707041,
		-0.894885, 0.363553, 0.258864,
		0.438907, 0.611783, 0.658090,
		36.213928, 39.708000, 27.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632401, 40.005840, 26.993795>,  <35.906693, 39.279751, 27.094421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632401, 40.005840, 26.993795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932827, 40.064156, 27.251366>,  <36.113083, 40.099144, 27.405909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932827, 40.064156, 27.251366>,  <35.632401, 40.005840, 26.993795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932827, 40.064156, 27.251366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247752, 0.841806, -0.479564,
		-0.611975, 0.519719, 0.596136,
		0.751069, 0.145787, 0.643926,
		36.158150, 40.107891, 27.444544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558327, 40.672195, 27.259413>,  <35.632401, 40.005840, 26.993795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558327, 40.672195, 27.259413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941700, 40.558636, 27.270782>,  <36.171722, 40.490501, 27.277603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941700, 40.558636, 27.270782>,  <35.558327, 40.672195, 27.259413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941700, 40.558636, 27.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270711, 0.873396, -0.404839,
		0.090108, 0.395706, 0.913946,
		0.958434, -0.283895, 0.028422,
		36.229229, 40.473469, 27.279308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812016, 41.306007, 27.265463>,  <35.558327, 40.672195, 27.259413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812016, 41.306007, 27.265463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123489, 41.077774, 27.161087>,  <36.310375, 40.940834, 27.098461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123489, 41.077774, 27.161087>,  <35.812016, 41.306007, 27.265463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123489, 41.077774, 27.161087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495888, 0.814485, -0.301179,
		0.384377, 0.105127, 0.917171,
		0.778684, -0.570581, -0.260938,
		36.357094, 40.906601, 27.082806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433079, 41.754936, 27.432333>,  <35.812016, 41.306007, 27.265463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433079, 41.754936, 27.432333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594131, 41.478226, 27.192553>,  <36.690762, 41.312199, 27.048685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594131, 41.478226, 27.192553>,  <36.433079, 41.754936, 27.432333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594131, 41.478226, 27.192553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657386, 0.674234, -0.336530,
		0.636972, -0.258573, 0.726228,
		0.402629, -0.691772, -0.599450,
		36.714920, 41.270695, 27.012718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105965, 41.738396, 27.606272>,  <36.433079, 41.754936, 27.432333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105965, 41.738396, 27.606272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060886, 41.589466, 27.237778>,  <37.033840, 41.500107, 27.016682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060886, 41.589466, 27.237778>,  <37.105965, 41.738396, 27.606272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060886, 41.589466, 27.237778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571017, 0.734488, -0.366699,
		0.813167, -0.567365, 0.129833,
		-0.112692, -0.372324, -0.921236,
		37.027081, 41.477768, 26.961407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821262, 41.653996, 27.374413>,  <37.105965, 41.738396, 27.606272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821262, 41.653996, 27.374413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581242, 41.663189, 27.054562>,  <37.437229, 41.668705, 26.862650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581242, 41.663189, 27.054562>,  <37.821262, 41.653996, 27.374413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581242, 41.663189, 27.054562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599470, 0.674792, -0.430455,
		0.529689, -0.737650, -0.418691,
		-0.600054, 0.022985, -0.799629,
		37.401226, 41.670086, 26.814672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249329, 41.422100, 26.874382>,  <37.821262, 41.653996, 27.374413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249329, 41.422100, 26.874382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955696, 41.658436, 26.740498>,  <37.779514, 41.800236, 26.660168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955696, 41.658436, 26.740498>,  <38.249329, 41.422100, 26.874382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955696, 41.658436, 26.740498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676237, 0.591175, -0.439563,
		-0.061839, -0.549019, -0.833519,
		-0.734084, 0.590839, -0.334709,
		37.735470, 41.835686, 26.640085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598526, 41.632835, 26.357866>,  <38.249329, 41.422100, 26.874382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598526, 41.632835, 26.357866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293362, 41.889095, 26.392565>,  <38.110264, 42.042850, 26.413383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293362, 41.889095, 26.392565>,  <38.598526, 41.632835, 26.357866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293362, 41.889095, 26.392565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539831, 0.705109, -0.459787,
		-0.355728, -0.303951, -0.883783,
		-0.762915, 0.640652, 0.086745,
		38.064487, 42.081291, 26.418589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666965, 42.195408, 25.780872>,  <38.598526, 41.632835, 26.357866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666965, 42.195408, 25.780872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397114, 42.367954, 26.020472>,  <38.235203, 42.471481, 26.164230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397114, 42.367954, 26.020472>,  <38.666965, 42.195408, 25.780872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397114, 42.367954, 26.020472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343126, 0.901736, -0.262940,
		-0.653562, 0.028145, -0.756349,
		-0.674627, 0.431370, 0.598998,
		38.194725, 42.497364, 26.200171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523827, 42.764774, 25.423632>,  <38.666965, 42.195408, 25.780872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523827, 42.764774, 25.423632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442383, 42.853107, 25.805161>,  <38.393517, 42.906105, 26.034079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442383, 42.853107, 25.805161>,  <38.523827, 42.764774, 25.423632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442383, 42.853107, 25.805161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329612, 0.932821, -0.145606,
		-0.921899, 0.284744, -0.262722,
		-0.203612, 0.220830, 0.953822,
		38.381298, 42.919357, 26.091307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961117, 43.217388, 25.455292>,  <38.523827, 42.764774, 25.423632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961117, 43.217388, 25.455292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193115, 43.268944, 25.777035>,  <38.332314, 43.299877, 25.970081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193115, 43.268944, 25.777035>,  <37.961117, 43.217388, 25.455292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193115, 43.268944, 25.777035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188422, 0.939400, -0.286398,
		-0.792529, 0.317669, 0.520561,
		0.579995, 0.128894, 0.804358,
		38.367115, 43.307613, 26.018343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958092, 43.923679, 25.631739>,  <37.961117, 43.217388, 25.455292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958092, 43.923679, 25.631739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293575, 43.790710, 25.804279>,  <38.494865, 43.710930, 25.907804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293575, 43.790710, 25.804279>,  <37.958092, 43.923679, 25.631739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293575, 43.790710, 25.804279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430874, 0.889468, -0.152299,
		-0.333046, 0.313593, 0.889236,
		0.838706, -0.332426, 0.431353,
		38.545189, 43.690983, 25.933685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175400, 44.557426, 26.030579>,  <37.958092, 43.923679, 25.631739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175400, 44.557426, 26.030579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496113, 44.320038, 26.002457>,  <38.688541, 44.177605, 25.985584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496113, 44.320038, 26.002457>,  <38.175400, 44.557426, 26.030579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496113, 44.320038, 26.002457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556764, 0.784532, -0.272990,
		0.217166, 0.179736, 0.959445,
		0.801781, -0.593468, -0.070303,
		38.736649, 44.141998, 25.981365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728405, 44.820606, 26.509663>,  <38.175400, 44.557426, 26.030579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728405, 44.820606, 26.509663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882454, 44.604275, 26.210548>,  <38.974884, 44.474476, 26.031080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882454, 44.604275, 26.210548>,  <38.728405, 44.820606, 26.509663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882454, 44.604275, 26.210548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718134, 0.684543, -0.125236,
		0.579623, -0.488779, 0.652022,
		0.385124, -0.540829, -0.747786,
		38.997990, 44.442024, 25.986212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295078, 45.113441, 26.485910>,  <38.728405, 44.820606, 26.509663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295078, 45.113441, 26.485910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348358, 44.887337, 26.160276>,  <39.380325, 44.751675, 25.964895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348358, 44.887337, 26.160276>,  <39.295078, 45.113441, 26.485910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348358, 44.887337, 26.160276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556090, 0.722547, -0.410719,
		0.820380, -0.397998, 0.410579,
		0.133197, -0.565264, -0.814085,
		39.388317, 44.717758, 25.916050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036919, 45.183193, 26.252470>,  <39.295078, 45.113441, 26.485910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036919, 45.183193, 26.252470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824440, 45.036022, 25.947193>,  <39.696953, 44.947720, 25.764027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824440, 45.036022, 25.947193>,  <40.036919, 45.183193, 26.252470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824440, 45.036022, 25.947193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566564, 0.515502, -0.642856,
		0.629950, -0.773879, -0.065379,
		-0.531195, -0.367925, -0.763192,
		39.665081, 44.925644, 25.718235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585594, 45.048794, 25.615973>,  <40.036919, 45.183193, 26.252470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585594, 45.048794, 25.615973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207001, 45.085312, 25.492142>,  <39.979847, 45.107224, 25.417843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207001, 45.085312, 25.492142>,  <40.585594, 45.048794, 25.615973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207001, 45.085312, 25.492142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301585, 0.591831, -0.747517,
		0.114970, -0.800875, -0.587692,
		-0.946482, 0.091298, -0.309575,
		39.923058, 45.112701, 25.399269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701885, 45.293949, 25.022755>,  <40.585594, 45.048794, 25.615973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701885, 45.293949, 25.022755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304333, 45.336292, 25.035339>,  <40.065800, 45.361698, 25.042891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304333, 45.336292, 25.035339>,  <40.701885, 45.293949, 25.022755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304333, 45.336292, 25.035339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033257, 0.558573, -0.828789,
		-0.105309, -0.822673, -0.558676,
		-0.993883, 0.105859, 0.031464,
		40.006168, 45.368050, 25.044779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227161, 44.996716, 24.444910>,  <40.701885, 45.293949, 25.022755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227161, 44.996716, 24.444910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023769, 45.305500, 24.597500>,  <39.901733, 45.490772, 24.689054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023769, 45.305500, 24.597500>,  <40.227161, 44.996716, 24.444910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023769, 45.305500, 24.597500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098209, 0.492124, -0.864967,
		-0.855455, -0.402354, -0.326049,
		-0.508479, 0.771962, 0.381476,
		39.871227, 45.537090, 24.711943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824848, 45.147377, 23.867844>,  <40.227161, 44.996716, 24.444910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824848, 45.147377, 23.867844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838440, 45.462456, 24.113895>,  <39.846596, 45.651501, 24.261526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838440, 45.462456, 24.113895>,  <39.824848, 45.147377, 23.867844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838440, 45.462456, 24.113895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122395, 0.607573, -0.784776,
		-0.991900, 0.101954, -0.075765,
		0.033978, 0.787693, 0.615131,
		39.848633, 45.698765, 24.298435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308903, 45.769531, 23.609791>,  <39.824848, 45.147377, 23.867844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308903, 45.769531, 23.609791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650955, 45.849419, 23.801146>,  <39.856186, 45.897350, 23.915958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650955, 45.849419, 23.801146>,  <39.308903, 45.769531, 23.609791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650955, 45.849419, 23.801146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241342, 0.663332, -0.708340,
		-0.458801, 0.721181, 0.519037,
		0.855135, 0.199721, 0.478389,
		39.907497, 45.909336, 23.944662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444714, 46.536320, 23.647776>,  <39.308903, 45.769531, 23.609791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444714, 46.536320, 23.647776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810513, 46.383755, 23.701765>,  <40.029991, 46.292213, 23.734158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810513, 46.383755, 23.701765>,  <39.444714, 46.536320, 23.647776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810513, 46.383755, 23.701765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391100, 0.747924, -0.536331,
		0.103616, 0.543260, 0.833146,
		0.914497, -0.381416, 0.134973,
		40.084862, 46.269329, 23.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516598, 47.044441, 24.241249>,  <39.444714, 46.536320, 23.647776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516598, 47.044441, 24.241249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308979, 47.385963, 24.225222>,  <39.184406, 47.590878, 24.215605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308979, 47.385963, 24.225222>,  <39.516598, 47.044441, 24.241249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308979, 47.385963, 24.225222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825102, 0.512736, 0.237292,
		0.223145, 0.090107, -0.970612,
		-0.519049, 0.853805, -0.040067,
		39.153263, 47.642105, 24.213202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776859, 46.870560, 24.163733>,  <39.516598, 47.044441, 24.241249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776859, 46.870560, 24.163733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541107, 47.186668, 24.230785>,  <38.399654, 47.376331, 24.271017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541107, 47.186668, 24.230785>,  <38.776859, 46.870560, 24.163733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541107, 47.186668, 24.230785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738955, -0.611236, 0.283435,
		0.326454, 0.043178, 0.944227,
		-0.589383, 0.790270, 0.167634,
		38.364292, 47.423748, 24.281075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441715, 46.919701, 24.917727>,  <38.776859, 46.870560, 24.163733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441715, 46.919701, 24.917727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203457, 47.103432, 24.654144>,  <38.060501, 47.213669, 24.495995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203457, 47.103432, 24.654144>,  <38.441715, 46.919701, 24.917727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203457, 47.103432, 24.654144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733852, -0.644746, 0.213924,
		-0.326599, 0.611000, 0.721118,
		-0.595646, 0.459327, -0.658957,
		38.024761, 47.241230, 24.456457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771797, 47.271675, 25.166149>,  <38.441715, 46.919701, 24.917727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771797, 47.271675, 25.166149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757038, 47.108078, 24.801432>,  <37.748184, 47.009918, 24.582602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757038, 47.108078, 24.801432>,  <37.771797, 47.271675, 25.166149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757038, 47.108078, 24.801432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751709, -0.589841, 0.294993,
		-0.658462, 0.696285, -0.285681,
		-0.036893, -0.408991, -0.911792,
		37.745972, 46.985382, 24.527893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060600, 47.124111, 24.941896>,  <37.771797, 47.271675, 25.166149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060600, 47.124111, 24.941896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273849, 46.860973, 24.729099>,  <37.401798, 46.703091, 24.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273849, 46.860973, 24.729099>,  <37.060600, 47.124111, 24.941896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273849, 46.860973, 24.729099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614528, -0.733291, 0.290928,
		-0.581492, 0.171824, -0.795201,
		0.533125, -0.657845, -0.531994,
		37.433788, 46.663620, 24.569502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656429, 46.730457, 24.414705>,  <37.060600, 47.124111, 24.941896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656429, 46.730457, 24.414705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960384, 46.520069, 24.567505>,  <37.142757, 46.393837, 24.659184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960384, 46.520069, 24.567505>,  <36.656429, 46.730457, 24.414705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960384, 46.520069, 24.567505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643446, -0.692163, 0.326938,
		0.092445, -0.494231, -0.864401,
		0.759889, -0.525972, 0.381998,
		37.188351, 46.362278, 24.682104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447685, 46.116119, 24.349710>,  <36.656429, 46.730457, 24.414705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447685, 46.116119, 24.349710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754910, 46.079746, 24.603266>,  <36.939243, 46.057922, 24.755400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754910, 46.079746, 24.603266>,  <36.447685, 46.116119, 24.349710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754910, 46.079746, 24.603266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549770, -0.601240, 0.579882,
		0.328389, -0.793877, -0.511781,
		0.768059, -0.090935, 0.633890,
		36.985329, 46.052467, 24.793432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605427, 45.413471, 24.386721>,  <36.447685, 46.116119, 24.349710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605427, 45.413471, 24.386721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765442, 45.567696, 24.719303>,  <36.861450, 45.660229, 24.918852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765442, 45.567696, 24.719303>,  <36.605427, 45.413471, 24.386721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765442, 45.567696, 24.719303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531611, -0.641381, 0.553191,
		0.746566, -0.663307, -0.051608,
		0.400036, 0.385558, 0.831455,
		36.885452, 45.683361, 24.968739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739693, 44.719795, 24.790907>,  <36.605427, 45.413471, 24.386721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739693, 44.719795, 24.790907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757385, 45.023170, 25.051006>,  <36.768002, 45.205196, 25.207066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757385, 45.023170, 25.051006>,  <36.739693, 44.719795, 24.790907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757385, 45.023170, 25.051006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427298, -0.573981, 0.698543,
		0.903028, -0.308745, 0.298691,
		0.044228, 0.758434, 0.650247,
		36.770653, 45.250702, 25.246080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990826, 44.460468, 25.528419>,  <36.739693, 44.719795, 24.790907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990826, 44.460468, 25.528419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779957, 44.799484, 25.552952>,  <36.653435, 45.002895, 25.567671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779957, 44.799484, 25.552952>,  <36.990826, 44.460468, 25.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779957, 44.799484, 25.552952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558098, -0.399758, 0.727131,
		0.640791, 0.349097, 0.683754,
		-0.527175, 0.847540, 0.061331,
		36.621803, 45.053745, 25.571352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977734, 44.561096, 26.173565>,  <36.990826, 44.460468, 25.528419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977734, 44.561096, 26.173565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668362, 44.790493, 26.065559>,  <36.482738, 44.928131, 26.000757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668362, 44.790493, 26.065559>,  <36.977734, 44.561096, 26.173565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668362, 44.790493, 26.065559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570629, -0.444449, 0.690542,
		0.276015, 0.688165, 0.671003,
		-0.773433, 0.573493, -0.270012,
		36.436333, 44.962540, 25.984556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623344, 44.671131, 26.765726>,  <36.977734, 44.561096, 26.173565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623344, 44.671131, 26.765726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365009, 44.750301, 26.470776>,  <36.210007, 44.797802, 26.293806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365009, 44.750301, 26.470776>,  <36.623344, 44.671131, 26.765726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365009, 44.750301, 26.470776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660321, -0.629607, 0.409353,
		-0.383236, 0.751280, 0.537316,
		-0.645837, 0.197922, -0.737375,
		36.171257, 44.809677, 26.249563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065601, 44.716972, 27.060457>,  <36.623344, 44.671131, 26.765726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065601, 44.716972, 27.060457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940655, 44.667473, 26.683710>,  <35.865685, 44.637775, 26.457663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940655, 44.667473, 26.683710>,  <36.065601, 44.716972, 27.060457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940655, 44.667473, 26.683710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690941, -0.650838, 0.314659,
		-0.651940, 0.749064, 0.117802,
		-0.312370, -0.123744, -0.941867,
		35.846943, 44.630348, 26.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347481, 44.747082, 27.095303>,  <36.065601, 44.716972, 27.060457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347481, 44.747082, 27.095303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417076, 44.549625, 26.754469>,  <35.458832, 44.431152, 26.549969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417076, 44.549625, 26.754469>,  <35.347481, 44.747082, 27.095303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417076, 44.549625, 26.754469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660277, -0.700437, 0.270965,
		-0.730591, 0.515469, -0.447803,
		0.173984, -0.493639, -0.852086,
		35.469273, 44.401535, 26.498844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772717, 44.647846, 26.778399>,  <35.347481, 44.747082, 27.095303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772717, 44.647846, 26.778399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980522, 44.349556, 26.611547>,  <35.105206, 44.170582, 26.511436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980522, 44.349556, 26.611547>,  <34.772717, 44.647846, 26.778399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980522, 44.349556, 26.611547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666524, -0.659137, 0.348258,
		-0.534649, 0.097100, -0.839477,
		0.519515, -0.745727, -0.417127,
		35.136375, 44.125839, 26.486408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211258, 44.271194, 26.405281>,  <34.772717, 44.647846, 26.778399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211258, 44.271194, 26.405281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522289, 44.025284, 26.458082>,  <34.708908, 43.877739, 26.489763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522289, 44.025284, 26.458082>,  <34.211258, 44.271194, 26.405281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522289, 44.025284, 26.458082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609932, -0.686438, 0.395961,
		-0.152815, -0.388404, -0.908730,
		0.777580, -0.614772, 0.132002,
		34.755562, 43.840851, 26.497683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967747, 43.607864, 26.160328>,  <34.211258, 44.271194, 26.405281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967747, 43.607864, 26.160328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283588, 43.510170, 26.385494>,  <34.473095, 43.451553, 26.520594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283588, 43.510170, 26.385494>,  <33.967747, 43.607864, 26.160328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283588, 43.510170, 26.385494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464375, -0.837502, 0.288002,
		0.401100, -0.488811, -0.774714,
		0.789604, -0.244241, 0.562914,
		34.520470, 43.436897, 26.554369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066021, 42.880428, 25.981483>,  <33.967747, 43.607864, 26.160328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066021, 42.880428, 25.981483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247318, 42.982162, 26.323217>,  <34.356094, 43.043201, 26.528257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247318, 42.982162, 26.323217>,  <34.066021, 42.880428, 25.981483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247318, 42.982162, 26.323217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339922, -0.836693, 0.429416,
		0.824031, -0.485035, -0.292769,
		0.453240, 0.254333, 0.854335,
		34.383289, 43.058464, 26.579517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382652, 42.283485, 26.140415>,  <34.066021, 42.880428, 25.981483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382652, 42.283485, 26.140415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365784, 42.492439, 26.481081>,  <34.355663, 42.617813, 26.685480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365784, 42.492439, 26.481081>,  <34.382652, 42.283485, 26.140415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365784, 42.492439, 26.481081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251021, -0.830621, 0.497049,
		0.967063, -0.192825, 0.166158,
		-0.042170, 0.522387, 0.851665,
		34.353134, 42.649155, 26.736580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723164, 41.853596, 26.548592>,  <34.382652, 42.283485, 26.140415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723164, 41.853596, 26.548592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506706, 42.090279, 26.787605>,  <34.376831, 42.232288, 26.931015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506706, 42.090279, 26.787605>,  <34.723164, 41.853596, 26.548592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506706, 42.090279, 26.787605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340076, -0.803850, 0.488030,
		0.769101, 0.060885, 0.636220,
		-0.541139, 0.591708, 0.597536,
		34.344364, 42.267792, 26.966866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719391, 41.564095, 27.171230>,  <34.723164, 41.853596, 26.548592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719391, 41.564095, 27.171230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402412, 41.805119, 27.209057>,  <34.212223, 41.949734, 27.231752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402412, 41.805119, 27.209057>,  <34.719391, 41.564095, 27.171230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402412, 41.805119, 27.209057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567038, -0.784922, 0.249731,
		0.224706, 0.144276, 0.963686,
		-0.792449, 0.602562, 0.094567,
		34.164677, 41.985886, 27.237427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475548, 41.479610, 27.859827>,  <34.719391, 41.564095, 27.171230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475548, 41.479610, 27.859827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158558, 41.614922, 27.656828>,  <33.968365, 41.696110, 27.535028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158558, 41.614922, 27.656828>,  <34.475548, 41.479610, 27.859827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158558, 41.614922, 27.656828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542695, -0.770828, 0.333627,
		-0.278335, 0.539807, 0.794442,
		-0.792472, 0.338280, -0.507499,
		33.920815, 41.716404, 27.504578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925682, 41.633263, 28.411882>,  <34.475548, 41.479610, 27.859827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925682, 41.633263, 28.411882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771126, 41.584011, 28.046251>,  <33.678391, 41.554459, 27.826872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771126, 41.584011, 28.046251>,  <33.925682, 41.633263, 28.411882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771126, 41.584011, 28.046251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323262, -0.910107, 0.259244,
		-0.863831, 0.395657, 0.311853,
		-0.386391, -0.123133, -0.914079,
		33.655209, 41.547070, 27.772028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149727, 41.475124, 28.476368>,  <33.925682, 41.633263, 28.411882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149727, 41.475124, 28.476368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297955, 41.343716, 28.128862>,  <33.386890, 41.264870, 27.920359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297955, 41.343716, 28.128862>,  <33.149727, 41.475124, 28.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297955, 41.343716, 28.128862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435411, -0.887657, 0.149940,
		-0.820424, 0.322706, -0.471981,
		0.370570, -0.328520, -0.868765,
		33.409126, 41.245159, 27.868233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575893, 41.094704, 28.243492>,  <33.149727, 41.475124, 28.476368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575893, 41.094704, 28.243492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902122, 40.973595, 28.046242>,  <33.097858, 40.900928, 27.927891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902122, 40.973595, 28.046242>,  <32.575893, 41.094704, 28.243492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902122, 40.973595, 28.046242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306938, -0.948777, 0.074904,
		-0.490545, 0.090270, -0.866728,
		0.815570, -0.302775, -0.493125,
		33.146793, 40.882763, 27.898304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285797, 40.618923, 27.867887>,  <32.575893, 41.094704, 28.243492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285797, 40.618923, 27.867887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677135, 40.538342, 27.848919>,  <32.911938, 40.489994, 27.837538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677135, 40.538342, 27.848919>,  <32.285797, 40.618923, 27.867887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677135, 40.538342, 27.848919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194952, -0.973981, 0.115562,
		-0.069470, -0.103815, -0.992168,
		0.978350, -0.201453, -0.047423,
		32.970642, 40.477905, 27.834692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452053, 39.959358, 27.403561>,  <32.285797, 40.618923, 27.867887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452053, 39.959358, 27.403561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769028, 40.013950, 27.641356>,  <32.959213, 40.046703, 27.784033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769028, 40.013950, 27.641356>,  <32.452053, 39.959358, 27.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769028, 40.013950, 27.641356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143453, -0.989008, 0.035830,
		0.592844, 0.056887, -0.803306,
		0.792438, 0.136478, 0.594488,
		33.006760, 40.054893, 27.819702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913651, 39.604347, 27.063147>,  <32.452053, 39.959358, 27.403561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913651, 39.604347, 27.063147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051842, 39.659122, 27.434500>,  <33.134758, 39.691986, 27.657310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051842, 39.659122, 27.434500>,  <32.913651, 39.604347, 27.063147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051842, 39.659122, 27.434500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107898, -0.988532, 0.105654,
		0.932203, 0.063669, -0.356292,
		0.345479, 0.136934, 0.928382,
		33.155487, 39.700203, 27.713015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425121, 39.138630, 27.085388>,  <32.913651, 39.604347, 27.063147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425121, 39.138630, 27.085388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264923, 39.218197, 27.443167>,  <33.168804, 39.265938, 27.657835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264923, 39.218197, 27.443167>,  <33.425121, 39.138630, 27.085388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264923, 39.218197, 27.443167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083526, -0.980013, 0.180547,
		0.912484, -0.002402, 0.409104,
		-0.400494, 0.198917, 0.894448,
		33.144775, 39.277870, 27.711500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711514, 38.686066, 27.537786>,  <33.425121, 39.138630, 27.085388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711514, 38.686066, 27.537786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388569, 38.792721, 27.748337>,  <33.194801, 38.856712, 27.874668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388569, 38.792721, 27.748337>,  <33.711514, 38.686066, 27.537786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388569, 38.792721, 27.748337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004733, -0.889123, 0.457643,
		0.590038, 0.371975, 0.716582,
		-0.807361, 0.266635, 0.526377,
		33.146362, 38.872711, 27.906250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806297, 38.270424, 28.187370>,  <33.711514, 38.686066, 27.537786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806297, 38.270424, 28.187370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427502, 38.392063, 28.145910>,  <33.200226, 38.465046, 28.121035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427502, 38.392063, 28.145910>,  <33.806297, 38.270424, 28.187370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427502, 38.392063, 28.145910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317353, -0.835116, 0.449298,
		0.050070, 0.458372, 0.887349,
		-0.946985, 0.304099, -0.103651,
		33.143406, 38.483292, 28.114815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468063, 37.981415, 28.793262>,  <33.806297, 38.270424, 28.187370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468063, 37.981415, 28.793262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155251, 38.069031, 28.559870>,  <32.967564, 38.121601, 28.419834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155251, 38.069031, 28.559870>,  <33.468063, 37.981415, 28.793262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155251, 38.069031, 28.559870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460691, -0.833702, 0.304476,
		-0.419756, 0.506913, 0.752890,
		-0.782029, 0.219044, -0.583481,
		32.920643, 38.134743, 28.384825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866024, 37.858620, 29.198933>,  <33.468063, 37.981415, 28.793262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866024, 37.858620, 29.198933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713184, 37.871223, 28.829498>,  <32.621479, 37.878788, 28.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713184, 37.871223, 28.829498>,  <32.866024, 37.858620, 29.198933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713184, 37.871223, 28.829498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667005, -0.701133, 0.252026,
		-0.639612, 0.712334, 0.288923,
		-0.382100, 0.031514, -0.923584,
		32.598553, 37.880676, 28.552423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156078, 37.862362, 29.260899>,  <32.866024, 37.858620, 29.198933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156078, 37.862362, 29.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249329, 37.720242, 28.898813>,  <32.305279, 37.634968, 28.681562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249329, 37.720242, 28.898813>,  <32.156078, 37.862362, 29.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249329, 37.720242, 28.898813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651512, -0.748126, 0.125856,
		-0.721930, 0.560415, -0.405897,
		0.233130, -0.355306, -0.905212,
		32.319267, 37.613651, 28.627249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580450, 37.682083, 28.974022>,  <32.156078, 37.862362, 29.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580450, 37.682083, 28.974022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873421, 37.473415, 28.799021>,  <32.049202, 37.348213, 28.694019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873421, 37.473415, 28.799021>,  <31.580450, 37.682083, 28.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873421, 37.473415, 28.799021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588160, -0.808481, -0.020621,
		-0.342955, 0.272426, -0.898980,
		0.732427, -0.521673, -0.437503,
		32.093147, 37.316914, 28.667770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187340, 37.211960, 28.450766>,  <31.580450, 37.682083, 28.974022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187340, 37.211960, 28.450766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548588, 37.058529, 28.527958>,  <31.765337, 36.966469, 28.574272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548588, 37.058529, 28.527958>,  <31.187340, 37.211960, 28.450766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548588, 37.058529, 28.527958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400400, -0.914639, 0.055808,
		0.155099, -0.127670, -0.979615,
		0.903119, -0.383582, 0.192979,
		31.819523, 36.943455, 28.585852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233149, 36.613899, 27.988976>,  <31.187340, 37.211960, 28.450766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233149, 36.613899, 27.988976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484770, 36.562653, 28.295670>,  <31.635742, 36.531902, 28.479685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484770, 36.562653, 28.295670>,  <31.233149, 36.613899, 27.988976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484770, 36.562653, 28.295670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249244, -0.967494, 0.042819,
		0.736324, -0.218039, -0.640536,
		0.629051, -0.128121, 0.766733,
		31.673485, 36.524216, 28.525690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434788, 35.931095, 27.871023>,  <31.233149, 36.613899, 27.988976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434788, 35.931095, 27.871023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544882, 35.986221, 28.251602>,  <31.610939, 36.019299, 28.479950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544882, 35.986221, 28.251602>,  <31.434788, 35.931095, 27.871023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544882, 35.986221, 28.251602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224306, -0.953152, 0.202949,
		0.934844, -0.269274, -0.231428,
		0.275235, 0.137815, 0.951448,
		31.627453, 36.027565, 28.537037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896427, 35.361252, 28.041283>,  <31.434788, 35.931095, 27.871023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896427, 35.361252, 28.041283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816481, 35.496056, 28.409300>,  <31.768513, 35.576939, 28.630110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816481, 35.496056, 28.409300>,  <31.896427, 35.361252, 28.041283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816481, 35.496056, 28.409300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134323, -0.920700, 0.366426,
		0.970573, 0.196819, 0.138748,
		-0.199865, 0.337006, 0.920044,
		31.756521, 35.597157, 28.685312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360550, 35.060993, 28.411055>,  <31.896427, 35.361252, 28.041283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360550, 35.060993, 28.411055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045082, 35.143520, 28.642721>,  <31.855801, 35.193035, 28.781721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045082, 35.143520, 28.642721>,  <32.360550, 35.060993, 28.411055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045082, 35.143520, 28.642721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060753, -0.963556, 0.260515,
		0.611809, 0.170274, 0.772461,
		-0.788669, 0.206315, 0.579168,
		31.808481, 35.205414, 28.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458965, 34.691525, 29.028431>,  <32.360550, 35.060993, 28.411055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458965, 34.691525, 29.028431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072781, 34.788887, 29.065619>,  <31.841070, 34.847305, 29.087931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072781, 34.788887, 29.065619>,  <32.458965, 34.691525, 29.028431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072781, 34.788887, 29.065619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190050, -0.901946, 0.387781,
		0.178240, 0.356718, 0.917051,
		-0.965459, 0.243403, 0.092968,
		31.783142, 34.861908, 29.093510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241638, 34.449722, 29.715654>,  <32.458965, 34.691525, 29.028431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241638, 34.449722, 29.715654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896818, 34.496834, 29.518475>,  <31.689926, 34.525101, 29.400167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896818, 34.496834, 29.518475>,  <32.241638, 34.449722, 29.715654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896818, 34.496834, 29.518475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375739, -0.801245, 0.465646,
		-0.340130, 0.586630, 0.734967,
		-0.862051, 0.117775, -0.492947,
		31.638203, 34.532166, 29.370590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690004, 34.408634, 30.268597>,  <32.241638, 34.449722, 29.715654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690004, 34.408634, 30.268597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512384, 34.335815, 29.917671>,  <31.405811, 34.292126, 29.707117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512384, 34.335815, 29.917671>,  <31.690004, 34.408634, 30.268597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512384, 34.335815, 29.917671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490553, -0.769962, 0.408064,
		-0.749784, 0.611570, 0.252600,
		-0.444052, -0.182046, -0.877312,
		31.379169, 34.281200, 29.654478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973589, 34.347557, 30.433985>,  <31.690004, 34.408634, 30.268597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973589, 34.347557, 30.433985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017111, 34.142094, 30.093559>,  <31.043224, 34.018814, 29.889303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017111, 34.142094, 30.093559>,  <30.973589, 34.347557, 30.433985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017111, 34.142094, 30.093559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440900, -0.792267, 0.421806,
		-0.890937, 0.329340, -0.312677,
		0.108806, -0.513662, -0.851066,
		31.049753, 33.987995, 29.838240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363485, 34.155495, 30.117723>,  <30.973589, 34.347557, 30.433985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363485, 34.155495, 30.117723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622192, 33.888496, 29.970135>,  <30.777416, 33.728298, 29.881582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622192, 33.888496, 29.970135>,  <30.363485, 34.155495, 30.117723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622192, 33.888496, 29.970135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496022, -0.735623, 0.461326,
		-0.579358, -0.115353, -0.806870,
		0.646767, -0.667497, -0.368971,
		30.816223, 33.688248, 29.859444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881454, 34.473904, 30.615507>,  <30.363485, 34.155495, 30.117723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881454, 34.473904, 30.615507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906429, 34.537418, 31.009642>,  <29.921413, 34.575527, 31.246122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906429, 34.537418, 31.009642>,  <29.881454, 34.473904, 30.615507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906429, 34.537418, 31.009642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290296, 0.947468, -0.134287,
		-0.954898, -0.277656, 0.105249,
		0.062435, 0.158784, 0.985337,
		29.925159, 34.585052, 31.305243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305288, 34.948757, 30.792936>,  <29.881454, 34.473904, 30.615507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305288, 34.948757, 30.792936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523277, 34.990463, 31.125715>,  <29.654070, 35.015488, 31.325382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523277, 34.990463, 31.125715>,  <29.305288, 34.948757, 30.792936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523277, 34.990463, 31.125715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079034, 0.994208, -0.072835,
		-0.834721, -0.026059, 0.550056,
		0.544972, 0.104270, 0.831946,
		29.686769, 35.021744, 31.375299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891718, 35.460743, 31.289314>,  <29.305288, 34.948757, 30.792936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891718, 35.460743, 31.289314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278088, 35.456097, 31.392736>,  <29.509911, 35.453308, 31.454790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278088, 35.456097, 31.392736>,  <28.891718, 35.460743, 31.289314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278088, 35.456097, 31.392736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032910, 0.985372, 0.167211,
		-0.256716, -0.170022, 0.951414,
		0.965926, -0.011615, 0.258556,
		29.567865, 35.452614, 31.470303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935839, 35.948612, 31.830330>,  <28.891718, 35.460743, 31.289314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935839, 35.948612, 31.830330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309669, 35.909344, 31.693552>,  <29.533968, 35.885780, 31.611485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309669, 35.909344, 31.693552>,  <28.935839, 35.948612, 31.830330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309669, 35.909344, 31.693552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145353, 0.982657, 0.115140,
		0.324710, -0.157310, 0.932639,
		0.934578, -0.098174, -0.341945,
		29.590042, 35.879890, 31.590969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307796, 36.605915, 32.172600>,  <28.935839, 35.948612, 31.830330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307796, 36.605915, 32.172600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526711, 36.481846, 31.861658>,  <29.658058, 36.407406, 31.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526711, 36.481846, 31.861658>,  <29.307796, 36.605915, 32.172600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526711, 36.481846, 31.861658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323739, 0.934949, -0.145132,
		0.771799, -0.172231, 0.612097,
		0.547283, -0.310172, -0.777351,
		29.690895, 36.388794, 31.628452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975090, 36.870964, 32.249996>,  <29.307796, 36.605915, 32.172600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975090, 36.870964, 32.249996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948519, 36.798992, 31.857422>,  <29.932575, 36.755810, 31.621878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948519, 36.798992, 31.857422>,  <29.975090, 36.870964, 32.249996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948519, 36.798992, 31.857422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310937, 0.930896, -0.191707,
		0.948106, -0.317900, -0.005894,
		-0.066430, -0.179926, -0.981435,
		29.928589, 36.745014, 31.562992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595919, 36.966496, 31.994116>,  <29.975090, 36.870964, 32.249996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595919, 36.966496, 31.994116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406155, 36.983597, 31.642410>,  <30.292295, 36.993858, 31.431387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406155, 36.983597, 31.642410>,  <30.595919, 36.966496, 31.994116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406155, 36.983597, 31.642410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554275, 0.790478, -0.260623,
		0.683897, -0.610997, -0.398708,
		-0.474410, 0.042755, -0.879265,
		30.263832, 36.996422, 31.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130400, 37.055672, 31.423016>,  <30.595919, 36.966496, 31.994116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130400, 37.055672, 31.423016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773554, 37.183807, 31.295568>,  <30.559446, 37.260689, 31.219099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773554, 37.183807, 31.295568>,  <31.130400, 37.055672, 31.423016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773554, 37.183807, 31.295568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447098, 0.727517, -0.520406,
		0.065095, -0.606716, -0.792249,
		-0.892113, 0.320337, -0.318619,
		30.505920, 37.279907, 31.199984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209496, 37.435604, 30.851379>,  <31.130400, 37.055672, 31.423016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209496, 37.435604, 30.851379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848007, 37.582645, 30.939159>,  <30.631115, 37.670872, 30.991827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848007, 37.582645, 30.939159>,  <31.209496, 37.435604, 30.851379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848007, 37.582645, 30.939159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310608, 0.915734, -0.254860,
		-0.294644, -0.162159, -0.941748,
		-0.903719, 0.367607, 0.219448,
		30.576891, 37.692928, 31.004993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141508, 37.952980, 30.425806>,  <31.209496, 37.435604, 30.851379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141508, 37.952980, 30.425806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843487, 38.031971, 30.680647>,  <30.664673, 38.079365, 30.833551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843487, 38.031971, 30.680647>,  <31.141508, 37.952980, 30.425806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843487, 38.031971, 30.680647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195861, 0.977833, -0.074037,
		-0.637599, 0.069622, -0.767216,
		-0.745054, 0.197474, 0.637101,
		30.619970, 38.091213, 30.871777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806633, 38.482498, 30.107243>,  <31.141508, 37.952980, 30.425806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806633, 38.482498, 30.107243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728315, 38.502140, 30.499008>,  <30.681324, 38.513927, 30.734068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728315, 38.502140, 30.499008>,  <30.806633, 38.482498, 30.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728315, 38.502140, 30.499008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179206, 0.983719, -0.013499,
		-0.964132, 0.172874, -0.201407,
		-0.195794, 0.049108, 0.979415,
		30.669577, 38.516872, 30.792833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359680, 39.017208, 30.223965>,  <30.806633, 38.482498, 30.107243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359680, 39.017208, 30.223965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526707, 38.965115, 30.583672>,  <30.626923, 38.933861, 30.799496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526707, 38.965115, 30.583672>,  <30.359680, 39.017208, 30.223965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526707, 38.965115, 30.583672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224728, 0.973732, 0.036663,
		-0.880417, 0.186781, 0.435865,
		0.417568, -0.130230, 0.899265,
		30.651978, 38.926044, 30.853451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028172, 39.520523, 30.693205>,  <30.359680, 39.017208, 30.223965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028172, 39.520523, 30.693205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387379, 39.440609, 30.849997>,  <30.602903, 39.392662, 30.944071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387379, 39.440609, 30.849997>,  <30.028172, 39.520523, 30.693205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387379, 39.440609, 30.849997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196330, 0.979296, 0.049336,
		-0.393720, 0.032653, 0.918650,
		0.898019, -0.199783, 0.391980,
		30.656784, 39.380672, 30.967590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129557, 39.968506, 31.174170>,  <30.028172, 39.520523, 30.693205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129557, 39.968506, 31.174170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507668, 39.844917, 31.132235>,  <30.734533, 39.770763, 31.107073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507668, 39.844917, 31.132235>,  <30.129557, 39.968506, 31.174170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507668, 39.844917, 31.132235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312592, 0.949683, 0.019700,
		0.093475, -0.051393, 0.994294,
		0.945277, -0.308967, -0.104837,
		30.791250, 39.752228, 31.100784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525986, 40.504707, 31.502495>,  <30.129557, 39.968506, 31.174170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525986, 40.504707, 31.502495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823193, 40.320980, 31.307785>,  <31.001516, 40.210743, 31.190960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823193, 40.320980, 31.307785>,  <30.525986, 40.504707, 31.502495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823193, 40.320980, 31.307785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405597, 0.887574, -0.218408,
		0.532368, -0.035153, 0.845783,
		0.743018, -0.459321, -0.486774,
		31.046099, 40.183186, 31.161753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203712, 40.916401, 31.622074>,  <30.525986, 40.504707, 31.502495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203712, 40.916401, 31.622074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268927, 40.687759, 31.300407>,  <31.308056, 40.550575, 31.107407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268927, 40.687759, 31.300407>,  <31.203712, 40.916401, 31.622074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268927, 40.687759, 31.300407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551414, 0.728682, -0.406159,
		0.818145, -0.377210, 0.433994,
		0.163037, -0.571608, -0.804167,
		31.317837, 40.516277, 31.059158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906607, 41.095650, 31.356581>,  <31.203712, 40.916401, 31.622074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906607, 41.095650, 31.356581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708099, 40.971893, 31.032114>,  <31.588995, 40.897640, 30.837433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708099, 40.971893, 31.032114>,  <31.906607, 41.095650, 31.356581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708099, 40.971893, 31.032114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632737, 0.510856, -0.581953,
		0.594444, -0.802061, -0.057755,
		-0.496266, -0.309395, -0.811169,
		31.559219, 40.879074, 30.788763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479778, 41.006565, 30.869303>,  <31.906607, 41.095650, 31.356581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479778, 41.006565, 30.869303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134174, 41.055565, 30.673964>,  <31.926813, 41.084965, 30.556761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134174, 41.055565, 30.673964>,  <32.479778, 41.006565, 30.869303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134174, 41.055565, 30.673964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451465, 0.617844, -0.643776,
		0.222863, -0.776700, -0.589125,
		-0.864009, 0.122496, -0.488348,
		31.874971, 41.092312, 30.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757824, 41.060856, 30.182360>,  <32.479778, 41.006565, 30.869303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757824, 41.060856, 30.182360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390240, 41.218559, 30.185852>,  <32.169689, 41.313179, 30.187948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390240, 41.218559, 30.185852>,  <32.757824, 41.060856, 30.182360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390240, 41.218559, 30.185852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255024, 0.611025, -0.749407,
		-0.300793, -0.686448, -0.662052,
		-0.918959, 0.394256, 0.008731,
		32.114552, 41.336838, 30.188471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561703, 41.039093, 29.482986>,  <32.757824, 41.060856, 30.182360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561703, 41.039093, 29.482986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353935, 41.329872, 29.662655>,  <32.229275, 41.504341, 29.770456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353935, 41.329872, 29.662655>,  <32.561703, 41.039093, 29.482986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353935, 41.329872, 29.662655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418116, 0.674626, -0.608324,
		-0.745242, -0.128168, -0.654360,
		-0.519416, 0.726947, 0.449171,
		32.198109, 41.547955, 29.797405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420769, 41.636108, 28.941032>,  <32.561703, 41.039093, 29.482986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420769, 41.636108, 28.941032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379250, 41.815331, 29.296215>,  <32.354340, 41.922863, 29.509325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379250, 41.815331, 29.296215>,  <32.420769, 41.636108, 28.941032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379250, 41.815331, 29.296215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333551, 0.856760, -0.393326,
		-0.937001, 0.255354, -0.238377,
		-0.103795, 0.448058, 0.887959,
		32.348110, 41.949749, 29.562603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029419, 42.337288, 28.774529>,  <32.420769, 41.636108, 28.941032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029419, 42.337288, 28.774529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212955, 42.367172, 29.128677>,  <32.323078, 42.385101, 29.341167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212955, 42.367172, 29.128677>,  <32.029419, 42.337288, 28.774529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212955, 42.367172, 29.128677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442717, 0.844733, -0.300711,
		-0.770370, 0.529948, 0.354521,
		0.458837, 0.074706, 0.885374,
		32.350605, 42.389584, 29.394289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200268, 43.000404, 28.802845>,  <32.029419, 42.337288, 28.774529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200268, 43.000404, 28.802845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430683, 42.844025, 29.089994>,  <32.568932, 42.750198, 29.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430683, 42.844025, 29.089994>,  <32.200268, 43.000404, 28.802845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430683, 42.844025, 29.089994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673751, 0.724361, -0.146150,
		-0.462861, 0.567854, 0.680662,
		0.576037, -0.390950, 0.717871,
		32.603493, 42.726738, 29.305355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383141, 43.560978, 29.360815>,  <32.200268, 43.000404, 28.802845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383141, 43.560978, 29.360815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663639, 43.277275, 29.389709>,  <32.831936, 43.107056, 29.407047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663639, 43.277275, 29.389709>,  <32.383141, 43.560978, 29.360815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663639, 43.277275, 29.389709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710355, 0.703713, 0.013550,
		-0.060445, 0.041813, 0.997295,
		0.701243, -0.709253, 0.072238,
		32.874012, 43.064499, 29.411381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914890, 43.812836, 29.875677>,  <32.383141, 43.560978, 29.360815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914890, 43.812836, 29.875677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125198, 43.533958, 29.680750>,  <33.251385, 43.366631, 29.563793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125198, 43.533958, 29.680750>,  <32.914890, 43.812836, 29.875677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125198, 43.533958, 29.680750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811709, 0.582524, 0.042356,
		0.254343, -0.417829, 0.872197,
		0.525773, -0.697198, -0.487317,
		33.282928, 43.324799, 29.534555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530064, 43.754345, 30.245378>,  <32.914890, 43.812836, 29.875677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530064, 43.754345, 30.245378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583313, 43.612793, 29.875071>,  <33.615261, 43.527863, 29.652885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583313, 43.612793, 29.875071>,  <33.530064, 43.754345, 30.245378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583313, 43.612793, 29.875071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909655, 0.414444, -0.027619,
		0.393453, -0.838454, 0.377080,
		0.133122, -0.353880, -0.925769,
		33.623249, 43.506630, 29.597340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093212, 43.414005, 30.210815>,  <33.530064, 43.754345, 30.245378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093212, 43.414005, 30.210815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053211, 43.544720, 29.834898>,  <34.029213, 43.623150, 29.609348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053211, 43.544720, 29.834898>,  <34.093212, 43.414005, 30.210815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053211, 43.544720, 29.834898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948606, 0.316330, 0.009057,
		0.300245, -0.890587, -0.341625,
		-0.100001, 0.326787, -0.939793,
		34.023212, 43.642757, 29.552959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681679, 43.276546, 29.939701>,  <34.093212, 43.414005, 30.210815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681679, 43.276546, 29.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542107, 43.536877, 29.669981>,  <34.458363, 43.693073, 29.508150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542107, 43.536877, 29.669981>,  <34.681679, 43.276546, 29.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542107, 43.536877, 29.669981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897513, 0.439114, -0.040613,
		0.269662, -0.619363, -0.737341,
		-0.348931, 0.650822, -0.674298,
		34.437428, 43.732124, 29.467691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190701, 43.294132, 29.462267>,  <34.681679, 43.276546, 29.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190701, 43.294132, 29.462267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975723, 43.628410, 29.417065>,  <34.846737, 43.828976, 29.389944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975723, 43.628410, 29.417065>,  <35.190701, 43.294132, 29.462267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975723, 43.628410, 29.417065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843157, 0.530024, -0.090336,
		-0.015598, -0.143830, -0.989479,
		-0.537441, 0.835696, -0.113004,
		34.814491, 43.879120, 29.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466141, 43.576824, 28.850334>,  <35.190701, 43.294132, 29.462267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466141, 43.576824, 28.850334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314800, 43.850357, 29.099886>,  <35.223995, 44.014477, 29.249617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314800, 43.850357, 29.099886>,  <35.466141, 43.576824, 28.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314800, 43.850357, 29.099886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882378, 0.470122, 0.019824,
		-0.279743, 0.557997, -0.781270,
		-0.378354, 0.683830, 0.623878,
		35.201294, 44.055508, 29.287050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004929, 43.989357, 28.633432>,  <35.466141, 43.576824, 28.850334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004929, 43.989357, 28.633432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824310, 44.156483, 28.948784>,  <35.715939, 44.256760, 29.137995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824310, 44.156483, 28.948784>,  <36.004929, 43.989357, 28.633432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824310, 44.156483, 28.948784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738642, 0.670698, 0.067610,
		-0.500514, 0.612857, -0.611467,
		-0.451545, 0.417815, 0.788376,
		35.688847, 44.281826, 29.185297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978298, 44.711487, 28.498407>,  <36.004929, 43.989357, 28.633432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978298, 44.711487, 28.498407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938213, 44.676689, 28.894869>,  <35.914162, 44.655811, 29.132746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938213, 44.676689, 28.894869>,  <35.978298, 44.711487, 28.498407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938213, 44.676689, 28.894869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596711, 0.791883, 0.129839,
		-0.796174, 0.604445, -0.027448,
		-0.100216, -0.086996, 0.991155,
		35.908150, 44.650589, 29.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717686, 45.323254, 28.810581>,  <35.978298, 44.711487, 28.498407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717686, 45.323254, 28.810581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919510, 45.122845, 29.091835>,  <36.040604, 45.002598, 29.260588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919510, 45.122845, 29.091835>,  <35.717686, 45.323254, 28.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919510, 45.122845, 29.091835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660280, 0.748647, 0.059644,
		-0.556282, 0.434171, 0.708552,
		0.504560, -0.501022, 0.703133,
		36.070877, 44.972538, 29.302774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129955, 45.787529, 29.129433>,  <35.717686, 45.323254, 28.810581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129955, 45.787529, 29.129433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275944, 45.506664, 29.373980>,  <36.363537, 45.338146, 29.520708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275944, 45.506664, 29.373980>,  <36.129955, 45.787529, 29.129433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275944, 45.506664, 29.373980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866236, 0.496770, 0.053424,
		-0.341221, 0.510089, 0.789542,
		0.364970, -0.702160, 0.611366,
		36.385433, 45.296017, 29.557390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400711, 46.046154, 29.794666>,  <36.129955, 45.787529, 29.129433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400711, 46.046154, 29.794666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579803, 45.702858, 29.694296>,  <36.687260, 45.496880, 29.634073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579803, 45.702858, 29.694296>,  <36.400711, 46.046154, 29.794666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579803, 45.702858, 29.694296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890606, 0.402999, 0.210742,
		-0.079744, -0.317833, 0.944787,
		0.447729, -0.858239, -0.250927,
		36.714123, 45.445385, 29.619019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959084, 46.153816, 30.135700>,  <36.400711, 46.046154, 29.794666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959084, 46.153816, 30.135700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074051, 45.826828, 29.936047>,  <37.143032, 45.630634, 29.816256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074051, 45.826828, 29.936047>,  <36.959084, 46.153816, 30.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074051, 45.826828, 29.936047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942482, 0.334223, -0.004669,
		0.170638, -0.469082, 0.866513,
		0.287418, -0.817470, -0.499133,
		37.160275, 45.581589, 29.786306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557587, 45.908012, 30.434214>,  <36.959084, 46.153816, 30.135700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557587, 45.908012, 30.434214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579441, 45.729252, 30.077047>,  <37.592552, 45.621998, 29.862747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579441, 45.729252, 30.077047>,  <37.557587, 45.908012, 30.434214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579441, 45.729252, 30.077047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946240, 0.308701, -0.096607,
		0.318817, -0.839635, 0.439737,
		0.054633, -0.446897, -0.892916,
		37.595829, 45.595184, 29.809174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069881, 45.439056, 30.384893>,  <37.557587, 45.908012, 30.434214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069881, 45.439056, 30.384893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043102, 45.604702, 30.021790>,  <38.027035, 45.704090, 29.803926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043102, 45.604702, 30.021790>,  <38.069881, 45.439056, 30.384893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043102, 45.604702, 30.021790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986104, 0.166098, 0.003049,
		0.152040, -0.894943, -0.419477,
		-0.066946, 0.414112, -0.907761,
		38.023018, 45.728935, 29.749462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599049, 45.675270, 29.958471>,  <38.069881, 45.439056, 30.384893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599049, 45.675270, 29.958471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798145, 45.682358, 30.305330>,  <38.917603, 45.686611, 30.513445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798145, 45.682358, 30.305330>,  <38.599049, 45.675270, 29.958471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798145, 45.682358, 30.305330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187170, -0.974039, 0.127340,
		0.846890, -0.225686, -0.481500,
		0.497739, 0.017721, 0.867146,
		38.947468, 45.687675, 30.565474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100407, 45.127266, 29.917704>,  <38.599049, 45.675270, 29.958471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100407, 45.127266, 29.917704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033569, 45.234909, 30.297106>,  <38.993469, 45.299496, 30.524748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033569, 45.234909, 30.297106>,  <39.100407, 45.127266, 29.917704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033569, 45.234909, 30.297106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361835, -0.911639, 0.194907,
		0.917145, -0.310635, 0.249700,
		-0.167091, 0.269108, 0.948505,
		38.983440, 45.315643, 30.581657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401600, 44.629993, 30.335201>,  <39.100407, 45.127266, 29.917704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401600, 44.629993, 30.335201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156002, 44.791019, 30.606775>,  <39.008644, 44.887634, 30.769720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156002, 44.791019, 30.606775>,  <39.401600, 44.629993, 30.335201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156002, 44.791019, 30.606775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430406, -0.891786, 0.139532,
		0.661636, -0.206546, 0.720816,
		-0.613994, 0.402563, 0.678937,
		38.971806, 44.911789, 30.810455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383739, 44.214329, 30.952545>,  <39.401600, 44.629993, 30.335201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383739, 44.214329, 30.952545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028381, 44.393566, 30.992470>,  <38.815166, 44.501106, 31.016424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028381, 44.393566, 30.992470>,  <39.383739, 44.214329, 30.952545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028381, 44.393566, 30.992470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404856, -0.867235, 0.289818,
		0.216424, 0.217066, 0.951863,
		-0.888399, 0.448091, 0.099810,
		38.761860, 44.527992, 31.022413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122833, 43.968056, 31.666487>,  <39.383739, 44.214329, 30.952545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122833, 43.968056, 31.666487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815479, 44.115639, 31.457314>,  <38.631069, 44.204189, 31.331810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815479, 44.115639, 31.457314>,  <39.122833, 43.968056, 31.666487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815479, 44.115639, 31.457314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517407, -0.839030, 0.168280,
		-0.376668, 0.399873, 0.835597,
		-0.768382, 0.368958, -0.522933,
		38.584965, 44.226326, 31.300434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493248, 43.967751, 32.084999>,  <39.122833, 43.968056, 31.666487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493248, 43.967751, 32.084999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370026, 43.974705, 31.704515>,  <38.296093, 43.978878, 31.476225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370026, 43.974705, 31.704515>,  <38.493248, 43.967751, 32.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370026, 43.974705, 31.704515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597750, -0.781374, 0.179305,
		-0.740131, 0.623821, 0.251104,
		-0.308060, 0.017388, -0.951208,
		38.277607, 43.979919, 31.419153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756226, 44.018684, 32.205601>,  <38.493248, 43.967751, 32.084999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756226, 44.018684, 32.205601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834961, 43.906456, 31.829826>,  <37.882202, 43.839119, 31.604362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834961, 43.906456, 31.829826>,  <37.756226, 44.018684, 32.205601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834961, 43.906456, 31.829826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632653, -0.768347, 0.096913,
		-0.749002, 0.575259, -0.328746,
		0.196841, -0.280570, -0.939433,
		37.894012, 43.822285, 31.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130260, 44.069695, 31.854889>,  <37.756226, 44.018684, 32.205601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130260, 44.069695, 31.854889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354450, 43.816635, 31.641113>,  <37.488964, 43.664799, 31.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354450, 43.816635, 31.641113>,  <37.130260, 44.069695, 31.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354450, 43.816635, 31.641113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779647, -0.620716, -0.082838,
		-0.279328, 0.463102, -0.841137,
		0.560470, -0.632651, -0.534440,
		37.522591, 43.626839, 31.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721413, 43.885136, 31.398663>,  <37.130260, 44.069695, 31.854889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721413, 43.885136, 31.398663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004421, 43.604385, 31.365700>,  <37.174225, 43.435936, 31.345922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004421, 43.604385, 31.365700>,  <36.721413, 43.885136, 31.398663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004421, 43.604385, 31.365700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701716, -0.683924, -0.199604,
		0.083737, 0.199049, -0.976405,
		0.707518, -0.701874, -0.082407,
		37.216679, 43.393822, 31.340979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568539, 43.577038, 30.740610>,  <36.721413, 43.885136, 31.398663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568539, 43.577038, 30.740610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789795, 43.291065, 30.911680>,  <36.922550, 43.119484, 31.014322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789795, 43.291065, 30.911680>,  <36.568539, 43.577038, 30.740610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789795, 43.291065, 30.911680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647605, -0.691942, -0.319098,
		0.524060, -0.100457, -0.845736,
		0.553145, -0.714930, 0.427676,
		36.955738, 43.076588, 31.039984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671364, 43.050137, 30.155640>,  <36.568539, 43.577038, 30.740610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671364, 43.050137, 30.155640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740295, 42.877689, 30.509914>,  <36.781654, 42.774223, 30.722479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740295, 42.877689, 30.509914>,  <36.671364, 43.050137, 30.155640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740295, 42.877689, 30.509914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570637, -0.776592, -0.266983,
		0.802917, -0.459396, -0.379841,
		0.172331, -0.431116, 0.885687,
		36.791996, 42.748356, 30.775620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764076, 42.339417, 30.002985>,  <36.671364, 43.050137, 30.155640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764076, 42.339417, 30.002985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662148, 42.350914, 30.389608>,  <36.600990, 42.357815, 30.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662148, 42.350914, 30.389608>,  <36.764076, 42.339417, 30.002985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662148, 42.350914, 30.389608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532233, -0.838700, -0.115374,
		0.807337, -0.543835, 0.229020,
		-0.254823, 0.028747, 0.966560,
		36.585701, 42.359539, 30.679577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858963, 41.583393, 30.364412>,  <36.764076, 42.339417, 30.002985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858963, 41.583393, 30.364412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591038, 41.786121, 30.581476>,  <36.430283, 41.907757, 30.711714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591038, 41.786121, 30.581476>,  <36.858963, 41.583393, 30.364412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591038, 41.786121, 30.581476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577187, -0.815148, 0.048881,
		0.467121, -0.280474, 0.838530,
		-0.669816, 0.506822, 0.542659,
		36.390095, 41.938168, 30.744274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576843, 41.053535, 30.674456>,  <36.858963, 41.583393, 30.364412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576843, 41.053535, 30.674456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317524, 41.349194, 30.747520>,  <36.161930, 41.526588, 30.791359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317524, 41.349194, 30.747520>,  <36.576843, 41.053535, 30.674456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317524, 41.349194, 30.747520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740452, -0.667932, 0.074812,
		0.177303, -0.086752, 0.980325,
		-0.648301, 0.739149, 0.182662,
		36.123035, 41.570938, 30.802319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178249, 40.844833, 31.248549>,  <36.576843, 41.053535, 30.674456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178249, 40.844833, 31.248549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979000, 41.140259, 31.066822>,  <35.859451, 41.317513, 30.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979000, 41.140259, 31.066822>,  <36.178249, 40.844833, 31.248549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979000, 41.140259, 31.066822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817672, -0.574470, -0.037378,
		-0.288598, 0.352864, 0.890055,
		-0.498121, 0.738560, -0.454318,
		35.829563, 41.361828, 30.930527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815304, 41.113159, 31.682199>,  <36.178249, 40.844833, 31.248549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815304, 41.113159, 31.682199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652760, 41.174057, 31.321823>,  <35.555233, 41.210598, 31.105597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652760, 41.174057, 31.321823>,  <35.815304, 41.113159, 31.682199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652760, 41.174057, 31.321823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784781, -0.563153, 0.258800,
		-0.467966, 0.812207, 0.348322,
		-0.406358, 0.152247, -0.900941,
		35.530853, 41.219730, 31.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155624, 41.406101, 31.727980>,  <35.815304, 41.113159, 31.682199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155624, 41.406101, 31.727980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135265, 41.246479, 31.361774>,  <35.123051, 41.150703, 31.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135265, 41.246479, 31.361774>,  <35.155624, 41.406101, 31.727980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135265, 41.246479, 31.361774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893877, -0.390639, 0.219967,
		-0.445415, 0.829550, -0.336828,
		-0.050895, -0.399059, -0.915512,
		35.119995, 41.126762, 31.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528980, 41.456821, 31.695507>,  <35.155624, 41.406101, 31.727980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528980, 41.456821, 31.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616703, 41.204803, 31.397530>,  <34.669338, 41.053593, 31.218742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616703, 41.204803, 31.397530>,  <34.528980, 41.456821, 31.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616703, 41.204803, 31.397530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741244, -0.604065, 0.292680,
		-0.634399, 0.488002, -0.599493,
		0.219305, -0.630047, -0.744947,
		34.682495, 41.015789, 31.174046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936172, 41.458950, 31.252750>,  <34.528980, 41.456821, 31.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936172, 41.458950, 31.252750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121769, 41.108780, 31.198570>,  <34.233128, 40.898678, 31.166061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121769, 41.108780, 31.198570>,  <33.936172, 41.458950, 31.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121769, 41.108780, 31.198570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790677, -0.478224, 0.382273,
		-0.399426, -0.070273, -0.914068,
		0.463993, -0.875422, -0.135451,
		34.260967, 40.846153, 31.157934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486423, 41.056042, 30.900387>,  <33.936172, 41.458950, 31.252750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486423, 41.056042, 30.900387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744797, 40.816994, 31.090384>,  <33.899822, 40.673565, 31.204382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744797, 40.816994, 31.090384>,  <33.486423, 41.056042, 30.900387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744797, 40.816994, 31.090384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762562, -0.476130, 0.437949,
		-0.035568, -0.645099, -0.763270,
		0.645937, -0.597618, 0.474993,
		33.938580, 40.637707, 31.232882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210018, 40.404972, 30.892305>,  <33.486423, 41.056042, 30.900387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210018, 40.404972, 30.892305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493740, 40.351902, 31.169226>,  <33.663975, 40.320061, 31.335379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493740, 40.351902, 31.169226>,  <33.210018, 40.404972, 30.892305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493740, 40.351902, 31.169226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640422, -0.531646, 0.554268,
		0.294521, -0.836511, -0.462068,
		0.709308, -0.132675, 0.692301,
		33.706532, 40.312099, 31.376917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182156, 39.710461, 31.021124>,  <33.210018, 40.404972, 30.892305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182156, 39.710461, 31.021124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381660, 39.842636, 31.341635>,  <33.501362, 39.921940, 31.533941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381660, 39.842636, 31.341635>,  <33.182156, 39.710461, 31.021124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381660, 39.842636, 31.341635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651735, -0.466463, 0.598041,
		0.571381, -0.820503, -0.017298,
		0.498763, 0.330435, 0.801279,
		33.531288, 39.941765, 31.582018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480762, 39.139050, 31.372414>,  <33.182156, 39.710461, 31.021124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480762, 39.139050, 31.372414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421581, 39.429840, 31.640629>,  <33.386074, 39.604313, 31.801558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421581, 39.429840, 31.640629>,  <33.480762, 39.139050, 31.372414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421581, 39.429840, 31.640629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613928, -0.599061, 0.514022,
		0.775372, -0.335610, 0.534942,
		-0.147952, 0.726974, 0.670536,
		33.377197, 39.647934, 31.841789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427570, 38.705246, 31.930332>,  <33.480762, 39.139050, 31.372414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427570, 38.705246, 31.930332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295029, 39.061684, 32.054375>,  <33.215504, 39.275547, 32.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295029, 39.061684, 32.054375>,  <33.427570, 38.705246, 31.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295029, 39.061684, 32.054375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568477, -0.450869, 0.688150,
		0.753020, 0.051732, 0.655961,
		-0.331352, 0.891090, 0.310104,
		33.195621, 39.329010, 32.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626362, 38.683792, 32.573841>,  <33.427570, 38.705246, 31.930332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626362, 38.683792, 32.573841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309086, 38.920475, 32.516254>,  <33.118721, 39.062485, 32.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309086, 38.920475, 32.516254>,  <33.626362, 38.683792, 32.573841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309086, 38.920475, 32.516254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447656, -0.406279, 0.796581,
		0.412856, 0.696288, 0.587140,
		-0.793193, 0.591710, -0.143963,
		33.071129, 39.097988, 32.473064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412060, 38.734550, 33.238361>,  <33.626362, 38.683792, 32.573841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412060, 38.734550, 33.238361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111851, 38.903580, 33.035130>,  <32.931725, 39.004997, 32.913189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111851, 38.903580, 33.035130>,  <33.412060, 38.734550, 33.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111851, 38.903580, 33.035130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621717, -0.190896, 0.759623,
		0.224004, 0.885998, 0.405992,
		-0.750527, 0.422570, -0.508079,
		32.886692, 39.030350, 32.882706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040977, 39.344265, 33.618118>,  <33.412060, 38.734550, 33.238361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040977, 39.344265, 33.618118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774612, 39.193394, 33.360657>,  <32.614792, 39.102871, 33.206181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774612, 39.193394, 33.360657>,  <33.040977, 39.344265, 33.618118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774612, 39.193394, 33.360657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537111, -0.356389, 0.764525,
		-0.517753, 0.854824, 0.034739,
		-0.665915, -0.377176, -0.643658,
		32.574837, 39.080242, 33.167561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364563, 39.618454, 33.861835>,  <33.040977, 39.344265, 33.618118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364563, 39.618454, 33.861835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295540, 39.290386, 33.643646>,  <32.254124, 39.093544, 33.512733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295540, 39.290386, 33.643646>,  <32.364563, 39.618454, 33.861835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295540, 39.290386, 33.643646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496306, -0.405951, 0.767388,
		-0.850825, 0.403144, -0.337004,
		-0.172561, -0.820170, -0.545476,
		32.243771, 39.044334, 33.480003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664555, 39.505161, 33.833839>,  <32.364563, 39.618454, 33.861835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664555, 39.505161, 33.833839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817904, 39.149235, 33.734837>,  <31.909912, 38.935680, 33.675434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817904, 39.149235, 33.734837>,  <31.664555, 39.505161, 33.833839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817904, 39.149235, 33.734837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599493, -0.443595, 0.666207,
		-0.702591, -0.107029, -0.703499,
		0.383372, -0.889813, -0.247503,
		31.932915, 38.882290, 33.660587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114258, 39.057205, 33.863590>,  <31.664555, 39.505161, 33.833839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114258, 39.057205, 33.863590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408192, 38.786015, 33.871216>,  <31.584553, 38.623299, 33.875790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408192, 38.786015, 33.871216>,  <31.114258, 39.057205, 33.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408192, 38.786015, 33.871216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522724, -0.548202, 0.652866,
		-0.432178, -0.489713, -0.757234,
		0.734834, -0.677978, 0.019064,
		31.628643, 38.582623, 33.876934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705639, 38.430557, 33.836361>,  <31.114258, 39.057205, 33.863590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705639, 38.430557, 33.836361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073284, 38.360069, 33.977314>,  <31.293871, 38.317776, 34.061886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073284, 38.360069, 33.977314>,  <30.705639, 38.430557, 33.836361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073284, 38.360069, 33.977314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376084, -0.658971, 0.651397,
		0.117424, -0.731235, -0.671942,
		0.919115, -0.176217, 0.352385,
		31.349018, 38.307205, 34.083031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842096, 37.605877, 33.839935>,  <30.705639, 38.430557, 33.836361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842096, 37.605877, 33.839935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086506, 37.784176, 34.101608>,  <31.233152, 37.891155, 34.258614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086506, 37.784176, 34.101608>,  <30.842096, 37.605877, 33.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086506, 37.784176, 34.101608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297451, -0.636550, 0.711566,
		0.733601, -0.629373, -0.256359,
		0.611026, 0.445751, 0.654181,
		31.269814, 37.917900, 34.297863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112383, 37.044033, 34.212517>,  <30.842096, 37.605877, 33.839935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112383, 37.044033, 34.212517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212038, 37.355938, 34.442261>,  <31.271832, 37.543083, 34.580109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212038, 37.355938, 34.442261>,  <31.112383, 37.044033, 34.212517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212038, 37.355938, 34.442261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071412, -0.576659, 0.813858,
		0.965832, -0.243778, -0.087983,
		0.249137, 0.779767, 0.574364,
		31.286779, 37.589867, 34.614571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514948, 36.656418, 34.612637>,  <31.112383, 37.044033, 34.212517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514948, 36.656418, 34.612637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382732, 36.993626, 34.782372>,  <31.303404, 37.195950, 34.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382732, 36.993626, 34.782372>,  <31.514948, 36.656418, 34.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382732, 36.993626, 34.782372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134032, -0.486978, 0.863069,
		0.934227, 0.228404, 0.273957,
		-0.330539, 0.843021, 0.424334,
		31.283571, 37.246532, 34.909672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850401, 36.747192, 35.218983>,  <31.514948, 36.656418, 34.612637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850401, 36.747192, 35.218983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514488, 36.954559, 35.283501>,  <31.312941, 37.078979, 35.322212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514488, 36.954559, 35.283501>,  <31.850401, 36.747192, 35.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514488, 36.954559, 35.283501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160878, -0.521354, 0.838039,
		0.518544, 0.677819, 0.521224,
		-0.839780, 0.518413, 0.161299,
		31.262554, 37.110085, 35.331890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988503, 36.869198, 35.970753>,  <31.850401, 36.747192, 35.218983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988503, 36.869198, 35.970753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602375, 36.930168, 35.885963>,  <31.370699, 36.966751, 35.835091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602375, 36.930168, 35.885963>,  <31.988503, 36.869198, 35.970753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602375, 36.930168, 35.885963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259574, -0.473191, 0.841850,
		0.028014, 0.867674, 0.496344,
		-0.965317, 0.152422, -0.211969,
		31.312780, 36.975895, 35.822372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737623, 37.040939, 36.540596>,  <31.988503, 36.869198, 35.970753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737623, 37.040939, 36.540596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411556, 36.934883, 36.334602>,  <31.215916, 36.871250, 36.211006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411556, 36.934883, 36.334602>,  <31.737623, 37.040939, 36.540596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411556, 36.934883, 36.334602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327938, -0.521604, 0.787646,
		-0.477451, 0.810944, 0.338246,
		-0.815167, -0.265139, -0.514980,
		31.167006, 36.855343, 36.180107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200508, 37.223698, 36.927059>,  <31.737623, 37.040939, 36.540596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200508, 37.223698, 36.927059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053900, 36.939953, 36.686237>,  <30.965935, 36.769707, 36.541744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053900, 36.939953, 36.686237>,  <31.200508, 37.223698, 36.927059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053900, 36.939953, 36.686237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348937, -0.495055, 0.795716,
		-0.862499, 0.501727, -0.066073,
		-0.366522, -0.709359, -0.602056,
		30.943943, 36.727146, 36.505619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469749, 37.078773, 37.150444>,  <31.200508, 37.223698, 36.927059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469749, 37.078773, 37.150444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555944, 36.749817, 36.939835>,  <30.607660, 36.552441, 36.813469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555944, 36.749817, 36.939835>,  <30.469749, 37.078773, 37.150444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555944, 36.749817, 36.939835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679628, -0.513480, 0.523874,
		-0.701193, 0.244955, -0.669571,
		0.215486, -0.822396, -0.526527,
		30.620590, 36.503098, 36.781876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766016, 36.597630, 37.057186>,  <30.469749, 37.078773, 37.150444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766016, 36.597630, 37.057186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087427, 36.363113, 37.015995>,  <30.280273, 36.222404, 36.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087427, 36.363113, 37.015995>,  <29.766016, 36.597630, 37.057186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087427, 36.363113, 37.015995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484060, -0.744246, 0.460199,
		-0.346451, -0.319936, -0.881823,
		0.803528, -0.586292, -0.102977,
		30.328485, 36.187225, 36.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535841, 35.905975, 36.833725>,  <29.766016, 36.597630, 37.057186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535841, 35.905975, 36.833725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885841, 35.890106, 37.026722>,  <30.095842, 35.880585, 37.142521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885841, 35.890106, 37.026722>,  <29.535841, 35.905975, 36.833725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885841, 35.890106, 37.026722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425464, -0.538525, 0.727304,
		0.230980, -0.841675, -0.488090,
		0.875002, -0.039672, 0.482490,
		30.148342, 35.878204, 37.171471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871777, 35.195232, 36.876225>,  <29.535841, 35.905975, 36.833725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871777, 35.195232, 36.876225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977631, 35.416370, 37.192280>,  <30.041143, 35.549053, 37.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977631, 35.416370, 37.192280>,  <29.871777, 35.195232, 36.876225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977631, 35.416370, 37.192280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380929, -0.692792, 0.612317,
		0.885924, -0.463029, 0.027259,
		0.264636, 0.552850, 0.790142,
		30.057022, 35.582226, 37.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379364, 34.952263, 37.335163>,  <29.871777, 35.195232, 36.876225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379364, 34.952263, 37.335163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099834, 35.180504, 37.507702>,  <29.932117, 35.317448, 37.611225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099834, 35.180504, 37.507702>,  <30.379364, 34.952263, 37.335163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099834, 35.180504, 37.507702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331486, -0.792715, 0.511586,
		0.633847, 0.214523, 0.743114,
		-0.698824, 0.570599, 0.431349,
		29.890186, 35.351685, 37.637108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512997, 35.122616, 38.096184>,  <30.379364, 34.952263, 37.335163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512997, 35.122616, 38.096184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159006, 35.078751, 37.915169>,  <29.946611, 35.052433, 37.806561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159006, 35.078751, 37.915169>,  <30.512997, 35.122616, 38.096184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159006, 35.078751, 37.915169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184114, -0.810262, 0.556397,
		-0.427692, 0.575716, 0.696871,
		-0.884975, -0.109663, -0.452540,
		29.893513, 35.045853, 37.779408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864737, 34.501301, 37.853565>,  <30.512997, 35.122616, 38.096184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864737, 34.501301, 37.853565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008022, 34.799931, 37.629311>,  <31.093994, 34.979107, 37.494759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008022, 34.799931, 37.629311>,  <30.864737, 34.501301, 37.853565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008022, 34.799931, 37.629311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687849, -0.617065, -0.382222,
		-0.631305, -0.248715, -0.734571,
		0.358214, 0.746573, -0.560634,
		31.115486, 35.023903, 37.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803833, 34.303577, 37.057232>,  <30.864737, 34.501301, 37.853565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803833, 34.303577, 37.057232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092812, 34.561218, 37.157799>,  <31.266199, 34.715801, 37.218140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092812, 34.561218, 37.157799>,  <30.803833, 34.303577, 37.057232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092812, 34.561218, 37.157799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676628, -0.583750, -0.448789,
		-0.142301, 0.494340, -0.857542,
		0.722444, 0.644100, 0.251416,
		31.309546, 34.754448, 37.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004078, 33.752556, 37.504848>,  <30.803833, 34.303577, 37.057232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004078, 33.752556, 37.504848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161646, 33.650707, 37.151581>,  <31.256187, 33.589596, 36.939621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161646, 33.650707, 37.151581>,  <31.004078, 33.752556, 37.504848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161646, 33.650707, 37.151581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751384, -0.464206, 0.468971,
		-0.529385, -0.848340, 0.008461,
		0.393920, -0.254624, -0.883173,
		31.279821, 33.574322, 36.886627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125486, 33.134487, 37.460838>,  <31.004078, 33.752556, 37.504848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125486, 33.134487, 37.460838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396606, 33.253975, 37.192108>,  <31.559278, 33.325668, 37.030869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396606, 33.253975, 37.192108>,  <31.125486, 33.134487, 37.460838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396606, 33.253975, 37.192108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680709, -0.600308, 0.419841,
		-0.277889, -0.741888, -0.610230,
		0.677800, 0.298720, -0.671829,
		31.599947, 33.343590, 36.990559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398336, 32.494930, 37.143616>,  <31.125486, 33.134487, 37.460838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398336, 32.494930, 37.143616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645403, 32.809505, 37.143566>,  <31.793642, 32.998253, 37.143536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645403, 32.809505, 37.143566>,  <31.398336, 32.494930, 37.143616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645403, 32.809505, 37.143566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709404, -0.557094, 0.431732,
		0.339463, -0.266753, -0.902002,
		0.617665, 0.786441, -0.000124,
		31.830702, 33.045437, 37.143528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011915, 31.981684, 37.362621>,  <31.398336, 32.494930, 37.143616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011915, 31.981684, 37.362621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815535, 32.257710, 37.149914>,  <30.697706, 32.423325, 37.022289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815535, 32.257710, 37.149914>,  <31.011915, 31.981684, 37.362621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815535, 32.257710, 37.149914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767083, -0.631764, -0.111619,
		-0.412975, 0.353109, 0.839503,
		-0.490954, 0.690064, -0.531767,
		30.668249, 32.464729, 36.990383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523773, 31.620483, 37.757702>,  <31.011915, 31.981684, 37.362621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523773, 31.620483, 37.757702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309454, 31.490856, 38.069572>,  <30.180862, 31.413080, 38.256695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309454, 31.490856, 38.069572>,  <30.523773, 31.620483, 37.757702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309454, 31.490856, 38.069572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484437, 0.638321, 0.598220,
		-0.691550, 0.698231, -0.185020,
		-0.535797, -0.324069, 0.779680,
		30.148714, 31.393635, 38.303478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114639, 32.081207, 38.007240>,  <30.523773, 31.620483, 37.757702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114639, 32.081207, 38.007240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227858, 31.854343, 38.316620>,  <30.295788, 31.718225, 38.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227858, 31.854343, 38.316620>,  <30.114639, 32.081207, 38.007240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227858, 31.854343, 38.316620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445664, 0.791850, 0.417561,
		-0.849276, 0.226509, 0.476890,
		0.283044, -0.567158, 0.773446,
		30.312771, 31.684196, 38.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996300, 32.494659, 38.637077>,  <30.114639, 32.081207, 38.007240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996300, 32.494659, 38.637077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277195, 32.219448, 38.710266>,  <30.445732, 32.054321, 38.754181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277195, 32.219448, 38.710266>,  <29.996300, 32.494659, 38.637077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277195, 32.219448, 38.710266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610484, 0.714164, 0.342461,
		-0.366297, -0.128784, 0.921543,
		0.702236, -0.688030, 0.182975,
		30.487865, 32.013039, 38.765160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240892, 32.570747, 39.357433>,  <29.996300, 32.494659, 38.637077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240892, 32.570747, 39.357433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522182, 32.393459, 39.135071>,  <30.690956, 32.287086, 39.001656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522182, 32.393459, 39.135071>,  <30.240892, 32.570747, 39.357433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522182, 32.393459, 39.135071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698678, 0.575562, 0.424945,
		0.131612, -0.687229, 0.714419,
		0.703227, -0.443221, -0.555903,
		30.733150, 32.260494, 38.968300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567339, 32.243481, 39.840225>,  <30.240892, 32.570747, 39.357433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567339, 32.243481, 39.840225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768829, 32.344555, 39.509792>,  <30.889725, 32.405201, 39.311535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768829, 32.344555, 39.509792>,  <30.567339, 32.243481, 39.840225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768829, 32.344555, 39.509792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737052, 0.373050, 0.563550,
		0.450570, -0.892739, 0.001673,
		0.503727, 0.252686, -0.826081,
		30.919947, 32.420361, 39.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171654, 32.322895, 40.439316>,  <30.567339, 32.243481, 39.840225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171654, 32.322895, 40.439316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356112, 32.203995, 40.773739>,  <31.466785, 32.132656, 40.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356112, 32.203995, 40.773739>,  <31.171654, 32.322895, 40.439316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356112, 32.203995, 40.773739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668679, 0.735780, -0.107224,
		-0.583281, 0.608498, 0.538065,
		0.461143, -0.297251, 0.836056,
		31.494455, 32.114819, 41.024555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544569, 32.845215, 40.769547>,  <31.171654, 32.322895, 40.439316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544569, 32.845215, 40.769547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759096, 32.552113, 40.937088>,  <31.887814, 32.376251, 41.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759096, 32.552113, 40.937088>,  <31.544569, 32.845215, 40.769547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759096, 32.552113, 40.937088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736374, 0.648746, 0.192046,
		-0.412449, 0.205432, 0.887515,
		0.536320, -0.732752, 0.418850,
		31.919992, 32.332287, 41.062744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652941, 33.014809, 41.415462>,  <31.544569, 32.845215, 40.769547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652941, 33.014809, 41.415462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960440, 32.768341, 41.346916>,  <32.144939, 32.620461, 41.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960440, 32.768341, 41.346916>,  <31.652941, 33.014809, 41.415462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960440, 32.768341, 41.346916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632617, 0.693254, 0.345246,
		-0.093929, -0.373816, 0.922735,
		0.768748, -0.616166, -0.171365,
		32.191063, 32.583492, 41.295506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080330, 33.084404, 41.881939>,  <31.652941, 33.014809, 41.415462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080330, 33.084404, 41.881939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318058, 32.996403, 41.572517>,  <32.460693, 32.943600, 41.386864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318058, 32.996403, 41.572517>,  <32.080330, 33.084404, 41.881939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318058, 32.996403, 41.572517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673501, 0.661825, 0.329217,
		0.439527, -0.716648, 0.541509,
		0.594317, -0.220007, -0.773553,
		32.496353, 32.930401, 41.340450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765709, 32.826168, 42.110302>,  <32.080330, 33.084404, 41.881939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765709, 32.826168, 42.110302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796402, 32.985298, 41.744602>,  <32.814819, 33.080776, 41.525185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796402, 32.985298, 41.744602>,  <32.765709, 32.826168, 42.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796402, 32.985298, 41.744602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665257, 0.662569, 0.344145,
		0.742661, -0.634616, -0.213816,
		0.076732, 0.397825, -0.914247,
		32.819420, 33.104645, 41.470329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457546, 32.812588, 41.642513>,  <32.765709, 32.826168, 42.110302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457546, 32.812588, 41.642513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237881, 33.144714, 41.604584>,  <33.106083, 33.343990, 41.581825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237881, 33.144714, 41.604584>,  <33.457546, 32.812588, 41.642513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237881, 33.144714, 41.604584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742402, 0.536799, 0.400856,
		0.383741, 0.149737, -0.911220,
		-0.549165, 0.830317, -0.094827,
		33.073132, 33.393810, 41.576138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799393, 33.400955, 41.173828>,  <33.457546, 32.812588, 41.642513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799393, 33.400955, 41.173828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564312, 33.525043, 41.472725>,  <33.423264, 33.599499, 41.652061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564312, 33.525043, 41.472725>,  <33.799393, 33.400955, 41.173828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564312, 33.525043, 41.472725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732834, 0.595498, 0.329145,
		-0.342870, 0.741042, -0.577319,
		-0.587702, 0.310225, 0.747239,
		33.388000, 33.618111, 41.696896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887772, 34.126251, 41.087643>,  <33.799393, 33.400955, 41.173828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887772, 34.126251, 41.087643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 33.982731, 41.447300>,  <33.727371, 33.896618, 41.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 33.982731, 41.447300>,  <33.887772, 34.126251, 41.087643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787521, 33.982731, 41.447300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642260, 0.633322, 0.431748,
		-0.724355, 0.685687, 0.071717,
		-0.250624, -0.358800, 0.899139,
		33.712334, 33.875092, 41.717041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639698, 34.680477, 41.603832>,  <33.887772, 34.126251, 41.087643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639698, 34.680477, 41.603832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819641, 34.386513, 41.806824>,  <33.927608, 34.210136, 41.928619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819641, 34.386513, 41.806824>,  <33.639698, 34.680477, 41.603832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819641, 34.386513, 41.806824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761403, 0.612580, 0.212156,
		-0.466786, 0.290955, 0.835138,
		0.449862, -0.734908, 0.507478,
		33.954601, 34.166039, 41.959068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709797, 34.845730, 42.392090>,  <33.639698, 34.680477, 41.603832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709797, 34.845730, 42.392090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996529, 34.612377, 42.239342>,  <34.168568, 34.472366, 42.147694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996529, 34.612377, 42.239342>,  <33.709797, 34.845730, 42.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996529, 34.612377, 42.239342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683492, 0.696187, 0.219460,
		0.137828, -0.418323, 0.897780,
		0.716828, -0.583378, -0.381875,
		34.211578, 34.437363, 42.124779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256256, 35.147133, 42.674458>,  <33.709797, 34.845730, 42.392090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256256, 35.147133, 42.674458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461906, 34.925018, 42.412975>,  <34.585297, 34.791752, 42.256084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461906, 34.925018, 42.412975>,  <34.256256, 35.147133, 42.674458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461906, 34.925018, 42.412975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753792, 0.656154, 0.035483,
		0.409229, -0.511002, 0.755915,
		0.514129, -0.555283, -0.653707,
		34.616146, 34.758434, 42.216862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897446, 35.297802, 43.125507>,  <34.256256, 35.147133, 42.674458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897446, 35.297802, 43.125507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292061, 35.315563, 43.188457>,  <35.528831, 35.326221, 43.226227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292061, 35.315563, 43.188457>,  <34.897446, 35.297802, 43.125507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292061, 35.315563, 43.188457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160124, -0.067089, -0.984814,
		-0.033171, 0.996758, -0.073296,
		0.986539, 0.044404, 0.157380,
		35.588024, 35.328884, 43.235672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057796, 35.761410, 42.580135>,  <34.897446, 35.297802, 43.125507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057796, 35.761410, 42.580135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356236, 35.533276, 42.717571>,  <35.535297, 35.396393, 42.800034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356236, 35.533276, 42.717571>,  <35.057796, 35.761410, 42.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356236, 35.533276, 42.717571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442438, 0.039026, -0.895949,
		0.497584, 0.820483, 0.281456,
		0.746096, -0.570337, 0.343594,
		35.580063, 35.362175, 42.820648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733147, 35.935814, 42.338966>,  <35.057796, 35.761410, 42.580135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733147, 35.935814, 42.338966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790321, 35.544739, 42.400543>,  <35.824627, 35.310093, 42.437489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790321, 35.544739, 42.400543>,  <35.733147, 35.935814, 42.338966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790321, 35.544739, 42.400543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355972, -0.094347, -0.929722,
		0.923501, 0.187689, 0.334543,
		0.142935, -0.977687, 0.153941,
		35.833202, 35.251434, 42.446724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437538, 35.835190, 42.280125>,  <35.733147, 35.935814, 42.338966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437538, 35.835190, 42.280125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236820, 35.501919, 42.187164>,  <36.116390, 35.301956, 42.131390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236820, 35.501919, 42.187164>,  <36.437538, 35.835190, 42.280125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236820, 35.501919, 42.187164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494957, -0.056235, -0.867096,
		0.709378, -0.550135, 0.440607,
		-0.501797, -0.833180, -0.232401,
		36.086281, 35.251965, 42.117443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966732, 35.394455, 42.076572>,  <36.437538, 35.835190, 42.280125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966732, 35.394455, 42.076572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632366, 35.309647, 41.874073>,  <36.431747, 35.258762, 41.752575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632366, 35.309647, 41.874073>,  <36.966732, 35.394455, 42.076572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632366, 35.309647, 41.874073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535574, -0.113437, -0.836835,
		0.120000, -0.970659, 0.208377,
		-0.835919, -0.212021, -0.506248,
		36.381592, 35.246040, 41.722198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954746, 34.715160, 41.783520>,  <36.966732, 35.394455, 42.076572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954746, 34.715160, 41.783520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759251, 34.988377, 41.566414>,  <36.641953, 35.152306, 41.436150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759251, 34.988377, 41.566414>,  <36.954746, 34.715160, 41.783520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759251, 34.988377, 41.566414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601538, -0.186778, -0.776702,
		-0.631893, -0.706098, -0.319587,
		-0.488736, 0.683037, -0.542769,
		36.612629, 35.193287, 41.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516949, 34.467400, 41.209362>,  <36.954746, 34.715160, 41.783520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516949, 34.467400, 41.209362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678699, 34.825687, 41.135422>,  <36.775749, 35.040661, 41.091057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678699, 34.825687, 41.135422>,  <36.516949, 34.467400, 41.209362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678699, 34.825687, 41.135422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514416, -0.389858, -0.763798,
		-0.756212, 0.213773, -0.618421,
		0.404375, 0.895719, -0.184847,
		36.800011, 35.094402, 41.079967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647781, 34.512890, 40.553329>,  <36.516949, 34.467400, 41.209362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647781, 34.512890, 40.553329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913933, 34.776470, 40.693642>,  <37.073624, 34.934620, 40.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913933, 34.776470, 40.693642>,  <36.647781, 34.512890, 40.553329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913933, 34.776470, 40.693642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731102, -0.480276, -0.484588,
		-0.150848, 0.578894, -0.801328,
		0.665383, 0.658952, 0.350782,
		37.113548, 34.974155, 40.798878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059925, 34.004757, 40.839413>,  <36.647781, 34.512890, 40.553329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059925, 34.004757, 40.839413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184387, 33.692451, 40.622677>,  <37.259064, 33.505066, 40.492634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184387, 33.692451, 40.622677>,  <37.059925, 34.004757, 40.839413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184387, 33.692451, 40.622677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118537, 0.533804, -0.837259,
		0.942939, 0.324742, 0.073544,
		0.311151, -0.780767, -0.541838,
		37.277733, 33.458221, 40.460125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663616, 34.001629, 40.328926>,  <37.059925, 34.004757, 40.839413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663616, 34.001629, 40.328926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342941, 33.782822, 40.232533>,  <37.150536, 33.651535, 40.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342941, 33.782822, 40.232533>,  <37.663616, 34.001629, 40.328926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342941, 33.782822, 40.232533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197542, 0.622953, -0.756906,
		0.564163, -0.559195, -0.607471,
		-0.801684, -0.547020, -0.240982,
		37.102436, 33.618717, 40.160236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768841, 33.605358, 39.722622>,  <37.663616, 34.001629, 40.328926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768841, 33.605358, 39.722622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 33.746407, 39.793766>,  <37.180866, 33.831036, 39.836452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 33.746407, 39.793766>,  <37.768841, 33.605358, 39.722622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401356, 33.746407, 39.793766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103162, 0.648984, -0.753776,
		-0.381222, -0.674153, -0.632604,
		-0.918710, 0.352617, 0.177860,
		37.125744, 33.852192, 39.847122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350807, 33.718502, 39.140728>,  <37.768841, 33.605358, 39.722622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350807, 33.718502, 39.140728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181187, 33.971008, 39.400475>,  <37.079414, 34.122513, 39.556324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181187, 33.971008, 39.400475>,  <37.350807, 33.718502, 39.140728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181187, 33.971008, 39.400475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278413, 0.773174, -0.569814,
		-0.861783, -0.060835, -0.503616,
		-0.424047, 0.631269, 0.649371,
		37.053974, 34.160389, 39.595287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881016, 34.145542, 38.779602>,  <37.350807, 33.718502, 39.140728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881016, 34.145542, 38.779602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052208, 34.327415, 39.092033>,  <37.154922, 34.436539, 39.279491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052208, 34.327415, 39.092033>,  <36.881016, 34.145542, 38.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052208, 34.327415, 39.092033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242834, 0.774602, -0.583972,
		-0.870553, 0.439604, 0.221103,
		0.427983, 0.454687, 0.781083,
		37.180603, 34.463821, 39.326359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564095, 34.791550, 38.836937>,  <36.881016, 34.145542, 38.779602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564095, 34.791550, 38.836937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941372, 34.785442, 38.969700>,  <37.167736, 34.781780, 39.049358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941372, 34.785442, 38.969700>,  <36.564095, 34.791550, 38.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941372, 34.785442, 38.969700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237412, 0.729815, -0.641097,
		-0.232443, 0.683475, 0.691977,
		0.943189, -0.015265, 0.331906,
		37.224327, 34.780861, 39.069271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807434, 35.442097, 38.970745>,  <36.564095, 34.791550, 38.836937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807434, 35.442097, 38.970745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156296, 35.253078, 38.920074>,  <37.365612, 35.139668, 38.889671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156296, 35.253078, 38.920074>,  <36.807434, 35.442097, 38.970745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156296, 35.253078, 38.920074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310795, 0.735123, -0.602495,
		0.377828, 0.486099, 0.788006,
		0.872154, -0.472548, -0.126673,
		37.417942, 35.111313, 38.882072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386021, 35.885048, 39.078117>,  <36.807434, 35.442097, 38.970745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386021, 35.885048, 39.078117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492676, 35.609512, 38.808479>,  <37.556667, 35.444191, 38.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492676, 35.609512, 38.808479>,  <37.386021, 35.885048, 39.078117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492676, 35.609512, 38.808479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061030, 0.710080, -0.701471,
		0.961863, 0.145898, 0.231374,
		0.266637, -0.688840, -0.674095,
		37.572666, 35.402859, 38.606251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842278, 36.134403, 38.549305>,  <37.386021, 35.885048, 39.078117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842278, 36.134403, 38.549305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732948, 35.798363, 38.361889>,  <37.667351, 35.596737, 38.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732948, 35.798363, 38.361889>,  <37.842278, 36.134403, 38.549305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732948, 35.798363, 38.361889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436361, 0.325797, -0.838716,
		0.857254, -0.433690, 0.277540,
		-0.273322, -0.840100, -0.468536,
		37.650951, 35.546333, 38.221329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460060, 35.853390, 38.137760>,  <37.842278, 36.134403, 38.549305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460060, 35.853390, 38.137760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135204, 35.676399, 37.985626>,  <37.940292, 35.570206, 37.894344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135204, 35.676399, 37.985626>,  <38.460060, 35.853390, 38.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135204, 35.676399, 37.985626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305911, 0.232169, -0.923318,
		0.496845, -0.866207, -0.053195,
		-0.812135, -0.442473, -0.380334,
		37.891563, 35.543655, 37.871525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668427, 35.458652, 37.542873>,  <38.460060, 35.853390, 38.137760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668427, 35.458652, 37.542873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278595, 35.532310, 37.491825>,  <38.044697, 35.576504, 37.461197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278595, 35.532310, 37.491825>,  <38.668427, 35.458652, 37.542873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278595, 35.532310, 37.491825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196698, 0.430526, -0.880884,
		-0.107266, -0.883594, -0.455802,
		-0.974579, 0.184144, -0.127620,
		37.986221, 35.587555, 37.453541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893497, 34.946983, 38.101879>,  <38.668427, 35.458652, 37.542873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893497, 34.946983, 38.101879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895325, 34.561821, 37.993958>,  <38.896420, 34.330723, 37.929203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895325, 34.561821, 37.993958>,  <38.893497, 34.946983, 38.101879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895325, 34.561821, 37.993958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580366, 0.222273, -0.783434,
		0.814343, -0.153008, 0.559852,
		0.004568, -0.962904, -0.269807,
		38.896694, 34.272949, 37.913017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653137, 34.625015, 38.117325>,  <38.893497, 34.946983, 38.101879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653137, 34.625015, 38.117325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385853, 34.488167, 37.853069>,  <39.225483, 34.406059, 37.694515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385853, 34.488167, 37.853069>,  <39.653137, 34.625015, 38.117325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385853, 34.488167, 37.853069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640540, 0.187117, -0.744779,
		0.378420, -0.920838, 0.094106,
		-0.668212, -0.342118, -0.660642,
		39.185390, 34.385532, 37.654877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788631, 35.277142, 37.616016>,  <39.653137, 34.625015, 38.117325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788631, 35.277142, 37.616016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870388, 34.964245, 37.380619>,  <39.919441, 34.776508, 37.239380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870388, 34.964245, 37.380619>,  <39.788631, 35.277142, 37.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870388, 34.964245, 37.380619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582042, 0.580483, -0.569444,
		0.787053, -0.226142, 0.573940,
		0.204387, -0.782239, -0.588496,
		39.931705, 34.729572, 37.204071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463055, 34.855831, 37.715473>,  <39.788631, 35.277142, 37.616016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463055, 34.855831, 37.715473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307739, 34.934719, 37.355396>,  <40.214550, 34.982052, 37.139351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307739, 34.934719, 37.355396>,  <40.463055, 34.855831, 37.715473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307739, 34.934719, 37.355396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797414, 0.561536, -0.220926,
		0.461916, -0.803604, -0.375305,
		-0.388285, 0.197224, -0.900188,
		40.191254, 34.993885, 37.085339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870159, 34.717201, 37.003819>,  <40.463055, 34.855831, 37.715473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870159, 34.717201, 37.003819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615597, 35.025654, 37.011230>,  <40.462860, 35.210724, 37.015678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615597, 35.025654, 37.011230>,  <40.870159, 34.717201, 37.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615597, 35.025654, 37.011230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767342, 0.635365, -0.086587,
		-0.078544, -0.040885, -0.996072,
		-0.636410, 0.771129, 0.018531,
		40.424675, 35.256992, 37.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842243, 33.981308, 36.708897>,  <40.870159, 34.717201, 37.003819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842243, 33.981308, 36.708897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033604, 33.814671, 37.018112>,  <41.148418, 33.714687, 37.203640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033604, 33.814671, 37.018112>,  <40.842243, 33.981308, 36.708897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033604, 33.814671, 37.018112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431836, -0.654903, -0.620177,
		0.764624, 0.630517, -0.133407,
		0.478401, -0.416592, 0.773035,
		41.177124, 33.689693, 37.250023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538422, 33.962639, 36.581078>,  <40.842243, 33.981308, 36.708897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538422, 33.962639, 36.581078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420696, 33.658310, 36.812435>,  <41.350063, 33.475712, 36.951248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420696, 33.658310, 36.812435>,  <41.538422, 33.962639, 36.581078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420696, 33.658310, 36.812435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393644, -0.647978, -0.652050,
		0.870877, 0.035776, 0.490198,
		-0.294309, -0.760818, 0.578392,
		41.332405, 33.430065, 36.985954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082844, 33.541775, 36.874477>,  <41.538422, 33.962639, 36.581078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082844, 33.541775, 36.874477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760323, 33.307980, 36.838158>,  <41.566811, 33.167702, 36.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760323, 33.307980, 36.838158>,  <42.082844, 33.541775, 36.874477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760323, 33.307980, 36.838158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508184, -0.605976, -0.611999,
		0.302685, -0.539600, 0.785629,
		-0.806307, -0.584487, -0.090797,
		41.518429, 33.132633, 36.810917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781021, 33.336922, 36.749714>,  <42.082844, 33.541775, 36.874477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781021, 33.336922, 36.749714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604408, 33.447376, 36.408234>,  <42.498440, 33.513649, 36.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604408, 33.447376, 36.408234>,  <42.781021, 33.336922, 36.749714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604408, 33.447376, 36.408234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771458, 0.602673, -0.204054,
		0.458154, -0.748688, -0.479127,
		-0.441529, 0.276138, -0.853698,
		42.471951, 33.530216, 36.152122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096844, 33.310345, 36.018803>,  <42.781021, 33.336922, 36.749714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096844, 33.310345, 36.018803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878990, 33.645691, 36.009678>,  <42.748276, 33.846897, 36.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878990, 33.645691, 36.009678>,  <43.096844, 33.310345, 36.018803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878990, 33.645691, 36.009678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802809, 0.513288, -0.303369,
		-0.242624, -0.183538, -0.952600,
		-0.544638, 0.838361, -0.022810,
		42.715599, 33.897198, 36.002834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062092, 33.643021, 35.410034>,  <43.096844, 33.310345, 36.018803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062092, 33.643021, 35.410034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028976, 33.915192, 35.701283>,  <43.009106, 34.078495, 35.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028976, 33.915192, 35.701283>,  <43.062092, 33.643021, 35.410034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028976, 33.915192, 35.701283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812594, 0.469061, -0.345938,
		-0.576920, 0.563027, -0.591747,
		-0.082792, 0.680428, 0.728123,
		43.004139, 34.119320, 35.919720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348339, 34.218586, 35.100246>,  <43.062092, 33.643021, 35.410034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348339, 34.218586, 35.100246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389626, 34.297760, 35.490154>,  <43.414398, 34.345264, 35.724098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389626, 34.297760, 35.490154>,  <43.348339, 34.218586, 35.100246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389626, 34.297760, 35.490154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915082, 0.365194, -0.171051,
		-0.389836, 0.909645, -0.143433,
		0.103215, 0.197935, 0.974766,
		43.420589, 34.357140, 35.782585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628666, 34.843430, 35.122036>,  <43.348339, 34.218586, 35.100246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628666, 34.843430, 35.122036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704918, 34.712032, 35.492065>,  <43.750668, 34.633194, 35.714081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704918, 34.712032, 35.492065>,  <43.628666, 34.843430, 35.122036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704918, 34.712032, 35.492065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928809, 0.365394, -0.061645,
		-0.317765, 0.870964, 0.374762,
		0.190626, -0.328494, 0.925069,
		43.762104, 34.613483, 35.769585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944027, 35.318913, 35.555656>,  <43.628666, 34.843430, 35.122036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944027, 35.318913, 35.555656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079769, 34.952847, 35.642654>,  <44.161213, 34.733208, 35.694855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079769, 34.952847, 35.642654>,  <43.944027, 35.318913, 35.555656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079769, 34.952847, 35.642654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932275, 0.358018, 0.051833,
		-0.125303, 0.185176, 0.974684,
		0.339356, -0.915168, 0.217496,
		44.181576, 34.678295, 35.707905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593910, 35.393173, 35.986938>,  <43.944027, 35.318913, 35.555656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593910, 35.393173, 35.986938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627415, 35.016651, 35.856140>,  <44.647518, 34.790737, 35.777660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627415, 35.016651, 35.856140>,  <44.593910, 35.393173, 35.986938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627415, 35.016651, 35.856140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995932, 0.068143, 0.058956,
		-0.033213, -0.330603, 0.943185,
		0.083762, -0.941307, -0.326995,
		44.652542, 34.734261, 35.758041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194500, 35.086498, 36.326126>,  <44.593910, 35.393173, 35.986938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194500, 35.086498, 36.326126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173325, 34.841656, 36.010529>,  <45.160618, 34.694748, 35.821171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173325, 34.841656, 36.010529>,  <45.194500, 35.086498, 36.326126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173325, 34.841656, 36.010529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991367, 0.062693, -0.115159,
		0.119955, -0.788283, 0.603507,
		-0.052942, -0.612111, -0.788998,
		45.157440, 34.658024, 35.773830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675121, 34.471565, 36.448261>,  <45.194500, 35.086498, 36.326126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675121, 34.471565, 36.448261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588158, 34.526691, 36.061741>,  <45.535980, 34.559769, 35.829826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588158, 34.526691, 36.061741>,  <45.675121, 34.471565, 36.448261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588158, 34.526691, 36.061741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968681, -0.091211, -0.230949,
		-0.119966, -0.986249, -0.113671,
		-0.217405, 0.137817, -0.966303,
		45.522938, 34.568035, 35.771851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821053, 33.853107, 35.954304>,  <45.675121, 34.471565, 36.448261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821053, 33.853107, 35.954304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883511, 34.213860, 35.793198>,  <45.920986, 34.430313, 35.696533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883511, 34.213860, 35.793198>,  <45.821053, 33.853107, 35.954304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883511, 34.213860, 35.793198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973350, -0.209834, -0.092515,
		-0.167952, -0.377590, -0.910614,
		0.156145, 0.901884, -0.402769,
		45.930355, 34.484425, 35.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274612, 33.811073, 35.460594>,  <45.821053, 33.853107, 35.954304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274612, 33.811073, 35.460594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289421, 34.200920, 35.548912>,  <46.298306, 34.434830, 35.601902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289421, 34.200920, 35.548912>,  <46.274612, 33.811073, 35.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289421, 34.200920, 35.548912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998183, -0.046581, 0.038235,
		0.047550, 0.218976, -0.974571,
		0.037024, 0.974618, 0.220793,
		46.300529, 34.493305, 35.615150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888420, 34.078873, 35.132748>,  <46.274612, 33.811073, 35.460594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888420, 34.078873, 35.132748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802231, 34.342415, 35.421047>,  <46.750519, 34.500542, 35.594028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802231, 34.342415, 35.421047>,  <46.888420, 34.078873, 35.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802231, 34.342415, 35.421047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965005, 0.030697, 0.260429,
		0.149461, 0.751642, -0.642415,
		-0.215469, 0.658857, 0.720750,
		46.737591, 34.540073, 35.637272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290928, 34.510189, 34.972000>,  <46.888420, 34.078873, 35.132748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290928, 34.510189, 34.972000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203484, 34.543667, 35.360886>,  <47.151016, 34.563751, 35.594219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203484, 34.543667, 35.360886>,  <47.290928, 34.510189, 34.972000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203484, 34.543667, 35.360886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971105, 0.116414, 0.208335,
		-0.095744, 0.989668, -0.106723,
		-0.218607, 0.083692, 0.972217,
		47.137901, 34.568775, 35.652550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859482, 35.124046, 35.169239>,  <47.290928, 34.510189, 34.972000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859482, 35.124046, 35.169239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547604, 35.099644, 34.919964>,  <47.360477, 35.085003, 34.770401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547604, 35.099644, 34.919964>,  <47.859482, 35.124046, 35.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547604, 35.099644, 34.919964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576631, 0.457905, 0.676623,
		0.244081, 0.886905, -0.392203,
		-0.779693, -0.061006, -0.623184,
		47.313694, 35.081341, 34.733009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.160160, 39.860302, 31.787670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956661, 39.737827, 31.465818>,  <38.834564, 39.664345, 31.272707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956661, 39.737827, 31.465818>,  <39.160160, 39.860302, 31.787670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956661, 39.737827, 31.465818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071965, -0.916225, 0.394149,
		-0.857904, 0.258427, 0.444091,
		-0.508745, -0.306183, -0.804630,
		38.804039, 39.645973, 31.224430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482029, 39.864380, 32.041275>,  <39.160160, 39.860302, 31.787670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482029, 39.864380, 32.041275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501205, 39.607258, 31.735464>,  <38.512711, 39.452984, 31.551977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501205, 39.607258, 31.735464>,  <38.482029, 39.864380, 32.041275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501205, 39.607258, 31.735464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614740, -0.622265, 0.484646,
		-0.787272, 0.446750, -0.424992,
		0.047942, -0.642807, -0.764526,
		38.515587, 39.414417, 31.506105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780228, 39.688736, 31.903284>,  <38.482029, 39.864380, 32.041275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780228, 39.688736, 31.903284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998001, 39.412842, 31.712347>,  <38.128666, 39.247307, 31.597786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998001, 39.412842, 31.712347>,  <37.780228, 39.688736, 31.903284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998001, 39.412842, 31.712347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646529, -0.707623, 0.285077,
		-0.534405, 0.153409, -0.831190,
		0.544436, -0.689735, -0.477341,
		38.161331, 39.205921, 31.569145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318642, 39.347023, 31.538788>,  <37.780228, 39.688736, 31.903284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318642, 39.347023, 31.538788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620953, 39.085911, 31.559484>,  <37.802338, 38.929241, 31.571903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620953, 39.085911, 31.559484>,  <37.318642, 39.347023, 31.538788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620953, 39.085911, 31.559484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650568, -0.739504, 0.172903,
		-0.074605, -0.164338, -0.983579,
		0.755775, -0.652784, 0.051743,
		37.847687, 38.890076, 31.575006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050770, 38.768673, 31.131035>,  <37.318642, 39.347023, 31.538788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050770, 38.768673, 31.131035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355324, 38.631302, 31.350979>,  <37.538055, 38.548882, 31.482946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355324, 38.631302, 31.350979>,  <37.050770, 38.768673, 31.131035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355324, 38.631302, 31.350979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518062, -0.832209, 0.197587,
		0.389744, -0.435303, -0.811548,
		0.761388, -0.343424, 0.549863,
		37.583740, 38.528275, 31.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136036, 38.056595, 30.952227>,  <37.050770, 38.768673, 31.131035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136036, 38.056595, 30.952227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302879, 38.111618, 31.311581>,  <37.402985, 38.144630, 31.527193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302879, 38.111618, 31.311581>,  <37.136036, 38.056595, 30.952227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302879, 38.111618, 31.311581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509894, -0.782844, 0.356599,
		0.752349, -0.606822, -0.256392,
		0.417108, 0.137554, 0.898387,
		37.428013, 38.152885, 31.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384804, 37.277500, 31.204700>,  <37.136036, 38.056595, 30.952227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384804, 37.277500, 31.204700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306828, 37.540794, 31.495554>,  <37.260044, 37.698772, 31.670065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306828, 37.540794, 31.495554>,  <37.384804, 37.277500, 31.204700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306828, 37.540794, 31.495554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653849, -0.639805, 0.403895,
		0.731082, -0.396701, 0.555110,
		-0.194936, 0.658238, 0.727132,
		37.248348, 37.738266, 31.713694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313560, 36.838566, 31.778578>,  <37.384804, 37.277500, 31.204700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313560, 36.838566, 31.778578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151154, 37.179264, 31.911051>,  <37.053711, 37.383682, 31.990534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151154, 37.179264, 31.911051>,  <37.313560, 36.838566, 31.778578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151154, 37.179264, 31.911051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631249, -0.523439, 0.572307,
		0.660813, 0.023309, 0.750189,
		-0.406018, 0.851744, 0.331182,
		37.029346, 37.434788, 32.010406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222706, 36.817848, 32.611069>,  <37.313560, 36.838566, 31.778578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222706, 36.817848, 32.611069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997559, 37.131374, 32.506138>,  <36.862473, 37.319492, 32.443180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997559, 37.131374, 32.506138>,  <37.222706, 36.817848, 32.611069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997559, 37.131374, 32.506138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725575, -0.316549, 0.611013,
		0.395884, 0.534254, 0.746893,
		-0.562864, 0.783817, -0.262325,
		36.828701, 37.366520, 32.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953300, 37.172749, 33.280712>,  <37.222706, 36.817848, 32.611069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953300, 37.172749, 33.280712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714249, 37.292034, 32.983013>,  <36.570816, 37.363605, 32.804394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714249, 37.292034, 32.983013>,  <36.953300, 37.172749, 33.280712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714249, 37.292034, 32.983013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791779, -0.073408, 0.606381,
		0.126195, 0.951673, 0.279986,
		-0.597630, 0.298209, -0.744251,
		36.534958, 37.381496, 32.759739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436741, 37.741131, 33.497490>,  <36.953300, 37.172749, 33.280712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436741, 37.741131, 33.497490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296684, 37.536869, 33.183384>,  <36.212650, 37.414310, 32.994923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296684, 37.536869, 33.183384>,  <36.436741, 37.741131, 33.497490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296684, 37.536869, 33.183384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916161, 0.012118, 0.400628,
		-0.195067, 0.859701, -0.472084,
		-0.350141, -0.510654, -0.785260,
		36.191643, 37.383675, 32.947807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748627, 37.943008, 33.511230>,  <36.436741, 37.741131, 33.497490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748627, 37.943008, 33.511230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737350, 37.625488, 33.268219>,  <35.730587, 37.434975, 33.122414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737350, 37.625488, 33.268219>,  <35.748627, 37.943008, 33.511230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737350, 37.625488, 33.268219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952796, -0.162465, 0.256486,
		-0.302300, 0.586078, -0.751749,
		-0.028188, -0.793799, -0.607526,
		35.728893, 37.387348, 33.085960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098572, 37.929695, 33.290527>,  <35.748627, 37.943008, 33.511230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098572, 37.929695, 33.290527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180973, 37.553371, 33.182873>,  <35.230412, 37.327576, 33.118279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180973, 37.553371, 33.182873>,  <35.098572, 37.929695, 33.290527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180973, 37.553371, 33.182873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883162, -0.297193, 0.362906,
		-0.421413, 0.162937, -0.892111,
		0.205999, -0.940812, -0.269140,
		35.242771, 37.271126, 33.102131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545246, 37.717129, 32.766033>,  <35.098572, 37.929695, 33.290527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545246, 37.717129, 32.766033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687820, 37.404385, 32.970638>,  <34.773365, 37.216736, 33.093403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687820, 37.404385, 32.970638>,  <34.545246, 37.717129, 32.766033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687820, 37.404385, 32.970638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930333, -0.347525, 0.117078,
		0.086225, -0.517608, -0.851262,
		0.356436, -0.781862, 0.511513,
		34.794750, 37.169827, 33.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103603, 37.118610, 32.611534>,  <34.545246, 37.717129, 32.766033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103603, 37.118610, 32.611534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286694, 36.967812, 32.933620>,  <34.396545, 36.877335, 33.126873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286694, 36.967812, 32.933620>,  <34.103603, 37.118610, 32.611534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286694, 36.967812, 32.933620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794308, -0.580287, 0.179837,
		0.399456, -0.721902, -0.565060,
		0.457722, -0.376995, 0.805212,
		34.424011, 36.854713, 33.175182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939289, 36.386650, 32.593521>,  <34.103603, 37.118610, 32.611534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939289, 36.386650, 32.593521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041981, 36.479530, 32.968792>,  <34.103596, 36.535259, 33.193954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041981, 36.479530, 32.968792>,  <33.939289, 36.386650, 32.593521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041981, 36.479530, 32.968792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630134, -0.695805, 0.344654,
		0.732816, -0.679659, -0.032316,
		0.256733, 0.232205, 0.938173,
		34.118999, 36.549191, 33.250244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869980, 35.793194, 32.903725>,  <33.939289, 36.386650, 32.593521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869980, 35.793194, 32.903725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926807, 36.010067, 33.234989>,  <33.960903, 36.140190, 33.433750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926807, 36.010067, 33.234989>,  <33.869980, 35.793194, 32.903725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926807, 36.010067, 33.234989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518659, -0.671831, 0.528805,
		0.843096, -0.504660, 0.185765,
		0.142064, 0.542182, 0.828164,
		33.969425, 36.172722, 33.483440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184299, 35.351242, 33.496838>,  <33.869980, 35.793194, 32.903725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184299, 35.351242, 33.496838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980999, 35.663261, 33.642826>,  <33.859020, 35.850475, 33.730419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980999, 35.663261, 33.642826>,  <34.184299, 35.351242, 33.496838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980999, 35.663261, 33.642826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610190, -0.625232, 0.486572,
		0.607742, 0.024600, 0.793754,
		-0.508250, 0.780051, 0.364969,
		33.828526, 35.897278, 33.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235371, 35.273678, 34.274380>,  <34.184299, 35.351242, 33.496838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235371, 35.273678, 34.274380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911739, 35.495090, 34.195400>,  <33.717560, 35.627937, 34.148014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911739, 35.495090, 34.195400>,  <34.235371, 35.273678, 34.274380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911739, 35.495090, 34.195400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550723, -0.596828, 0.583524,
		0.205157, 0.580858, 0.787727,
		-0.809082, 0.553534, -0.197449,
		33.669014, 35.661152, 34.136166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902618, 35.323936, 34.915077>,  <34.235371, 35.273678, 34.274380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902618, 35.323936, 34.915077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640766, 35.421646, 34.628918>,  <33.483654, 35.480270, 34.457222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640766, 35.421646, 34.628918>,  <33.902618, 35.323936, 34.915077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640766, 35.421646, 34.628918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643246, -0.677126, 0.357400,
		-0.397110, 0.694140, 0.600394,
		-0.654628, 0.244274, -0.715397,
		33.444378, 35.494930, 34.414299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201477, 35.340824, 35.232746>,  <33.902618, 35.323936, 34.915077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201477, 35.340824, 35.232746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154102, 35.307457, 34.836967>,  <33.125679, 35.287437, 34.599499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154102, 35.307457, 34.836967>,  <33.201477, 35.340824, 35.232746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154102, 35.307457, 34.836967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601131, -0.787090, 0.138315,
		-0.790326, 0.611171, 0.043072,
		-0.118436, -0.083421, -0.989451,
		33.118572, 35.282429, 34.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399403, 35.291840, 35.084846>,  <33.201477, 35.340824, 35.232746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399403, 35.291840, 35.084846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599583, 35.110012, 34.790115>,  <32.719692, 35.000916, 34.613277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599583, 35.110012, 34.790115>,  <32.399403, 35.291840, 35.084846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599583, 35.110012, 34.790115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498242, -0.847231, 0.184268,
		-0.708027, 0.274903, -0.650482,
		0.500453, -0.454565, -0.736830,
		32.749718, 34.973644, 34.569065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602024, 35.695755, 35.727066>,  <32.399403, 35.291840, 35.084846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602024, 35.695755, 35.727066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.642200, 35.763897, 36.119167>,  <32.666306, 35.804783, 36.354427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.642200, 35.763897, 36.119167>,  <32.602024, 35.695755, 35.727066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642200, 35.763897, 36.119167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613339, 0.765160, -0.195819,
		-0.783407, 0.620894, -0.027630,
		0.100441, 0.170352, 0.980251,
		32.672333, 35.815002, 36.413242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527393, 36.371342, 35.789333>,  <32.602024, 35.695755, 35.727066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527393, 36.371342, 35.789333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702667, 36.295200, 36.140736>,  <32.807831, 36.249516, 36.351578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702667, 36.295200, 36.140736>,  <32.527393, 36.371342, 35.789333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702667, 36.295200, 36.140736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563641, 0.819501, -0.103568,
		-0.700219, 0.540541, 0.466379,
		0.438181, -0.190350, 0.878501,
		32.834122, 36.238094, 36.404285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680687, 37.075634, 36.124390>,  <32.527393, 36.371342, 35.789333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680687, 37.075634, 36.124390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919380, 36.810139, 36.304775>,  <33.062595, 36.650841, 36.413006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919380, 36.810139, 36.304775>,  <32.680687, 37.075634, 36.124390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919380, 36.810139, 36.304775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767922, 0.635410, -0.080936,
		-0.232828, 0.394603, 0.888864,
		0.596730, -0.663734, 0.450965,
		33.098400, 36.611019, 36.440063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996803, 37.409451, 36.697712>,  <32.680687, 37.075634, 36.124390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996803, 37.409451, 36.697712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.236832, 37.099716, 36.617401>,  <33.380848, 36.913876, 36.569214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.236832, 37.099716, 36.617401>,  <32.996803, 37.409451, 36.697712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236832, 37.099716, 36.617401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791322, 0.611357, 0.007242,
		0.117141, -0.163227, 0.979609,
		0.600073, -0.774338, -0.200780,
		33.416855, 36.867416, 36.557167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554291, 37.626667, 37.044086>,  <32.996803, 37.409451, 36.697712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554291, 37.626667, 37.044086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.660393, 37.359203, 36.766228>,  <33.724052, 37.198727, 36.599514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.660393, 37.359203, 36.766228>,  <33.554291, 37.626667, 37.044086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660393, 37.359203, 36.766228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874637, 0.470072, -0.118502,
		0.405772, -0.576131, 0.709522,
		0.265254, -0.668659, -0.694647,
		33.739967, 37.158607, 36.557835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271500, 37.445953, 37.167309>,  <33.554291, 37.626667, 37.044086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271500, 37.445953, 37.167309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.183746, 37.392094, 36.780788>,  <34.131096, 37.359776, 36.548878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.183746, 37.392094, 36.780788>,  <34.271500, 37.445953, 37.167309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183746, 37.392094, 36.780788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849249, 0.461183, -0.257073,
		0.480258, -0.877028, 0.013178,
		-0.219383, -0.134653, -0.966302,
		34.117931, 37.351696, 36.490898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963512, 37.304432, 36.954884>,  <34.271500, 37.445953, 37.167309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963512, 37.304432, 36.954884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750954, 37.389755, 36.626953>,  <34.623417, 37.440948, 36.430195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750954, 37.389755, 36.626953>,  <34.963512, 37.304432, 36.954884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750954, 37.389755, 36.626953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844288, 0.212454, -0.491977,
		0.069230, -0.953605, -0.292994,
		-0.531399, 0.213312, -0.819825,
		34.591534, 37.453747, 36.381004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424454, 37.076515, 36.361008>,  <34.963512, 37.304432, 36.954884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424454, 37.076515, 36.361008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126957, 37.313618, 36.237400>,  <34.948460, 37.455879, 36.163235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126957, 37.313618, 36.237400>,  <35.424454, 37.076515, 36.361008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126957, 37.313618, 36.237400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645882, 0.518075, -0.560745,
		-0.172289, -0.616638, -0.768163,
		-0.743742, 0.592753, -0.309017,
		34.903835, 37.491444, 36.144695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417633, 37.111809, 35.552929>,  <35.424454, 37.076515, 36.361008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417633, 37.111809, 35.552929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221317, 37.432888, 35.688461>,  <35.103527, 37.625534, 35.769779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221317, 37.432888, 35.688461>,  <35.417633, 37.111809, 35.552929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221317, 37.432888, 35.688461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655675, 0.596367, -0.463073,
		-0.573773, -0.005109, -0.818998,
		-0.490790, 0.802695, 0.338829,
		35.074081, 37.673698, 35.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109509, 37.377472, 34.911282>,  <35.417633, 37.111809, 35.552929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109509, 37.377472, 34.911282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154308, 37.648026, 35.202477>,  <35.181187, 37.810356, 35.377193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154308, 37.648026, 35.202477>,  <35.109509, 37.377472, 34.911282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154308, 37.648026, 35.202477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562405, 0.560825, -0.607599,
		-0.819242, 0.477472, -0.317590,
		0.111999, 0.676384, 0.727984,
		35.187908, 37.850941, 35.420872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893604, 38.065536, 34.589127>,  <35.109509, 37.377472, 34.911282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893604, 38.065536, 34.589127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115170, 38.170490, 34.905186>,  <35.248108, 38.233463, 35.094822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115170, 38.170490, 34.905186>,  <34.893604, 38.065536, 34.589127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115170, 38.170490, 34.905186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507834, 0.645580, -0.570378,
		-0.659764, 0.717204, 0.224345,
		0.553910, 0.262384, 0.790151,
		35.281342, 38.249207, 35.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843060, 38.804844, 34.768486>,  <34.893604, 38.065536, 34.589127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843060, 38.804844, 34.768486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207794, 38.699043, 34.894081>,  <35.426636, 38.635563, 34.969440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207794, 38.699043, 34.894081>,  <34.843060, 38.804844, 34.768486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207794, 38.699043, 34.894081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377665, 0.840318, -0.388888,
		-0.160993, 0.473187, 0.866127,
		0.911839, -0.264498, 0.313992,
		35.481346, 38.619694, 34.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088524, 39.437248, 34.909798>,  <34.843060, 38.804844, 34.768486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088524, 39.437248, 34.909798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418030, 39.210789, 34.897915>,  <35.615734, 39.074913, 34.890785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418030, 39.210789, 34.897915>,  <35.088524, 39.437248, 34.909798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418030, 39.210789, 34.897915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528191, 0.785459, -0.322595,
		0.205971, 0.250053, 0.946071,
		0.823766, -0.566151, -0.029706,
		35.665161, 39.040943, 34.889004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667374, 39.830151, 35.112347>,  <35.088524, 39.437248, 34.909798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667374, 39.830151, 35.112347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837017, 39.525093, 34.916996>,  <35.938805, 39.342060, 34.799786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837017, 39.525093, 34.916996>,  <35.667374, 39.830151, 35.112347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837017, 39.525093, 34.916996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683208, 0.623423, -0.380226,
		0.594438, -0.172401, 0.785443,
		0.424112, -0.762642, -0.488372,
		35.964249, 39.296299, 34.770485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335163, 40.082458, 35.012745>,  <35.667374, 39.830151, 35.112347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335163, 40.082458, 35.012745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316704, 39.782558, 34.748699>,  <36.305630, 39.602619, 34.590271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316704, 39.782558, 34.748699>,  <36.335163, 40.082458, 35.012745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316704, 39.782558, 34.748699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719190, 0.433683, -0.542850,
		0.693280, -0.499798, 0.519197,
		-0.046149, -0.749747, -0.660113,
		36.302860, 39.557632, 34.550667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092125, 39.790409, 34.896294>,  <36.335163, 40.082458, 35.012745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092125, 39.790409, 34.896294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852512, 39.702816, 34.588215>,  <36.708744, 39.650261, 34.403366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852512, 39.702816, 34.588215>,  <37.092125, 39.790409, 34.896294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852512, 39.702816, 34.588215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656963, 0.415492, -0.629099,
		0.457773, -0.882843, -0.105030,
		-0.599036, -0.218984, -0.770197,
		36.672802, 39.637123, 34.357155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502609, 39.684422, 34.458439>,  <37.092125, 39.790409, 34.896294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502609, 39.684422, 34.458439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189720, 39.720856, 34.211918>,  <37.001987, 39.742718, 34.064003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189720, 39.720856, 34.211918>,  <37.502609, 39.684422, 34.458439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189720, 39.720856, 34.211918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542060, 0.587122, -0.601214,
		0.307084, -0.804357, -0.508635,
		-0.782222, 0.091087, -0.616305,
		36.955055, 39.748180, 34.027027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813961, 39.500412, 33.771591>,  <37.502609, 39.684422, 34.458439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813961, 39.500412, 33.771591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475742, 39.704845, 33.709839>,  <37.272812, 39.827507, 33.672787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475742, 39.704845, 33.709839>,  <37.813961, 39.500412, 33.771591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475742, 39.704845, 33.709839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483268, 0.609766, -0.628202,
		-0.226926, -0.605786, -0.762580,
		-0.845551, 0.511085, -0.154385,
		37.222076, 39.858170, 33.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.753387, 39.527023, 33.051746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551258, 39.841263, 33.194565>,  <37.429981, 40.029808, 33.280258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551258, 39.841263, 33.194565>,  <37.753387, 39.527023, 33.051746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551258, 39.841263, 33.194565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586953, 0.616214, -0.525135,
		-0.632564, -0.055792, -0.772496,
		-0.505321, 0.785600, 0.357048,
		37.399662, 40.076942, 33.301678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819443, 39.910114, 32.602390>,  <37.753387, 39.527023, 33.051746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819443, 39.910114, 32.602390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694443, 40.179688, 32.870171>,  <37.619442, 40.341431, 33.030838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694443, 40.179688, 32.870171>,  <37.819443, 39.910114, 32.602390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694443, 40.179688, 32.870171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524464, 0.710001, -0.469932,
		-0.792012, 0.204251, -0.575325,
		-0.312497, 0.673929, 0.669452,
		37.600693, 40.381866, 33.071007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672638, 40.436264, 32.184727>,  <37.819443, 39.910114, 32.602390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672638, 40.436264, 32.184727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.725155, 40.600349, 32.545723>,  <37.756664, 40.698799, 32.762321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.725155, 40.600349, 32.545723>,  <37.672638, 40.436264, 32.184727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725155, 40.600349, 32.545723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412930, 0.805007, -0.425972,
		-0.901250, 0.428593, -0.063695,
		0.131293, 0.410209, 0.902491,
		37.764542, 40.723412, 32.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569401, 41.130547, 32.110180>,  <37.672638, 40.436264, 32.184727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569401, 41.130547, 32.110180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796185, 41.079742, 32.435738>,  <37.932255, 41.049259, 32.631073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796185, 41.079742, 32.435738>,  <37.569401, 41.130547, 32.110180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796185, 41.079742, 32.435738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663956, 0.655270, -0.360256,
		-0.487565, 0.744641, 0.455840,
		0.566960, -0.127009, 0.813895,
		37.966274, 41.041641, 32.679905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756195, 41.864208, 32.345436>,  <37.569401, 41.130547, 32.110180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756195, 41.864208, 32.345436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023582, 41.628841, 32.527390>,  <38.184013, 41.487621, 32.636562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023582, 41.628841, 32.527390>,  <37.756195, 41.864208, 32.345436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023582, 41.628841, 32.527390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740365, 0.584691, -0.331655,
		-0.070818, 0.558483, 0.826488,
		0.668464, -0.588416, 0.454888,
		38.224121, 41.452316, 32.663857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248936, 42.294334, 32.554943>,  <37.756195, 41.864208, 32.345436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248936, 42.294334, 32.554943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438007, 41.942829, 32.581333>,  <38.551449, 41.731926, 32.597168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438007, 41.942829, 32.581333>,  <38.248936, 42.294334, 32.554943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438007, 41.942829, 32.581333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866242, 0.449580, -0.217952,
		0.161866, 0.160173, 0.973727,
		0.472678, -0.878762, 0.065976,
		38.579811, 41.679199, 32.601128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868809, 42.345928, 33.050972>,  <38.248936, 42.294334, 32.554943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868809, 42.345928, 33.050972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909130, 42.038319, 32.798485>,  <38.933323, 41.853752, 32.646992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909130, 42.038319, 32.798485>,  <38.868809, 42.345928, 33.050972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909130, 42.038319, 32.798485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898979, 0.342216, -0.273360,
		0.426234, -0.539895, 0.725836,
		0.100807, -0.769027, -0.631218,
		38.939373, 41.807610, 32.609119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613541, 42.240761, 33.133163>,  <38.868809, 42.345928, 33.050972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613541, 42.240761, 33.133163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497803, 42.050117, 32.801109>,  <39.428360, 41.935734, 32.601875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497803, 42.050117, 32.801109>,  <39.613541, 42.240761, 33.133163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497803, 42.050117, 32.801109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904412, 0.147963, -0.400182,
		0.313558, -0.866576, 0.388235,
		-0.289344, -0.476605, -0.830137,
		39.410999, 41.907135, 32.552067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062332, 41.844093, 32.963692>,  <39.613541, 42.240761, 33.133163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062332, 41.844093, 32.963692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880867, 41.902031, 32.611961>,  <39.771988, 41.936794, 32.400925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880867, 41.902031, 32.611961>,  <40.062332, 41.844093, 32.963692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880867, 41.902031, 32.611961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886591, 0.173289, -0.428868,
		0.090257, -0.974161, -0.207036,
		-0.453663, 0.144848, -0.879323,
		39.744766, 41.945484, 32.348164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556534, 41.528980, 32.371841>,  <40.062332, 41.844093, 32.963692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556534, 41.528980, 32.371841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.304996, 41.808640, 32.235760>,  <40.154072, 41.976437, 32.154110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.304996, 41.808640, 32.235760>,  <40.556534, 41.528980, 32.371841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304996, 41.808640, 32.235760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759830, 0.459760, -0.459652,
		-0.164952, -0.547551, -0.820353,
		-0.628848, 0.699149, -0.340207,
		40.116341, 42.018383, 32.133698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798004, 41.588032, 31.692091>,  <40.556534, 41.528980, 32.371841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798004, 41.588032, 31.692091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596680, 41.927879, 31.755123>,  <40.475887, 42.131786, 31.792942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596680, 41.927879, 31.755123>,  <40.798004, 41.588032, 31.692091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596680, 41.927879, 31.755123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716586, 0.512295, -0.473347,
		-0.482891, -0.125320, -0.866666,
		-0.503309, 0.849617, 0.157581,
		40.445686, 42.182766, 31.802397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874157, 42.033737, 31.099642>,  <40.798004, 41.588032, 31.692091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874157, 42.033737, 31.099642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727058, 42.322639, 31.333944>,  <40.638798, 42.495979, 31.474525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727058, 42.322639, 31.333944>,  <40.874157, 42.033737, 31.099642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727058, 42.322639, 31.333944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459782, 0.688738, -0.560572,
		-0.808309, 0.063172, -0.585360,
		-0.367747, 0.722253, 0.585758,
		40.616734, 42.539314, 31.509672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569611, 42.474846, 30.661900>,  <40.874157, 42.033737, 31.099642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569611, 42.474846, 30.661900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634743, 42.691662, 30.991671>,  <40.673820, 42.821751, 31.189533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634743, 42.691662, 30.991671>,  <40.569611, 42.474846, 30.661900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634743, 42.691662, 30.991671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435008, 0.710543, -0.553079,
		-0.885581, 0.448691, -0.120093,
		0.162830, 0.542038, 0.824428,
		40.683590, 42.854275, 31.238998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350311, 43.050667, 30.439243>,  <40.569611, 42.474846, 30.661900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350311, 43.050667, 30.439243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.575073, 43.156277, 30.752819>,  <40.709930, 43.219643, 30.940964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.575073, 43.156277, 30.752819>,  <40.350311, 43.050667, 30.439243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575073, 43.156277, 30.752819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344769, 0.786709, -0.512077,
		-0.751931, 0.558014, 0.351026,
		0.561902, 0.264023, 0.783938,
		40.743645, 43.235485, 30.988001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307373, 43.731209, 30.599932>,  <40.350311, 43.050667, 30.439243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307373, 43.731209, 30.599932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648014, 43.661221, 30.797583>,  <40.852398, 43.619228, 30.916174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648014, 43.661221, 30.797583>,  <40.307373, 43.731209, 30.599932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648014, 43.661221, 30.797583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376887, 0.859534, -0.345192,
		-0.364322, 0.480196, 0.797923,
		0.851602, -0.174966, 0.494127,
		40.903496, 43.608730, 30.945820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436317, 44.340572, 30.899061>,  <40.307373, 43.731209, 30.599932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436317, 44.340572, 30.899061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786766, 44.149113, 30.876040>,  <40.997036, 44.034237, 30.862226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786766, 44.149113, 30.876040>,  <40.436317, 44.340572, 30.899061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786766, 44.149113, 30.876040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442224, 0.845446, -0.299432,
		0.191981, 0.236887, 0.952380,
		0.876117, -0.478650, -0.057552,
		41.049603, 44.005516, 30.858774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959259, 44.752899, 31.173273>,  <40.436317, 44.340572, 30.899061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959259, 44.752899, 31.173273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169575, 44.496193, 30.949959>,  <41.295765, 44.342171, 30.815969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169575, 44.496193, 30.949959>,  <40.959259, 44.752899, 31.173273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169575, 44.496193, 30.949959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440656, 0.766901, -0.466567,
		0.727577, -0.000696, 0.686026,
		0.525789, -0.641765, -0.558286,
		41.327312, 44.303665, 30.782473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626068, 44.963745, 31.247147>,  <40.959259, 44.752899, 31.173273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626068, 44.963745, 31.247147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625664, 44.739246, 30.916088>,  <41.625420, 44.604546, 30.717453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625664, 44.739246, 30.916088>,  <41.626068, 44.963745, 31.247147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625664, 44.739246, 30.916088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454444, 0.736990, -0.500326,
		0.890775, -0.376627, 0.254308,
		-0.001014, -0.561247, -0.827648,
		41.625359, 44.570873, 30.667793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272198, 44.964569, 30.927731>,  <41.626068, 44.963745, 31.247147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272198, 44.964569, 30.927731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.011211, 44.907227, 30.630075>,  <41.854622, 44.872822, 30.451483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.011211, 44.907227, 30.630075>,  <42.272198, 44.964569, 30.927731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011211, 44.907227, 30.630075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398070, 0.770729, -0.497510,
		0.644851, -0.620826, -0.445805,
		-0.652462, -0.143359, -0.744138,
		41.815472, 44.864220, 30.406834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562565, 45.315746, 30.345261>,  <42.272198, 44.964569, 30.927731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562565, 45.315746, 30.345261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192471, 45.244881, 30.211067>,  <41.970413, 45.202362, 30.130552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192471, 45.244881, 30.211067>,  <42.562565, 45.315746, 30.345261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192471, 45.244881, 30.211067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074672, 0.781928, -0.618880,
		0.371967, -0.597662, -0.710240,
		-0.925237, -0.177168, -0.335481,
		41.914898, 45.191730, 30.110422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602531, 45.511742, 29.608133>,  <42.562565, 45.315746, 30.345261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602531, 45.511742, 29.608133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207771, 45.482571, 29.665697>,  <41.970917, 45.465069, 29.700235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207771, 45.482571, 29.665697>,  <42.602531, 45.511742, 29.608133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207771, 45.482571, 29.665697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155666, 0.664726, -0.730690,
		-0.042376, -0.743519, -0.667370,
		-0.986900, -0.072923, 0.143909,
		41.911701, 45.460693, 29.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303040, 45.338154, 28.926300>,  <42.602531, 45.511742, 29.608133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303040, 45.338154, 28.926300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052662, 45.538239, 29.165627>,  <41.902435, 45.658291, 29.309221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052662, 45.538239, 29.165627>,  <42.303040, 45.338154, 28.926300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052662, 45.538239, 29.165627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111841, 0.701693, -0.703647,
		-0.771807, -0.507360, -0.383276,
		-0.625944, 0.500213, 0.598315,
		41.864880, 45.688301, 29.345121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011608, 45.752075, 28.503857>,  <42.303040, 45.338154, 28.926300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011608, 45.752075, 28.503857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860237, 45.915154, 28.836260>,  <41.769417, 46.013000, 29.035702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860237, 45.915154, 28.836260>,  <42.011608, 45.752075, 28.503857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860237, 45.915154, 28.836260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272984, 0.808689, -0.521058,
		-0.884464, -0.424032, -0.194732,
		-0.378423, 0.407698, 0.831010,
		41.746712, 46.037464, 29.085564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288807, 46.053223, 28.454367>,  <42.011608, 45.752075, 28.503857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288807, 46.053223, 28.454367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511959, 46.233017, 28.733431>,  <41.645851, 46.340893, 28.900869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511959, 46.233017, 28.733431>,  <41.288807, 46.053223, 28.454367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511959, 46.233017, 28.733431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138067, 0.879187, -0.456035,
		-0.818354, 0.158090, 0.552543,
		0.557883, 0.449486, 0.697659,
		41.679325, 46.367863, 28.942728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547306, 46.202541, 28.637182>,  <41.288807, 46.053223, 28.454367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547306, 46.202541, 28.637182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.625862, 46.149345, 28.248596>,  <40.672997, 46.117428, 28.015444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.625862, 46.149345, 28.248596>,  <40.547306, 46.202541, 28.637182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625862, 46.149345, 28.248596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362421, -0.930442, 0.054111,
		-0.911089, 0.341453, -0.230926,
		0.196387, -0.132992, -0.971465,
		40.684776, 46.109447, 27.957157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061726, 45.841133, 28.356333>,  <40.547306, 46.202541, 28.637182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061726, 45.841133, 28.356333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332924, 45.761612, 28.073263>,  <40.495644, 45.713898, 27.903421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332924, 45.761612, 28.073263>,  <40.061726, 45.841133, 28.356333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332924, 45.761612, 28.073263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302294, -0.952963, -0.021899,
		-0.670034, 0.228773, -0.706199,
		0.677992, -0.198807, -0.707675,
		40.536320, 45.701969, 27.860960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800804, 45.295189, 28.047071>,  <40.061726, 45.841133, 28.356333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800804, 45.295189, 28.047071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162609, 45.293625, 27.876499>,  <40.379692, 45.292686, 27.774155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162609, 45.293625, 27.876499>,  <39.800804, 45.295189, 28.047071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162609, 45.293625, 27.876499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099578, -0.974252, -0.202279,
		-0.414661, 0.225427, -0.881612,
		0.904511, -0.003912, -0.426432,
		40.433964, 45.292450, 27.748569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729332, 45.091976, 27.279991>,  <39.800804, 45.295189, 28.047071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729332, 45.091976, 27.279991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075962, 44.991840, 27.452673>,  <40.283939, 44.931759, 27.556282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075962, 44.991840, 27.452673>,  <39.729332, 45.091976, 27.279991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075962, 44.991840, 27.452673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301676, -0.951904, 0.053572,
		0.397532, -0.176660, -0.900422,
		0.866579, -0.250339, 0.431707,
		40.335938, 44.916740, 27.582186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849720, 44.476498, 26.890284>,  <39.729332, 45.091976, 27.279991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849720, 44.476498, 26.890284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088234, 44.480392, 27.211369>,  <40.231342, 44.482731, 27.404018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088234, 44.480392, 27.211369>,  <39.849720, 44.476498, 26.890284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088234, 44.480392, 27.211369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082903, -0.993833, 0.073638,
		0.798478, -0.110456, -0.591804,
		0.596288, 0.009736, 0.802712,
		40.267120, 44.483315, 27.452183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363029, 43.978622, 26.861782>,  <39.849720, 44.476498, 26.890284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363029, 43.978622, 26.861782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297363, 44.051834, 27.249504>,  <40.257965, 44.095760, 27.482138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297363, 44.051834, 27.249504>,  <40.363029, 43.978622, 26.861782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297363, 44.051834, 27.249504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305347, -0.943801, 0.126500,
		0.937984, -0.275208, 0.210824,
		-0.164162, 0.183029, 0.969305,
		40.248116, 44.106743, 27.540295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426025, 43.363277, 27.153597>,  <40.363029, 43.978622, 26.861782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426025, 43.363277, 27.153597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283848, 43.549900, 27.477570>,  <40.198544, 43.661873, 27.671953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283848, 43.549900, 27.477570>,  <40.426025, 43.363277, 27.153597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283848, 43.549900, 27.477570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356982, -0.868590, 0.343680,
		0.863844, -0.166974, 0.475282,
		-0.355439, 0.466553, 0.809933,
		40.177216, 43.689865, 27.720549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576725, 42.964321, 27.794868>,  <40.426025, 43.363277, 27.153597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576725, 42.964321, 27.794868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.265469, 43.198353, 27.886240>,  <40.078712, 43.338772, 27.941063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.265469, 43.198353, 27.886240>,  <40.576725, 42.964321, 27.794868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265469, 43.198353, 27.886240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354189, -0.709108, 0.609685,
		0.518693, 0.393515, 0.759014,
		-0.778143, 0.585074, 0.228431,
		40.032024, 43.373875, 27.954769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484921, 42.863060, 28.539438>,  <40.576725, 42.964321, 27.794868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484921, 42.863060, 28.539438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140858, 43.004330, 28.392250>,  <39.934422, 43.089092, 28.303938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140858, 43.004330, 28.392250>,  <40.484921, 42.863060, 28.539438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140858, 43.004330, 28.392250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509603, -0.565427, 0.648535,
		0.020989, 0.745358, 0.666334,
		-0.860154, 0.353178, -0.367969,
		39.882812, 43.110283, 28.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071301, 43.087593, 29.074898>,  <40.484921, 42.863060, 28.539438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071301, 43.087593, 29.074898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800518, 43.023132, 28.787630>,  <39.638050, 42.984455, 28.615271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800518, 43.023132, 28.787630>,  <40.071301, 43.087593, 29.074898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800518, 43.023132, 28.787630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559970, -0.520472, 0.644625,
		-0.477670, 0.838534, 0.262093,
		-0.676952, -0.161154, -0.718168,
		39.597431, 42.974785, 28.572180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507782, 43.224976, 29.404945>,  <40.071301, 43.087593, 29.074898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507782, 43.224976, 29.404945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368137, 43.017612, 29.092695>,  <39.284351, 42.893192, 28.905346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368137, 43.017612, 29.092695>,  <39.507782, 43.224976, 29.404945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368137, 43.017612, 29.092695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395870, -0.673464, 0.624287,
		-0.849358, 0.526971, 0.029891,
		-0.349112, -0.518410, -0.780623,
		39.263405, 42.862091, 28.858509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971996, 42.968216, 29.742626>,  <39.507782, 43.224976, 29.404945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971996, 42.968216, 29.742626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011093, 42.751259, 29.408859>,  <39.034550, 42.621086, 29.208599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011093, 42.751259, 29.408859>,  <38.971996, 42.968216, 29.742626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011093, 42.751259, 29.408859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410344, -0.785811, 0.462730,
		-0.906678, 0.297171, -0.299375,
		0.097742, -0.542394, -0.834419,
		39.040417, 42.588539, 29.158533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349396, 42.630230, 29.567263>,  <38.971996, 42.968216, 29.742626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349396, 42.630230, 29.567263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592655, 42.397308, 29.351458>,  <38.738613, 42.257557, 29.221975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592655, 42.397308, 29.351458>,  <38.349396, 42.630230, 29.567263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592655, 42.397308, 29.351458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444818, -0.812891, 0.375958,
		-0.657485, 0.011344, -0.753382,
		0.608153, -0.582305, -0.539510,
		38.775101, 42.222618, 29.189604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870216, 42.056122, 29.442606>,  <38.349396, 42.630230, 29.567263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870216, 42.056122, 29.442606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243446, 41.927048, 29.379044>,  <38.467384, 41.849602, 29.340906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243446, 41.927048, 29.379044>,  <37.870216, 42.056122, 29.442606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243446, 41.927048, 29.379044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195824, -0.826296, 0.528099,
		-0.301714, -0.461636, -0.834183,
		0.933071, -0.322688, -0.158905,
		38.523369, 41.830242, 29.331371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788197, 41.291779, 29.314362>,  <37.870216, 42.056122, 29.442606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788197, 41.291779, 29.314362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158012, 41.375309, 29.441877>,  <38.379902, 41.425426, 29.518387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158012, 41.375309, 29.441877>,  <37.788197, 41.291779, 29.314362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158012, 41.375309, 29.441877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032415, -0.790389, 0.611747,
		0.379716, -0.575915, -0.723974,
		0.924535, 0.208823, 0.318792,
		38.435371, 41.437954, 29.537516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344498, 40.752800, 29.094845>,  <37.788197, 41.291779, 29.314362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344498, 40.752800, 29.094845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462814, 40.943394, 29.426016>,  <38.533806, 41.057751, 29.624720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462814, 40.943394, 29.426016>,  <38.344498, 40.752800, 29.094845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462814, 40.943394, 29.426016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058005, -0.874073, 0.482320,
		0.953490, -0.094641, -0.286181,
		0.295790, 0.476487, 0.827930,
		38.551552, 41.086342, 29.674395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827423, 40.347820, 29.307610>,  <38.344498, 40.752800, 29.094845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827423, 40.347820, 29.307610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765244, 40.578964, 29.628088>,  <38.727936, 40.717651, 29.820375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765244, 40.578964, 29.628088>,  <38.827423, 40.347820, 29.307610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765244, 40.578964, 29.628088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252707, -0.760808, 0.597755,
		0.954974, 0.295389, -0.027760,
		-0.155450, 0.577855, 0.801198,
		38.718609, 40.752319, 29.868448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422501, 40.223835, 29.662016>,  <38.827423, 40.347820, 29.307610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422501, 40.223835, 29.662016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134640, 40.374493, 29.895334>,  <38.961922, 40.464886, 30.035326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134640, 40.374493, 29.895334>,  <39.422501, 40.223835, 29.662016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134640, 40.374493, 29.895334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076676, -0.791835, 0.605903,
		0.690086, 0.480765, 0.540968,
		-0.719654, 0.376646, 0.583298,
		38.918743, 40.487488, 30.070324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609959, 39.982998, 30.323698>,  <39.422501, 40.223835, 29.662016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609959, 39.982998, 30.323698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223564, 40.068005, 30.382631>,  <38.991726, 40.119007, 30.417992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223564, 40.068005, 30.382631>,  <39.609959, 39.982998, 30.323698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223564, 40.068005, 30.382631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067002, -0.755990, 0.651145,
		0.249757, 0.619127, 0.744516,
		-0.965988, 0.212512, 0.147331,
		38.933769, 40.131760, 30.426830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522652, 40.131966, 31.093685>,  <39.609959, 39.982998, 30.323698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522652, 40.131966, 31.093685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166241, 40.020355, 30.950459>,  <38.952393, 39.953388, 30.864523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166241, 40.020355, 30.950459>,  <39.522652, 40.131966, 31.093685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166241, 40.020355, 30.950459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072473, -0.691233, 0.718988,
		-0.448121, 0.666590, 0.595688,
		-0.891030, -0.279023, -0.358066,
		38.898933, 39.936649, 30.843039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.480042, 38.417454, 35.724766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178291, 38.475460, 35.468674>,  <35.997242, 38.510262, 35.315018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178291, 38.475460, 35.468674>,  <36.480042, 38.417454, 35.724766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178291, 38.475460, 35.468674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623982, -0.461314, 0.630742,
		-0.203880, 0.875306, 0.438489,
		-0.754374, 0.145013, -0.640228,
		35.951981, 38.518963, 35.276604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986565, 38.698532, 36.107227>,  <36.480042, 38.417454, 35.724766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986565, 38.698532, 36.107227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778412, 38.532951, 35.808472>,  <35.653519, 38.433601, 35.629219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778412, 38.532951, 35.808472>,  <35.986565, 38.698532, 36.107227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778412, 38.532951, 35.808472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646579, -0.380319, 0.661281,
		-0.557794, 0.827044, -0.069739,
		-0.520386, -0.413950, -0.746889,
		35.622295, 38.408768, 35.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261326, 38.790142, 36.335041>,  <35.986565, 38.698532, 36.107227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261326, 38.790142, 36.335041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249081, 38.505562, 36.054211>,  <35.241734, 38.334816, 35.885712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249081, 38.505562, 36.054211>,  <35.261326, 38.790142, 36.335041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249081, 38.505562, 36.054211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768665, -0.432231, 0.471520,
		-0.638919, 0.554092, -0.533633,
		-0.030613, -0.711448, -0.702072,
		35.239899, 38.292126, 35.843590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557274, 38.769234, 36.174751>,  <35.261326, 38.790142, 36.335041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557274, 38.769234, 36.174751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.701874, 38.427711, 36.024906>,  <34.788635, 38.222797, 35.934998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.701874, 38.427711, 36.024906>,  <34.557274, 38.769234, 36.174751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701874, 38.427711, 36.024906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794243, -0.492444, 0.355917,
		-0.488356, 0.168863, -0.856150,
		0.361504, -0.853806, -0.374607,
		34.810326, 38.171570, 35.912521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083447, 38.370300, 35.637505>,  <34.557274, 38.769234, 36.174751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083447, 38.370300, 35.637505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317085, 38.099739, 35.816975>,  <34.457268, 37.937401, 35.924656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317085, 38.099739, 35.816975>,  <34.083447, 38.370300, 35.637505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317085, 38.099739, 35.816975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755375, -0.655277, -0.004502,
		0.297054, -0.336291, -0.893682,
		0.584095, -0.676403, 0.448679,
		34.492313, 37.896820, 35.951576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885647, 37.757824, 35.310699>,  <34.083447, 38.370300, 35.637505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885647, 37.757824, 35.310699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.089176, 37.667690, 35.643040>,  <34.211292, 37.613609, 35.842445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.089176, 37.667690, 35.643040>,  <33.885647, 37.757824, 35.310699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089176, 37.667690, 35.643040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605657, -0.779581, 0.159479,
		0.611782, -0.584360, -0.533147,
		0.508824, -0.225338, 0.830855,
		34.241825, 37.600090, 35.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916862, 36.965786, 35.337406>,  <33.885647, 37.757824, 35.310699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916862, 36.965786, 35.337406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.993034, 37.085178, 35.711494>,  <34.038738, 37.156815, 35.935947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.993034, 37.085178, 35.711494>,  <33.916862, 36.965786, 35.337406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993034, 37.085178, 35.711494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469857, -0.808743, 0.353791,
		0.861957, -0.506794, -0.013766,
		0.190432, 0.298485, 0.935223,
		34.050163, 37.174725, 35.992062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277462, 36.417145, 35.627098>,  <33.916862, 36.965786, 35.337406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277462, 36.417145, 35.627098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110649, 36.643032, 35.911964>,  <34.010563, 36.778564, 36.082882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110649, 36.643032, 35.911964>,  <34.277462, 36.417145, 35.627098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110649, 36.643032, 35.911964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607714, -0.755895, 0.243530,
		0.675845, -0.331230, 0.658422,
		-0.417033, 0.564721, 0.712161,
		33.985538, 36.812447, 36.125614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269089, 36.016479, 36.243855>,  <34.277462, 36.417145, 35.627098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269089, 36.016479, 36.243855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982159, 36.288902, 36.302658>,  <33.810001, 36.452354, 36.337940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982159, 36.288902, 36.302658>,  <34.269089, 36.016479, 36.243855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982159, 36.288902, 36.302658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614058, -0.717657, 0.328482,
		0.329216, 0.145356, 0.933000,
		-0.717321, 0.681058, 0.147007,
		33.766964, 36.493221, 36.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950054, 35.749382, 36.851616>,  <34.269089, 36.016479, 36.243855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950054, 35.749382, 36.851616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.681599, 36.021732, 36.734325>,  <33.520527, 36.185143, 36.663952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.681599, 36.021732, 36.734325>,  <33.950054, 35.749382, 36.851616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681599, 36.021732, 36.734325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739149, -0.584239, 0.335148,
		0.056879, 0.441670, 0.895373,
		-0.671137, 0.680876, -0.293230,
		33.480259, 36.225994, 36.646355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498474, 35.856377, 37.459347>,  <33.950054, 35.749382, 36.851616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498474, 35.856377, 37.459347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.293465, 35.978207, 37.138210>,  <33.170460, 36.051304, 36.945530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.293465, 35.978207, 37.138210>,  <33.498474, 35.856377, 37.459347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293465, 35.978207, 37.138210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757894, -0.599952, 0.256232,
		-0.403624, 0.739793, 0.538326,
		-0.512528, 0.304573, -0.802839,
		33.139706, 36.069580, 36.897358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762573, 36.102016, 37.735229>,  <33.498474, 35.856377, 37.459347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762573, 36.102016, 37.735229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730606, 36.001976, 37.349262>,  <32.711426, 35.941952, 37.117683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730606, 36.001976, 37.349262>,  <32.762573, 36.102016, 37.735229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730606, 36.001976, 37.349262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726426, -0.648256, 0.228189,
		-0.682582, 0.719177, -0.129871,
		-0.079919, -0.250099, -0.964916,
		32.706631, 35.926945, 37.059788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091164, 35.954651, 37.342415>,  <32.762573, 36.102016, 37.735229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091164, 35.954651, 37.342415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.976315, 35.734798, 37.656223>,  <31.907404, 35.602886, 37.844509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.976315, 35.734798, 37.656223>,  <32.091164, 35.954651, 37.342415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976315, 35.734798, 37.656223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876902, 0.178778, 0.446186,
		-0.385491, 0.816056, 0.430638,
		-0.287124, -0.549628, 0.784518,
		31.890177, 35.569908, 37.891579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659258, 36.007778, 36.713837>,  <32.091164, 35.954651, 37.342415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659258, 36.007778, 36.713837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.499643, 36.351635, 36.586216>,  <31.403875, 36.557949, 36.509644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.499643, 36.351635, 36.586216>,  <31.659258, 36.007778, 36.713837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499643, 36.351635, 36.586216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156469, 0.406686, 0.900069,
		0.903486, 0.309239, -0.296789,
		-0.399036, 0.859638, -0.319049,
		31.379932, 36.609528, 36.490501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366133, 35.400288, 36.779369>,  <31.659258, 36.007778, 36.713837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366133, 35.400288, 36.779369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.050638, 35.634098, 36.855495>,  <30.861341, 35.774384, 36.901173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.050638, 35.634098, 36.855495>,  <31.366133, 35.400288, 36.779369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050638, 35.634098, 36.855495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160631, 0.494810, -0.854026,
		-0.593372, -0.643032, -0.484169,
		-0.788738, 0.584528, 0.190316,
		30.814016, 35.809456, 36.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033058, 35.503662, 36.097809>,  <31.366133, 35.400288, 36.779369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033058, 35.503662, 36.097809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.898495, 35.809822, 36.317261>,  <30.817757, 35.993519, 36.448933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.898495, 35.809822, 36.317261>,  <31.033058, 35.503662, 36.097809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898495, 35.809822, 36.317261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208835, 0.628710, -0.749074,
		-0.918269, -0.137421, -0.371345,
		-0.336407, 0.765402, 0.548626,
		30.797573, 36.039444, 36.481850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421614, 35.824303, 35.755577>,  <31.033058, 35.503662, 36.097809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421614, 35.824303, 35.755577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.593098, 36.101994, 35.986835>,  <30.695988, 36.268608, 36.125591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.593098, 36.101994, 35.986835>,  <30.421614, 35.824303, 35.755577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593098, 36.101994, 35.986835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145114, 0.578716, -0.802514,
		-0.891713, 0.427942, 0.147358,
		0.428708, 0.694229, 0.578149,
		30.721710, 36.310261, 36.160278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180269, 36.477810, 35.426327>,  <30.421614, 35.824303, 35.755577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180269, 36.477810, 35.426327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.464865, 36.599625, 35.679638>,  <30.635622, 36.672714, 35.831623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.464865, 36.599625, 35.679638>,  <30.180269, 36.477810, 35.426327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464865, 36.599625, 35.679638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099454, 0.848495, -0.519774,
		-0.695624, 0.432795, 0.573407,
		0.711488, 0.304540, 0.633277,
		30.678310, 36.690987, 35.869621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036320, 37.197319, 35.515568>,  <30.180269, 36.477810, 35.426327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036320, 37.197319, 35.515568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.418278, 37.156094, 35.626961>,  <30.647453, 37.131359, 35.693794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.418278, 37.156094, 35.626961>,  <30.036320, 37.197319, 35.515568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418278, 37.156094, 35.626961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249737, 0.786099, -0.565402,
		-0.160639, 0.609447, 0.776382,
		0.954896, -0.103065, 0.278480,
		30.704746, 37.125175, 35.710506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268124, 37.818340, 35.623672>,  <30.036320, 37.197319, 35.515568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268124, 37.818340, 35.623672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.590576, 37.595119, 35.544945>,  <30.784048, 37.461189, 35.497707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.590576, 37.595119, 35.544945>,  <30.268124, 37.818340, 35.623672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590576, 37.595119, 35.544945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399614, 0.758709, -0.514460,
		0.436420, 0.336071, 0.834622,
		0.806130, -0.558047, -0.196817,
		30.832415, 37.427704, 35.485901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809891, 38.330730, 35.508110>,  <30.268124, 37.818340, 35.623672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809891, 38.330730, 35.508110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.968185, 38.000668, 35.346863>,  <31.063162, 37.802628, 35.250114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.968185, 38.000668, 35.346863>,  <30.809891, 38.330730, 35.508110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968185, 38.000668, 35.346863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528093, 0.563585, -0.635208,
		0.751338, 0.038494, 0.658793,
		0.395738, -0.825161, -0.403115,
		31.086906, 37.753120, 35.225929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499737, 38.545277, 35.444794>,  <30.809891, 38.330730, 35.508110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499737, 38.545277, 35.444794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431168, 38.229252, 35.209366>,  <31.390026, 38.039635, 35.068111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431168, 38.229252, 35.209366>,  <31.499737, 38.545277, 35.444794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431168, 38.229252, 35.209366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537421, 0.425707, -0.727978,
		0.825707, -0.441102, 0.351620,
		-0.171425, -0.790065, -0.588567,
		31.379740, 37.992233, 35.032795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172138, 38.525436, 35.126759>,  <31.499737, 38.545277, 35.444794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172138, 38.525436, 35.126759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.894135, 38.351135, 34.897995>,  <31.727333, 38.246555, 34.760735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.894135, 38.351135, 34.897995>,  <32.172138, 38.525436, 35.126759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894135, 38.351135, 34.897995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477116, 0.315552, -0.820236,
		0.537890, -0.842938, -0.011405,
		-0.695007, -0.435755, -0.571912,
		31.685633, 38.220409, 34.726421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530174, 38.084053, 34.590633>,  <32.172138, 38.525436, 35.126759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530174, 38.084053, 34.590633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.172691, 38.139103, 34.419830>,  <31.958200, 38.172134, 34.317348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.172691, 38.139103, 34.419830>,  <32.530174, 38.084053, 34.590633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172691, 38.139103, 34.419830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446467, 0.366434, -0.816329,
		0.044122, -0.920209, -0.388932,
		-0.893711, 0.137627, -0.427011,
		31.904577, 38.180389, 34.291725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593285, 37.776428, 34.042202>,  <32.530174, 38.084053, 34.590633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593285, 37.776428, 34.042202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.278118, 38.016136, 33.985542>,  <32.089020, 38.159962, 33.951546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.278118, 38.016136, 33.985542>,  <32.593285, 37.776428, 34.042202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278118, 38.016136, 33.985542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438643, 0.384766, -0.812125,
		-0.432183, -0.702018, -0.566029,
		-0.787915, 0.599272, -0.141646,
		32.041744, 38.195919, 33.943050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313728, 37.685307, 33.340969>,  <32.593285, 37.776428, 34.042202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313728, 37.685307, 33.340969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.211689, 38.060654, 33.434261>,  <32.150467, 38.285862, 33.490238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.211689, 38.060654, 33.434261>,  <32.313728, 37.685307, 33.340969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211689, 38.060654, 33.434261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396426, 0.321509, -0.859930,
		-0.881914, -0.126906, -0.454008,
		-0.255098, 0.938364, 0.233234,
		32.135159, 38.342163, 33.504230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126659, 37.965675, 32.731342>,  <32.313728, 37.685307, 33.340969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126659, 37.965675, 32.731342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.189083, 38.288589, 32.959003>,  <32.226536, 38.482338, 33.095600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.189083, 38.288589, 32.959003>,  <32.126659, 37.965675, 32.731342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189083, 38.288589, 32.959003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401621, 0.474573, -0.783250,
		-0.902412, 0.350815, -0.250163,
		0.156055, 0.807285, 0.569155,
		32.235901, 38.530773, 33.129749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899336, 38.502628, 32.238438>,  <32.126659, 37.965675, 32.731342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899336, 38.502628, 32.238438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.117058, 38.665569, 32.531776>,  <32.247692, 38.763332, 32.707779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.117058, 38.665569, 32.531776>,  <31.899336, 38.502628, 32.238438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117058, 38.665569, 32.531776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432186, 0.613075, -0.661327,
		-0.718989, 0.676906, 0.157648,
		0.544307, 0.407354, 0.733344,
		32.280350, 38.787777, 32.751781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167629, 38.802116, 32.039185>,  <31.899336, 38.502628, 32.238438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167629, 38.802116, 32.039185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.023670, 38.847050, 31.668703>,  <30.937294, 38.874008, 31.446415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.023670, 38.847050, 31.668703>,  <31.167629, 38.802116, 32.039185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023670, 38.847050, 31.668703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556717, -0.822482, 0.116572,
		-0.748692, 0.557588, 0.358548,
		-0.359898, 0.112333, -0.926205,
		30.915701, 38.880749, 31.390842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484325, 38.517895, 32.080284>,  <31.167629, 38.802116, 32.039185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484325, 38.517895, 32.080284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.516766, 38.530289, 31.681795>,  <30.536230, 38.537724, 31.442701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.516766, 38.530289, 31.681795>,  <30.484325, 38.517895, 32.080284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516766, 38.530289, 31.681795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671036, -0.737357, -0.077558,
		-0.736976, 0.674792, -0.039011,
		0.081101, 0.030981, -0.996224,
		30.541096, 38.539581, 31.382927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788702, 38.379745, 31.805403>,  <30.484325, 38.517895, 32.080284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788702, 38.379745, 31.805403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.052528, 38.302044, 31.514957>,  <30.210823, 38.255424, 31.340691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.052528, 38.302044, 31.514957>,  <29.788702, 38.379745, 31.805403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052528, 38.302044, 31.514957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469067, -0.861210, -0.195686,
		-0.587325, 0.469664, -0.659139,
		0.659564, -0.194249, -0.726114,
		30.250397, 38.243771, 31.297123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369778, 38.041454, 31.341845>,  <29.788702, 38.379745, 31.805403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369778, 38.041454, 31.341845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.740067, 37.957047, 31.216301>,  <29.962240, 37.906403, 31.140974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.740067, 37.957047, 31.216301>,  <29.369778, 38.041454, 31.341845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740067, 37.957047, 31.216301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295848, -0.921027, -0.253345,
		-0.235613, 0.327382, -0.915045,
		0.925722, -0.211023, -0.313861,
		30.017782, 37.893742, 31.122143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322966, 37.641144, 30.767157>,  <29.369778, 38.041454, 31.341845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322966, 37.641144, 30.767157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.689745, 37.542999, 30.893017>,  <29.909813, 37.484112, 30.968533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.689745, 37.542999, 30.893017>,  <29.322966, 37.641144, 30.767157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689745, 37.542999, 30.893017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223896, -0.969130, -0.103237,
		0.330266, 0.024214, -0.943577,
		0.916949, -0.245359, 0.314649,
		29.964830, 37.469391, 30.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482195, 37.165253, 30.358297>,  <29.322966, 37.641144, 30.767157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482195, 37.165253, 30.358297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.724825, 37.118107, 30.672794>,  <29.870403, 37.089821, 30.861492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.724825, 37.118107, 30.672794>,  <29.482195, 37.165253, 30.358297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724825, 37.118107, 30.672794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280087, -0.957227, 0.072587,
		0.744056, -0.264245, -0.613642,
		0.606575, -0.117864, 0.786241,
		29.906797, 37.082748, 30.908667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936724, 36.575264, 30.309433>,  <29.482195, 37.165253, 30.358297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936724, 36.575264, 30.309433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.899721, 36.643345, 30.701857>,  <29.877520, 36.684193, 30.937311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.899721, 36.643345, 30.701857>,  <29.936724, 36.575264, 30.309433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899721, 36.643345, 30.701857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090197, -0.982664, 0.161976,
		0.991619, -0.073504, 0.106253,
		-0.092505, 0.170202, 0.981058,
		29.871969, 36.694405, 30.996174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406031, 36.029179, 30.583086>,  <29.936724, 36.575264, 30.309433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406031, 36.029179, 30.583086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.185158, 36.135605, 30.899137>,  <30.052635, 36.199463, 31.088768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.185158, 36.135605, 30.899137>,  <30.406031, 36.029179, 30.583086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185158, 36.135605, 30.899137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170841, -0.963709, 0.205129,
		0.816033, -0.021718, 0.577597,
		-0.552181, 0.266069, 0.790129,
		30.019503, 36.215427, 31.136177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805330, 35.715652, 31.117355>,  <30.406031, 36.029179, 30.583086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805330, 35.715652, 31.117355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.444607, 35.759281, 31.284615>,  <30.228172, 35.785458, 31.384970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.444607, 35.759281, 31.284615>,  <30.805330, 35.715652, 31.117355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444607, 35.759281, 31.284615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016525, -0.975618, 0.218855,
		0.431823, 0.190455, 0.881621,
		-0.901807, 0.109075, 0.418147,
		30.174065, 35.792004, 31.410059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791832, 35.468658, 31.838995>,  <30.805330, 35.715652, 31.117355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791832, 35.468658, 31.838995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.405046, 35.449383, 31.738869>,  <30.172976, 35.437817, 31.678793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.405046, 35.449383, 31.738869>,  <30.791832, 35.468658, 31.838995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405046, 35.449383, 31.738869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031831, -0.951461, 0.306120,
		-0.252918, 0.303975, 0.918495,
		-0.966964, -0.048186, -0.250317,
		30.114958, 35.434925, 31.663773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458132, 35.197922, 32.433643>,  <30.791832, 35.468658, 31.838995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458132, 35.197922, 32.433643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.228186, 35.130226, 32.113422>,  <30.090218, 35.089607, 31.921289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.228186, 35.130226, 32.113422>,  <30.458132, 35.197922, 32.433643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228186, 35.130226, 32.113422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083073, -0.961250, 0.262864,
		-0.814020, 0.217616, 0.538531,
		-0.574866, -0.169239, -0.800555,
		30.055725, 35.079453, 31.873257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938364, 34.694042, 32.565350>,  <30.458132, 35.197922, 32.433643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938364, 34.694042, 32.565350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.970758, 34.673798, 32.167179>,  <29.990194, 34.661652, 31.928276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.970758, 34.673798, 32.167179>,  <29.938364, 34.694042, 32.565350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970758, 34.673798, 32.167179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149744, -0.986757, 0.062357,
		-0.985403, -0.154109, -0.072331,
		0.080983, -0.050616, -0.995429,
		29.995054, 34.658611, 31.868549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.126514, 42.495216, 30.702099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192425, 42.329384, 30.344110>,  <32.231972, 42.229885, 30.129318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192425, 42.329384, 30.344110>,  <32.126514, 42.495216, 30.702099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192425, 42.329384, 30.344110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683620, -0.702082, 0.199360,
		-0.710993, 0.578969, -0.399104,
		0.164781, -0.414579, -0.894970,
		32.241859, 42.205009, 30.075619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442232, 42.433857, 30.338413>,  <32.126514, 42.495216, 30.702099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442232, 42.433857, 30.338413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680624, 42.159065, 30.172100>,  <31.823658, 41.994190, 30.072311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680624, 42.159065, 30.172100>,  <31.442232, 42.433857, 30.338413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680624, 42.159065, 30.172100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688153, -0.703786, 0.176437,
		-0.413830, 0.180970, -0.892185,
		0.595978, -0.686975, -0.415784,
		31.859417, 41.952972, 30.047365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964001, 41.846378, 30.117392>,  <31.442232, 42.433857, 30.338413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964001, 41.846378, 30.117392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319818, 41.664566, 30.099003>,  <31.533310, 41.555481, 30.087969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319818, 41.664566, 30.099003>,  <30.964001, 41.846378, 30.117392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319818, 41.664566, 30.099003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424420, -0.859444, 0.284998,
		-0.169051, -0.234007, -0.957425,
		0.889545, -0.454529, -0.045972,
		31.586681, 41.528206, 30.085211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781122, 41.220615, 29.881718>,  <30.964001, 41.846378, 30.117392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781122, 41.220615, 29.881718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134953, 41.179462, 30.063683>,  <31.347250, 41.154770, 30.172861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134953, 41.179462, 30.063683>,  <30.781122, 41.220615, 29.881718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134953, 41.179462, 30.063683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325692, -0.834426, 0.444588,
		0.333847, -0.541432, -0.771620,
		0.884574, -0.102886, 0.454910,
		31.400324, 41.148598, 30.200155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839941, 40.523582, 29.799118>,  <30.781122, 41.220615, 29.881718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839941, 40.523582, 29.799118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100800, 40.608479, 30.090229>,  <31.257315, 40.659416, 30.264894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100800, 40.608479, 30.090229>,  <30.839941, 40.523582, 29.799118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100800, 40.608479, 30.090229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256673, -0.841493, 0.475404,
		0.713318, -0.496834, -0.494302,
		0.652148, 0.212240, 0.727776,
		31.296444, 40.672150, 30.308561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367817, 39.981396, 29.901539>,  <30.839941, 40.523582, 29.799118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367817, 39.981396, 29.901539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380220, 40.149509, 30.264284>,  <31.387663, 40.250378, 30.481932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380220, 40.149509, 30.264284>,  <31.367817, 39.981396, 29.901539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380220, 40.149509, 30.264284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239264, -0.877799, 0.414996,
		0.970459, -0.229848, 0.073339,
		0.031009, 0.420284, 0.906862,
		31.389523, 40.275597, 30.536343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881920, 39.686520, 30.379730>,  <31.367817, 39.981396, 29.901539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881920, 39.686520, 30.379730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586206, 39.822559, 30.612209>,  <31.408779, 39.904182, 30.751698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586206, 39.822559, 30.612209>,  <31.881920, 39.686520, 30.379730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586206, 39.822559, 30.612209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087014, -0.904099, 0.418371,
		0.667750, 0.258722, 0.697978,
		-0.739283, 0.340101, 0.581199,
		31.364422, 39.924591, 30.786570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058296, 39.354542, 31.034563>,  <31.881920, 39.686520, 30.379730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058296, 39.354542, 31.034563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675922, 39.471947, 31.032249>,  <31.446497, 39.542389, 31.030861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675922, 39.471947, 31.032249>,  <32.058296, 39.354542, 31.034563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675922, 39.471947, 31.032249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275605, -0.890474, 0.362074,
		0.101124, 0.347714, 0.932132,
		-0.955937, 0.293515, -0.005784,
		31.389141, 39.560001, 31.030514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736509, 38.997963, 31.542255>,  <32.058296, 39.354542, 31.034563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736509, 38.997963, 31.542255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399462, 39.105164, 31.355423>,  <31.197233, 39.169483, 31.243322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399462, 39.105164, 31.355423>,  <31.736509, 38.997963, 31.542255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399462, 39.105164, 31.355423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369976, -0.918356, 0.140500,
		-0.391293, 0.291198, 0.872980,
		-0.842619, 0.268005, -0.467082,
		31.146675, 39.185566, 31.215298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926781, 39.404785, 32.077896>,  <31.736509, 38.997963, 31.542255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926781, 39.404785, 32.077896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202717, 39.276936, 32.337730>,  <32.368279, 39.200226, 32.493629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202717, 39.276936, 32.337730>,  <31.926781, 39.404785, 32.077896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202717, 39.276936, 32.337730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638306, 0.691889, -0.337424,
		-0.341591, 0.647403, 0.681311,
		0.689841, -0.319624, 0.649584,
		32.409668, 39.181049, 32.532604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165764, 39.993572, 32.346050>,  <31.926781, 39.404785, 32.077896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165764, 39.993572, 32.346050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447418, 39.719360, 32.420074>,  <32.616409, 39.554832, 32.464489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447418, 39.719360, 32.420074>,  <32.165764, 39.993572, 32.346050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447418, 39.719360, 32.420074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690929, 0.601370, -0.401212,
		0.163755, 0.410369, 0.897097,
		0.704132, -0.685530, 0.185058,
		32.658657, 39.513702, 32.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705189, 40.395496, 32.629536>,  <32.165764, 39.993572, 32.346050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705189, 40.395496, 32.629536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872524, 40.060898, 32.487957>,  <32.972923, 39.860138, 32.403011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872524, 40.060898, 32.487957>,  <32.705189, 40.395496, 32.629536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872524, 40.060898, 32.487957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734439, 0.540799, -0.410044,
		0.534412, -0.088416, 0.840587,
		0.418334, -0.836492, -0.353946,
		32.998024, 39.809952, 32.381775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468750, 40.401409, 32.904644>,  <32.705189, 40.395496, 32.629536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468750, 40.401409, 32.904644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416191, 40.196198, 32.565342>,  <33.384655, 40.073071, 32.361759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416191, 40.196198, 32.565342>,  <33.468750, 40.401409, 32.904644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416191, 40.196198, 32.565342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790220, 0.462457, -0.402102,
		0.598572, -0.723142, 0.344641,
		-0.131395, -0.513029, -0.848255,
		33.376774, 40.042290, 32.310867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115223, 40.370632, 32.691742>,  <33.468750, 40.401409, 32.904644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115223, 40.370632, 32.691742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934868, 40.237286, 32.360546>,  <33.826653, 40.157280, 32.161827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934868, 40.237286, 32.360546>,  <34.115223, 40.370632, 32.691742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934868, 40.237286, 32.360546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713014, 0.423511, -0.558792,
		0.536944, -0.842322, 0.046735,
		-0.450890, -0.333363, -0.827990,
		33.799603, 40.137276, 32.112148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643452, 40.179466, 32.314125>,  <34.115223, 40.370632, 32.691742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643452, 40.179466, 32.314125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369457, 40.203766, 32.023716>,  <34.205063, 40.218346, 31.849470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369457, 40.203766, 32.023716>,  <34.643452, 40.179466, 32.314125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369457, 40.203766, 32.023716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710288, 0.277459, -0.646921,
		0.162139, -0.958815, -0.233207,
		-0.684983, 0.060753, -0.726022,
		34.163963, 40.221992, 31.805910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778465, 39.762772, 31.692064>,  <34.643452, 40.179466, 32.314125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778465, 39.762772, 31.692064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531025, 40.039268, 31.542652>,  <34.382561, 40.205166, 31.453005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531025, 40.039268, 31.542652>,  <34.778465, 39.762772, 31.692064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531025, 40.039268, 31.542652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725665, 0.320361, -0.608916,
		-0.301241, -0.647734, -0.699782,
		-0.618598, 0.691238, -0.373532,
		34.345444, 40.246639, 31.430592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888153, 39.728554, 30.895668>,  <34.778465, 39.762772, 31.692064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888153, 39.728554, 30.895668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694538, 40.068604, 30.978603>,  <34.578369, 40.272633, 31.028364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694538, 40.068604, 30.978603>,  <34.888153, 39.728554, 30.895668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694538, 40.068604, 30.978603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566581, 0.485055, -0.666114,
		-0.666853, -0.204949, -0.716451,
		-0.484038, 0.850128, 0.207340,
		34.549328, 40.323643, 31.040806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940403, 40.134106, 30.280413>,  <34.888153, 39.728554, 30.895668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940403, 40.134106, 30.280413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837132, 40.425114, 30.534674>,  <34.775169, 40.599720, 30.687231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837132, 40.425114, 30.534674>,  <34.940403, 40.134106, 30.280413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837132, 40.425114, 30.534674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623749, 0.627972, -0.465391,
		-0.737755, 0.276334, -0.615920,
		-0.258177, 0.727524, 0.635653,
		34.759678, 40.643372, 30.725368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933750, 40.681385, 29.898859>,  <34.940403, 40.134106, 30.280413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933750, 40.681385, 29.898859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010815, 40.802822, 30.272108>,  <35.057053, 40.875683, 30.496058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010815, 40.802822, 30.272108>,  <34.933750, 40.681385, 29.898859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010815, 40.802822, 30.272108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562042, 0.745355, -0.358546,
		-0.804357, 0.593532, -0.027027,
		0.192664, 0.303589, 0.933121,
		35.068615, 40.893898, 30.552044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928482, 41.486820, 29.938772>,  <34.933750, 40.681385, 29.898859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928482, 41.486820, 29.938772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118755, 41.357296, 30.265909>,  <35.232922, 41.279579, 30.462191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118755, 41.357296, 30.265909>,  <34.928482, 41.486820, 29.938772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118755, 41.357296, 30.265909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686032, 0.718498, -0.114544,
		-0.550528, 0.615554, 0.563926,
		0.475688, -0.323812, 0.817843,
		35.261463, 41.260151, 30.511263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153000, 42.100437, 30.101473>,  <34.928482, 41.486820, 29.938772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153000, 42.100437, 30.101473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349289, 41.883347, 30.374130>,  <35.467064, 41.753090, 30.537724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349289, 41.883347, 30.374130>,  <35.153000, 42.100437, 30.101473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349289, 41.883347, 30.374130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706439, 0.705760, 0.053358,
		-0.510035, 0.455354, 0.729738,
		0.490723, -0.542729, 0.681642,
		35.496506, 41.720528, 30.578623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175060, 42.508595, 30.699692>,  <35.153000, 42.100437, 30.101473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175060, 42.508595, 30.699692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453007, 42.222214, 30.726730>,  <35.619774, 42.050385, 30.742954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453007, 42.222214, 30.726730>,  <35.175060, 42.508595, 30.699692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453007, 42.222214, 30.726730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699190, 0.694587, 0.169357,
		-0.168203, -0.070419, 0.983234,
		0.694867, -0.715954, 0.067596,
		35.661469, 42.007427, 30.747009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528538, 42.657684, 31.339035>,  <35.175060, 42.508595, 30.699692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528538, 42.657684, 31.339035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800194, 42.425442, 31.159405>,  <35.963188, 42.286095, 31.051626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800194, 42.425442, 31.159405>,  <35.528538, 42.657684, 31.339035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800194, 42.425442, 31.159405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715368, 0.660570, 0.227808,
		0.164380, -0.475968, 0.863964,
		0.679137, -0.580605, -0.449077,
		36.003937, 42.251259, 31.024681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.455536, 40.341450, 26.660526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099228, 40.478333, 26.780142>,  <36.885445, 40.560463, 26.851912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099228, 40.478333, 26.780142>,  <37.455536, 40.341450, 26.660526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099228, 40.478333, 26.780142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095755, -0.784568, 0.612604,
		0.444254, 0.517055, 0.731637,
		-0.890769, 0.342209, 0.299037,
		36.831997, 40.580994, 26.869852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528591, 40.432869, 27.430365>,  <37.455536, 40.341450, 26.660526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528591, 40.432869, 27.430365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133839, 40.417988, 27.367529>,  <36.896988, 40.409061, 27.329828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133839, 40.417988, 27.367529>,  <37.528591, 40.432869, 27.430365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133839, 40.417988, 27.367529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083681, -0.714266, 0.694854,
		-0.138052, 0.698885, 0.701784,
		-0.986884, -0.037200, -0.157090,
		36.837772, 40.406826, 27.320402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217632, 40.313255, 28.129963>,  <37.528591, 40.432869, 27.430365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217632, 40.313255, 28.129963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909504, 40.239136, 27.885904>,  <36.724628, 40.194664, 27.739470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909504, 40.239136, 27.885904>,  <37.217632, 40.313255, 28.129963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909504, 40.239136, 27.885904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384682, -0.628082, 0.676411,
		-0.508558, 0.755763, 0.412542,
		-0.770317, -0.185297, -0.610145,
		36.678410, 40.183548, 27.702862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691212, 40.457184, 28.568100>,  <37.217632, 40.313255, 28.129963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691212, 40.457184, 28.568100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.565063, 40.225353, 28.267532>,  <36.489376, 40.086254, 28.087191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.565063, 40.225353, 28.267532>,  <36.691212, 40.457184, 28.568100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565063, 40.225353, 28.267532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547987, -0.535243, 0.642826,
		-0.774760, 0.614496, -0.148802,
		-0.315369, -0.579577, -0.751421,
		36.470451, 40.051479, 28.042107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965824, 40.329166, 28.676672>,  <36.691212, 40.457184, 28.568100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965824, 40.329166, 28.676672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080589, 40.043453, 28.421333>,  <36.149448, 39.872025, 28.268131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080589, 40.043453, 28.421333>,  <35.965824, 40.329166, 28.676672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080589, 40.043453, 28.421333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245230, -0.698923, 0.671840,
		-0.926035, -0.036221, -0.375696,
		0.286917, -0.714279, -0.638345,
		36.166664, 39.829170, 28.229830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450218, 39.838650, 28.782310>,  <35.965824, 40.329166, 28.676672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450218, 39.838650, 28.782310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768536, 39.650337, 28.629951>,  <35.959526, 39.537350, 28.538536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768536, 39.650337, 28.629951>,  <35.450218, 39.838650, 28.782310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768536, 39.650337, 28.629951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255143, -0.831095, 0.494148,
		-0.549198, -0.296055, -0.781494,
		0.795791, -0.470778, -0.380900,
		36.007275, 39.509106, 28.515682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269821, 39.214836, 28.459576>,  <35.450218, 39.838650, 28.782310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269821, 39.214836, 28.459576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657768, 39.164551, 28.543058>,  <35.890537, 39.134380, 28.593147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657768, 39.164551, 28.543058>,  <35.269821, 39.214836, 28.459576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657768, 39.164551, 28.543058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220555, -0.816983, 0.532818,
		0.103528, -0.562793, -0.820089,
		0.969865, -0.125713, 0.208707,
		35.948727, 39.126839, 28.605671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327530, 38.466976, 28.463249>,  <35.269821, 39.214836, 28.459576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327530, 38.466976, 28.463249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655621, 38.615078, 28.637672>,  <35.852474, 38.703938, 28.742327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655621, 38.615078, 28.637672>,  <35.327530, 38.466976, 28.463249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655621, 38.615078, 28.637672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005334, -0.757302, 0.653043,
		0.572018, -0.537967, -0.619182,
		0.820223, 0.370250, 0.436060,
		35.901688, 38.726154, 28.768490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701283, 37.959354, 28.451099>,  <35.327530, 38.466976, 28.463249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701283, 37.959354, 28.451099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870029, 38.187710, 28.732843>,  <35.971275, 38.324722, 28.901890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870029, 38.187710, 28.732843>,  <35.701283, 37.959354, 28.451099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870029, 38.187710, 28.732843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157276, -0.811173, 0.563261,
		0.892913, -0.126841, -0.431992,
		0.421865, 0.570885, 0.704358,
		35.996590, 38.358974, 28.944151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378555, 37.700974, 28.594721>,  <35.701283, 37.959354, 28.451099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378555, 37.700974, 28.594721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271633, 37.924343, 28.908844>,  <36.207481, 38.058365, 29.097319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271633, 37.924343, 28.908844>,  <36.378555, 37.700974, 28.594721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271633, 37.924343, 28.908844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116622, -0.790224, 0.601619,
		0.956530, 0.252398, 0.146103,
		-0.267302, 0.558427, 0.785308,
		36.191444, 38.091873, 29.144436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731842, 37.387138, 29.151186>,  <36.378555, 37.700974, 28.594721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731842, 37.387138, 29.151186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445751, 37.607182, 29.323620>,  <36.274097, 37.739208, 29.427080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445751, 37.607182, 29.323620>,  <36.731842, 37.387138, 29.151186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445751, 37.607182, 29.323620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127191, -0.708966, 0.693678,
		0.687219, 0.441308, 0.577042,
		-0.715229, 0.550104, 0.431085,
		36.231182, 37.772213, 29.452946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840618, 37.466000, 29.876463>,  <36.731842, 37.387138, 29.151186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840618, 37.466000, 29.876463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443867, 37.505772, 29.844728>,  <36.205818, 37.529633, 29.825687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443867, 37.505772, 29.844728>,  <36.840618, 37.466000, 29.876463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443867, 37.505772, 29.844728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127180, -0.763772, 0.632833,
		0.002324, 0.637782, 0.770213,
		-0.991877, 0.099426, -0.079338,
		36.146305, 37.535599, 29.820927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564335, 37.184422, 30.528404>,  <36.840618, 37.466000, 29.876463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564335, 37.184422, 30.528404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234711, 37.193325, 30.301977>,  <36.036938, 37.198666, 30.166121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234711, 37.193325, 30.301977>,  <36.564335, 37.184422, 30.528404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234711, 37.193325, 30.301977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402821, -0.725609, 0.557877,
		-0.398327, 0.687747, 0.606911,
		-0.824058, 0.022259, -0.566068,
		35.987492, 37.200005, 30.132156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945774, 37.156868, 31.021013>,  <36.564335, 37.184422, 30.528404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945774, 37.156868, 31.021013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800484, 37.063374, 30.660250>,  <35.713310, 37.007278, 30.443792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800484, 37.063374, 30.660250>,  <35.945774, 37.156868, 31.021013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800484, 37.063374, 30.660250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485114, -0.779009, 0.397253,
		-0.795445, 0.581819, 0.169567,
		-0.363224, -0.233733, -0.901908,
		35.691517, 36.993252, 30.389677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808697, 37.527756, 31.641188>,  <35.945774, 37.156868, 31.021013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808697, 37.527756, 31.641188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024368, 37.508900, 31.977535>,  <36.153770, 37.497585, 32.179344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024368, 37.508900, 31.977535>,  <35.808697, 37.527756, 31.641188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024368, 37.508900, 31.977535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782771, 0.396428, -0.479703,
		-0.310730, 0.916855, 0.250647,
		0.539181, -0.047141, 0.840869,
		36.186123, 37.494759, 32.229797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077423, 38.271778, 31.845224>,  <35.808697, 37.527756, 31.641188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077423, 38.271778, 31.845224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307796, 37.982014, 31.996765>,  <36.446022, 37.808155, 32.087688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307796, 37.982014, 31.996765>,  <36.077423, 38.271778, 31.845224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307796, 37.982014, 31.996765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814507, 0.468889, -0.341645,
		0.069853, 0.505342, 0.860087,
		0.575933, -0.724412, 0.378851,
		36.480576, 37.764690, 32.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545677, 38.514023, 32.381180>,  <36.077423, 38.271778, 31.845224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545677, 38.514023, 32.381180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733307, 38.173763, 32.286209>,  <36.845886, 37.969608, 32.229229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733307, 38.173763, 32.286209>,  <36.545677, 38.514023, 32.381180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733307, 38.173763, 32.286209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808652, 0.521764, -0.271746,
		0.355039, -0.064525, 0.932622,
		0.469074, -0.850646, -0.237424,
		36.874027, 37.918568, 32.214981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185108, 38.465767, 32.775562>,  <36.545677, 38.514023, 32.381180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185108, 38.465767, 32.775562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202599, 38.243904, 32.443188>,  <37.213093, 38.110786, 32.243763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202599, 38.243904, 32.443188>,  <37.185108, 38.465767, 32.775562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202599, 38.243904, 32.443188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863188, 0.439724, -0.248090,
		0.502985, -0.706402, 0.497999,
		0.043730, -0.554652, -0.830932,
		37.215717, 38.077507, 32.193909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931549, 38.153496, 32.733730>,  <37.185108, 38.465767, 32.775562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931549, 38.153496, 32.733730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781193, 38.162109, 32.363163>,  <37.690979, 38.167278, 32.140823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781193, 38.162109, 32.363163>,  <37.931549, 38.153496, 32.733730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781193, 38.162109, 32.363163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811459, 0.490415, -0.317848,
		0.447483, -0.871223, -0.201816,
		-0.375890, 0.021533, -0.926414,
		37.668427, 38.168568, 32.085239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565094, 38.130077, 32.288128>,  <37.931549, 38.153496, 32.733730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565094, 38.130077, 32.288128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264610, 38.251831, 32.053848>,  <38.084320, 38.324883, 31.913280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264610, 38.251831, 32.053848>,  <38.565094, 38.130077, 32.288128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264610, 38.251831, 32.053848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621118, 0.626272, -0.471165,
		0.223392, -0.717729, -0.659516,
		-0.751205, 0.304383, -0.585698,
		38.039249, 38.343147, 31.878139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791550, 38.021000, 31.556499>,  <38.565094, 38.130077, 32.288128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791550, 38.021000, 31.556499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519772, 38.312328, 31.592047>,  <38.356705, 38.487125, 31.613375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519772, 38.312328, 31.592047>,  <38.791550, 38.021000, 31.556499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519772, 38.312328, 31.592047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486478, 0.537848, -0.688519,
		-0.549261, -0.424581, -0.719752,
		-0.679449, 0.728320, 0.088870,
		38.315937, 38.530823, 31.618708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791992, 38.227474, 30.953062>,  <38.791550, 38.021000, 31.556499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791992, 38.227474, 30.953062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601040, 38.524479, 31.141012>,  <38.486469, 38.702682, 31.253782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601040, 38.524479, 31.141012>,  <38.791992, 38.227474, 30.953062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601040, 38.524479, 31.141012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302483, 0.640924, -0.705493,
		-0.824991, -0.194661, -0.530563,
		-0.477382, 0.742512, 0.469875,
		38.457825, 38.747234, 31.281975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466995, 38.588955, 30.489735>,  <38.791992, 38.227474, 30.953062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466995, 38.588955, 30.489735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458149, 38.849140, 30.793421>,  <38.452839, 39.005253, 30.975632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458149, 38.849140, 30.793421>,  <38.466995, 38.588955, 30.489735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458149, 38.849140, 30.793421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251350, 0.738626, -0.625503,
		-0.967644, 0.176994, -0.179831,
		-0.022118, 0.650465, 0.759214,
		38.451515, 39.044281, 31.021185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083366, 39.070400, 30.316113>,  <38.466995, 38.588955, 30.489735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083366, 39.070400, 30.316113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271034, 39.256794, 30.616177>,  <38.383633, 39.368629, 30.796215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271034, 39.256794, 30.616177>,  <38.083366, 39.070400, 30.316113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271034, 39.256794, 30.616177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128419, 0.804426, -0.580006,
		-0.873724, 0.368453, 0.317568,
		0.469165, 0.465983, 0.750162,
		38.411785, 39.396587, 30.841225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743282, 39.628742, 30.347143>,  <38.083366, 39.070400, 30.316113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743282, 39.628742, 30.347143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105965, 39.718987, 30.489683>,  <38.323574, 39.773132, 30.575207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105965, 39.718987, 30.489683>,  <37.743282, 39.628742, 30.347143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105965, 39.718987, 30.489683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058839, 0.904300, -0.422823,
		-0.417639, 0.362409, 0.833209,
		0.906706, 0.225612, 0.356348,
		38.377975, 39.786671, 30.596588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650162, 40.309078, 30.541643>,  <37.743282, 39.628742, 30.347143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650162, 40.309078, 30.541643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046684, 40.265446, 30.512203>,  <38.284595, 40.239265, 30.494539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046684, 40.265446, 30.512203>,  <37.650162, 40.309078, 30.541643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046684, 40.265446, 30.512203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071528, 0.916154, -0.394392,
		0.110450, 0.385698, 0.915990,
		0.991304, -0.109080, -0.073601,
		38.344074, 40.232723, 30.490124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984772, 41.017059, 30.788782>,  <37.650162, 40.309078, 30.541643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984772, 41.017059, 30.788782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272118, 40.852505, 30.564386>,  <38.444527, 40.753773, 30.429749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272118, 40.852505, 30.564386>,  <37.984772, 41.017059, 30.788782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272118, 40.852505, 30.564386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291558, 0.910208, -0.294135,
		0.631621, 0.047735, 0.773806,
		0.718365, -0.411391, -0.560989,
		38.487629, 40.729088, 30.396090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495480, 41.545414, 30.860641>,  <37.984772, 41.017059, 30.788782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495480, 41.545414, 30.860641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554722, 41.311161, 30.541870>,  <38.590267, 41.170609, 30.350607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554722, 41.311161, 30.541870>,  <38.495480, 41.545414, 30.860641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554722, 41.311161, 30.541870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125819, 0.810427, -0.572170,
		0.980936, -0.015530, 0.193710,
		0.148102, -0.585634, -0.796931,
		38.599152, 41.135471, 30.302792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021534, 41.295612, 31.447321>,  <38.495480, 41.545414, 30.860641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021534, 41.295612, 31.447321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160202, 41.453217, 31.787809>,  <39.243401, 41.547779, 31.992104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160202, 41.453217, 31.787809>,  <39.021534, 41.295612, 31.447321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160202, 41.453217, 31.787809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608622, -0.596036, 0.523755,
		0.713723, -0.699642, 0.033176,
		0.346667, 0.394008, 0.851223,
		39.264202, 41.571419, 32.043175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245640, 40.784477, 31.914867>,  <39.021534, 41.295612, 31.447321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245640, 40.784477, 31.914867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148567, 41.107536, 32.129829>,  <39.090324, 41.301373, 32.258808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148567, 41.107536, 32.129829>,  <39.245640, 40.784477, 31.914867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148567, 41.107536, 32.129829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439811, -0.585365, 0.681112,
		0.864679, -0.071061, 0.497274,
		-0.242686, 0.807650, 0.537406,
		39.075760, 41.349831, 32.291050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055069, 40.476139, 32.497063>,  <39.245640, 40.784477, 31.914867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055069, 40.476139, 32.497063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942772, 40.858078, 32.535957>,  <38.875393, 41.087242, 32.559292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942772, 40.858078, 32.535957>,  <39.055069, 40.476139, 32.497063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942772, 40.858078, 32.535957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626047, -0.258970, 0.735527,
		0.727495, 0.145619, 0.670482,
		-0.280741, 0.954845, 0.097235,
		38.858551, 41.144531, 32.565128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143787, 40.617580, 33.176537>,  <39.055069, 40.476139, 32.497063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143787, 40.617580, 33.176537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873676, 40.874298, 33.031151>,  <38.711609, 41.028328, 32.943920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873676, 40.874298, 33.031151>,  <39.143787, 40.617580, 33.176537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873676, 40.874298, 33.031151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656432, -0.298263, 0.692918,
		0.336301, 0.706501, 0.622702,
		-0.675276, 0.641791, -0.363464,
		38.671093, 41.066837, 32.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740242, 40.816612, 33.722725>,  <39.143787, 40.617580, 33.176537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740242, 40.816612, 33.722725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504379, 40.932468, 33.421154>,  <38.362862, 41.001984, 33.240211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504379, 40.932468, 33.421154>,  <38.740242, 40.816612, 33.722725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504379, 40.932468, 33.421154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790157, -0.400120, 0.464279,
		-0.167185, 0.869488, 0.464801,
		-0.589661, 0.289645, -0.753927,
		38.327480, 41.019363, 33.194977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024181, 41.227043, 33.963989>,  <38.740242, 40.816612, 33.722725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024181, 41.227043, 33.963989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963890, 41.049061, 33.610878>,  <37.927715, 40.942272, 33.399010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963890, 41.049061, 33.610878>,  <38.024181, 41.227043, 33.963989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963890, 41.049061, 33.610878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848184, -0.400494, 0.346680,
		-0.507805, 0.801013, -0.317038,
		-0.150724, -0.444953, -0.882779,
		37.918674, 40.915573, 33.346043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338123, 41.288410, 33.933132>,  <38.024181, 41.227043, 33.963989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338123, 41.288410, 33.933132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420593, 40.990330, 33.679462>,  <37.470074, 40.811481, 33.527260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420593, 40.990330, 33.679462>,  <37.338123, 41.288410, 33.933132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420593, 40.990330, 33.679462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824694, -0.481152, 0.297275,
		-0.526661, 0.461707, -0.713761,
		0.206174, -0.745197, -0.634171,
		37.482445, 40.766769, 33.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675751, 40.983173, 33.814526>,  <37.338123, 41.288410, 33.933132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675751, 40.983173, 33.814526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911003, 40.708256, 33.644005>,  <37.052155, 40.543304, 33.541695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911003, 40.708256, 33.644005>,  <36.675751, 40.983173, 33.814526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911003, 40.708256, 33.644005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666605, -0.710417, 0.225711,
		-0.457979, 0.151425, -0.875971,
		0.588127, -0.687298, -0.426297,
		37.087440, 40.502068, 33.516117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245243, 40.583759, 33.341686>,  <36.675751, 40.983173, 33.814526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245243, 40.583759, 33.341686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550137, 40.356571, 33.465885>,  <36.733074, 40.220261, 33.540405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550137, 40.356571, 33.465885>,  <36.245243, 40.583759, 33.341686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550137, 40.356571, 33.465885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641281, -0.727855, 0.242868,
		0.088055, -0.384238, -0.919025,
		0.762236, -0.567968, 0.310496,
		36.778809, 40.186180, 33.559032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953159, 39.932693, 33.247559>,  <36.245243, 40.583759, 33.341686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953159, 39.932693, 33.247559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252632, 39.875690, 33.506531>,  <36.432316, 39.841488, 33.661915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252632, 39.875690, 33.506531>,  <35.953159, 39.932693, 33.247559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252632, 39.875690, 33.506531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503788, -0.757101, 0.415928,
		0.430900, -0.637566, -0.638619,
		0.748681, -0.142505, 0.647433,
		36.477238, 39.832939, 33.700760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976734, 39.154537, 33.302650>,  <35.953159, 39.932693, 33.247559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976734, 39.154537, 33.302650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157814, 39.329010, 33.613728>,  <36.266460, 39.433693, 33.800373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157814, 39.329010, 33.613728>,  <35.976734, 39.154537, 33.302650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157814, 39.329010, 33.613728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421445, -0.663947, 0.617704,
		0.785779, -0.607390, -0.116741,
		0.452697, 0.436179, 0.777697,
		36.293625, 39.459866, 33.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126007, 38.546021, 33.704334>,  <35.976734, 39.154537, 33.302650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126007, 38.546021, 33.704334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177456, 38.848736, 33.960686>,  <36.208324, 39.030365, 34.114498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177456, 38.848736, 33.960686>,  <36.126007, 38.546021, 33.704334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177456, 38.848736, 33.960686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279262, -0.592458, 0.755650,
		0.951562, -0.276167, 0.135139,
		0.128622, 0.756786, 0.640883,
		36.216042, 39.075771, 34.152950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461689, 38.230595, 34.268318>,  <36.126007, 38.546021, 33.704334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461689, 38.230595, 34.268318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303047, 38.570164, 34.408051>,  <36.207863, 38.773907, 34.491890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303047, 38.570164, 34.408051>,  <36.461689, 38.230595, 34.268318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303047, 38.570164, 34.408051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393527, -0.501026, 0.770785,
		0.829361, 0.168229, 0.532785,
		-0.396607, 0.848924, 0.349329,
		36.184067, 38.824841, 34.512848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726864, 38.278229, 34.985561>,  <36.461689, 38.230595, 34.268318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726864, 38.278229, 34.985561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409092, 38.520603, 34.968960>,  <36.218430, 38.666027, 34.959000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409092, 38.520603, 34.968960>,  <36.726864, 38.278229, 34.985561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409092, 38.520603, 34.968960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482959, -0.588811, 0.648115,
		0.368275, 0.534928, 0.760411,
		-0.794433, 0.605932, -0.041504,
		36.170761, 38.702381, 34.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.110069, 42.546864, 31.856791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264889, 42.470047, 31.496056>,  <36.357780, 42.423958, 31.279613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264889, 42.470047, 31.496056>,  <36.110069, 42.546864, 31.856791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264889, 42.470047, 31.496056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724212, 0.668693, 0.168421,
		0.570710, -0.718310, 0.397895,
		0.387048, -0.192041, -0.901839,
		36.381004, 42.412434, 31.225504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789268, 42.201488, 31.945995>,  <36.110069, 42.546864, 31.856791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789268, 42.201488, 31.945995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774490, 42.380577, 31.588633>,  <36.765621, 42.488029, 31.374214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774490, 42.380577, 31.588633>,  <36.789268, 42.201488, 31.945995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774490, 42.380577, 31.588633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794683, 0.555220, 0.245378,
		0.605899, -0.700909, -0.376315,
		-0.036950, 0.447725, -0.893408,
		36.763405, 42.514896, 31.320610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503063, 42.162567, 31.755554>,  <36.789268, 42.201488, 31.945995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503063, 42.162567, 31.755554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335361, 42.456413, 31.542175>,  <37.234741, 42.632721, 31.414148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335361, 42.456413, 31.542175>,  <37.503063, 42.162567, 31.755554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335361, 42.456413, 31.542175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867906, 0.496725, 0.001922,
		0.266388, -0.462174, -0.845832,
		-0.419258, 0.734615, -0.533445,
		37.209583, 42.676796, 31.382141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027832, 42.407219, 31.274700>,  <37.503063, 42.162567, 31.755554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027832, 42.407219, 31.274700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777298, 42.717270, 31.307882>,  <37.626980, 42.903301, 31.327791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777298, 42.717270, 31.307882>,  <38.027832, 42.407219, 31.274700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777298, 42.717270, 31.307882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762094, 0.631222, -0.144124,
		-0.164079, -0.027048, -0.986077,
		-0.626331, 0.775131, 0.082957,
		37.589397, 42.949810, 31.332769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266922, 42.883862, 30.725849>,  <38.027832, 42.407219, 31.274700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266922, 42.883862, 30.725849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 43.102440, 30.975283>,  <37.909126, 43.233585, 31.124943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 43.102440, 30.975283>,  <38.266922, 42.883862, 30.725849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043301, 43.102440, 30.975283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620581, 0.774537, -0.122357,
		-0.549850, 0.318579, -0.772122,
		-0.559057, 0.546442, 0.623583,
		37.875584, 43.266373, 31.162357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167156, 43.448242, 30.347317>,  <38.266922, 42.883862, 30.725849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167156, 43.448242, 30.347317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091183, 43.551666, 30.726173>,  <38.045601, 43.613720, 30.953487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091183, 43.551666, 30.726173>,  <38.167156, 43.448242, 30.347317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091183, 43.551666, 30.726173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611490, 0.785895, -0.091919,
		-0.768119, 0.561708, -0.307373,
		-0.189931, 0.258560, 0.947139,
		38.034203, 43.629234, 31.010315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798561, 44.143833, 30.243263>,  <38.167156, 43.448242, 30.347317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798561, 44.143833, 30.243263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.954010, 44.099457, 30.609142>,  <38.047279, 44.072830, 30.828669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.954010, 44.099457, 30.609142>,  <37.798561, 44.143833, 30.243263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954010, 44.099457, 30.609142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427340, 0.901199, -0.072259,
		-0.816306, 0.418968, 0.397631,
		0.388619, -0.110938, 0.914696,
		38.070595, 44.066174, 30.883551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638149, 44.752220, 30.619699>,  <37.798561, 44.143833, 30.243263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638149, 44.752220, 30.619699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916939, 44.592087, 30.857676>,  <38.084213, 44.496006, 31.000462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916939, 44.592087, 30.857676>,  <37.638149, 44.752220, 30.619699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916939, 44.592087, 30.857676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330351, 0.915627, 0.229119,
		-0.636470, 0.036850, 0.770421,
		0.696975, -0.400337, 0.594942,
		38.126030, 44.471985, 31.036158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707298, 45.283577, 31.017323>,  <37.638149, 44.752220, 30.619699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707298, 45.283577, 31.017323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036514, 45.057316, 31.037931>,  <38.234043, 44.921558, 31.050297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036514, 45.057316, 31.037931>,  <37.707298, 45.283577, 31.017323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036514, 45.057316, 31.037931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567650, 0.816015, -0.109057,
		0.019646, 0.119004, 0.992700,
		0.823035, -0.565649, 0.051521,
		38.283424, 44.887623, 31.053389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137012, 45.415985, 31.688248>,  <37.707298, 45.283577, 31.017323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137012, 45.415985, 31.688248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385815, 45.281292, 31.405483>,  <38.535095, 45.200474, 31.235825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385815, 45.281292, 31.405483>,  <38.137012, 45.415985, 31.688248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385815, 45.281292, 31.405483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523259, 0.850375, 0.055335,
		0.582505, -0.404315, 0.705136,
		0.622003, -0.336736, -0.706909,
		38.572414, 45.180271, 31.193411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777462, 45.637207, 31.804998>,  <38.137012, 45.415985, 31.688248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777462, 45.637207, 31.804998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822281, 45.552975, 31.416544>,  <38.849171, 45.502438, 31.183472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822281, 45.552975, 31.416544>,  <38.777462, 45.637207, 31.804998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822281, 45.552975, 31.416544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718619, 0.692153, -0.067173,
		0.686319, -0.690349, 0.228877,
		0.112045, -0.210577, -0.971135,
		38.855896, 45.489803, 31.125204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526390, 45.659344, 31.828594>,  <38.777462, 45.637207, 31.804998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526390, 45.659344, 31.828594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391991, 45.665031, 31.451893>,  <39.311352, 45.668446, 31.225872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391991, 45.665031, 31.451893>,  <39.526390, 45.659344, 31.828594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391991, 45.665031, 31.451893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642469, 0.734610, -0.218129,
		0.688722, -0.678340, -0.255963,
		-0.335999, 0.014218, -0.941755,
		39.291191, 45.669296, 31.169367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008457, 45.671501, 31.305206>,  <39.526390, 45.659344, 31.828594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008457, 45.671501, 31.305206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709503, 45.851093, 31.109312>,  <39.530132, 45.958847, 30.991776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709503, 45.851093, 31.109312>,  <40.008457, 45.671501, 31.305206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709503, 45.851093, 31.109312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574594, 0.806861, -0.137175,
		0.333560, -0.383921, -0.861013,
		-0.747382, 0.448977, -0.489735,
		39.485291, 45.985786, 30.962391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224747, 45.905396, 30.621836>,  <40.008457, 45.671501, 31.305206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224747, 45.905396, 30.621836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936741, 46.133568, 30.779919>,  <39.763935, 46.270470, 30.874767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936741, 46.133568, 30.779919>,  <40.224747, 45.905396, 30.621836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936741, 46.133568, 30.779919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562875, 0.813150, -0.148183,
		-0.405890, 0.115757, -0.906562,
		-0.720018, 0.570427, 0.395206,
		39.720734, 46.304695, 30.898479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894176, 46.114071, 30.231785>,  <40.224747, 45.905396, 30.621836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894176, 46.114071, 30.231785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165844, 45.993618, 29.964041>,  <41.328846, 45.921345, 29.803394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165844, 45.993618, 29.964041>,  <40.894176, 46.114071, 30.231785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165844, 45.993618, 29.964041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056017, -0.888035, 0.456350,
		-0.731839, -0.347436, -0.586260,
		0.679172, -0.301134, -0.669361,
		41.369595, 45.903278, 29.763233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665306, 45.425426, 30.007263>,  <40.894176, 46.114071, 30.231785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665306, 45.425426, 30.007263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.052479, 45.436878, 29.907434>,  <41.284782, 45.443748, 29.847538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.052479, 45.436878, 29.907434>,  <40.665306, 45.425426, 30.007263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052479, 45.436878, 29.907434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085556, -0.971659, 0.220364,
		-0.236190, -0.234650, -0.942950,
		0.967933, 0.028627, -0.249572,
		41.342857, 45.445465, 29.832563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741268, 44.884872, 29.572254>,  <40.665306, 45.425426, 30.007263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741268, 44.884872, 29.572254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093655, 44.985455, 29.732586>,  <41.305088, 45.045803, 29.828785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093655, 44.985455, 29.732586>,  <40.741268, 44.884872, 29.572254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093655, 44.985455, 29.732586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121346, -0.938842, 0.322258,
		0.457350, -0.235260, -0.857604,
		0.880969, 0.251452, 0.400831,
		41.357944, 45.060890, 29.852835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198906, 44.427792, 29.382755>,  <40.741268, 44.884872, 29.572254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198906, 44.427792, 29.382755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.362629, 44.580894, 29.714046>,  <41.460861, 44.672756, 29.912821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.362629, 44.580894, 29.714046>,  <41.198906, 44.427792, 29.382755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362629, 44.580894, 29.714046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234401, -0.921396, 0.309977,
		0.881775, 0.067264, -0.466850,
		0.409304, 0.382760, 0.828230,
		41.485420, 44.695721, 29.962515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490452, 43.915668, 29.533337>,  <41.198906, 44.427792, 29.382755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490452, 43.915668, 29.533337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543964, 44.120171, 29.872917>,  <41.576073, 44.242870, 30.076666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543964, 44.120171, 29.872917>,  <41.490452, 43.915668, 29.533337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543964, 44.120171, 29.872917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068001, -0.859370, 0.506812,
		0.988675, -0.010073, -0.149733,
		0.133782, 0.511254, 0.848953,
		41.584099, 44.273548, 30.127604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979000, 43.506054, 29.981417>,  <41.490452, 43.915668, 29.533337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979000, 43.506054, 29.981417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777035, 43.730812, 30.243513>,  <41.655857, 43.865665, 30.400770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777035, 43.730812, 30.243513>,  <41.979000, 43.506054, 29.981417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777035, 43.730812, 30.243513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168026, -0.808568, 0.563902,
		0.846660, 0.174622, 0.502667,
		-0.504910, 0.561894, 0.655241,
		41.625561, 43.899380, 30.440084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217991, 43.317577, 30.691463>,  <41.979000, 43.506054, 29.981417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217991, 43.317577, 30.691463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880093, 43.521706, 30.755947>,  <41.677353, 43.644180, 30.794638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880093, 43.521706, 30.755947>,  <42.217991, 43.317577, 30.691463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880093, 43.521706, 30.755947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294675, -0.694977, 0.655876,
		0.446742, 0.506541, 0.737454,
		-0.844742, 0.510317, 0.161210,
		41.626671, 43.674801, 30.804310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091297, 43.446770, 31.441208>,  <42.217991, 43.317577, 30.691463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091297, 43.446770, 31.441208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729439, 43.473774, 31.272892>,  <41.512325, 43.489975, 31.171904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729439, 43.473774, 31.272892>,  <42.091297, 43.446770, 31.441208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729439, 43.473774, 31.272892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356355, -0.661359, 0.660011,
		-0.233734, 0.747025, 0.622352,
		-0.904643, 0.067512, -0.420788,
		41.458046, 43.494026, 31.146656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589497, 43.358990, 32.033752>,  <42.091297, 43.446770, 31.441208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589497, 43.358990, 32.033752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.319435, 43.354507, 31.738716>,  <41.157398, 43.351818, 31.561695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.319435, 43.354507, 31.738716>,  <41.589497, 43.358990, 32.033752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319435, 43.354507, 31.738716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609681, -0.554412, 0.566495,
		-0.415277, 0.832167, 0.367482,
		-0.675155, -0.011205, -0.737591,
		41.116890, 43.351147, 31.517439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897923, 43.614223, 32.251961>,  <41.589497, 43.358990, 32.033752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897923, 43.614223, 32.251961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836906, 43.369205, 31.941730>,  <40.800297, 43.222195, 31.755592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836906, 43.369205, 31.941730>,  <40.897923, 43.614223, 32.251961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836906, 43.369205, 31.941730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714350, -0.473972, 0.514834,
		-0.682961, 0.632567, -0.365272,
		-0.152538, -0.612543, -0.775579,
		40.791145, 43.185444, 31.709057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180859, 43.462933, 32.259361>,  <40.897923, 43.614223, 32.251961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180859, 43.462933, 32.259361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308128, 43.166569, 32.022781>,  <40.384491, 42.988750, 31.880833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308128, 43.166569, 32.022781>,  <40.180859, 43.462933, 32.259361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308128, 43.166569, 32.022781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679872, -0.613123, 0.402311,
		-0.660710, 0.274108, -0.698804,
		0.318176, -0.740909, -0.591455,
		40.403580, 42.944298, 31.845345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553288, 43.156174, 31.937378>,  <40.180859, 43.462933, 32.259361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553288, 43.156174, 31.937378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847843, 42.885658, 31.929745>,  <40.024578, 42.723351, 31.925165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847843, 42.885658, 31.929745>,  <39.553288, 43.156174, 31.937378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847843, 42.885658, 31.929745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676081, -0.736636, 0.016788,
		-0.025412, 0.000540, -0.999677,
		0.736389, -0.676289, -0.019085,
		40.068760, 42.682770, 31.924019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339638, 42.778008, 31.436375>,  <39.553288, 43.156174, 31.937378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339638, 42.778008, 31.436375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.575512, 42.549210, 31.664446>,  <39.717037, 42.411930, 31.801289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.575512, 42.549210, 31.664446>,  <39.339638, 42.778008, 31.436375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575512, 42.549210, 31.664446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788544, -0.560354, 0.253381,
		0.174570, -0.599024, -0.781470,
		0.589682, -0.571991, 0.570177,
		39.752415, 42.377613, 31.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116333, 42.163746, 31.282291>,  <39.339638, 42.778008, 31.436375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116333, 42.163746, 31.282291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300140, 42.107449, 31.633070>,  <39.410427, 42.073669, 31.843536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300140, 42.107449, 31.633070>,  <39.116333, 42.163746, 31.282291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300140, 42.107449, 31.633070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675841, -0.696033, 0.242439,
		0.576262, -0.704081, -0.414960,
		0.459523, -0.140739, 0.876944,
		39.437996, 42.065228, 31.896152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106293, 41.802208, 30.569052>,  <39.116333, 42.163746, 31.282291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106293, 41.802208, 30.569052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942154, 41.567093, 30.290163>,  <38.843670, 41.426022, 30.122829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942154, 41.567093, 30.290163>,  <39.106293, 41.802208, 30.569052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942154, 41.567093, 30.290163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404807, 0.567693, -0.716838,
		0.817158, -0.576392, 0.004991,
		-0.410346, -0.587790, -0.697222,
		38.819050, 41.390755, 30.080996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628124, 41.672501, 29.980087>,  <39.106293, 41.802208, 30.569052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628124, 41.672501, 29.980087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269947, 41.577888, 29.829235>,  <39.055038, 41.521122, 29.738724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269947, 41.577888, 29.829235>,  <39.628124, 41.672501, 29.980087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269947, 41.577888, 29.829235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252588, 0.427630, -0.867947,
		0.366567, -0.872460, -0.323176,
		-0.895449, -0.236530, -0.377128,
		39.001312, 41.506927, 29.716097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759674, 41.492336, 29.401287>,  <39.628124, 41.672501, 29.980087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759674, 41.492336, 29.401287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375126, 41.593857, 29.358650>,  <39.144398, 41.654770, 29.333067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375126, 41.593857, 29.358650>,  <39.759674, 41.492336, 29.401287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375126, 41.593857, 29.358650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243950, 0.606113, -0.757044,
		-0.127528, -0.753800, -0.644610,
		-0.961366, 0.253797, -0.106593,
		39.086716, 41.669994, 29.326672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684582, 41.454613, 28.728081>,  <39.759674, 41.492336, 29.401287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684582, 41.454613, 28.728081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409611, 41.705135, 28.875153>,  <39.244629, 41.855450, 28.963396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409611, 41.705135, 28.875153>,  <39.684582, 41.454613, 28.728081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409611, 41.705135, 28.875153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206841, 0.654140, -0.727542,
		-0.696176, -0.424081, -0.579219,
		-0.687427, 0.626303, 0.367679,
		39.203384, 41.893024, 28.985456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497765, 41.835587, 28.187134>,  <39.684582, 41.454613, 28.728081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497765, 41.835587, 28.187134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312069, 42.045498, 28.472536>,  <39.200649, 42.171444, 28.643778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312069, 42.045498, 28.472536>,  <39.497765, 41.835587, 28.187134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312069, 42.045498, 28.472536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108551, 0.833213, -0.542193,
		-0.879031, -0.174257, -0.443777,
		-0.464242, 0.524777, 0.713504,
		39.172798, 42.202930, 28.686588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972534, 42.201042, 27.791695>,  <39.497765, 41.835587, 28.187134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972534, 42.201042, 27.791695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044815, 42.398766, 28.131815>,  <39.088184, 42.517399, 28.335886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044815, 42.398766, 28.131815>,  <38.972534, 42.201042, 27.791695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044815, 42.398766, 28.131815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388747, 0.758237, -0.523404,
		-0.903449, 0.425134, -0.055141,
		0.180707, 0.494305, 0.850299,
		39.099026, 42.547058, 28.386904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582649, 42.830715, 27.798492>,  <38.972534, 42.201042, 27.791695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582649, 42.830715, 27.798492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906055, 42.876968, 28.029295>,  <39.100098, 42.904720, 28.167776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906055, 42.876968, 28.029295>,  <38.582649, 42.830715, 27.798492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906055, 42.876968, 28.029295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334161, 0.716882, -0.611896,
		-0.484399, 0.687539, 0.540969,
		0.808514, 0.115631, 0.577006,
		39.148609, 42.911659, 28.202396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156197, 43.253395, 27.302656>,  <38.582649, 42.830715, 27.798492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156197, 43.253395, 27.302656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235725, 43.139938, 26.927420>,  <38.283443, 43.071865, 26.702278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235725, 43.139938, 26.927420>,  <38.156197, 43.253395, 27.302656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235725, 43.139938, 26.927420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597073, -0.794108, 0.113561,
		-0.777157, 0.537530, -0.327244,
		0.198825, -0.283643, -0.938091,
		38.295372, 43.054844, 26.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497414, 43.134586, 27.058950>,  <38.156197, 43.253395, 27.302656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497414, 43.134586, 27.058950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730042, 42.930138, 26.805799>,  <37.869617, 42.807468, 26.653910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730042, 42.930138, 26.805799>,  <37.497414, 43.134586, 27.058950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730042, 42.930138, 26.805799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668345, -0.743729, -0.013522,
		-0.463777, 0.430843, -0.774136,
		0.581573, -0.511118, -0.632875,
		37.904514, 42.776802, 26.615936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053734, 42.958389, 26.555319>,  <37.497414, 43.134586, 27.058950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053734, 42.958389, 26.555319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338108, 42.679184, 26.521040>,  <37.508732, 42.511662, 26.500473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338108, 42.679184, 26.521040>,  <37.053734, 42.958389, 26.555319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338108, 42.679184, 26.521040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691743, -0.716049, 0.093620,
		-0.126711, -0.007278, -0.991913,
		0.710940, -0.698012, -0.085697,
		37.551392, 42.469780, 26.495331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666481, 42.480537, 26.288052>,  <37.053734, 42.958389, 26.555319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666481, 42.480537, 26.288052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009666, 42.290302, 26.365726>,  <37.215580, 42.176163, 26.412331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009666, 42.290302, 26.365726>,  <36.666481, 42.480537, 26.288052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009666, 42.290302, 26.365726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505902, -0.847875, 0.158656,
		0.089191, -0.234360, -0.968050,
		0.857968, -0.475587, 0.194186,
		37.267056, 42.147625, 26.423983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582718, 41.862465, 25.841166>,  <36.666481, 42.480537, 26.288052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582718, 41.862465, 25.841166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827599, 41.793400, 26.149815>,  <36.974525, 41.751961, 26.335005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827599, 41.793400, 26.149815>,  <36.582718, 41.862465, 25.841166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827599, 41.793400, 26.149815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401017, -0.908849, 0.114798,
		0.681468, -0.379713, -0.625635,
		0.612198, -0.172659, 0.771623,
		37.011257, 41.741604, 26.381302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766628, 41.133060, 25.684616>,  <36.582718, 41.862465, 25.841166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766628, 41.133060, 25.684616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840343, 41.235813, 26.064100>,  <36.884571, 41.297462, 26.291790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840343, 41.235813, 26.064100>,  <36.766628, 41.133060, 25.684616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840343, 41.235813, 26.064100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373762, -0.874412, 0.309365,
		0.909032, -0.411604, -0.065134,
		0.184290, 0.256878, 0.948710,
		36.895630, 41.312878, 26.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042301, 40.488010, 26.003962>,  <36.766628, 41.133060, 25.684616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042301, 40.488010, 26.003962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955208, 40.730846, 26.309650>,  <36.902950, 40.876549, 26.493063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955208, 40.730846, 26.309650>,  <37.042301, 40.488010, 26.003962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955208, 40.730846, 26.309650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220268, -0.793371, 0.567489,
		0.950828, -0.044771, 0.306468,
		-0.217735, 0.607089, 0.764221,
		36.889889, 40.912971, 26.538918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.746876, 45.884682, 28.607443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884377, 45.755932, 28.960314>,  <37.966877, 45.678684, 29.172035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884377, 45.755932, 28.960314>,  <37.746876, 45.884682, 28.607443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884377, 45.755932, 28.960314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883636, -0.428834, 0.187855,
		0.317842, -0.844097, -0.431828,
		0.343751, -0.321871, 0.882176,
		37.987503, 45.659370, 29.224966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535797, 45.143822, 28.593298>,  <37.746876, 45.884682, 28.607443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535797, 45.143822, 28.593298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580654, 45.266556, 28.971352>,  <37.607567, 45.340195, 29.198183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580654, 45.266556, 28.971352>,  <37.535797, 45.143822, 28.593298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580654, 45.266556, 28.971352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841451, -0.476608, 0.254568,
		0.528568, -0.823831, 0.204740,
		0.112141, 0.306835, 0.945133,
		37.614296, 45.358608, 29.254892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527710, 44.618324, 29.010330>,  <37.535797, 45.143822, 28.593298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527710, 44.618324, 29.010330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415653, 44.924133, 29.242544>,  <37.348419, 45.107620, 29.381872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415653, 44.924133, 29.242544>,  <37.527710, 44.618324, 29.010330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415653, 44.924133, 29.242544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836573, -0.491033, 0.242963,
		0.470813, -0.417595, 0.777142,
		-0.280143, 0.764526, 0.580534,
		37.331612, 45.153492, 29.416704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262985, 44.345276, 29.569984>,  <37.527710, 44.618324, 29.010330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262985, 44.345276, 29.569984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.092770, 44.707180, 29.562815>,  <36.990639, 44.924324, 29.558514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.092770, 44.707180, 29.562815>,  <37.262985, 44.345276, 29.569984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092770, 44.707180, 29.562815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868030, -0.402502, 0.290717,
		0.255816, 0.139269, 0.956641,
		-0.425537, 0.904763, -0.017923,
		36.965107, 44.978607, 29.557438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968933, 44.417850, 30.209587>,  <37.262985, 44.345276, 29.569984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968933, 44.417850, 30.209587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766697, 44.678482, 29.983376>,  <36.645355, 44.834862, 29.847649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766697, 44.678482, 29.983376>,  <36.968933, 44.417850, 30.209587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766697, 44.678482, 29.983376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861627, -0.415117, 0.292023,
		-0.044485, 0.634920, 0.771296,
		-0.505590, 0.651579, -0.565531,
		36.615021, 44.873955, 29.813717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370815, 44.477257, 30.524216>,  <36.968933, 44.417850, 30.209587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370815, 44.477257, 30.524216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285122, 44.630310, 30.164728>,  <36.233707, 44.722141, 29.949036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285122, 44.630310, 30.164728>,  <36.370815, 44.477257, 30.524216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285122, 44.630310, 30.164728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858827, -0.512093, -0.013301,
		-0.465317, 0.768995, 0.438322,
		-0.214233, 0.382632, -0.898719,
		36.220852, 44.745098, 29.895113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691990, 44.712067, 30.465322>,  <36.370815, 44.477257, 30.524216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691990, 44.712067, 30.465322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770119, 44.659637, 30.076546>,  <35.816994, 44.628181, 29.843279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770119, 44.659637, 30.076546>,  <35.691990, 44.712067, 30.465322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770119, 44.659637, 30.076546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849873, -0.517210, -0.101040,
		-0.489454, 0.845762, -0.212417,
		0.195320, -0.131073, -0.971941,
		35.828716, 44.620316, 29.784964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035084, 44.688267, 30.252979>,  <35.691990, 44.712067, 30.465322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035084, 44.688267, 30.252979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.237896, 44.560326, 29.932825>,  <35.359585, 44.483562, 29.740732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.237896, 44.560326, 29.932825>,  <35.035084, 44.688267, 30.252979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237896, 44.560326, 29.932825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824268, -0.451420, -0.341764,
		-0.251997, 0.833017, -0.492525,
		0.507031, -0.319849, -0.800385,
		35.390007, 44.464371, 29.692709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701149, 45.105526, 29.863091>,  <35.035084, 44.688267, 30.252979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701149, 45.105526, 29.863091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852917, 44.770535, 29.705780>,  <34.943977, 44.569538, 29.611395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852917, 44.770535, 29.705780>,  <34.701149, 45.105526, 29.863091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852917, 44.770535, 29.705780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924990, -0.333789, -0.181600,
		0.020816, 0.432678, -0.901308,
		0.379421, -0.837481, -0.393275,
		34.966743, 44.519291, 29.587797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207733, 44.982460, 29.225174>,  <34.701149, 45.105526, 29.863091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207733, 44.982460, 29.225174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387589, 44.628666, 29.274986>,  <34.495502, 44.416389, 29.304874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387589, 44.628666, 29.274986>,  <34.207733, 44.982460, 29.225174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387589, 44.628666, 29.274986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850477, -0.466555, -0.242930,
		0.272969, 0.003319, -0.962017,
		0.449640, -0.884486, 0.124532,
		34.522480, 44.363319, 29.312346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977779, 44.587574, 28.565760>,  <34.207733, 44.982460, 29.225174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977779, 44.587574, 28.565760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.125137, 44.329155, 28.833164>,  <34.213551, 44.174103, 28.993607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.125137, 44.329155, 28.833164>,  <33.977779, 44.587574, 28.565760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125137, 44.329155, 28.833164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778656, -0.607287, -0.157789,
		0.507917, -0.462412, -0.726770,
		0.368395, -0.646048, 0.668512,
		34.235657, 44.135342, 29.033718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851097, 43.868851, 28.265888>,  <33.977779, 44.587574, 28.565760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851097, 43.868851, 28.265888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897507, 43.825710, 28.660837>,  <33.925350, 43.799828, 28.897806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897507, 43.825710, 28.660837>,  <33.851097, 43.868851, 28.265888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897507, 43.825710, 28.660837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694391, -0.719592, 0.002992,
		0.710184, -0.685971, -0.158377,
		0.116019, -0.107851, 0.987374,
		33.932312, 43.793354, 28.957050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265827, 43.318817, 27.808815>,  <33.851097, 43.868851, 28.265888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265827, 43.318817, 27.808815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290081, 43.111267, 27.467735>,  <34.304634, 42.986736, 27.263088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290081, 43.111267, 27.467735>,  <34.265827, 43.318817, 27.808815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290081, 43.111267, 27.467735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492311, 0.758681, -0.426653,
		0.868304, -0.393921, 0.301453,
		0.060639, -0.518873, -0.852698,
		34.308273, 42.955605, 27.211926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997730, 43.230518, 27.679325>,  <34.265827, 43.318817, 27.808815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997730, 43.230518, 27.679325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.785522, 43.203377, 27.341343>,  <34.658199, 43.187092, 27.138554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.785522, 43.203377, 27.341343>,  <34.997730, 43.230518, 27.679325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785522, 43.203377, 27.341343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641292, 0.619732, -0.452413,
		0.554341, -0.781875, -0.285267,
		-0.530519, -0.067852, -0.844953,
		34.626366, 43.183022, 27.087856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528774, 43.081551, 27.219776>,  <34.997730, 43.230518, 27.679325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528774, 43.081551, 27.219776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227081, 43.230900, 27.003727>,  <35.046066, 43.320511, 26.874098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227081, 43.230900, 27.003727>,  <35.528774, 43.081551, 27.219776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227081, 43.230900, 27.003727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639281, 0.605299, -0.474270,
		0.149855, -0.702998, -0.695225,
		-0.754230, 0.373372, -0.540121,
		35.000813, 43.342911, 26.841690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703918, 42.972176, 26.418924>,  <35.528774, 43.081551, 27.219776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703918, 42.972176, 26.418924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421162, 43.254444, 26.438251>,  <35.251507, 43.423805, 26.449848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421162, 43.254444, 26.438251>,  <35.703918, 42.972176, 26.418924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421162, 43.254444, 26.438251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562149, 0.601955, -0.567132,
		-0.429295, -0.373738, -0.822208,
		-0.706891, 0.705670, 0.048320,
		35.209095, 43.466145, 26.452747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691406, 43.187492, 25.750513>,  <35.703918, 42.972176, 26.418924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691406, 43.187492, 25.750513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509537, 43.472054, 25.964869>,  <35.400414, 43.642792, 26.093481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509537, 43.472054, 25.964869>,  <35.691406, 43.187492, 25.750513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509537, 43.472054, 25.964869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456762, 0.702775, -0.545413,
		-0.764617, -0.003213, -0.644477,
		-0.454675, 0.711405, 0.535886,
		35.373135, 43.685474, 26.125635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867516, 43.796703, 25.413561>,  <35.691406, 43.187492, 25.750513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867516, 43.796703, 25.413561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.708691, 43.979141, 25.732138>,  <35.613396, 44.088604, 25.923285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.708691, 43.979141, 25.732138>,  <35.867516, 43.796703, 25.413561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708691, 43.979141, 25.732138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292629, 0.885402, -0.361155,
		-0.869893, 0.089662, -0.485023,
		-0.397058, 0.456097, 0.796442,
		35.589573, 44.115971, 25.971071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416321, 44.319431, 25.183935>,  <35.867516, 43.796703, 25.413561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416321, 44.319431, 25.183935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.554188, 44.411102, 25.548063>,  <35.636909, 44.466106, 25.766541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.554188, 44.411102, 25.548063>,  <35.416321, 44.319431, 25.183935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554188, 44.411102, 25.548063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369538, 0.858315, -0.356002,
		-0.862929, 0.459099, 0.211141,
		0.344666, 0.229180, 0.910320,
		35.657589, 44.479855, 25.821159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266186, 45.049820, 25.335979>,  <35.416321, 44.319431, 25.183935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266186, 45.049820, 25.335979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.542942, 44.979786, 25.616159>,  <35.708996, 44.937763, 25.784267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.542942, 44.979786, 25.616159>,  <35.266186, 45.049820, 25.335979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542942, 44.979786, 25.616159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486783, 0.829615, -0.273461,
		-0.533225, 0.530173, 0.659232,
		0.691891, -0.175087, 0.700451,
		35.750511, 44.927261, 25.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464539, 45.733353, 25.570299>,  <35.266186, 45.049820, 25.335979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464539, 45.733353, 25.570299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759201, 45.486301, 25.680477>,  <35.935997, 45.338070, 25.746584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759201, 45.486301, 25.680477>,  <35.464539, 45.733353, 25.570299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759201, 45.486301, 25.680477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675982, 0.660685, -0.326412,
		0.019621, 0.426648, 0.904205,
		0.736657, -0.617630, 0.275443,
		35.980198, 45.301014, 25.763109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030502, 46.217419, 25.850304>,  <35.464539, 45.733353, 25.570299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030502, 46.217419, 25.850304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213680, 45.867378, 25.787718>,  <36.323589, 45.657352, 25.750166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213680, 45.867378, 25.787718>,  <36.030502, 46.217419, 25.850304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213680, 45.867378, 25.787718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764783, 0.477546, -0.432501,
		0.453200, 0.078403, 0.887954,
		0.457948, -0.875101, -0.156463,
		36.351067, 45.604847, 25.740780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697884, 46.347855, 26.016369>,  <36.030502, 46.217419, 25.850304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697884, 46.347855, 26.016369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735432, 46.020798, 25.789158>,  <36.757961, 45.824566, 25.652832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735432, 46.020798, 25.789158>,  <36.697884, 46.347855, 26.016369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735432, 46.020798, 25.789158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696900, 0.461418, -0.549021,
		0.710999, -0.344323, 0.613124,
		0.093866, -0.817640, -0.568027,
		36.763592, 45.775505, 25.618750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350136, 45.986195, 26.190128>,  <36.697884, 46.347855, 26.016369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350136, 45.986195, 26.190128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212837, 45.902157, 25.823950>,  <37.130459, 45.851734, 25.604242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212837, 45.902157, 25.823950>,  <37.350136, 45.986195, 26.190128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212837, 45.902157, 25.823950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778288, 0.481986, -0.402440,
		0.525782, -0.850617, -0.001927,
		-0.343251, -0.210096, -0.915444,
		37.109863, 45.839127, 25.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918037, 45.845490, 25.657438>,  <37.350136, 45.986195, 26.190128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918037, 45.845490, 25.657438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631752, 45.906223, 25.384764>,  <37.459980, 45.942665, 25.221159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631752, 45.906223, 25.384764>,  <37.918037, 45.845490, 25.657438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631752, 45.906223, 25.384764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670360, 0.423116, -0.609582,
		0.195874, -0.893263, -0.404618,
		-0.715717, 0.151839, -0.681685,
		37.417038, 45.951775, 25.180258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181988, 45.597202, 25.066067>,  <37.918037, 45.845490, 25.657438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181988, 45.597202, 25.066067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892307, 45.850990, 24.958006>,  <37.718498, 46.003262, 24.893169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892307, 45.850990, 24.958006>,  <38.181988, 45.597202, 25.066067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892307, 45.850990, 24.958006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657627, 0.517541, -0.547429,
		-0.207513, -0.574106, -0.792048,
		-0.724199, 0.634471, -0.270151,
		37.675049, 46.041332, 24.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696907, 45.304333, 24.970539>,  <38.181988, 45.597202, 25.066067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696907, 45.304333, 24.970539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071846, 45.256065, 25.101274>,  <39.296810, 45.227104, 25.179716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071846, 45.256065, 25.101274>,  <38.696907, 45.304333, 24.970539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071846, 45.256065, 25.101274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176159, -0.973504, 0.145802,
		0.300585, -0.194243, -0.933765,
		0.937345, -0.120665, 0.326839,
		39.353050, 45.219864, 25.199326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916557, 44.687531, 24.694538>,  <38.696907, 45.304333, 24.970539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916557, 44.687531, 24.694538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157028, 44.744965, 25.008982>,  <39.301311, 44.779427, 25.197647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157028, 44.744965, 25.008982>,  <38.916557, 44.687531, 24.694538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157028, 44.744965, 25.008982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195675, -0.927326, 0.319025,
		0.774789, -0.345613, -0.529391,
		0.601177, 0.143589, 0.786109,
		39.337383, 44.788040, 25.244814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395420, 44.130318, 24.725548>,  <38.916557, 44.687531, 24.694538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395420, 44.130318, 24.725548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.381931, 44.305050, 25.085114>,  <39.373837, 44.409889, 25.300852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.381931, 44.305050, 25.085114>,  <39.395420, 44.130318, 24.725548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381931, 44.305050, 25.085114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091663, -0.896986, 0.432452,
		0.995219, -0.067813, 0.070291,
		-0.033724, 0.436827, 0.898913,
		39.371815, 44.436096, 25.354788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772278, 43.688793, 25.219812>,  <39.395420, 44.130318, 24.725548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772278, 43.688793, 25.219812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515453, 43.899014, 25.443081>,  <39.361359, 44.025146, 25.577042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515453, 43.899014, 25.443081>,  <39.772278, 43.688793, 25.219812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515453, 43.899014, 25.443081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214700, -0.822188, 0.527172,
		0.735978, 0.218637, 0.640730,
		-0.642060, 0.525551, 0.558171,
		39.322834, 44.056679, 25.610533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797935, 43.339283, 25.823130>,  <39.772278, 43.688793, 25.219812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797935, 43.339283, 25.823130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489319, 43.578991, 25.908541>,  <39.304150, 43.722816, 25.959787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489319, 43.578991, 25.908541>,  <39.797935, 43.339283, 25.823130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489319, 43.578991, 25.908541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457669, -0.755984, 0.468003,
		0.441885, 0.263360, 0.857543,
		-0.771542, 0.599275, 0.213526,
		39.257854, 43.758774, 25.972599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608765, 43.291634, 26.584381>,  <39.797935, 43.339283, 25.823130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608765, 43.291634, 26.584381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.290020, 43.420128, 26.379705>,  <39.098774, 43.497223, 26.256901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.290020, 43.420128, 26.379705>,  <39.608765, 43.291634, 26.584381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290020, 43.420128, 26.379705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567758, -0.687717, 0.452434,
		-0.206560, 0.651041, 0.730396,
		-0.796859, 0.321234, -0.511688,
		39.050961, 43.516499, 26.226198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043083, 43.343777, 27.120775>,  <39.608765, 43.291634, 26.584381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043083, 43.343777, 27.120775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869427, 43.310074, 26.762018>,  <38.765232, 43.289852, 26.546764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869427, 43.310074, 26.762018>,  <39.043083, 43.343777, 27.120775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869427, 43.310074, 26.762018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545053, -0.768129, 0.335998,
		-0.717242, 0.634726, 0.287553,
		-0.434145, -0.084260, -0.896894,
		38.739182, 43.284798, 26.492950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771519, 43.657070, 27.828617>,  <39.043083, 43.343777, 27.120775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771519, 43.657070, 27.828617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106621, 43.500584, 27.980991>,  <39.307682, 43.406693, 28.072416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106621, 43.500584, 27.980991>,  <38.771519, 43.657070, 27.828617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106621, 43.500584, 27.980991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529093, 0.754060, -0.389172,
		-0.134999, 0.527583, 0.838708,
		0.837757, -0.391217, 0.380938,
		39.357948, 43.383217, 28.095272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078281, 44.068306, 28.404858>,  <38.771519, 43.657070, 27.828617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078281, 44.068306, 28.404858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396854, 43.880749, 28.252106>,  <39.587997, 43.768215, 28.160456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396854, 43.880749, 28.252106>,  <39.078281, 44.068306, 28.404858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396854, 43.880749, 28.252106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394366, 0.881459, -0.259820,
		0.458437, 0.056330, 0.886940,
		0.796436, -0.468890, -0.381879,
		39.635784, 43.740082, 28.137543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648251, 44.375854, 28.760952>,  <39.078281, 44.068306, 28.404858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648251, 44.375854, 28.760952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.820847, 44.168751, 28.465454>,  <39.924404, 44.044487, 28.288157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.820847, 44.168751, 28.465454>,  <39.648251, 44.375854, 28.760952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820847, 44.168751, 28.465454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652188, 0.744813, -0.141083,
		0.623273, -0.420923, 0.659056,
		0.431488, -0.517762, -0.738743,
		39.950294, 44.013424, 28.243832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378490, 44.308506, 28.767887>,  <39.648251, 44.375854, 28.760952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378490, 44.308506, 28.767887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327000, 44.253792, 28.375008>,  <40.296104, 44.220963, 28.139280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327000, 44.253792, 28.375008>,  <40.378490, 44.308506, 28.767887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327000, 44.253792, 28.375008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514759, 0.837340, -0.184078,
		0.847616, -0.529293, -0.037375,
		-0.128727, -0.136788, -0.982201,
		40.288380, 44.212757, 28.080347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056118, 44.363396, 28.522074>,  <40.378490, 44.308506, 28.767887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056118, 44.363396, 28.522074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856487, 44.417736, 28.179735>,  <40.736710, 44.450340, 27.974333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856487, 44.417736, 28.179735>,  <41.056118, 44.363396, 28.522074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856487, 44.417736, 28.179735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412453, 0.905829, -0.096729,
		0.762108, -0.401270, -0.508108,
		-0.499073, 0.135853, -0.855845,
		40.706764, 44.458492, 27.922981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494083, 44.525089, 27.921373>,  <41.056118, 44.363396, 28.522074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494083, 44.525089, 27.921373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136604, 44.675949, 27.824162>,  <40.922115, 44.766464, 27.765835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136604, 44.675949, 27.824162>,  <41.494083, 44.525089, 27.921373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136604, 44.675949, 27.824162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407676, 0.908795, -0.088837,
		0.187360, -0.178471, -0.965942,
		-0.893698, 0.377147, -0.243030,
		40.868496, 44.789093, 27.751253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621433, 45.006084, 27.451359>,  <41.494083, 44.525089, 27.921373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621433, 45.006084, 27.451359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241322, 45.119923, 27.501921>,  <41.013256, 45.188225, 27.532257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241322, 45.119923, 27.501921>,  <41.621433, 45.006084, 27.451359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241322, 45.119923, 27.501921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283913, 0.958556, -0.023752,
		-0.127925, 0.013317, -0.991695,
		-0.950278, 0.284594, 0.126404,
		40.956238, 45.205299, 27.539843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428387, 45.437191, 26.982498>,  <41.621433, 45.006084, 27.451359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428387, 45.437191, 26.982498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136112, 45.530132, 27.239283>,  <40.960747, 45.585896, 27.393353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136112, 45.530132, 27.239283>,  <41.428387, 45.437191, 26.982498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136112, 45.530132, 27.239283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144347, 0.971624, -0.187378,
		-0.667283, -0.044249, -0.743489,
		-0.730683, 0.232354, 0.641961,
		40.916908, 45.599838, 27.431871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889721, 45.857334, 26.672626>,  <41.428387, 45.437191, 26.982498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889721, 45.857334, 26.672626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878529, 45.932419, 27.065357>,  <40.871811, 45.977470, 27.300995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878529, 45.932419, 27.065357>,  <40.889721, 45.857334, 26.672626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878529, 45.932419, 27.065357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054064, 0.980488, -0.189000,
		-0.998145, -0.058370, -0.017288,
		-0.027982, 0.187715, 0.981825,
		40.870132, 45.988735, 27.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.256771, 34.612370, 33.445820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061737, 34.732334, 33.773800>,  <32.944717, 34.804314, 33.970589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061737, 34.732334, 33.773800>,  <33.256771, 34.612370, 33.445820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061737, 34.732334, 33.773800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258067, 0.946692, -0.192808,
		-0.834065, 0.117592, -0.538987,
		-0.487582, 0.299910, 0.819950,
		32.915462, 34.822308, 34.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865845, 35.142967, 33.288746>,  <33.256771, 34.612370, 33.445820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865845, 35.142967, 33.288746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932400, 35.192581, 33.680038>,  <32.972332, 35.222347, 33.914814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932400, 35.192581, 33.680038>,  <32.865845, 35.142967, 33.288746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932400, 35.192581, 33.680038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263993, 0.950240, -0.165385,
		-0.950064, 0.285764, 0.125366,
		0.166389, 0.124031, 0.978229,
		32.982315, 35.229790, 33.973507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663113, 35.838314, 33.479603>,  <32.865845, 35.142967, 33.288746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663113, 35.838314, 33.479603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896782, 35.730194, 33.785721>,  <33.036983, 35.665321, 33.969391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896782, 35.730194, 33.785721>,  <32.663113, 35.838314, 33.479603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896782, 35.730194, 33.785721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454125, 0.890357, -0.032172,
		-0.672693, 0.366335, 0.642870,
		0.584169, -0.270302, 0.765299,
		33.072033, 35.649105, 34.015312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630711, 36.422729, 34.015308>,  <32.663113, 35.838314, 33.479603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630711, 36.422729, 34.015308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949581, 36.181782, 34.031578>,  <33.140903, 36.037212, 34.041340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949581, 36.181782, 34.031578>,  <32.630711, 36.422729, 34.015308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949581, 36.181782, 34.031578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594282, 0.771020, -0.228816,
		0.106475, 0.206576, 0.972620,
		0.797178, -0.602373, 0.040670,
		33.188736, 36.001068, 34.043777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125568, 36.917526, 34.228565>,  <32.630711, 36.422729, 34.015308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125568, 36.917526, 34.228565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330349, 36.609806, 34.075684>,  <33.453217, 36.425175, 33.983955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330349, 36.609806, 34.075684>,  <33.125568, 36.917526, 34.228565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330349, 36.609806, 34.075684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736147, 0.622210, -0.266351,
		0.442715, -0.144999, 0.884861,
		0.511949, -0.769305, -0.382202,
		33.483932, 36.379013, 33.961021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822327, 36.976746, 34.488907>,  <33.125568, 36.917526, 34.228565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822327, 36.976746, 34.488907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889229, 36.716385, 34.192703>,  <33.929371, 36.560169, 34.014980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889229, 36.716385, 34.192703>,  <33.822327, 36.976746, 34.488907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889229, 36.716385, 34.192703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823359, 0.505362, -0.258241,
		0.542316, -0.566516, 0.620446,
		0.167252, -0.650898, -0.740512,
		33.939404, 36.521114, 33.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488716, 36.843555, 34.442905>,  <33.822327, 36.976746, 34.488907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488716, 36.843555, 34.442905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359844, 36.745380, 34.077183>,  <34.282520, 36.686474, 33.857750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359844, 36.745380, 34.077183>,  <34.488716, 36.843555, 34.442905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359844, 36.745380, 34.077183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868204, 0.308411, -0.388722,
		0.377390, -0.919045, 0.113728,
		-0.322178, -0.245439, -0.914309,
		34.263191, 36.671749, 33.802891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928429, 36.437763, 34.243217>,  <34.488716, 36.843555, 34.442905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928429, 36.437763, 34.243217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756702, 36.589485, 33.915359>,  <34.653667, 36.680519, 33.718643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756702, 36.589485, 33.915359>,  <34.928429, 36.437763, 34.243217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756702, 36.589485, 33.915359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903150, 0.183230, -0.388260,
		0.002916, -0.906949, -0.421230,
		-0.429314, 0.379302, -0.819646,
		34.627907, 36.703278, 33.669464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382042, 36.159698, 33.746002>,  <34.928429, 36.437763, 34.243217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382042, 36.159698, 33.746002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198559, 36.466434, 33.566429>,  <35.088470, 36.650478, 33.458687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198559, 36.466434, 33.566429>,  <35.382042, 36.159698, 33.746002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198559, 36.466434, 33.566429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829072, 0.187562, -0.526744,
		-0.319728, -0.613817, -0.721805,
		-0.458708, 0.766843, -0.448930,
		35.060947, 36.696487, 33.431751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520710, 36.063377, 33.045124>,  <35.382042, 36.159698, 33.746002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520710, 36.063377, 33.045124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436230, 36.453617, 33.069103>,  <35.385540, 36.687763, 33.083488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436230, 36.453617, 33.069103>,  <35.520710, 36.063377, 33.045124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436230, 36.453617, 33.069103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763721, 0.202988, -0.612802,
		-0.610019, -0.083646, -0.787960,
		-0.211204, 0.975602, 0.059944,
		35.372868, 36.746296, 33.087086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585506, 36.294323, 32.399654>,  <35.520710, 36.063377, 33.045124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585506, 36.294323, 32.399654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640720, 36.631454, 32.607727>,  <35.673847, 36.833733, 32.732571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640720, 36.631454, 32.607727>,  <35.585506, 36.294323, 32.399654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640720, 36.631454, 32.607727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806558, 0.209159, -0.552917,
		-0.574814, 0.495878, -0.650918,
		0.138033, 0.842827, 0.520182,
		35.682129, 36.884304, 32.763783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566341, 36.834969, 31.963018>,  <35.585506, 36.294323, 32.399654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566341, 36.834969, 31.963018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767277, 36.985409, 32.274456>,  <35.887836, 37.075672, 32.461319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767277, 36.985409, 32.274456>,  <35.566341, 36.834969, 31.963018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767277, 36.985409, 32.274456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757833, 0.242075, -0.605879,
		-0.416350, 0.894397, -0.163419,
		0.502336, 0.376102, 0.778592,
		35.917976, 37.098240, 32.508034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258049, 36.990646, 31.223360>,  <35.566341, 36.834969, 31.963018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258049, 36.990646, 31.223360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385632, 36.790230, 30.901558>,  <35.462181, 36.669979, 30.708477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385632, 36.790230, 30.901558>,  <35.258049, 36.990646, 31.223360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385632, 36.790230, 30.901558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395398, -0.841788, 0.367496,
		-0.861353, 0.200885, -0.466602,
		0.318956, -0.501037, -0.804506,
		35.481319, 36.639919, 30.660206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649288, 36.593094, 30.968668>,  <35.258049, 36.990646, 31.223360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649288, 36.593094, 30.968668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921898, 36.408600, 30.741413>,  <35.085464, 36.297901, 30.605061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921898, 36.408600, 30.741413>,  <34.649288, 36.593094, 30.968668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921898, 36.408600, 30.741413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507568, -0.857204, 0.087044,
		-0.527156, 0.229044, -0.818319,
		0.681529, -0.461239, -0.568135,
		35.126358, 36.270229, 30.570972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214489, 36.263199, 30.535664>,  <34.649288, 36.593094, 30.968668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214489, 36.263199, 30.535664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567520, 36.075684, 30.521257>,  <34.779339, 35.963173, 30.512613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567520, 36.075684, 30.521257>,  <34.214489, 36.263199, 30.535664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567520, 36.075684, 30.521257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461081, -0.877958, 0.128820,
		-0.092008, -0.097088, -0.991014,
		0.882575, -0.468791, -0.036014,
		34.832294, 35.935047, 30.510452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089977, 35.759254, 30.113096>,  <34.214489, 36.263199, 30.535664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089977, 35.759254, 30.113096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387562, 35.654564, 30.359032>,  <34.566113, 35.591751, 30.506594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387562, 35.654564, 30.359032>,  <34.089977, 35.759254, 30.113096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387562, 35.654564, 30.359032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532208, -0.788467, 0.308343,
		0.404080, -0.556617, -0.725877,
		0.743958, -0.261722, 0.614839,
		34.610748, 35.576046, 30.543484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066067, 35.052261, 30.029860>,  <34.089977, 35.759254, 30.113096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066067, 35.052261, 30.029860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311344, 35.089127, 30.343676>,  <34.458511, 35.111244, 30.531965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311344, 35.089127, 30.343676>,  <34.066067, 35.052261, 30.029860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311344, 35.089127, 30.343676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356587, -0.853927, 0.379017,
		0.704871, -0.512167, -0.490757,
		0.613191, 0.092161, 0.784541,
		34.495300, 35.116776, 30.579039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492702, 34.504246, 30.019285>,  <34.066067, 35.052261, 30.029860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492702, 34.504246, 30.019285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473240, 34.610165, 30.404516>,  <34.461563, 34.673717, 30.635654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473240, 34.610165, 30.404516>,  <34.492702, 34.504246, 30.019285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473240, 34.610165, 30.404516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408815, -0.885032, 0.222686,
		0.911319, -0.382885, 0.151315,
		-0.048656, 0.264798, 0.963076,
		34.458645, 34.689606, 30.693439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582245, 33.911816, 30.462137>,  <34.492702, 34.504246, 30.019285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582245, 33.911816, 30.462137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386639, 34.157372, 30.710011>,  <34.269276, 34.304703, 30.858734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386639, 34.157372, 30.710011>,  <34.582245, 33.911816, 30.462137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386639, 34.157372, 30.710011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545060, -0.769700, 0.332373,
		0.681008, -0.175227, 0.711002,
		-0.489017, 0.613887, 0.619681,
		34.239933, 34.341537, 30.895914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532642, 33.525230, 31.028879>,  <34.582245, 33.911816, 30.462137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532642, 33.525230, 31.028879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260441, 33.814220, 31.077759>,  <34.097118, 33.987617, 31.107086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260441, 33.814220, 31.077759>,  <34.532642, 33.525230, 31.028879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260441, 33.814220, 31.077759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654497, -0.674312, 0.341960,
		0.329458, 0.152729, 0.931736,
		-0.680508, 0.722480, 0.122197,
		34.056290, 34.030964, 31.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233208, 33.458183, 31.737532>,  <34.532642, 33.525230, 31.028879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233208, 33.458183, 31.737532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971718, 33.665058, 31.516565>,  <33.814823, 33.789185, 31.383986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971718, 33.665058, 31.516565>,  <34.233208, 33.458183, 31.737532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971718, 33.665058, 31.516565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733615, -0.612204, 0.294984,
		-0.185629, 0.598098, 0.779629,
		-0.653721, 0.517189, -0.552417,
		33.775600, 33.820213, 31.350840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671673, 33.463512, 32.099400>,  <34.233208, 33.458183, 31.737532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671673, 33.463512, 32.099400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515083, 33.539875, 31.739330>,  <33.421131, 33.585693, 31.523291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515083, 33.539875, 31.739330>,  <33.671673, 33.463512, 32.099400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515083, 33.539875, 31.739330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672036, -0.727554, 0.137960,
		-0.628584, 0.658953, 0.413114,
		-0.391472, 0.190908, -0.900169,
		33.397640, 33.597149, 31.469280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973419, 33.467854, 32.278168>,  <33.671673, 33.463512, 32.099400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973419, 33.467854, 32.278168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982555, 33.431458, 31.879930>,  <32.988037, 33.409618, 31.640989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982555, 33.431458, 31.879930>,  <32.973419, 33.467854, 32.278168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982555, 33.431458, 31.879930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702281, -0.710225, 0.048802,
		-0.711533, 0.698070, -0.080121,
		0.022837, -0.090992, -0.995590,
		32.989407, 33.404160, 31.581253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261215, 33.584663, 31.974888>,  <32.973419, 33.467854, 32.278168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261215, 33.584663, 31.974888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478371, 33.359962, 31.725182>,  <32.608662, 33.225143, 31.575357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478371, 33.359962, 31.725182>,  <32.261215, 33.584663, 31.974888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478371, 33.359962, 31.725182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755056, -0.651915, -0.069991,
		-0.367651, 0.509353, -0.778070,
		0.542885, -0.561754, -0.624267,
		32.641235, 33.191437, 31.537901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827707, 33.547497, 31.341059>,  <32.261215, 33.584663, 31.974888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827707, 33.547497, 31.341059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092167, 33.247673, 31.328135>,  <32.250843, 33.067780, 31.320381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092167, 33.247673, 31.328135>,  <31.827707, 33.547497, 31.341059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092167, 33.247673, 31.328135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746769, -0.653321, -0.124533,
		0.072237, 0.106461, -0.991689,
		0.661149, -0.749558, -0.032308,
		32.290512, 33.022804, 31.318441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830559, 33.309361, 30.753531>,  <31.827707, 33.547497, 31.341059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830559, 33.309361, 30.753531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931837, 33.014946, 31.004654>,  <31.992605, 32.838299, 31.155329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931837, 33.014946, 31.004654>,  <31.830559, 33.309361, 30.753531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931837, 33.014946, 31.004654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738044, -0.566523, -0.366529,
		0.625446, -0.370545, -0.686669,
		0.253197, -0.736035, 0.627808,
		32.007797, 32.794136, 31.192997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285370, 32.779575, 30.440018>,  <31.830559, 33.309361, 30.753531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285370, 32.779575, 30.440018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107504, 32.735481, 30.084463>,  <31.000784, 32.709026, 29.871130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107504, 32.735481, 30.084463>,  <31.285370, 32.779575, 30.440018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107504, 32.735481, 30.084463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201705, 0.954584, -0.219283,
		0.872690, -0.276801, -0.402236,
		-0.444666, -0.110233, -0.888887,
		30.974104, 32.702412, 29.817797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637688, 32.947254, 29.872911>,  <31.285370, 32.779575, 30.440018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637688, 32.947254, 29.872911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251127, 32.996300, 29.782549>,  <31.019190, 33.025726, 29.728331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251127, 32.996300, 29.782549>,  <31.637688, 32.947254, 29.872911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251127, 32.996300, 29.782549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200264, 0.910115, -0.362747,
		0.161124, -0.395800, -0.904092,
		-0.966402, 0.122610, -0.225906,
		30.961206, 33.033081, 29.714777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574696, 33.002567, 29.124708>,  <31.637688, 32.947254, 29.872911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574696, 33.002567, 29.124708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297424, 33.186764, 29.346500>,  <31.131062, 33.297283, 29.479576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297424, 33.186764, 29.346500>,  <31.574696, 33.002567, 29.124708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297424, 33.186764, 29.346500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240059, 0.872873, -0.424812,
		-0.679612, -0.161364, -0.715604,
		-0.693180, 0.460494, 0.554478,
		31.089470, 33.324913, 29.512844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133940, 33.355648, 28.733971>,  <31.574696, 33.002567, 29.124708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133940, 33.355648, 28.733971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091526, 33.560280, 29.075039>,  <31.066078, 33.683060, 29.279680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091526, 33.560280, 29.075039>,  <31.133940, 33.355648, 28.733971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091526, 33.560280, 29.075039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254670, 0.842875, -0.474030,
		-0.961197, 0.166885, -0.219658,
		-0.106036, 0.511576, 0.852670,
		31.059715, 33.713753, 29.330839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921135, 34.032818, 28.462852>,  <31.133940, 33.355648, 28.733971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921135, 34.032818, 28.462852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027149, 34.108795, 28.840990>,  <31.090757, 34.154381, 29.067873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027149, 34.108795, 28.840990>,  <30.921135, 34.032818, 28.462852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027149, 34.108795, 28.840990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219567, 0.942762, -0.250979,
		-0.938906, 0.274086, 0.208163,
		0.265038, 0.189940, 0.945345,
		31.106661, 34.165779, 29.124594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562738, 34.634079, 28.712242>,  <30.921135, 34.032818, 28.462852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562738, 34.634079, 28.712242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.919237, 34.596352, 28.889681>,  <31.133137, 34.573715, 28.996145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.919237, 34.596352, 28.889681>,  <30.562738, 34.634079, 28.712242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919237, 34.596352, 28.889681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230168, 0.936874, -0.263231,
		-0.390767, 0.336706, 0.856697,
		0.891249, -0.094322, 0.443598,
		31.186611, 34.568054, 29.022760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566027, 35.230183, 29.092953>,  <30.562738, 34.634079, 28.712242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566027, 35.230183, 29.092953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944391, 35.101055, 29.080053>,  <31.171410, 35.023579, 29.072313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944391, 35.101055, 29.080053>,  <30.566027, 35.230183, 29.092953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944391, 35.101055, 29.080053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322259, 0.946410, -0.021377,
		0.037420, 0.009828, 0.999251,
		0.945912, -0.322818, -0.032247,
		31.228165, 35.004211, 29.070379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808226, 35.558872, 29.646460>,  <30.566027, 35.230183, 29.092953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808226, 35.558872, 29.646460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113543, 35.449684, 29.412237>,  <31.296732, 35.384171, 29.271704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113543, 35.449684, 29.412237>,  <30.808226, 35.558872, 29.646460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113543, 35.449684, 29.412237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289758, 0.954727, -0.067355,
		0.577430, -0.118258, 0.807830,
		0.763292, -0.272968, -0.585554,
		31.342529, 35.367794, 29.236570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318600, 35.963829, 29.791048>,  <30.808226, 35.558872, 29.646460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318600, 35.963829, 29.791048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468742, 35.845146, 29.439806>,  <31.558828, 35.773937, 29.229061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468742, 35.845146, 29.439806>,  <31.318600, 35.963829, 29.791048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468742, 35.845146, 29.439806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334462, 0.926908, -0.170228,
		0.864432, -0.229796, 0.447160,
		0.375358, -0.296708, -0.878106,
		31.581350, 35.756134, 29.176374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950747, 36.223492, 29.769344>,  <31.318600, 35.963829, 29.791048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950747, 36.223492, 29.769344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858223, 36.156063, 29.386078>,  <31.802710, 36.115604, 29.156118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858223, 36.156063, 29.386078>,  <31.950747, 36.223492, 29.769344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858223, 36.156063, 29.386078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473552, 0.840818, -0.262247,
		0.849851, -0.514400, -0.114656,
		-0.231305, -0.168576, -0.958165,
		31.788832, 36.105492, 29.098629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661781, 36.299576, 29.321959>,  <31.950747, 36.223492, 29.769344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661781, 36.299576, 29.321959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350262, 36.376007, 29.082972>,  <32.163349, 36.421864, 28.939579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350262, 36.376007, 29.082972>,  <32.661781, 36.299576, 29.321959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350262, 36.376007, 29.082972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388523, 0.894716, -0.220303,
		0.492469, -0.403701, -0.771038,
		-0.778796, 0.191074, -0.597468,
		32.116623, 36.433331, 28.903730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976727, 36.466103, 28.681688>,  <32.661781, 36.299576, 29.321959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976727, 36.466103, 28.681688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605194, 36.612602, 28.659275>,  <32.382275, 36.700500, 28.645826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605194, 36.612602, 28.659275>,  <32.976727, 36.466103, 28.681688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605194, 36.612602, 28.659275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358034, 0.848327, -0.390069,
		-0.095325, -0.382369, -0.919079,
		-0.928830, 0.366245, -0.056034,
		32.326546, 36.722477, 28.642466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974293, 36.692104, 27.974281>,  <32.976727, 36.466103, 28.681688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974293, 36.692104, 27.974281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682552, 36.870575, 28.181732>,  <32.507507, 36.977657, 28.306202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682552, 36.870575, 28.181732>,  <32.974293, 36.692104, 27.974281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682552, 36.870575, 28.181732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300103, 0.889895, -0.343547,
		-0.614806, -0.094925, -0.782945,
		-0.729351, 0.446178, 0.518626,
		32.463749, 37.004429, 28.337320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596298, 37.035107, 27.506575>,  <32.974293, 36.692104, 27.974281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596298, 37.035107, 27.506575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506584, 37.232788, 27.842543>,  <32.452755, 37.351395, 28.044123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506584, 37.232788, 27.842543>,  <32.596298, 37.035107, 27.506575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506584, 37.232788, 27.842543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406046, 0.830888, -0.380463,
		-0.885904, 0.255715, -0.387021,
		-0.224281, 0.494201, 0.839918,
		32.439301, 37.381050, 28.094519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241447, 37.736248, 27.289186>,  <32.596298, 37.035107, 27.506575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241447, 37.736248, 27.289186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366856, 37.762871, 27.668085>,  <32.442101, 37.778847, 27.895424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366856, 37.762871, 27.668085>,  <32.241447, 37.736248, 27.289186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366856, 37.762871, 27.668085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356247, 0.916435, -0.182304,
		-0.880224, 0.394610, 0.263606,
		0.313517, 0.066559, 0.947247,
		32.460911, 37.782837, 27.952259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952206, 38.279198, 27.498369>,  <32.241447, 37.736248, 27.289186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952206, 38.279198, 27.498369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237865, 38.257965, 27.777561>,  <32.409260, 38.245228, 27.945076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237865, 38.257965, 27.777561>,  <31.952206, 38.279198, 27.498369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237865, 38.257965, 27.777561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252002, 0.949759, -0.185614,
		-0.653059, 0.308448, 0.691645,
		0.714149, -0.053079, 0.697979,
		32.452110, 38.242043, 27.986956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864426, 38.780773, 27.928520>,  <31.952206, 38.279198, 27.498369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864426, 38.780773, 27.928520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249256, 38.697472, 27.998995>,  <32.480152, 38.647491, 28.041279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249256, 38.697472, 27.998995>,  <31.864426, 38.780773, 27.928520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249256, 38.697472, 27.998995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231079, 0.965425, -0.120656,
		-0.144966, 0.156793, 0.976934,
		0.962075, -0.208258, 0.176186,
		32.537880, 38.634995, 28.051851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095417, 39.249104, 28.530888>,  <31.864426, 38.780773, 27.928520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095417, 39.249104, 28.530888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433628, 39.123852, 28.357903>,  <32.636555, 39.048698, 28.254112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433628, 39.123852, 28.357903>,  <32.095417, 39.249104, 28.530888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433628, 39.123852, 28.357903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302348, 0.948395, -0.095563,
		0.440069, -0.049953, 0.896574,
		0.845532, -0.313132, -0.432462,
		32.687286, 39.029911, 28.228165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652687, 39.563034, 28.874641>,  <32.095417, 39.249104, 28.530888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652687, 39.563034, 28.874641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823860, 39.462151, 28.527479>,  <32.926563, 39.401619, 28.319181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823860, 39.462151, 28.527479>,  <32.652687, 39.563034, 28.874641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823860, 39.462151, 28.527479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358411, 0.928898, -0.093218,
		0.829709, -0.271177, 0.487901,
		0.427931, -0.252213, -0.867907,
		32.952240, 39.386486, 28.267107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395294, 39.727711, 29.024895>,  <32.652687, 39.563034, 28.874641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395294, 39.727711, 29.024895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308434, 39.719490, 28.634525>,  <33.256317, 39.714558, 28.400305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308434, 39.719490, 28.634525>,  <33.395294, 39.727711, 29.024895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308434, 39.719490, 28.634525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523997, 0.841065, -0.134300,
		0.823574, -0.540544, -0.171868,
		-0.217147, -0.020548, -0.975922,
		33.243290, 39.713326, 28.341749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977634, 40.100746, 28.646198>,  <33.395294, 39.727711, 29.024895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977634, 40.100746, 28.646198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670120, 40.085217, 28.390867>,  <33.485611, 40.075897, 28.237669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670120, 40.085217, 28.390867>,  <33.977634, 40.100746, 28.646198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670120, 40.085217, 28.390867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323943, 0.836974, -0.441062,
		0.551388, -0.545864, -0.630877,
		-0.768786, -0.038828, -0.638326,
		33.439484, 40.073566, 28.199369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268909, 40.209785, 27.838821>,  <33.977634, 40.100746, 28.646198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268909, 40.209785, 27.838821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875946, 40.280647, 27.815178>,  <33.640167, 40.323162, 27.800991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875946, 40.280647, 27.815178>,  <34.268909, 40.209785, 27.838821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875946, 40.280647, 27.815178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176036, 0.772755, -0.609804,
		-0.062351, -0.609481, -0.790345,
		-0.982407, 0.177151, -0.059108,
		33.581223, 40.333794, 27.797445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092255, 40.402573, 27.152805>,  <34.268909, 40.209785, 27.838821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092255, 40.402573, 27.152805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793350, 40.570133, 27.359154>,  <33.614006, 40.670670, 27.482962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793350, 40.570133, 27.359154>,  <34.092255, 40.402573, 27.152805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793350, 40.570133, 27.359154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293830, 0.904566, -0.308909,
		-0.596040, -0.079257, -0.799033,
		-0.747261, 0.418902, 0.515870,
		33.569172, 40.695805, 27.513914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878082, 40.783691, 26.716717>,  <34.092255, 40.402573, 27.152805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878082, 40.783691, 26.716717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712051, 40.922955, 27.052929>,  <33.612431, 41.006512, 27.254656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712051, 40.922955, 27.052929>,  <33.878082, 40.783691, 26.716717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712051, 40.922955, 27.052929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169542, 0.937297, -0.304516,
		-0.893848, 0.016108, -0.448080,
		-0.415079, 0.348160, 0.840532,
		33.587528, 41.027401, 27.305088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370731, 41.349045, 26.499012>,  <33.878082, 40.783691, 26.716717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370731, 41.349045, 26.499012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460171, 41.404953, 26.884855>,  <33.513832, 41.438499, 27.116362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460171, 41.404953, 26.884855>,  <33.370731, 41.349045, 26.499012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460171, 41.404953, 26.884855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181637, 0.966353, -0.182125,
		-0.957608, 0.215931, 0.190685,
		0.223595, 0.139769, 0.964608,
		33.527248, 41.446884, 27.174238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012119, 42.108280, 26.707674>,  <33.370731, 41.349045, 26.499012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012119, 42.108280, 26.707674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289650, 41.969711, 26.960211>,  <33.456169, 41.886570, 27.111732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289650, 41.969711, 26.960211>,  <33.012119, 42.108280, 26.707674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289650, 41.969711, 26.960211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361878, 0.925685, 0.110236,
		-0.622612, 0.151983, 0.767629,
		0.693829, -0.346423, 0.631343,
		33.497799, 41.865784, 27.149614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080177, 42.600197, 27.257366>,  <33.012119, 42.108280, 26.707674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080177, 42.600197, 27.257366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434639, 42.416931, 27.285135>,  <33.647316, 42.306973, 27.301796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434639, 42.416931, 27.285135>,  <33.080177, 42.600197, 27.257366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434639, 42.416931, 27.285135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448717, 0.885811, 0.118286,
		-0.115690, -0.073668, 0.990550,
		0.886154, -0.458161, 0.069424,
		33.700485, 42.279484, 27.305962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556023, 43.047295, 27.687952>,  <33.080177, 42.600197, 27.257366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556023, 43.047295, 27.687952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803429, 42.816460, 27.474630>,  <33.951870, 42.677959, 27.346638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803429, 42.816460, 27.474630>,  <33.556023, 43.047295, 27.687952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803429, 42.816460, 27.474630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589707, 0.789451, -0.170335,
		0.519315, -0.209138, 0.828598,
		0.618513, -0.577087, -0.533303,
		33.988983, 42.643333, 27.314640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685909, 43.192734, 28.385061>,  <33.556023, 43.047295, 27.687952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685909, 43.192734, 28.385061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690533, 43.286987, 28.773771>,  <33.693306, 43.343540, 29.006996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690533, 43.286987, 28.773771>,  <33.685909, 43.192734, 28.385061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690533, 43.286987, 28.773771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569641, -0.797170, 0.200075,
		0.821812, -0.555875, 0.125011,
		0.011561, 0.235636, 0.971773,
		33.694000, 43.357677, 29.065304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955120, 42.526531, 28.737675>,  <33.685909, 43.192734, 28.385061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955120, 42.526531, 28.737675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776752, 42.758617, 29.010292>,  <33.669731, 42.897869, 29.173862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776752, 42.758617, 29.010292>,  <33.955120, 42.526531, 28.737675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776752, 42.758617, 29.010292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637651, -0.740286, 0.213023,
		0.628136, -0.339594, 0.700087,
		-0.445923, 0.580218, 0.681542,
		33.642975, 42.932682, 29.214754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858471, 42.202732, 29.442364>,  <33.955120, 42.526531, 28.737675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858471, 42.202732, 29.442364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554096, 42.462257, 29.440620>,  <33.371471, 42.617973, 29.439573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554096, 42.462257, 29.440620>,  <33.858471, 42.202732, 29.442364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554096, 42.462257, 29.440620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582732, -0.680447, 0.444314,
		0.285311, 0.340634, 0.895860,
		-0.760934, 0.648815, -0.004359,
		33.325817, 42.656902, 29.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496227, 42.185429, 30.117462>,  <33.858471, 42.202732, 29.442364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496227, 42.185429, 30.117462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206879, 42.350376, 29.895945>,  <33.033272, 42.449345, 29.763033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206879, 42.350376, 29.895945>,  <33.496227, 42.185429, 30.117462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206879, 42.350376, 29.895945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670866, -0.609494, 0.422440,
		-0.163333, 0.677103, 0.717533,
		-0.723368, 0.412370, -0.553796,
		32.989868, 42.474087, 29.729805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864986, 42.340225, 30.584000>,  <33.496227, 42.185429, 30.117462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864986, 42.340225, 30.584000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713490, 42.362396, 30.214462>,  <32.622593, 42.375698, 29.992741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713490, 42.362396, 30.214462>,  <32.864986, 42.340225, 30.584000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713490, 42.362396, 30.214462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795615, -0.529453, 0.294409,
		-0.472813, 0.846527, 0.244623,
		-0.378741, 0.055425, -0.923841,
		32.599869, 42.379025, 29.937309>
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
