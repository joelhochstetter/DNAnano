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
	<24.323673, 34.798336, 34.992599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131868, 35.126770, 34.868740>,  <24.016785, 35.323830, 34.794422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131868, 35.126770, 34.868740>,  <24.323673, 34.798336, 34.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.131868, 35.126770, 34.868740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273914, 0.475283, 0.836109,
		0.833689, 0.316108, -0.452811,
		-0.479514, 0.821086, -0.309652,
		23.988014, 35.373096, 34.775845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862738, 34.580410, 34.338020>,  <24.323673, 34.798336, 34.992599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862738, 34.580410, 34.338020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106981, 34.897099, 34.345436>,  <25.253527, 35.087112, 34.349888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106981, 34.897099, 34.345436>,  <24.862738, 34.580410, 34.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106981, 34.897099, 34.345436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712288, -0.559281, 0.424087,
		0.346129, -0.245742, -0.905431,
		0.610607, 0.791717, 0.018544,
		25.290163, 35.134613, 34.350998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558924, 34.642994, 33.842739>,  <24.862738, 34.580410, 34.338020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558924, 34.642994, 33.842739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611122, 34.807705, 34.203495>,  <25.642441, 34.906532, 34.419949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611122, 34.807705, 34.203495>,  <25.558924, 34.642994, 33.842739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611122, 34.807705, 34.203495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601567, -0.755971, 0.258117,
		0.788091, 0.508865, -0.346365,
		0.130495, 0.411781, 0.901891,
		25.650270, 34.931240, 34.474064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246635, 34.756496, 34.046883>,  <25.558924, 34.642994, 33.842739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246635, 34.756496, 34.046883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987793, 34.665836, 34.338055>,  <25.832487, 34.611439, 34.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987793, 34.665836, 34.338055>,  <26.246635, 34.756496, 34.046883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987793, 34.665836, 34.338055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521325, -0.828231, 0.205557,
		0.556305, 0.512505, 0.654112,
		-0.647105, -0.226653, 0.727931,
		25.793661, 34.597839, 34.556435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932928, 34.533798, 34.027744>,  <26.246635, 34.756496, 34.046883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932928, 34.533798, 34.027744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251028, 34.775177, 34.051182>,  <27.441889, 34.920002, 34.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251028, 34.775177, 34.051182>,  <26.932928, 34.533798, 34.027744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251028, 34.775177, 34.051182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127556, 0.261005, -0.956873,
		-0.592710, 0.753481, 0.284537,
		0.795251, 0.603442, 0.058589,
		27.489603, 34.956211, 34.068760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835333, 35.159225, 33.484894>,  <26.932928, 34.533798, 34.027744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835333, 35.159225, 33.484894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226261, 35.154911, 33.569489>,  <27.460819, 35.152321, 33.620243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226261, 35.154911, 33.569489>,  <26.835333, 35.159225, 33.484894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226261, 35.154911, 33.569489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201483, 0.354683, -0.913019,
		-0.065161, 0.934924, 0.348813,
		0.977322, -0.010786, 0.211483,
		27.519457, 35.151676, 33.632935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246815, 35.874584, 33.350750>,  <26.835333, 35.159225, 33.484894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246815, 35.874584, 33.350750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504799, 35.569092, 33.339882>,  <27.659590, 35.385796, 33.333363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504799, 35.569092, 33.339882>,  <27.246815, 35.874584, 33.350750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504799, 35.569092, 33.339882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249621, 0.244135, -0.937063,
		0.722300, 0.597585, 0.348101,
		0.644959, -0.763734, -0.027169,
		27.698286, 35.339970, 33.331730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677746, 36.183800, 32.952229>,  <27.246815, 35.874584, 33.350750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677746, 36.183800, 32.952229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809828, 35.806778, 32.931992>,  <27.889076, 35.580566, 32.919849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809828, 35.806778, 32.931992>,  <27.677746, 36.183800, 32.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809828, 35.806778, 32.931992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044257, 0.069000, -0.996634,
		0.942871, 0.326853, 0.064499,
		0.330204, -0.942553, -0.050593,
		27.908890, 35.524014, 32.916813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248377, 36.181934, 32.511768>,  <27.677746, 36.183800, 32.952229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248377, 36.181934, 32.511768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096386, 35.811985, 32.505814>,  <28.005192, 35.590015, 32.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096386, 35.811985, 32.505814>,  <28.248377, 36.181934, 32.511768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096386, 35.811985, 32.505814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205124, -0.068560, -0.976332,
		0.901966, -0.374036, 0.215766,
		-0.379976, -0.924877, -0.014885,
		27.982393, 35.534523, 32.501347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596811, 35.825371, 31.912289>,  <28.248377, 36.181934, 32.511768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596811, 35.825371, 31.912289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268970, 35.607506, 31.983385>,  <28.072266, 35.476788, 32.026043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268970, 35.607506, 31.983385>,  <28.596811, 35.825371, 31.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268970, 35.607506, 31.983385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152403, -0.091788, -0.984047,
		0.552291, -0.833615, -0.007779,
		-0.819602, -0.544666, 0.177739,
		28.023090, 35.444107, 32.036709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620607, 35.213028, 31.439167>,  <28.596811, 35.825371, 31.912289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620607, 35.213028, 31.439167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235670, 35.223888, 31.547358>,  <28.004707, 35.230404, 31.612272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235670, 35.223888, 31.547358>,  <28.620607, 35.213028, 31.439167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235670, 35.223888, 31.547358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271786, -0.115606, -0.955389,
		0.005330, -0.992924, 0.118632,
		-0.962343, 0.027150, 0.270479,
		27.946968, 35.232033, 31.628502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235823, 34.570751, 31.109629>,  <28.620607, 35.213028, 31.439167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235823, 34.570751, 31.109629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950665, 34.831577, 31.212849>,  <27.779570, 34.988071, 31.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950665, 34.831577, 31.212849>,  <28.235823, 34.570751, 31.109629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950665, 34.831577, 31.212849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439652, -0.128900, -0.888870,
		-0.546340, -0.747124, 0.378575,
		-0.712894, 0.652067, 0.258051,
		27.736795, 35.027199, 31.290264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650049, 34.187355, 30.970289>,  <28.235823, 34.570751, 31.109629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650049, 34.187355, 30.970289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498051, 34.557060, 30.984949>,  <27.406851, 34.778881, 30.993744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498051, 34.557060, 30.984949>,  <27.650049, 34.187355, 30.970289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498051, 34.557060, 30.984949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690606, -0.257131, -0.675978,
		-0.615357, -0.282180, 0.736010,
		-0.379998, 0.924261, 0.036648,
		27.384050, 34.834339, 30.995943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907969, 34.100410, 30.894140>,  <27.650049, 34.187355, 30.970289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907969, 34.100410, 30.894140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013460, 34.473202, 30.794655>,  <27.076756, 34.696877, 30.734964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013460, 34.473202, 30.794655>,  <26.907969, 34.100410, 30.894140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013460, 34.473202, 30.794655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479544, -0.097042, -0.872135,
		-0.836949, 0.349278, 0.421333,
		0.263731, 0.931980, -0.248714,
		27.092579, 34.752796, 30.720041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338411, 34.484562, 30.680086>,  <26.907969, 34.100410, 30.894140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338411, 34.484562, 30.680086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654871, 34.676777, 30.528736>,  <26.844748, 34.792107, 30.437927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654871, 34.676777, 30.528736>,  <26.338411, 34.484562, 30.680086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654871, 34.676777, 30.528736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407417, -0.047353, -0.912014,
		-0.456174, 0.875695, 0.158316,
		0.791149, 0.480538, -0.378374,
		26.892216, 34.820938, 30.415224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027081, 34.928406, 30.279295>,  <26.338411, 34.484562, 30.680086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027081, 34.928406, 30.279295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385599, 34.910671, 30.102802>,  <26.600710, 34.900032, 29.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385599, 34.910671, 30.102802>,  <26.027081, 34.928406, 30.279295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385599, 34.910671, 30.102802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442959, -0.136532, -0.886085,
		-0.020960, 0.989643, -0.142011,
		0.896297, -0.044332, -0.441233,
		26.654488, 34.897373, 29.970432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908710, 35.334126, 29.637676>,  <26.027081, 34.928406, 30.279295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908710, 35.334126, 29.637676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264324, 35.151421, 29.625137>,  <26.477694, 35.041798, 29.617615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264324, 35.151421, 29.625137>,  <25.908710, 35.334126, 29.637676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264324, 35.151421, 29.625137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096174, -0.119373, -0.988181,
		0.447623, 0.881543, -0.150055,
		0.889036, -0.456763, -0.031347,
		26.531034, 35.014393, 29.615734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210585, 35.590683, 29.150597>,  <25.908710, 35.334126, 29.637676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210585, 35.590683, 29.150597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392395, 35.235020, 29.171804>,  <26.501482, 35.021622, 29.184528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392395, 35.235020, 29.171804>,  <26.210585, 35.590683, 29.150597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392395, 35.235020, 29.171804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124920, -0.122567, -0.984567,
		0.881930, 0.440888, -0.166783,
		0.454526, -0.889154, 0.053020,
		26.528753, 34.968273, 29.187710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614805, 35.532402, 28.608210>,  <26.210585, 35.590683, 29.150597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614805, 35.532402, 28.608210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563019, 35.149395, 28.711287>,  <26.531948, 34.919590, 28.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563019, 35.149395, 28.711287>,  <26.614805, 35.532402, 28.608210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563019, 35.149395, 28.711287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014151, -0.261637, -0.965063,
		0.991483, -0.121294, 0.047422,
		-0.129464, -0.957514, 0.257692,
		26.524179, 34.862141, 28.788593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119576, 35.141212, 28.248138>,  <26.614805, 35.532402, 28.608210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119576, 35.141212, 28.248138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826748, 34.882351, 28.333239>,  <26.651051, 34.727036, 28.384298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826748, 34.882351, 28.333239>,  <27.119576, 35.141212, 28.248138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826748, 34.882351, 28.333239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128938, -0.438288, -0.889538,
		0.668915, -0.623774, 0.404301,
		-0.732071, -0.647155, 0.212749,
		26.607126, 34.688206, 28.397064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373619, 34.513840, 27.865156>,  <27.119576, 35.141212, 28.248138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373619, 34.513840, 27.865156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994194, 34.442490, 27.969778>,  <26.766539, 34.399677, 28.032551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994194, 34.442490, 27.969778>,  <27.373619, 34.513840, 27.865156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994194, 34.442490, 27.969778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112056, -0.583507, -0.804340,
		0.296096, -0.792275, 0.533504,
		-0.948563, -0.178380, 0.261553,
		26.709625, 34.388977, 28.048244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291332, 33.785763, 27.840839>,  <27.373619, 34.513840, 27.865156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291332, 33.785763, 27.840839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926390, 33.937817, 27.780041>,  <26.707424, 34.029049, 27.743563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926390, 33.937817, 27.780041>,  <27.291332, 33.785763, 27.840839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926390, 33.937817, 27.780041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096859, -0.561155, -0.822024,
		-0.397771, -0.735258, 0.548794,
		-0.912358, 0.380132, -0.151995,
		26.652683, 34.051857, 27.734442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866047, 33.214043, 27.539053>,  <27.291332, 33.785763, 27.840839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866047, 33.214043, 27.539053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608940, 33.512966, 27.471663>,  <26.454676, 33.692322, 27.431229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608940, 33.512966, 27.471663>,  <26.866047, 33.214043, 27.539053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608940, 33.512966, 27.471663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152560, -0.340392, -0.927825,
		-0.750718, -0.570670, 0.332802,
		-0.642765, 0.747308, -0.168477,
		26.416111, 33.737160, 27.421120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202154, 32.955402, 27.346914>,  <26.866047, 33.214043, 27.539053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202154, 32.955402, 27.346914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255589, 33.323467, 27.199694>,  <26.287649, 33.544304, 27.111362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255589, 33.323467, 27.199694>,  <26.202154, 32.955402, 27.346914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255589, 33.323467, 27.199694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341791, -0.305815, -0.888626,
		-0.930233, 0.244506, 0.273649,
		0.133588, 0.920160, -0.368049,
		26.295666, 33.599514, 27.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609241, 32.981609, 27.039682>,  <26.202154, 32.955402, 27.346914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609241, 32.981609, 27.039682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871817, 33.232777, 26.872446>,  <26.029362, 33.383476, 26.772104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871817, 33.232777, 26.872446>,  <25.609241, 32.981609, 27.039682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871817, 33.232777, 26.872446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221379, -0.369471, -0.902487,
		-0.721164, 0.684985, -0.103526,
		0.656440, 0.627923, -0.418090,
		26.068748, 33.421154, 26.747019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224611, 33.261101, 26.497049>,  <25.609241, 32.981609, 27.039682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224611, 33.261101, 26.497049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619570, 33.264122, 26.433817>,  <25.856544, 33.265934, 26.395878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619570, 33.264122, 26.433817>,  <25.224611, 33.261101, 26.497049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619570, 33.264122, 26.433817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138501, -0.442052, -0.886232,
		-0.076576, 0.896958, -0.435435,
		0.987397, 0.007556, -0.158080,
		25.915789, 33.266388, 26.386393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415989, 33.561031, 25.736347>,  <25.224611, 33.261101, 26.497049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415989, 33.561031, 25.736347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700289, 33.309753, 25.862970>,  <25.870869, 33.158989, 25.938944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700289, 33.309753, 25.862970>,  <25.415989, 33.561031, 25.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700289, 33.309753, 25.862970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113151, -0.546246, -0.829947,
		0.694284, 0.554067, -0.459325,
		0.710751, -0.628192, 0.316557,
		25.913513, 33.121296, 25.957937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028437, 33.400066, 25.270260>,  <25.415989, 33.561031, 25.736347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028437, 33.400066, 25.270260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929602, 33.067028, 25.468544>,  <25.870300, 32.867203, 25.587515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929602, 33.067028, 25.468544>,  <26.028437, 33.400066, 25.270260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929602, 33.067028, 25.468544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080501, -0.527442, -0.845769,
		0.965644, -0.169072, 0.197348,
		-0.247085, -0.832599, 0.495710,
		25.855476, 32.817249, 25.617256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669300, 33.741749, 25.292862>,  <26.028437, 33.400066, 25.270260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669300, 33.741749, 25.292862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905544, 33.853321, 25.595749>,  <27.047291, 33.920265, 25.777481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905544, 33.853321, 25.595749>,  <26.669300, 33.741749, 25.292862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905544, 33.853321, 25.595749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769433, 0.088158, -0.632614,
		-0.243211, 0.956256, -0.162553,
		0.590611, 0.278932, 0.757216,
		27.082727, 33.937000, 25.822914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998783, 34.391678, 25.187508>,  <26.669300, 33.741749, 25.292862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998783, 34.391678, 25.187508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226969, 34.150043, 25.410093>,  <27.363880, 34.005062, 25.543644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226969, 34.150043, 25.410093>,  <26.998783, 34.391678, 25.187508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226969, 34.150043, 25.410093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638802, -0.099516, -0.762908,
		0.516239, 0.790681, 0.329122,
		0.570464, -0.604087, 0.556463,
		27.398108, 33.968819, 25.577032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705931, 34.561989, 25.188488>,  <26.998783, 34.391678, 25.187508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705931, 34.561989, 25.188488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727262, 34.168087, 25.254725>,  <27.740063, 33.931747, 25.294466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727262, 34.168087, 25.254725>,  <27.705931, 34.561989, 25.188488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727262, 34.168087, 25.254725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592040, -0.102358, -0.799382,
		0.804142, 0.140668, 0.577553,
		0.053330, -0.984752, 0.165591,
		27.743261, 33.872662, 25.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424440, 34.204109, 25.316175>,  <27.705931, 34.561989, 25.188488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424440, 34.204109, 25.316175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167511, 33.983124, 25.103682>,  <28.013353, 33.850533, 24.976185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167511, 33.983124, 25.103682>,  <28.424440, 34.204109, 25.316175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167511, 33.983124, 25.103682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618426, 0.035843, -0.785025,
		0.452736, -0.832768, 0.318633,
		-0.642323, -0.552460, -0.531233,
		27.974813, 33.817387, 24.944311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347473, 33.485180, 24.986691>,  <28.424440, 34.204109, 25.316175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347473, 33.485180, 24.986691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733742, 33.465874, 24.884590>,  <28.965502, 33.454292, 24.823330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733742, 33.465874, 24.884590>,  <28.347473, 33.485180, 24.986691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733742, 33.465874, 24.884590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255753, 0.004429, 0.966732,
		-0.045532, -0.998825, 0.016621,
		0.965670, -0.048268, -0.255251,
		29.023443, 33.451393, 24.808016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671791, 32.938629, 25.521255>,  <28.347473, 33.485180, 24.986691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671791, 32.938629, 25.521255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972523, 33.143806, 25.355537>,  <29.152962, 33.266914, 25.256107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972523, 33.143806, 25.355537>,  <28.671791, 32.938629, 25.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972523, 33.143806, 25.355537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530244, -0.096891, 0.842290,
		0.391907, -0.852936, -0.344831,
		0.751831, 0.512944, -0.414293,
		29.198072, 33.297691, 25.231249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387506, 32.573685, 25.598988>,  <28.671791, 32.938629, 25.521255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387506, 32.573685, 25.598988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422943, 32.967625, 25.539354>,  <29.444206, 33.203987, 25.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422943, 32.967625, 25.539354>,  <29.387506, 32.573685, 25.598988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422943, 32.967625, 25.539354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794493, 0.020405, 0.606930,
		0.600775, -0.172215, -0.780648,
		0.088594, 0.984848, -0.149083,
		29.449522, 33.263081, 25.494629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209864, 32.018597, 26.115410>,  <29.387506, 32.573685, 25.598988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209864, 32.018597, 26.115410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065002, 32.390800, 26.137329>,  <28.978086, 32.614120, 26.150480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065002, 32.390800, 26.137329>,  <29.209864, 32.018597, 26.115410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065002, 32.390800, 26.137329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610060, 0.192165, 0.768700,
		0.704750, 0.311816, -0.637258,
		-0.362152, 0.930507, 0.054798,
		28.956356, 32.669952, 26.153769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830780, 32.533939, 26.248518>,  <29.209864, 32.018597, 26.115410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830780, 32.533939, 26.248518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482523, 32.679775, 26.380613>,  <29.273569, 32.767277, 26.459871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482523, 32.679775, 26.380613>,  <29.830780, 32.533939, 26.248518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482523, 32.679775, 26.380613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427588, 0.228982, 0.874492,
		0.243212, 0.902575, -0.355255,
		-0.870641, 0.364590, 0.330239,
		29.221331, 32.789154, 26.479685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028631, 33.242039, 26.443552>,  <29.830780, 32.533939, 26.248518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028631, 33.242039, 26.443552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695625, 33.118488, 26.627514>,  <29.495821, 33.044357, 26.737890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695625, 33.118488, 26.627514>,  <30.028631, 33.242039, 26.443552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695625, 33.118488, 26.627514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380332, 0.284959, 0.879856,
		-0.402821, 0.907410, -0.119757,
		-0.832516, -0.308877, 0.459904,
		29.445871, 33.025826, 26.765486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927500, 33.730129, 26.980743>,  <30.028631, 33.242039, 26.443552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927500, 33.730129, 26.980743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708586, 33.409920, 27.078423>,  <29.577236, 33.217793, 27.137030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708586, 33.409920, 27.078423>,  <29.927500, 33.730129, 26.980743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708586, 33.409920, 27.078423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181223, 0.171507, 0.968372,
		-0.817089, 0.574232, 0.051210,
		-0.547287, -0.800527, 0.244200,
		29.544399, 33.169762, 27.151682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399263, 33.971111, 27.304703>,  <29.927500, 33.730129, 26.980743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399263, 33.971111, 27.304703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441471, 33.585342, 27.401667>,  <29.466795, 33.353882, 27.459845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441471, 33.585342, 27.401667>,  <29.399263, 33.971111, 27.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441471, 33.585342, 27.401667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257368, 0.261953, 0.930130,
		-0.960535, -0.035757, 0.275851,
		0.105518, -0.964418, 0.242412,
		29.473127, 33.296017, 27.474390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055393, 33.955242, 27.942415>,  <29.399263, 33.971111, 27.304703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055393, 33.955242, 27.942415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294212, 33.634399, 27.947533>,  <29.437504, 33.441895, 27.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294212, 33.634399, 27.947533>,  <29.055393, 33.955242, 27.942415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294212, 33.634399, 27.947533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272639, 0.217885, 0.937120,
		-0.754453, -0.556020, 0.348773,
		0.597050, -0.802102, 0.012792,
		29.473328, 33.393768, 27.951370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785275, 33.571602, 28.458090>,  <29.055393, 33.955242, 27.942415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785275, 33.571602, 28.458090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143364, 33.401493, 28.404846>,  <29.358217, 33.299427, 28.372900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143364, 33.401493, 28.404846>,  <28.785275, 33.571602, 28.458090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143364, 33.401493, 28.404846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127333, -0.042124, 0.990965,
		-0.427035, -0.904086, 0.016440,
		0.895225, -0.425270, -0.133109,
		29.411932, 33.273911, 28.364914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728800, 33.051769, 28.850243>,  <28.785275, 33.571602, 28.458090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728800, 33.051769, 28.850243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118813, 33.125408, 28.800570>,  <29.352819, 33.169590, 28.770765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118813, 33.125408, 28.800570>,  <28.728800, 33.051769, 28.850243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118813, 33.125408, 28.800570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139995, -0.075496, 0.987270,
		0.172377, -0.980005, -0.099383,
		0.975032, 0.184096, -0.124182,
		29.411322, 33.180637, 28.763315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989296, 32.678638, 29.362682>,  <28.728800, 33.051769, 28.850243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989296, 32.678638, 29.362682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297915, 32.912785, 29.263027>,  <29.483086, 33.053272, 29.203234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297915, 32.912785, 29.263027>,  <28.989296, 32.678638, 29.362682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297915, 32.912785, 29.263027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292391, 0.021519, 0.956057,
		0.565002, -0.810485, -0.154552,
		0.771544, 0.585364, -0.249136,
		29.529377, 33.088394, 29.188286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505110, 32.468830, 29.912920>,  <28.989296, 32.678638, 29.362682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505110, 32.468830, 29.912920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654024, 32.807686, 29.761257>,  <29.743372, 33.010998, 29.670259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654024, 32.807686, 29.761257>,  <29.505110, 32.468830, 29.912920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654024, 32.807686, 29.761257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356657, 0.246578, 0.901108,
		0.856854, -0.470699, -0.210340,
		0.372286, 0.847137, -0.379159,
		29.765709, 33.061829, 29.647509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315496, 32.500004, 29.999130>,  <29.505110, 32.468830, 29.912920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315496, 32.500004, 29.999130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147011, 32.861164, 29.964830>,  <30.045919, 33.077858, 29.944250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147011, 32.861164, 29.964830>,  <30.315496, 32.500004, 29.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147011, 32.861164, 29.964830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281192, 0.219892, 0.934119,
		0.862270, 0.369353, -0.346510,
		-0.421215, 0.902899, -0.085747,
		30.020647, 33.132034, 29.939106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785450, 32.916828, 30.293125>,  <30.315496, 32.500004, 29.999130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785450, 32.916828, 30.293125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441734, 33.121181, 30.303082>,  <30.235506, 33.243793, 30.309055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441734, 33.121181, 30.303082>,  <30.785450, 32.916828, 30.293125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441734, 33.121181, 30.303082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263746, 0.400868, 0.877350,
		0.438248, 0.760461, -0.479205,
		-0.859288, 0.510886, 0.024889,
		30.183949, 33.274448, 30.310549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901789, 33.535595, 30.568016>,  <30.785450, 32.916828, 30.293125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901789, 33.535595, 30.568016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507320, 33.536484, 30.634300>,  <30.270639, 33.537018, 30.674070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507320, 33.536484, 30.634300>,  <30.901789, 33.535595, 30.568016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507320, 33.536484, 30.634300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156464, 0.342113, 0.926540,
		-0.054632, 0.939656, -0.337730,
		-0.986171, 0.002224, 0.165713,
		30.211470, 33.537151, 30.684013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772022, 34.201420, 30.879618>,  <30.901789, 33.535595, 30.568016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772022, 34.201420, 30.879618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453373, 33.974056, 30.961893>,  <30.262184, 33.837639, 31.011259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453373, 33.974056, 30.961893>,  <30.772022, 34.201420, 30.879618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453373, 33.974056, 30.961893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002538, 0.343417, 0.939180,
		-0.604471, 0.747650, -0.275017,
		-0.796623, -0.568405, 0.205688,
		30.214386, 33.803535, 31.023600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539347, 34.454403, 31.574123>,  <30.772022, 34.201420, 30.879618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539347, 34.454403, 31.574123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332035, 34.112411, 31.566120>,  <30.207649, 33.907215, 31.561319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332035, 34.112411, 31.566120>,  <30.539347, 34.454403, 31.574123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332035, 34.112411, 31.566120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345937, 0.188194, 0.919190,
		-0.782123, 0.483316, -0.393305,
		-0.518277, -0.854978, -0.020006,
		30.176552, 33.855919, 31.560118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910061, 34.631824, 31.924961>,  <30.539347, 34.454403, 31.574123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910061, 34.631824, 31.924961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953135, 34.235699, 31.960016>,  <29.978979, 33.998024, 31.981050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953135, 34.235699, 31.960016>,  <29.910061, 34.631824, 31.924961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953135, 34.235699, 31.960016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302351, 0.051355, 0.951812,
		-0.947094, -0.128994, -0.293892,
		0.107685, -0.990315, 0.087640,
		29.985439, 33.938602, 31.986309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428392, 34.454132, 32.266239>,  <29.910061, 34.631824, 31.924961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428392, 34.454132, 32.266239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664240, 34.136189, 32.323582>,  <29.805748, 33.945423, 32.357986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664240, 34.136189, 32.323582>,  <29.428392, 34.454132, 32.266239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664240, 34.136189, 32.323582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312608, -0.060932, 0.947926,
		-0.744731, -0.603729, -0.284405,
		0.589620, -0.794858, 0.143353,
		29.841125, 33.897732, 32.366589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993868, 34.079098, 32.689510>,  <29.428392, 34.454132, 32.266239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993868, 34.079098, 32.689510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377007, 33.970490, 32.727062>,  <29.606890, 33.905327, 32.749592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377007, 33.970490, 32.727062>,  <28.993868, 34.079098, 32.689510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377007, 33.970490, 32.727062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065953, 0.110212, 0.991717,
		-0.279614, -0.956102, 0.087659,
		0.957845, -0.271517, 0.093875,
		29.664360, 33.889034, 32.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960732, 33.572502, 33.277836>,  <28.993868, 34.079098, 32.689510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960732, 33.572502, 33.277836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348782, 33.668606, 33.264362>,  <29.581612, 33.726269, 33.256279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348782, 33.668606, 33.264362>,  <28.960732, 33.572502, 33.277836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348782, 33.668606, 33.264362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010129, 0.178838, 0.983826,
		0.242406, -0.954090, 0.175929,
		0.970122, 0.240267, -0.033687,
		29.639818, 33.740685, 33.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311337, 33.113491, 33.758217>,  <28.960732, 33.572502, 33.277836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311337, 33.113491, 33.758217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571173, 33.414906, 33.717796>,  <29.727074, 33.595757, 33.693542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571173, 33.414906, 33.717796>,  <29.311337, 33.113491, 33.758217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571173, 33.414906, 33.717796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087857, 0.057627, 0.994465,
		0.755192, -0.654871, -0.028770,
		0.649589, 0.753540, -0.101054,
		29.766050, 33.640968, 33.687481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799686, 32.978642, 34.233585>,  <29.311337, 33.113491, 33.758217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799686, 32.978642, 34.233585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841440, 33.368896, 34.156399>,  <29.866493, 33.603050, 34.110088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841440, 33.368896, 34.156399>,  <29.799686, 32.978642, 34.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841440, 33.368896, 34.156399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184713, 0.171632, 0.967690,
		0.977233, -0.136654, -0.162298,
		0.104384, 0.975637, -0.192967,
		29.872755, 33.661587, 34.098507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392611, 33.228302, 34.596119>,  <29.799686, 32.978642, 34.233585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392611, 33.228302, 34.596119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150236, 33.542450, 34.545475>,  <30.004812, 33.730938, 34.515087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150236, 33.542450, 34.545475>,  <30.392611, 33.228302, 34.596119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150236, 33.542450, 34.545475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270986, 0.353416, 0.895357,
		0.747936, 0.508219, -0.426972,
		-0.605936, 0.785373, -0.126613,
		29.968454, 33.778061, 34.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609556, 33.882721, 35.090038>,  <30.392611, 33.228302, 34.596119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609556, 33.882721, 35.090038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765076, 33.687508, 35.402618>,  <30.858387, 33.570381, 35.590164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765076, 33.687508, 35.402618>,  <30.609556, 33.882721, 35.090038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765076, 33.687508, 35.402618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755515, 0.654313, 0.032739,
		-0.527288, 0.577666, 0.623112,
		0.388798, -0.488034, 0.781447,
		30.881716, 33.541096, 35.637051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211386, 34.184544, 35.408146>,  <30.609556, 33.882721, 35.090038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211386, 34.184544, 35.408146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514078, 34.437374, 35.474892>,  <31.695694, 34.589073, 35.514938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514078, 34.437374, 35.474892>,  <31.211386, 34.184544, 35.408146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514078, 34.437374, 35.474892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381977, 0.220376, 0.897512,
		0.530523, -0.742911, 0.408203,
		0.756729, 0.632075, 0.166860,
		31.741096, 34.626995, 35.524948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898720, 34.420959, 36.109287>,  <31.211386, 34.184544, 35.408146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898720, 34.420959, 36.109287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215345, 34.663757, 36.081047>,  <31.405321, 34.809437, 36.064102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215345, 34.663757, 36.081047>,  <30.898720, 34.420959, 36.109287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215345, 34.663757, 36.081047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297366, 0.483540, 0.823263,
		0.533859, -0.630667, 0.563252,
		0.791560, 0.606999, -0.070603,
		31.452814, 34.845856, 36.059868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408052, 34.256157, 36.637165>,  <30.898720, 34.420959, 36.109287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408052, 34.256157, 36.637165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365963, 34.642216, 36.541317>,  <31.340710, 34.873852, 36.483807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365963, 34.642216, 36.541317>,  <31.408052, 34.256157, 36.637165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365963, 34.642216, 36.541317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005130, 0.241480, 0.970392,
		0.994435, 0.100879, -0.030361,
		-0.105224, 0.965148, -0.239619,
		31.334396, 34.931759, 36.469433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942337, 34.609985, 36.967937>,  <31.408052, 34.256157, 36.637165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942337, 34.609985, 36.967937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630457, 34.854954, 36.915760>,  <31.443329, 35.001934, 36.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630457, 34.854954, 36.915760>,  <31.942337, 34.609985, 36.967937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630457, 34.854954, 36.915760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023538, 0.179517, 0.983473,
		0.625713, 0.769883, -0.125554,
		-0.779698, 0.612416, -0.130447,
		31.396547, 35.038677, 36.876625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119915, 35.275589, 37.229191>,  <31.942337, 34.609985, 36.967937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119915, 35.275589, 37.229191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723179, 35.255939, 37.276253>,  <31.485138, 35.244148, 37.304489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723179, 35.255939, 37.276253>,  <32.119915, 35.275589, 37.229191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723179, 35.255939, 37.276253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095228, 0.328202, 0.939795,
		-0.084784, 0.943329, -0.320845,
		-0.991838, -0.049126, 0.117658,
		31.425627, 35.241203, 37.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837910, 35.927135, 37.537666>,  <32.119915, 35.275589, 37.229191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837910, 35.927135, 37.537666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639870, 35.594257, 37.637531>,  <31.521046, 35.394531, 37.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639870, 35.594257, 37.637531>,  <31.837910, 35.927135, 37.537666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639870, 35.594257, 37.637531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245301, 0.141778, 0.959024,
		-0.833489, 0.536055, 0.133943,
		-0.495100, -0.832192, 0.249665,
		31.491341, 35.344601, 37.712429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359505, 36.157429, 38.079876>,  <31.837910, 35.927135, 37.537666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359505, 36.157429, 38.079876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481005, 35.785641, 38.163605>,  <31.553904, 35.562569, 38.213840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481005, 35.785641, 38.163605>,  <31.359505, 36.157429, 38.079876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481005, 35.785641, 38.163605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183015, 0.158689, 0.970218,
		-0.935009, -0.333011, -0.121906,
		0.303748, -0.929474, 0.209322,
		31.572128, 35.506798, 38.226402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839291, 35.697319, 38.352203>,  <31.359505, 36.157429, 38.079876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839291, 35.697319, 38.352203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211643, 35.629593, 38.481689>,  <31.435055, 35.588959, 38.559380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211643, 35.629593, 38.481689>,  <30.839291, 35.697319, 38.352203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211643, 35.629593, 38.481689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286723, 0.210482, 0.934605,
		-0.226376, -0.962824, 0.147388,
		0.930883, -0.169313, 0.323713,
		31.490908, 35.578800, 38.578804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704182, 35.430695, 39.019447>,  <30.839291, 35.697319, 38.352203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704182, 35.430695, 39.019447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085972, 35.549755, 39.027294>,  <31.315046, 35.621193, 39.032001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085972, 35.549755, 39.027294>,  <30.704182, 35.430695, 39.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085972, 35.549755, 39.027294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113558, 0.301756, 0.946598,
		0.275835, -0.905730, 0.321819,
		0.954473, 0.297650, 0.019618,
		31.372314, 35.639050, 39.033180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963064, 35.101646, 39.652878>,  <30.704182, 35.430695, 39.019447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963064, 35.101646, 39.652878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200869, 35.408287, 39.555820>,  <31.343552, 35.592270, 39.497585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200869, 35.408287, 39.555820>,  <30.963064, 35.101646, 39.652878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200869, 35.408287, 39.555820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078469, 0.355631, 0.931327,
		0.800249, -0.534646, 0.271581,
		0.594512, 0.766603, -0.242640,
		31.379223, 35.638268, 39.483028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343843, 35.305065, 40.290562>,  <30.963064, 35.101646, 39.652878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343843, 35.305065, 40.290562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436905, 35.630333, 40.077160>,  <31.492743, 35.825493, 39.949120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436905, 35.630333, 40.077160>,  <31.343843, 35.305065, 40.290562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436905, 35.630333, 40.077160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101973, 0.525136, 0.844887,
		0.967198, -0.250970, 0.039254,
		0.232655, 0.813170, -0.533503,
		31.506702, 35.874283, 39.917110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894669, 35.553146, 40.553986>,  <31.343843, 35.305065, 40.290562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894669, 35.553146, 40.553986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754532, 35.864937, 40.346264>,  <31.670450, 36.052010, 40.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754532, 35.864937, 40.346264>,  <31.894669, 35.553146, 40.553986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754532, 35.864937, 40.346264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076184, 0.528892, 0.845263,
		0.933518, 0.335695, -0.125910,
		-0.350343, 0.779476, -0.519305,
		31.649429, 36.098778, 40.190472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277924, 36.110046, 40.680859>,  <31.894669, 35.553146, 40.553986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277924, 36.110046, 40.680859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941269, 36.287868, 40.558208>,  <31.739277, 36.394562, 40.484619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941269, 36.287868, 40.558208>,  <32.277924, 36.110046, 40.680859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941269, 36.287868, 40.558208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026121, 0.600621, 0.799107,
		0.539411, 0.664549, -0.517117,
		-0.841637, 0.444554, -0.306623,
		31.688778, 36.421234, 40.466221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422562, 36.811543, 40.769516>,  <32.277924, 36.110046, 40.680859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422562, 36.811543, 40.769516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025928, 36.768112, 40.741306>,  <31.787949, 36.742054, 40.724380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025928, 36.768112, 40.741306>,  <32.422562, 36.811543, 40.769516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025928, 36.768112, 40.741306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127262, 0.717174, 0.685176,
		-0.023816, 0.688384, -0.724956,
		-0.991583, -0.108577, -0.070525,
		31.728453, 36.735538, 40.720150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111423, 37.502743, 40.506054>,  <32.422562, 36.811543, 40.769516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111423, 37.502743, 40.506054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818724, 37.307487, 40.696323>,  <31.643103, 37.190334, 40.810486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818724, 37.307487, 40.696323>,  <32.111423, 37.502743, 40.506054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818724, 37.307487, 40.696323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001395, 0.696833, 0.717233,
		-0.681570, 0.525499, -0.509228,
		-0.731752, -0.488134, 0.475673,
		31.599197, 37.161049, 40.839024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694586, 38.011116, 40.767555>,  <32.111423, 37.502743, 40.506054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694586, 38.011116, 40.767555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610680, 37.689285, 40.989784>,  <31.560337, 37.496189, 41.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610680, 37.689285, 40.989784>,  <31.694586, 38.011116, 40.767555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610680, 37.689285, 40.989784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016937, 0.565141, 0.824821,
		-0.977605, 0.182428, -0.104919,
		-0.209764, -0.804572, 0.555574,
		31.547750, 37.447914, 41.156456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265787, 38.242161, 41.173725>,  <31.694586, 38.011116, 40.767555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265787, 38.242161, 41.173725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413710, 37.915195, 41.350399>,  <31.502464, 37.719017, 41.456402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413710, 37.915195, 41.350399>,  <31.265787, 38.242161, 41.173725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413710, 37.915195, 41.350399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106392, 0.509510, 0.853862,
		-0.922997, -0.268773, 0.275387,
		0.369808, -0.817411, 0.441680,
		31.524652, 37.669971, 41.482903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876030, 38.150398, 41.845329>,  <31.265787, 38.242161, 41.173725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876030, 38.150398, 41.845329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203356, 37.934208, 41.923557>,  <31.399752, 37.804493, 41.970493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203356, 37.934208, 41.923557>,  <30.876030, 38.150398, 41.845329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203356, 37.934208, 41.923557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132244, 0.508175, 0.851040,
		-0.559347, -0.670557, 0.487323,
		0.818317, -0.540473, 0.195569,
		31.448851, 37.772068, 41.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811476, 37.865711, 42.524529>,  <30.876030, 38.150398, 41.845329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811476, 37.865711, 42.524529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204006, 37.825871, 42.458706>,  <31.439524, 37.801968, 42.419212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204006, 37.825871, 42.458706>,  <30.811476, 37.865711, 42.524529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204006, 37.825871, 42.458706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191176, 0.410496, 0.891597,
		-0.021251, -0.906407, 0.421871,
		0.981326, -0.099599, -0.164560,
		31.498404, 37.795990, 42.409336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199503, 37.348045, 42.897945>,  <30.811476, 37.865711, 42.524529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199503, 37.348045, 42.897945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480148, 37.617706, 42.805630>,  <31.648535, 37.779503, 42.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480148, 37.617706, 42.805630>,  <31.199503, 37.348045, 42.897945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480148, 37.617706, 42.805630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125579, 0.201829, 0.971336,
		0.701406, -0.710483, 0.056947,
		0.701612, 0.674150, -0.230786,
		31.690632, 37.819950, 42.736393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700523, 37.157192, 43.343674>,  <31.199503, 37.348045, 42.897945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700523, 37.157192, 43.343674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767664, 37.534832, 43.230186>,  <31.807947, 37.761417, 43.162094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767664, 37.534832, 43.230186>,  <31.700523, 37.157192, 43.343674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767664, 37.534832, 43.230186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014209, 0.285453, 0.958287,
		0.985710, -0.164879, 0.034498,
		0.167849, 0.944103, -0.283716,
		31.818018, 37.818062, 43.145073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277008, 37.375740, 43.883278>,  <31.700523, 37.157192, 43.343674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277008, 37.375740, 43.883278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133713, 37.704906, 43.706879>,  <32.047737, 37.902405, 43.601040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133713, 37.704906, 43.706879>,  <32.277008, 37.375740, 43.883278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133713, 37.704906, 43.706879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132680, 0.422682, 0.896513,
		0.924156, 0.379674, -0.042236,
		-0.358235, 0.822914, -0.440999,
		32.026241, 37.951782, 43.574577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682137, 37.833210, 44.233597>,  <32.277008, 37.375740, 43.883278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682137, 37.833210, 44.233597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359653, 38.022266, 44.091255>,  <32.166164, 38.135700, 44.005848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359653, 38.022266, 44.091255>,  <32.682137, 37.833210, 44.233597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359653, 38.022266, 44.091255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160275, 0.404517, 0.900376,
		0.569506, 0.782928, -0.250373,
		-0.806210, 0.472641, -0.355859,
		32.117790, 38.164059, 43.984497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566330, 38.373302, 44.710270>,  <32.682137, 37.833210, 44.233597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566330, 38.373302, 44.710270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225105, 38.405293, 44.504009>,  <32.020370, 38.424488, 44.380253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225105, 38.405293, 44.504009>,  <32.566330, 38.373302, 44.710270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225105, 38.405293, 44.504009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429123, 0.454715, 0.780440,
		0.296892, 0.887039, -0.353578,
		-0.853058, 0.079978, -0.515650,
		31.969189, 38.429287, 44.349316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405216, 39.069782, 44.752968>,  <32.566330, 38.373302, 44.710270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405216, 39.069782, 44.752968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082726, 38.849274, 44.667080>,  <31.889233, 38.716969, 44.615547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082726, 38.849274, 44.667080>,  <32.405216, 39.069782, 44.752968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082726, 38.849274, 44.667080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457057, 0.349943, 0.817703,
		-0.375636, 0.757391, -0.534095,
		-0.806224, -0.551270, -0.214720,
		31.840858, 38.683891, 44.602665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802057, 39.449497, 44.897640>,  <32.405216, 39.069782, 44.752968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802057, 39.449497, 44.897640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650742, 39.079926, 44.920479>,  <31.559952, 38.858185, 44.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650742, 39.079926, 44.920479>,  <31.802057, 39.449497, 44.897640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650742, 39.079926, 44.920479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606560, 0.294001, 0.738680,
		-0.699272, 0.244800, -0.671633,
		-0.378289, -0.923925, 0.057101,
		31.537254, 38.802750, 44.937611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188602, 39.618397, 44.901127>,  <31.802057, 39.449497, 44.897640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188602, 39.618397, 44.901127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207075, 39.242382, 45.036304>,  <31.218159, 39.016773, 45.117409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207075, 39.242382, 45.036304>,  <31.188602, 39.618397, 44.901127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207075, 39.242382, 45.036304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542214, 0.260539, 0.798826,
		-0.838970, -0.220130, -0.497666,
		0.046184, -0.940033, 0.337942,
		31.220930, 38.960373, 45.137688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508585, 39.444721, 45.196800>,  <31.188602, 39.618397, 44.901127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508585, 39.444721, 45.196800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782784, 39.201019, 45.356251>,  <30.947304, 39.054798, 45.451920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782784, 39.201019, 45.356251>,  <30.508585, 39.444721, 45.196800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782784, 39.201019, 45.356251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247205, 0.320216, 0.914523,
		-0.684823, -0.725445, 0.068896,
		0.685498, -0.609255, 0.398625,
		30.988432, 39.018242, 45.475838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181723, 39.255684, 45.746277>,  <30.508585, 39.444721, 45.196800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181723, 39.255684, 45.746277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557407, 39.140774, 45.821484>,  <30.782818, 39.071827, 45.866608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557407, 39.140774, 45.821484>,  <30.181723, 39.255684, 45.746277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557407, 39.140774, 45.821484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104358, 0.282849, 0.953470,
		-0.327089, -0.915134, 0.235676,
		0.939214, -0.287275, 0.188018,
		30.839172, 39.054592, 45.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155615, 38.802635, 46.382229>,  <30.181723, 39.255684, 45.746277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155615, 38.802635, 46.382229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527504, 38.943775, 46.340057>,  <30.750637, 39.028458, 46.314754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527504, 38.943775, 46.340057>,  <30.155615, 38.802635, 46.382229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527504, 38.943775, 46.340057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001126, 0.283567, 0.958952,
		0.368266, -0.891675, 0.263241,
		0.929720, 0.352853, -0.105432,
		30.806419, 39.049629, 46.308430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621714, 38.496288, 47.016235>,  <30.155615, 38.802635, 46.382229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621714, 38.496288, 47.016235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752205, 38.837624, 46.853565>,  <30.830500, 39.042423, 46.755962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752205, 38.837624, 46.853565>,  <30.621714, 38.496288, 47.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752205, 38.837624, 46.853565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100700, 0.396393, 0.912542,
		0.939912, -0.338650, 0.043384,
		0.326230, 0.853339, -0.406676,
		30.850075, 39.093624, 46.731564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098829, 38.698750, 47.511307>,  <30.621714, 38.496288, 47.016235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098829, 38.698750, 47.511307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026421, 39.037270, 47.310905>,  <30.982975, 39.240383, 47.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026421, 39.037270, 47.310905>,  <31.098829, 38.698750, 47.511307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026421, 39.037270, 47.310905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082077, 0.494643, 0.865212,
		0.980048, 0.197742, -0.020079,
		-0.181020, 0.846302, -0.501004,
		30.972115, 39.291161, 47.160603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601553, 39.194977, 47.709488>,  <31.098829, 38.698750, 47.511307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601553, 39.194977, 47.709488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308474, 39.435738, 47.582455>,  <31.132626, 39.580196, 47.506233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308474, 39.435738, 47.582455>,  <31.601553, 39.194977, 47.709488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308474, 39.435738, 47.582455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154023, 0.601210, 0.784106,
		0.662893, 0.525600, -0.533214,
		-0.732700, 0.601906, -0.317583,
		31.088663, 39.616310, 47.487179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834032, 39.920067, 47.831020>,  <31.601553, 39.194977, 47.709488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834032, 39.920067, 47.831020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437244, 39.953682, 47.793201>,  <31.199173, 39.973850, 47.770508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437244, 39.953682, 47.793201>,  <31.834032, 39.920067, 47.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437244, 39.953682, 47.793201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024838, 0.603499, 0.796977,
		0.124036, 0.792923, -0.596564,
		-0.991967, 0.084036, -0.094550,
		31.139654, 39.978893, 47.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629507, 40.602516, 47.839146>,  <31.834032, 39.920067, 47.831020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629507, 40.602516, 47.839146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303921, 40.402748, 47.957832>,  <31.108568, 40.282887, 48.029045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303921, 40.402748, 47.957832>,  <31.629507, 40.602516, 47.839146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303921, 40.402748, 47.957832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000156, 0.510591, 0.859824,
		-0.580911, 0.699914, -0.415526,
		-0.813967, -0.499417, 0.296717,
		31.059731, 40.252922, 48.046848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165356, 41.149654, 48.000813>,  <31.629507, 40.602516, 47.839146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165356, 41.149654, 48.000813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028458, 40.813194, 48.168304>,  <30.946320, 40.611320, 48.268799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028458, 40.813194, 48.168304>,  <31.165356, 41.149654, 48.000813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028458, 40.813194, 48.168304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150620, 0.488997, 0.859183,
		-0.927460, 0.230981, -0.294050,
		-0.342244, -0.841148, 0.418734,
		30.925785, 40.560848, 48.293926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653397, 41.310379, 48.406036>,  <31.165356, 41.149654, 48.000813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653397, 41.310379, 48.406036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787067, 40.959389, 48.543648>,  <30.867270, 40.748795, 48.626213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787067, 40.959389, 48.543648>,  <30.653397, 41.310379, 48.406036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787067, 40.959389, 48.543648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, 0.377412, 0.925245,
		-0.941724, -0.295954, 0.159899,
		0.334178, -0.877480, 0.344026,
		30.887321, 40.696144, 48.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429586, 41.453854, 49.009087>,  <30.653397, 41.310379, 48.406036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429586, 41.453854, 49.009087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615070, 41.109169, 49.091469>,  <30.726360, 40.902359, 49.140900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615070, 41.109169, 49.091469>,  <30.429586, 41.453854, 49.009087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615070, 41.109169, 49.091469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186764, 0.132165, 0.973474,
		-0.866078, -0.489876, -0.099651,
		0.463711, -0.861716, 0.205957,
		30.754185, 40.850655, 49.153255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929224, 40.992943, 49.472557>,  <30.429586, 41.453854, 49.009087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929224, 40.992943, 49.472557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326702, 40.956791, 49.499107>,  <30.565189, 40.935101, 49.515038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326702, 40.956791, 49.499107>,  <29.929224, 40.992943, 49.472557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326702, 40.956791, 49.499107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054278, 0.130280, 0.989990,
		-0.098121, -0.987349, 0.124553,
		0.993693, -0.090379, 0.066374,
		30.624809, 40.929676, 49.519020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019537, 40.522945, 50.071613>,  <29.929224, 40.992943, 49.472557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019537, 40.522945, 50.071613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361300, 40.719040, 50.002724>,  <30.566357, 40.836697, 49.961391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361300, 40.719040, 50.002724>,  <30.019537, 40.522945, 50.071613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361300, 40.719040, 50.002724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069284, 0.221001, 0.972809,
		0.514963, -0.843108, 0.154860,
		0.854408, 0.490232, -0.172221,
		30.617622, 40.866108, 49.951057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504635, 40.426895, 50.609161>,  <30.019537, 40.522945, 50.071613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504635, 40.426895, 50.609161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710262, 40.745007, 50.480625>,  <30.833639, 40.935875, 50.403503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710262, 40.745007, 50.480625>,  <30.504635, 40.426895, 50.609161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710262, 40.745007, 50.480625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341937, 0.153568, 0.927090,
		0.786646, -0.586465, -0.192992,
		0.514069, 0.795283, -0.321338,
		30.864483, 40.983593, 50.384224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216425, 40.400448, 50.926197>,  <30.504635, 40.426895, 50.609161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216425, 40.400448, 50.926197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166134, 40.784760, 50.827328>,  <31.135960, 41.015347, 50.768005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166134, 40.784760, 50.827328>,  <31.216425, 40.400448, 50.926197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166134, 40.784760, 50.827328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180249, 0.267127, 0.946654,
		0.975553, 0.074469, -0.206765,
		-0.125729, 0.960780, -0.247173,
		31.128416, 41.072994, 50.753178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755924, 40.811844, 51.353283>,  <31.216425, 40.400448, 50.926197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755924, 40.811844, 51.353283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487785, 41.076656, 51.219208>,  <31.326902, 41.235542, 51.138763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487785, 41.076656, 51.219208>,  <31.755924, 40.811844, 51.353283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487785, 41.076656, 51.219208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065629, 0.502831, 0.861890,
		0.739142, 0.555766, -0.380518,
		-0.670345, 0.662032, -0.335189,
		31.286682, 41.275265, 51.118652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080116, 41.506767, 51.479801>,  <31.755924, 40.811844, 51.353283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080116, 41.506767, 51.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689766, 41.584599, 51.440193>,  <31.455555, 41.631298, 51.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689766, 41.584599, 51.440193>,  <32.080116, 41.506767, 51.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689766, 41.584599, 51.440193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030391, 0.570205, 0.820940,
		0.216195, 0.798127, -0.562363,
		-0.975877, 0.194574, -0.099019,
		31.397003, 41.642971, 51.410488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982958, 42.238194, 51.555706>,  <32.080116, 41.506767, 51.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982958, 42.238194, 51.555706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630392, 42.092651, 51.676186>,  <31.418854, 42.005325, 51.748474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630392, 42.092651, 51.676186>,  <31.982958, 42.238194, 51.555706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630392, 42.092651, 51.676186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157214, 0.375324, 0.913463,
		-0.445417, 0.852490, -0.273612,
		-0.881412, -0.363857, 0.301199,
		31.365969, 41.983494, 51.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766861, 42.747231, 52.050175>,  <31.982958, 42.238194, 51.555706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766861, 42.747231, 52.050175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526932, 42.436527, 52.126980>,  <31.382975, 42.250107, 52.173061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526932, 42.436527, 52.126980>,  <31.766861, 42.747231, 52.050175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526932, 42.436527, 52.126980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082894, 0.299008, 0.950643,
		-0.795829, 0.554299, -0.243740,
		-0.599821, -0.776754, 0.192011,
		31.346985, 42.203503, 52.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100576, 43.061939, 52.229694>,  <31.766861, 42.747231, 52.050175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100576, 43.061939, 52.229694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208157, 42.712337, 52.391575>,  <31.272705, 42.502575, 52.488705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208157, 42.712337, 52.391575>,  <31.100576, 43.061939, 52.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208157, 42.712337, 52.391575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197098, 0.461234, 0.865110,
		-0.942771, -0.152908, 0.296315,
		0.268953, -0.874004, 0.404700,
		31.288843, 42.450138, 52.512985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770245, 42.998245, 52.962379>,  <31.100576, 43.061939, 52.229694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770245, 42.998245, 52.962379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098209, 42.769955, 52.944443>,  <31.294989, 42.632980, 52.933681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098209, 42.769955, 52.944443>,  <30.770245, 42.998245, 52.962379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098209, 42.769955, 52.944443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221146, 0.243505, 0.944351,
		-0.528051, -0.784201, 0.325868,
		0.819912, -0.570730, -0.044840,
		31.344183, 42.598736, 52.930992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426903, 43.250843, 53.140274>,  <30.770245, 42.998245, 52.962379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426903, 43.250843, 53.140274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190376, 43.133621, 53.440796>,  <31.048460, 43.063290, 53.621109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190376, 43.133621, 53.440796>,  <31.426903, 43.250843, 53.140274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190376, 43.133621, 53.440796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795342, -0.365946, 0.483234,
		0.133325, 0.883291, 0.449468,
		-0.591317, -0.293054, 0.751308,
		31.012981, 43.045704, 53.666187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688927, 43.490021, 53.888546>,  <31.426903, 43.250843, 53.140274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688927, 43.490021, 53.888546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479774, 43.149223, 53.899197>,  <31.354282, 42.944744, 53.905586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479774, 43.149223, 53.899197>,  <31.688927, 43.490021, 53.888546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479774, 43.149223, 53.899197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747919, -0.443580, 0.493816,
		-0.408915, 0.278123, 0.869159,
		-0.522883, -0.851989, 0.026627,
		31.322910, 42.893627, 53.907185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688780, 43.073696, 54.608276>,  <31.688927, 43.490021, 53.888546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688780, 43.073696, 54.608276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640841, 42.824276, 54.299259>,  <31.612076, 42.674622, 54.113850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640841, 42.824276, 54.299259>,  <31.688780, 43.073696, 54.608276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640841, 42.824276, 54.299259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701680, -0.603696, 0.378413,
		-0.702340, -0.496723, 0.509888,
		-0.119851, -0.623553, -0.772540,
		31.604885, 42.637211, 54.067497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331015, 42.474350, 54.832619>,  <31.688780, 43.073696, 54.608276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331015, 42.474350, 54.832619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589018, 42.404240, 54.535099>,  <31.743820, 42.362171, 54.356586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589018, 42.404240, 54.535099>,  <31.331015, 42.474350, 54.832619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589018, 42.404240, 54.535099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566896, -0.542947, 0.619547,
		-0.512435, -0.821272, -0.250844,
		0.645011, -0.175275, -0.743801,
		31.782520, 42.351658, 54.311958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627199, 41.919376, 55.235569>,  <31.331015, 42.474350, 54.832619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627199, 41.919376, 55.235569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841013, 41.994259, 54.905910>,  <31.969301, 42.039188, 54.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841013, 41.994259, 54.905910>,  <31.627199, 41.919376, 55.235569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841013, 41.994259, 54.905910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773901, -0.500301, 0.388299,
		-0.339630, -0.845371, -0.412311,
		0.534536, 0.187210, -0.824150,
		32.001373, 42.050423, 54.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924215, 41.287838, 54.952381>,  <31.627199, 41.919376, 55.235569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924215, 41.287838, 54.952381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158787, 41.601364, 54.870663>,  <32.299530, 41.789478, 54.821632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158787, 41.601364, 54.870663>,  <31.924215, 41.287838, 54.952381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158787, 41.601364, 54.870663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780970, -0.480216, 0.399347,
		0.214906, -0.393740, -0.893748,
		0.586431, 0.783812, -0.204298,
		32.334717, 41.836506, 54.809372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443794, 40.977432, 54.717266>,  <31.924215, 41.287838, 54.952381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443794, 40.977432, 54.717266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518753, 41.338699, 54.871754>,  <32.563728, 41.555462, 54.964447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518753, 41.338699, 54.871754>,  <32.443794, 40.977432, 54.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518753, 41.338699, 54.871754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837961, -0.352147, 0.416911,
		0.512547, 0.245505, -0.822814,
		0.187398, 0.903172, 0.386215,
		32.574974, 41.609650, 54.987617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267395, 40.955555, 53.901619>,  <32.443794, 40.977432, 54.717266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267395, 40.955555, 53.901619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040627, 40.641777, 54.002220>,  <31.904566, 40.453510, 54.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040627, 40.641777, 54.002220>,  <32.267395, 40.955555, 53.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040627, 40.641777, 54.002220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346626, -0.504117, -0.791023,
		0.747299, -0.361267, 0.557701,
		-0.566917, -0.784444, 0.251502,
		31.870552, 40.406445, 54.077671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744648, 40.377903, 53.808807>,  <32.267395, 40.955555, 53.901619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744648, 40.377903, 53.808807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357513, 40.301552, 53.743256>,  <32.125233, 40.255741, 53.703922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357513, 40.301552, 53.743256>,  <32.744648, 40.377903, 53.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357513, 40.301552, 53.743256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231335, -0.419217, -0.877919,
		0.098875, -0.887594, 0.449890,
		-0.967836, -0.190879, -0.163882,
		32.067162, 40.244289, 53.694092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721828, 39.760704, 53.677650>,  <32.744648, 40.377903, 53.808807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721828, 39.760704, 53.677650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403347, 39.928791, 53.503536>,  <32.212257, 40.029644, 53.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403347, 39.928791, 53.503536>,  <32.721828, 39.760704, 53.677650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403347, 39.928791, 53.503536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364915, -0.240330, -0.899488,
		-0.482596, -0.875018, 0.038007,
		-0.796203, 0.420220, -0.435289,
		32.164486, 40.054855, 53.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167915, 39.284267, 53.340492>,  <32.721828, 39.760704, 53.677650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167915, 39.284267, 53.340492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238571, 39.629795, 53.151764>,  <32.280964, 39.837112, 53.038528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238571, 39.629795, 53.151764>,  <32.167915, 39.284267, 53.340492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238571, 39.629795, 53.151764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255354, -0.503159, -0.825606,
		-0.950575, 0.025354, -0.309458,
		0.176639, 0.863822, -0.471816,
		32.291561, 39.888943, 53.010220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890566, 39.212337, 52.720406>,  <32.167915, 39.284267, 53.340492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890566, 39.212337, 52.720406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145901, 39.511147, 52.646126>,  <32.299103, 39.690434, 52.601559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145901, 39.511147, 52.646126>,  <31.890566, 39.212337, 52.720406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145901, 39.511147, 52.646126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337820, -0.488638, -0.804431,
		-0.691668, 0.450765, -0.564275,
		0.638336, 0.747023, -0.185698,
		32.337402, 39.735252, 52.590416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817644, 39.361835, 51.992531>,  <31.890566, 39.212337, 52.720406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817644, 39.361835, 51.992531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182678, 39.496262, 52.085693>,  <32.401699, 39.576916, 52.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182678, 39.496262, 52.085693>,  <31.817644, 39.361835, 51.992531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182678, 39.496262, 52.085693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335220, -0.288770, -0.896794,
		-0.234123, 0.896478, -0.376183,
		0.912587, 0.336064, 0.232909,
		32.456455, 39.597080, 52.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119854, 39.689037, 51.425720>,  <31.817644, 39.361835, 51.992531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119854, 39.689037, 51.425720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447651, 39.622665, 51.645138>,  <32.644329, 39.582844, 51.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447651, 39.622665, 51.645138>,  <32.119854, 39.689037, 51.425720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447651, 39.622665, 51.645138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474588, -0.340039, -0.811874,
		0.321237, 0.925657, -0.199913,
		0.819495, -0.165928, 0.548539,
		32.693501, 39.572887, 51.809700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731552, 39.851185, 50.883835>,  <32.119854, 39.689037, 51.425720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731552, 39.851185, 50.883835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870876, 39.634022, 51.189495>,  <32.954472, 39.503723, 51.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870876, 39.634022, 51.189495>,  <32.731552, 39.851185, 50.883835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870876, 39.634022, 51.189495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700495, -0.390945, -0.597050,
		0.622884, 0.743246, 0.244132,
		0.348313, -0.542906, 0.764154,
		32.975368, 39.471149, 51.418739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441395, 39.797234, 50.801105>,  <32.731552, 39.851185, 50.883835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441395, 39.797234, 50.801105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376583, 39.491165, 51.050346>,  <33.337696, 39.307526, 51.199890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376583, 39.491165, 51.050346>,  <33.441395, 39.797234, 50.801105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376583, 39.491165, 51.050346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523905, -0.601809, -0.602785,
		0.836223, 0.228776, 0.498391,
		-0.162034, -0.765172, 0.623103,
		33.327972, 39.261612, 51.237278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140213, 39.425083, 50.969521>,  <33.441395, 39.797234, 50.801105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140213, 39.425083, 50.969521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820885, 39.193130, 51.034542>,  <33.629288, 39.053959, 51.073555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820885, 39.193130, 51.034542>,  <34.140213, 39.425083, 50.969521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820885, 39.193130, 51.034542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462962, -0.763550, -0.450175,
		0.385169, -0.284126, 0.878019,
		-0.798318, -0.579883, 0.162557,
		33.581390, 39.019165, 51.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468388, 38.823063, 51.141880>,  <34.140213, 39.425083, 50.969521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468388, 38.823063, 51.141880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096912, 38.747204, 51.014404>,  <33.874027, 38.701687, 50.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096912, 38.747204, 51.014404>,  <34.468388, 38.823063, 51.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096912, 38.747204, 51.014404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340445, -0.776766, -0.529841,
		-0.147064, -0.600556, 0.785942,
		-0.928692, -0.189650, -0.318691,
		33.818306, 38.690308, 50.918797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550236, 38.182560, 51.076744>,  <34.468388, 38.823063, 51.141880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550236, 38.182560, 51.076744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214634, 38.252182, 50.870529>,  <34.013271, 38.293953, 50.746799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214634, 38.252182, 50.870529>,  <34.550236, 38.182560, 51.076744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214634, 38.252182, 50.870529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265996, -0.695339, -0.667646,
		-0.474675, -0.697288, 0.537096,
		-0.839005, 0.174050, -0.515536,
		33.962933, 38.304398, 50.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174423, 37.599094, 50.969517>,  <34.550236, 38.182560, 51.076744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174423, 37.599094, 50.969517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029823, 37.818634, 50.668030>,  <33.943066, 37.950356, 50.487137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029823, 37.818634, 50.668030>,  <34.174423, 37.599094, 50.969517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029823, 37.818634, 50.668030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114351, -0.776183, -0.620051,
		-0.925335, -0.310335, 0.217827,
		-0.361497, 0.548846, -0.753716,
		33.921375, 37.983288, 50.441914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721439, 37.209240, 50.549366>,  <34.174423, 37.599094, 50.969517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721439, 37.209240, 50.549366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786674, 37.515850, 50.300900>,  <33.825813, 37.699814, 50.151821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786674, 37.515850, 50.300900>,  <33.721439, 37.209240, 50.549366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786674, 37.515850, 50.300900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073559, -0.637291, -0.767105,
		-0.983866, 0.079411, -0.160318,
		0.163086, 0.766521, -0.621167,
		33.835602, 37.745808, 50.114548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271591, 37.202656, 50.028347>,  <33.721439, 37.209240, 50.549366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271591, 37.202656, 50.028347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595181, 37.395805, 49.894245>,  <33.789333, 37.511696, 49.813786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595181, 37.395805, 49.894245>,  <33.271591, 37.202656, 50.028347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595181, 37.395805, 49.894245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034991, -0.529739, -0.847439,
		-0.586804, 0.697285, -0.411648,
		0.808973, 0.482876, -0.335251,
		33.837872, 37.540668, 49.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179546, 37.239956, 49.331406>,  <33.271591, 37.202656, 50.028347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179546, 37.239956, 49.331406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567684, 37.333042, 49.357586>,  <33.800568, 37.388893, 49.373295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567684, 37.333042, 49.357586>,  <33.179546, 37.239956, 49.331406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567684, 37.333042, 49.357586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170467, -0.466708, -0.867827,
		-0.171409, 0.853245, -0.492536,
		0.970340, 0.232714, 0.065452,
		33.858788, 37.402855, 49.377220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430000, 37.597260, 48.744251>,  <33.179546, 37.239956, 49.331406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430000, 37.597260, 48.744251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720676, 37.374992, 48.905823>,  <33.895081, 37.241631, 49.002766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720676, 37.374992, 48.905823>,  <33.430000, 37.597260, 48.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720676, 37.374992, 48.905823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155137, -0.440061, -0.884465,
		0.669222, 0.705394, -0.233583,
		0.726687, -0.555666, 0.403931,
		33.938683, 37.208294, 49.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973122, 37.527748, 48.263447>,  <33.430000, 37.597260, 48.744251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973122, 37.527748, 48.263447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027603, 37.208904, 48.498756>,  <34.060291, 37.017597, 48.639942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027603, 37.208904, 48.498756>,  <33.973122, 37.527748, 48.263447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027603, 37.208904, 48.498756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098665, -0.579936, -0.808665,
		0.985755, 0.168187, -0.000344,
		0.136206, -0.797112, 0.588269,
		34.068466, 36.969772, 48.675236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406906, 37.224625, 47.992184>,  <33.973122, 37.527748, 48.263447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406906, 37.224625, 47.992184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277962, 36.921364, 48.218910>,  <34.200596, 36.739407, 48.354946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277962, 36.921364, 48.218910>,  <34.406906, 37.224625, 47.992184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277962, 36.921364, 48.218910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039856, -0.609125, -0.792072,
		0.945776, -0.232744, 0.226577,
		-0.322364, -0.758154, 0.566820,
		34.181252, 36.693916, 48.388958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782635, 36.756260, 47.749569>,  <34.406906, 37.224625, 47.992184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782635, 36.756260, 47.749569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493332, 36.548824, 47.931984>,  <34.319752, 36.424362, 48.041431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493332, 36.548824, 47.931984>,  <34.782635, 36.756260, 47.749569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493332, 36.548824, 47.931984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159460, -0.517105, -0.840937,
		0.671921, -0.680930, 0.291303,
		-0.723253, -0.518592, 0.456035,
		34.276356, 36.393246, 48.068794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853161, 36.002869, 47.682549>,  <34.782635, 36.756260, 47.749569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853161, 36.002869, 47.682549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460312, 36.047619, 47.743107>,  <34.224602, 36.074471, 47.779442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460312, 36.047619, 47.743107>,  <34.853161, 36.002869, 47.682549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460312, 36.047619, 47.743107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188204, -0.566297, -0.802426,
		-0.004040, -0.816573, 0.577228,
		-0.982122, 0.111879, 0.151395,
		34.165676, 36.081184, 47.788525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619560, 35.517296, 47.301109>,  <34.853161, 36.002869, 47.682549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619560, 35.517296, 47.301109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258797, 35.685986, 47.338425>,  <34.042339, 35.787201, 47.360813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258797, 35.685986, 47.338425>,  <34.619560, 35.517296, 47.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258797, 35.685986, 47.338425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230347, -0.286944, -0.929841,
		-0.365374, -0.860120, 0.355942,
		-0.901910, 0.421730, 0.093284,
		33.988224, 35.812504, 47.366409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073948, 34.969402, 47.185619>,  <34.619560, 35.517296, 47.301109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073948, 34.969402, 47.185619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 35.328014, 47.137383>,  <33.801144, 35.543182, 47.108440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 35.328014, 47.137383>,  <34.073948, 34.969402, 47.185619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903446, 35.328014, 47.137383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179578, -0.214518, -0.960070,
		-0.886600, -0.387578, 0.252436,
		-0.426254, 0.896530, -0.120591,
		33.775570, 35.596973, 47.101204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467136, 34.853928, 46.899471>,  <34.073948, 34.969402, 47.185619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467136, 34.853928, 46.899471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498798, 35.242714, 46.810917>,  <33.517796, 35.475986, 46.757782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498798, 35.242714, 46.810917>,  <33.467136, 34.853928, 46.899471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498798, 35.242714, 46.810917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291937, -0.189747, -0.937427,
		-0.953156, 0.138836, 0.268733,
		0.079157, 0.971967, -0.221390,
		33.522545, 35.534306, 46.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801968, 35.022385, 46.437111>,  <33.467136, 34.853928, 46.899471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801968, 35.022385, 46.437111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093567, 35.290432, 46.381248>,  <33.268528, 35.451260, 46.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093567, 35.290432, 46.381248>,  <32.801968, 35.022385, 46.437111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093567, 35.290432, 46.381248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214359, 0.029734, -0.976302,
		-0.650082, 0.741662, 0.165322,
		0.729002, 0.670114, -0.139653,
		33.312267, 35.491467, 46.339352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482807, 35.491116, 45.918388>,  <32.801968, 35.022385, 46.437111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482807, 35.491116, 45.918388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871716, 35.584499, 45.923763>,  <33.105061, 35.640530, 45.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871716, 35.584499, 45.923763>,  <32.482807, 35.491116, 45.918388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871716, 35.584499, 45.923763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011429, 0.009937, -0.999885,
		-0.233571, 0.972315, 0.006993,
		0.972273, 0.233464, 0.013434,
		33.163399, 35.654537, 45.927792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653114, 36.059189, 45.366142>,  <32.482807, 35.491116, 45.918388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653114, 36.059189, 45.366142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960472, 35.815353, 45.444099>,  <33.144886, 35.669052, 45.490875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960472, 35.815353, 45.444099>,  <32.653114, 36.059189, 45.366142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960472, 35.815353, 45.444099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008166, -0.295167, -0.955411,
		0.639930, 0.735720, -0.221826,
		0.768390, -0.609584, 0.194894,
		33.190990, 35.632477, 45.502567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027832, 36.116570, 44.814095>,  <32.653114, 36.059189, 45.366142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027832, 36.116570, 44.814095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176876, 35.782021, 44.974915>,  <33.266300, 35.581291, 45.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176876, 35.782021, 44.974915>,  <33.027832, 36.116570, 44.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176876, 35.782021, 44.974915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315892, -0.293060, -0.902401,
		0.872569, 0.463245, 0.155008,
		0.372606, -0.836373, 0.402050,
		33.288658, 35.531109, 45.095531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631313, 36.091503, 44.423183>,  <33.027832, 36.116570, 44.814095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631313, 36.091503, 44.423183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514126, 35.740955, 44.576096>,  <33.443813, 35.530624, 44.667843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514126, 35.740955, 44.576096>,  <33.631313, 36.091503, 44.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514126, 35.740955, 44.576096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005569, -0.398256, -0.917258,
		0.956107, -0.270854, 0.111795,
		-0.292966, -0.876373, 0.382283,
		33.426235, 35.478043, 44.690781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037327, 35.609615, 44.086327>,  <33.631313, 36.091503, 44.423183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037327, 35.609615, 44.086327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724190, 35.409248, 44.233967>,  <33.536308, 35.289028, 44.322552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724190, 35.409248, 44.233967>,  <34.037327, 35.609615, 44.086327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724190, 35.409248, 44.233967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025215, -0.618254, -0.785574,
		0.621706, -0.605675, 0.496627,
		-0.782844, -0.500919, 0.369100,
		33.489338, 35.258972, 44.344696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366192, 35.008705, 44.009525>,  <34.037327, 35.609615, 44.086327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366192, 35.008705, 44.009525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969280, 34.959110, 44.010223>,  <33.731133, 34.929356, 44.010643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969280, 34.959110, 44.010223>,  <34.366192, 35.008705, 44.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969280, 34.959110, 44.010223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074819, -0.609904, -0.788935,
		0.098880, -0.782716, 0.614474,
		-0.992283, -0.123984, 0.001745,
		33.671597, 34.921913, 44.010746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271973, 34.343269, 43.876343>,  <34.366192, 35.008705, 44.009525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271973, 34.343269, 43.876343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938122, 34.521355, 43.746613>,  <33.737812, 34.628204, 43.668774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938122, 34.521355, 43.746613>,  <34.271973, 34.343269, 43.876343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938122, 34.521355, 43.746613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076734, -0.489092, -0.868851,
		-0.545450, -0.750050, 0.374045,
		-0.834624, 0.445213, -0.324329,
		33.687733, 34.654919, 43.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923138, 33.829582, 43.487675>,  <34.271973, 34.343269, 43.876343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923138, 33.829582, 43.487675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752739, 34.169147, 43.362541>,  <33.650497, 34.372887, 43.287460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752739, 34.169147, 43.362541>,  <33.923138, 33.829582, 43.487675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752739, 34.169147, 43.362541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064724, -0.373493, -0.925372,
		-0.902406, -0.373959, 0.214053,
		-0.425999, 0.848915, -0.312838,
		33.624939, 34.423820, 43.268688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425076, 33.599888, 43.027550>,  <33.923138, 33.829582, 43.487675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425076, 33.599888, 43.027550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491344, 33.984615, 42.940418>,  <33.531105, 34.215454, 42.888138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491344, 33.984615, 42.940418>,  <33.425076, 33.599888, 43.027550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491344, 33.984615, 42.940418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059481, -0.230230, -0.971317,
		-0.984385, 0.147967, -0.095353,
		0.165675, 0.961821, -0.217834,
		33.541046, 34.273163, 42.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925209, 33.724281, 42.492939>,  <33.425076, 33.599888, 43.027550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925209, 33.724281, 42.492939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207062, 34.007618, 42.476212>,  <33.376171, 34.177620, 42.466175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207062, 34.007618, 42.476212>,  <32.925209, 33.724281, 42.492939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207062, 34.007618, 42.476212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049889, -0.108241, -0.992872,
		-0.707819, 0.697521, -0.111608,
		0.704630, 0.708342, -0.041816,
		33.418449, 34.220119, 42.463665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799923, 34.020271, 41.885094>,  <32.925209, 33.724281, 42.492939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799923, 34.020271, 41.885094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177742, 34.105961, 41.984642>,  <33.404434, 34.157375, 42.044373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177742, 34.105961, 41.984642>,  <32.799923, 34.020271, 41.885094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177742, 34.105961, 41.984642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275269, -0.103310, -0.955800,
		-0.179048, 0.971305, -0.156552,
		0.944547, 0.214228, 0.248873,
		33.461105, 34.170231, 42.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021584, 34.538387, 41.404572>,  <32.799923, 34.020271, 41.885094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021584, 34.538387, 41.404572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346676, 34.353291, 41.546185>,  <33.541733, 34.242233, 41.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346676, 34.353291, 41.546185>,  <33.021584, 34.538387, 41.404572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346676, 34.353291, 41.546185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308373, -0.173914, -0.935233,
		0.494338, 0.869269, 0.001350,
		0.812734, -0.462738, 0.354031,
		33.590496, 34.214470, 41.652393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489281, 34.481491, 40.768703>,  <33.021584, 34.538387, 41.404572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489281, 34.481491, 40.768703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664757, 34.224819, 41.020355>,  <33.770042, 34.070816, 41.171345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664757, 34.224819, 41.020355>,  <33.489281, 34.481491, 40.768703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664757, 34.224819, 41.020355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418084, -0.473972, -0.774956,
		0.795462, 0.602991, 0.060351,
		0.438687, -0.641679, 0.629128,
		33.796364, 34.032314, 41.209095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280697, 34.520260, 40.575699>,  <33.489281, 34.481491, 40.768703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280697, 34.520260, 40.575699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192608, 34.177895, 40.762852>,  <34.139755, 33.972477, 40.875145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192608, 34.177895, 40.762852>,  <34.280697, 34.520260, 40.575699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192608, 34.177895, 40.762852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614633, -0.494218, -0.614796,
		0.757448, 0.152183, 0.634912,
		-0.220224, -0.855914, 0.467881,
		34.126541, 33.921120, 40.903217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929962, 34.109947, 40.588383>,  <34.280697, 34.520260, 40.575699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929962, 34.109947, 40.588383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644714, 33.834290, 40.639828>,  <34.473564, 33.668896, 40.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644714, 33.834290, 40.639828>,  <34.929962, 34.109947, 40.588383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644714, 33.834290, 40.639828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513673, -0.638504, -0.573108,
		0.477072, -0.342631, 0.809325,
		-0.713122, -0.689142, 0.128612,
		34.430779, 33.627548, 40.678410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216351, 33.507164, 40.622684>,  <34.929962, 34.109947, 40.588383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216351, 33.507164, 40.622684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848621, 33.380192, 40.529671>,  <34.627983, 33.304008, 40.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848621, 33.380192, 40.529671>,  <35.216351, 33.507164, 40.622684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848621, 33.380192, 40.529671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392688, -0.702302, -0.593775,
		0.025175, -0.637187, 0.770298,
		-0.919327, -0.317435, -0.232535,
		34.572823, 33.284962, 40.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373539, 32.892826, 40.468445>,  <35.216351, 33.507164, 40.622684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373539, 32.892826, 40.468445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018688, 32.922108, 40.286171>,  <34.805779, 32.939678, 40.176807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018688, 32.922108, 40.286171>,  <35.373539, 32.892826, 40.468445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018688, 32.922108, 40.286171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392063, -0.401411, -0.827741,
		-0.243510, -0.912968, 0.327402,
		-0.887124, 0.073201, -0.455689,
		34.752552, 32.944069, 40.149464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271492, 32.219032, 40.466927>,  <35.373539, 32.892826, 40.468445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271492, 32.219032, 40.466927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644310, 32.362087, 40.443619>,  <35.868000, 32.447922, 40.429634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644310, 32.362087, 40.443619>,  <35.271492, 32.219032, 40.466927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644310, 32.362087, 40.443619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009395, 0.184600, 0.982769,
		0.362233, -0.915433, 0.175414,
		0.932041, 0.357639, -0.058268,
		35.923923, 32.469379, 40.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669624, 31.992348, 41.064816>,  <35.271492, 32.219032, 40.466927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669624, 31.992348, 41.064816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917709, 32.276176, 40.931046>,  <36.066563, 32.446472, 40.850784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917709, 32.276176, 40.931046>,  <35.669624, 31.992348, 41.064816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917709, 32.276176, 40.931046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208537, 0.261842, 0.942311,
		0.756205, -0.654176, 0.014427,
		0.620215, 0.709572, -0.334426,
		36.103775, 32.489048, 40.830719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287827, 31.890045, 41.418045>,  <35.669624, 31.992348, 41.064816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287827, 31.890045, 41.418045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282394, 32.278961, 41.324688>,  <36.279133, 32.512310, 41.268673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282394, 32.278961, 41.324688>,  <36.287827, 31.890045, 41.418045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282394, 32.278961, 41.324688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283894, 0.227555, 0.931463,
		0.958759, -0.053606, -0.279118,
		-0.013583, 0.972289, -0.233389,
		36.278320, 32.570648, 41.254673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926899, 32.240395, 41.559769>,  <36.287827, 31.890045, 41.418045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926899, 32.240395, 41.559769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681080, 32.555729, 41.571545>,  <36.533588, 32.744930, 41.578609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681080, 32.555729, 41.571545>,  <36.926899, 32.240395, 41.559769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681080, 32.555729, 41.571545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403652, 0.282161, 0.870316,
		0.677791, 0.546733, -0.491613,
		-0.614544, 0.788333, 0.029444,
		36.496716, 32.792229, 41.580379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264267, 32.886814, 41.850906>,  <36.926899, 32.240395, 41.559769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264267, 32.886814, 41.850906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878036, 32.960949, 41.923916>,  <36.646297, 33.005428, 41.967720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878036, 32.960949, 41.923916>,  <37.264267, 32.886814, 41.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878036, 32.960949, 41.923916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240808, 0.371519, 0.896652,
		0.098373, 0.909738, -0.403360,
		-0.965575, 0.185338, 0.182525,
		36.588364, 33.016552, 41.978672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231445, 33.573475, 42.000439>,  <37.264267, 32.886814, 41.850906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231445, 33.573475, 42.000439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858570, 33.492062, 42.120171>,  <36.634846, 33.443214, 42.192009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858570, 33.492062, 42.120171>,  <37.231445, 33.573475, 42.000439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858570, 33.492062, 42.120171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137062, 0.566902, 0.812303,
		-0.335021, 0.798247, -0.500564,
		-0.932188, -0.203530, 0.299333,
		36.578915, 33.431004, 42.209972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937630, 34.207714, 42.159729>,  <37.231445, 33.573475, 42.000439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937630, 34.207714, 42.159729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715199, 33.950600, 42.370483>,  <36.581741, 33.796329, 42.496937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715199, 33.950600, 42.370483>,  <36.937630, 34.207714, 42.159729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715199, 33.950600, 42.370483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000741, 0.633550, 0.773701,
		-0.831131, 0.430628, -0.351826,
		-0.556077, -0.642786, 0.526882,
		36.548374, 33.757763, 42.528549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565754, 34.619232, 42.588905>,  <36.937630, 34.207714, 42.159729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565754, 34.619232, 42.588905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565704, 34.263523, 42.771858>,  <36.565674, 34.050098, 42.881630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565704, 34.263523, 42.771858>,  <36.565754, 34.619232, 42.588905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565704, 34.263523, 42.771858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092708, 0.455400, 0.885447,
		-0.995693, 0.042516, 0.082384,
		-0.000128, -0.889271, 0.457380,
		36.565666, 33.996742, 42.909073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036327, 34.751625, 43.001747>,  <36.565754, 34.619232, 42.588905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036327, 34.751625, 43.001747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269966, 34.452362, 43.127663>,  <36.410149, 34.272804, 43.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269966, 34.452362, 43.127663>,  <36.036327, 34.751625, 43.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269966, 34.452362, 43.127663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099270, 0.319061, 0.942521,
		-0.805590, -0.581773, 0.112093,
		0.584098, -0.748158, 0.314785,
		36.445194, 34.227913, 43.222099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788857, 34.550934, 43.605366>,  <36.036327, 34.751625, 43.001747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788857, 34.550934, 43.605366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148708, 34.380989, 43.645660>,  <36.364620, 34.279022, 43.669838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148708, 34.380989, 43.645660>,  <35.788857, 34.550934, 43.605366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148708, 34.380989, 43.645660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011302, 0.253276, 0.967328,
		-0.436499, -0.869103, 0.232657,
		0.899634, -0.424867, 0.100732,
		36.418598, 34.253529, 43.675880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671856, 34.153694, 44.187332>,  <35.788857, 34.550934, 43.605366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671856, 34.153694, 44.187332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063507, 34.202366, 44.122204>,  <36.298496, 34.231567, 44.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063507, 34.202366, 44.122204>,  <35.671856, 34.153694, 44.187332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063507, 34.202366, 44.122204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128650, 0.249210, 0.959866,
		0.157369, -0.960775, 0.228354,
		0.979124, 0.121676, -0.162821,
		36.357243, 34.238869, 44.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011280, 33.777370, 44.648624>,  <35.671856, 34.153694, 44.187332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011280, 33.777370, 44.648624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269077, 34.056328, 44.523232>,  <36.423756, 34.223701, 44.447998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269077, 34.056328, 44.523232>,  <36.011280, 33.777370, 44.648624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269077, 34.056328, 44.523232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095150, 0.333648, 0.937883,
		0.758667, -0.634286, 0.148676,
		0.644492, 0.697395, -0.313480,
		36.462425, 34.265545, 44.429188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567493, 33.707043, 45.193523>,  <36.011280, 33.777370, 44.648624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567493, 33.707043, 45.193523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573925, 34.060379, 45.006142>,  <36.577785, 34.272381, 44.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573925, 34.060379, 45.006142>,  <36.567493, 33.707043, 45.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573925, 34.060379, 45.006142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197039, 0.456527, 0.867617,
		0.980264, -0.106253, -0.166713,
		0.016078, 0.883342, -0.468453,
		36.578747, 34.325382, 44.865604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231937, 33.962357, 45.435169>,  <36.567493, 33.707043, 45.193523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231937, 33.962357, 45.435169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995815, 34.266907, 45.327961>,  <36.854141, 34.449638, 45.263634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995815, 34.266907, 45.327961>,  <37.231937, 33.962357, 45.435169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995815, 34.266907, 45.327961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200814, 0.460138, 0.864839,
		0.781799, 0.456699, -0.424519,
		-0.590308, 0.761380, -0.268024,
		36.818722, 34.495319, 45.247555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599850, 34.526173, 45.659718>,  <37.231937, 33.962357, 45.435169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599850, 34.526173, 45.659718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227020, 34.660660, 45.605762>,  <37.003323, 34.741352, 45.573387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227020, 34.660660, 45.605762>,  <37.599850, 34.526173, 45.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227020, 34.660660, 45.605762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065687, 0.523036, 0.849775,
		0.356260, 0.783194, -0.509594,
		-0.932075, 0.336215, -0.134891,
		36.947399, 34.761524, 45.565296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542122, 35.261932, 45.649181>,  <37.599850, 34.526173, 45.659718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542122, 35.261932, 45.649181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 35.142525, 45.734718>,  <36.946835, 35.070881, 45.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 35.142525, 45.734718>,  <37.542122, 35.261932, 45.649181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170067, 35.142525, 45.734718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001125, 0.580031, 0.814594,
		-0.367204, 0.757926, -0.539174,
		-0.930140, -0.298516, 0.213843,
		36.891026, 35.052971, 45.798870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227058, 35.907204, 45.924137>,  <37.542122, 35.261932, 45.649181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227058, 35.907204, 45.924137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002869, 35.594212, 46.032654>,  <36.868355, 35.406418, 46.097763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002869, 35.594212, 46.032654>,  <37.227058, 35.907204, 45.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002869, 35.594212, 46.032654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031542, 0.347509, 0.937146,
		-0.827570, 0.516690, -0.219451,
		-0.560475, -0.782476, 0.271291,
		36.834724, 35.359470, 46.114040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751507, 36.159000, 46.298931>,  <37.227058, 35.907204, 45.924137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751507, 36.159000, 46.298931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731831, 35.779964, 46.425198>,  <36.720024, 35.552544, 46.500957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731831, 35.779964, 46.425198>,  <36.751507, 36.159000, 46.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731831, 35.779964, 46.425198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181278, 0.319270, 0.930164,
		-0.982201, -0.011469, -0.187483,
		-0.049190, -0.947594, 0.315667,
		36.717075, 35.495686, 46.519897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088078, 36.196335, 46.703293>,  <36.751507, 36.159000, 46.298931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088078, 36.196335, 46.703293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266056, 35.861759, 46.831291>,  <36.372841, 35.661015, 46.908089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266056, 35.861759, 46.831291>,  <36.088078, 36.196335, 46.703293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266056, 35.861759, 46.831291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194094, 0.258753, 0.946242,
		-0.874274, -0.483131, -0.047218,
		0.444941, -0.836440, 0.319994,
		36.399540, 35.610828, 46.927288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666130, 35.935467, 47.196362>,  <36.088078, 36.196335, 46.703293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666130, 35.935467, 47.196362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051765, 35.851788, 47.261810>,  <36.283146, 35.801579, 47.301079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051765, 35.851788, 47.261810>,  <35.666130, 35.935467, 47.196362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051765, 35.851788, 47.261810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052950, 0.452303, 0.890291,
		-0.260256, -0.866982, 0.424982,
		0.964087, -0.209200, 0.163621,
		36.340992, 35.789028, 47.310898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623997, 35.737183, 47.844986>,  <35.666130, 35.935467, 47.196362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623997, 35.737183, 47.844986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019531, 35.784721, 47.809021>,  <36.256851, 35.813244, 47.787441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019531, 35.784721, 47.809021>,  <35.623997, 35.737183, 47.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019531, 35.784721, 47.809021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005363, 0.631313, 0.775509,
		0.148930, -0.766367, 0.624901,
		0.988833, 0.118848, -0.089912,
		36.316181, 35.820377, 47.782047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931835, 35.704155, 48.567371>,  <35.623997, 35.737183, 47.844986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931835, 35.704155, 48.567371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180393, 35.906124, 48.327732>,  <36.329529, 36.027306, 48.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180393, 35.906124, 48.327732>,  <35.931835, 35.704155, 48.567371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180393, 35.906124, 48.327732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180938, 0.651491, 0.736763,
		0.762317, -0.566222, 0.313473,
		0.621396, 0.504928, -0.599094,
		36.366814, 36.057602, 48.148003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394115, 35.901009, 49.155003>,  <35.931835, 35.704155, 48.567371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394115, 35.901009, 49.155003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467388, 36.128265, 48.834087>,  <36.511353, 36.264618, 48.641541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467388, 36.128265, 48.834087>,  <36.394115, 35.901009, 49.155003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467388, 36.128265, 48.834087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197675, 0.778138, 0.596176,
		0.963001, -0.267798, 0.030230,
		0.183178, 0.568142, -0.802285,
		36.522343, 36.298710, 48.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964951, 36.333969, 49.447479>,  <36.394115, 35.901009, 49.155003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964951, 36.333969, 49.447479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859329, 36.561943, 49.136234>,  <36.795956, 36.698727, 48.949490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859329, 36.561943, 49.136234>,  <36.964951, 36.333969, 49.447479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859329, 36.561943, 49.136234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319930, 0.709311, 0.628110,
		0.909900, 0.414798, -0.004961,
		-0.264058, 0.569930, -0.778109,
		36.780113, 36.732922, 48.902802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299431, 37.047089, 49.508953>,  <36.964951, 36.333969, 49.447479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299431, 37.047089, 49.508953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984776, 37.113884, 49.271191>,  <36.795982, 37.153961, 49.128532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984776, 37.113884, 49.271191>,  <37.299431, 37.047089, 49.508953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984776, 37.113884, 49.271191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256480, 0.787350, 0.560624,
		0.561623, 0.593460, -0.576528,
		-0.786637, 0.166992, -0.594404,
		36.748783, 37.163982, 49.092869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334381, 37.723690, 49.309807>,  <37.299431, 37.047089, 49.508953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334381, 37.723690, 49.309807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949032, 37.628811, 49.259781>,  <36.717819, 37.571884, 49.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949032, 37.628811, 49.259781>,  <37.334381, 37.723690, 49.309807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949032, 37.628811, 49.259781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268093, 0.842665, 0.466950,
		-0.005373, 0.483378, -0.875395,
		-0.963378, -0.237197, -0.125063,
		36.660019, 37.557652, 49.222263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959457, 38.341492, 49.084225>,  <37.334381, 37.723690, 49.309807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959457, 38.341492, 49.084225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678596, 38.115734, 49.257866>,  <36.510082, 37.980278, 49.362049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678596, 38.115734, 49.257866>,  <36.959457, 38.341492, 49.084225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678596, 38.115734, 49.257866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297168, 0.786316, 0.541663,
		-0.647052, 0.251328, -0.719832,
		-0.702150, -0.564395, 0.434101,
		36.467953, 37.946415, 49.388096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342484, 38.762875, 49.074707>,  <36.959457, 38.341492, 49.084225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342484, 38.762875, 49.074707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287289, 38.475101, 49.346996>,  <36.254173, 38.302437, 49.510368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287289, 38.475101, 49.346996>,  <36.342484, 38.762875, 49.074707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287289, 38.475101, 49.346996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155605, 0.694504, 0.702461,
		-0.978135, -0.008995, -0.207777,
		-0.137984, -0.719432, 0.680718,
		36.245895, 38.259274, 49.551212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751389, 39.042294, 49.433121>,  <36.342484, 38.762875, 49.074707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751389, 39.042294, 49.433121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903770, 38.783848, 49.697666>,  <35.995197, 38.628780, 49.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903770, 38.783848, 49.697666>,  <35.751389, 39.042294, 49.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903770, 38.783848, 49.697666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238887, 0.622236, 0.745489,
		-0.893202, -0.441987, 0.082691,
		0.380950, -0.646119, 0.661368,
		36.018055, 38.590012, 49.896076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241375, 38.962372, 49.989834>,  <35.751389, 39.042294, 49.433121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241375, 38.962372, 49.989834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579441, 38.821419, 50.150597>,  <35.782280, 38.736847, 50.247055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579441, 38.821419, 50.150597>,  <35.241375, 38.962372, 49.989834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579441, 38.821419, 50.150597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215972, 0.462670, 0.859821,
		-0.488934, -0.813489, 0.314927,
		0.845163, -0.352380, 0.401906,
		35.832989, 38.715706, 50.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057747, 38.766434, 50.611061>,  <35.241375, 38.962372, 49.989834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057747, 38.766434, 50.611061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452339, 38.827637, 50.634544>,  <35.689095, 38.864357, 50.648636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452339, 38.827637, 50.634544>,  <35.057747, 38.766434, 50.611061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452339, 38.827637, 50.634544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127141, 0.488475, 0.863265,
		0.103405, -0.859059, 0.501324,
		0.986480, 0.153004, 0.058711,
		35.748283, 38.873539, 50.652157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242527, 38.598991, 51.305939>,  <35.057747, 38.766434, 50.611061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242527, 38.598991, 51.305939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543247, 38.811523, 51.149742>,  <35.723679, 38.939045, 51.056026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543247, 38.811523, 51.149742>,  <35.242527, 38.598991, 51.305939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543247, 38.811523, 51.149742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063208, 0.531396, 0.844762,
		0.656355, -0.659774, 0.365919,
		0.751800, 0.531334, -0.390487,
		35.768787, 38.970924, 51.032597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788296, 38.494865, 51.781921>,  <35.242527, 38.598991, 51.305939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788296, 38.494865, 51.781921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820316, 38.836121, 51.575718>,  <35.839527, 39.040874, 51.451996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820316, 38.836121, 51.575718>,  <35.788296, 38.494865, 51.781921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820316, 38.836121, 51.575718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089807, 0.521240, 0.848672,
		0.992737, -0.021639, 0.118343,
		0.080050, 0.853136, -0.515510,
		35.844330, 39.092060, 51.421066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366093, 38.805107, 52.053940>,  <35.788296, 38.494865, 51.781921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366093, 38.805107, 52.053940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161880, 39.091793, 51.863918>,  <36.039352, 39.263805, 51.749905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161880, 39.091793, 51.863918>,  <36.366093, 38.805107, 52.053940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161880, 39.091793, 51.863918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059213, 0.521864, 0.850971,
		0.857817, 0.462578, -0.223990,
		-0.510533, 0.716714, -0.475055,
		36.008720, 39.306808, 51.721401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725300, 39.445690, 52.188526>,  <36.366093, 38.805107, 52.053940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725300, 39.445690, 52.188526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366714, 39.578369, 52.070999>,  <36.151566, 39.657978, 52.000481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366714, 39.578369, 52.070999>,  <36.725300, 39.445690, 52.188526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366714, 39.578369, 52.070999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044242, 0.726755, 0.685470,
		0.440907, 0.601499, -0.666184,
		-0.896462, 0.331702, -0.293820,
		36.097775, 39.677879, 51.982853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778179, 40.172916, 52.104607>,  <36.725300, 39.445690, 52.188526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778179, 40.172916, 52.104607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395905, 40.073357, 52.167492>,  <36.166542, 40.013622, 52.205223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395905, 40.073357, 52.167492>,  <36.778179, 40.172916, 52.104607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395905, 40.073357, 52.167492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095077, 0.766372, 0.635322,
		-0.278617, 0.592220, -0.756074,
		-0.955684, -0.248897, 0.157217,
		36.109200, 39.998688, 52.214657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275288, 40.895817, 52.100220>,  <36.778179, 40.172916, 52.104607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275288, 40.895817, 52.100220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187809, 40.598213, 52.352764>,  <36.135323, 40.419651, 52.504292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187809, 40.598213, 52.352764>,  <36.275288, 40.895817, 52.100220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187809, 40.598213, 52.352764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045390, 0.638571, 0.768223,
		-0.974738, 0.196663, -0.105880,
		-0.218693, -0.744010, 0.631366,
		36.122200, 40.375011, 52.542175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826061, 41.142277, 52.595184>,  <36.275288, 40.895817, 52.100220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826061, 41.142277, 52.595184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017536, 40.843151, 52.779198>,  <36.132423, 40.663677, 52.889606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017536, 40.843151, 52.779198>,  <35.826061, 41.142277, 52.595184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017536, 40.843151, 52.779198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103587, 0.472202, 0.875383,
		-0.871851, -0.466691, 0.148575,
		0.478691, -0.747813, 0.460033,
		36.161144, 40.618809, 52.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363319, 41.701351, 52.199493>,  <35.826061, 41.142277, 52.595184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363319, 41.701351, 52.199493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544109, 42.019722, 52.038387>,  <35.652584, 42.210743, 51.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544109, 42.019722, 52.038387>,  <35.363319, 41.701351, 52.199493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544109, 42.019722, 52.038387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137454, -0.508265, -0.850160,
		-0.881375, 0.328893, -0.339129,
		0.451979, 0.795925, -0.402764,
		35.679703, 42.258499, 51.917557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080196, 41.653168, 51.501686>,  <35.363319, 41.701351, 52.199493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080196, 41.653168, 51.501686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393688, 41.901596, 51.504459>,  <35.581783, 42.050652, 51.506123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393688, 41.901596, 51.504459>,  <35.080196, 41.653168, 51.501686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393688, 41.901596, 51.504459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277393, -0.340010, -0.898580,
		-0.555720, 0.706166, -0.438754,
		0.783727, 0.621066, 0.006936,
		35.628807, 42.087917, 51.506538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053455, 42.091919, 50.910015>,  <35.080196, 41.653168, 51.501686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053455, 42.091919, 50.910015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438889, 42.072563, 51.015213>,  <35.670147, 42.060951, 51.078331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438889, 42.072563, 51.015213>,  <35.053455, 42.091919, 50.910015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438889, 42.072563, 51.015213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246306, -0.222300, -0.943354,
		0.104110, 0.973777, -0.202287,
		0.963584, -0.048388, 0.262991,
		35.727962, 42.058048, 51.094109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566616, 42.574833, 50.478325>,  <35.053455, 42.091919, 50.910015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566616, 42.574833, 50.478325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786045, 42.263367, 50.600143>,  <35.917702, 42.076488, 50.673233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786045, 42.263367, 50.600143>,  <35.566616, 42.574833, 50.478325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786045, 42.263367, 50.600143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343838, -0.121922, -0.931080,
		0.762131, 0.615479, 0.200852,
		0.548572, -0.778666, 0.304546,
		35.950615, 42.029766, 50.691505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072311, 42.695930, 50.086761>,  <35.566616, 42.574833, 50.478325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072311, 42.695930, 50.086761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127228, 42.319172, 50.209381>,  <36.160179, 42.093117, 50.282951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127228, 42.319172, 50.209381>,  <36.072311, 42.695930, 50.086761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127228, 42.319172, 50.209381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300517, -0.255284, -0.918977,
		0.943843, 0.218294, 0.248008,
		0.137294, -0.941901, 0.306549,
		36.168415, 42.036602, 50.301346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740311, 42.478416, 49.795475>,  <36.072311, 42.695930, 50.086761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740311, 42.478416, 49.795475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559132, 42.138241, 49.902508>,  <36.450424, 41.934135, 49.966728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559132, 42.138241, 49.902508>,  <36.740311, 42.478416, 49.795475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559132, 42.138241, 49.902508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317030, -0.434156, -0.843209,
		0.833268, -0.297095, 0.466262,
		-0.452943, -0.850437, 0.267580,
		36.423248, 41.883110, 49.982780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147839, 41.956127, 49.603485>,  <36.740311, 42.478416, 49.795475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147839, 41.956127, 49.603485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818066, 41.731094, 49.628216>,  <36.620201, 41.596077, 49.643055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818066, 41.731094, 49.628216>,  <37.147839, 41.956127, 49.603485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818066, 41.731094, 49.628216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374935, -0.624725, -0.684940,
		0.423959, -0.541502, 0.725971,
		-0.824428, -0.562579, 0.061830,
		36.570736, 41.562321, 49.646767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426998, 41.164944, 49.646069>,  <37.147839, 41.956127, 49.603485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426998, 41.164944, 49.646069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044949, 41.191051, 49.530491>,  <36.815720, 41.206715, 49.461143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044949, 41.191051, 49.530491>,  <37.426998, 41.164944, 49.646069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044949, 41.191051, 49.530491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139507, -0.761360, -0.633142,
		-0.261312, -0.645035, 0.718085,
		-0.955120, 0.065270, -0.288940,
		36.758411, 41.210632, 49.443810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252525, 40.408943, 49.407497>,  <37.426998, 41.164944, 49.646069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252525, 40.408943, 49.407497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992085, 40.641624, 49.212482>,  <36.835819, 40.781231, 49.095474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992085, 40.641624, 49.212482>,  <37.252525, 40.408943, 49.407497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992085, 40.641624, 49.212482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200059, -0.751166, -0.629068,
		-0.732145, -0.312055, 0.605463,
		-0.651106, 0.581697, -0.487533,
		36.796753, 40.816135, 49.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627560, 40.007057, 49.423523>,  <37.252525, 40.408943, 49.407497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627560, 40.007057, 49.423523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589340, 40.285889, 49.139286>,  <36.566406, 40.453190, 48.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589340, 40.285889, 49.139286>,  <36.627560, 40.007057, 49.423523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589340, 40.285889, 49.139286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265133, -0.705898, -0.656820,
		-0.959466, 0.125641, 0.252270,
		-0.095553, 0.697081, -0.710597,
		36.560673, 40.495014, 48.926105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075500, 39.860222, 49.074657>,  <36.627560, 40.007057, 49.423523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075500, 39.860222, 49.074657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256691, 40.103222, 48.813656>,  <36.365406, 40.249023, 48.657055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256691, 40.103222, 48.813656>,  <36.075500, 39.860222, 49.074657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256691, 40.103222, 48.813656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179705, -0.654655, -0.734257,
		-0.873225, 0.449856, -0.187370,
		0.452973, 0.607500, -0.652502,
		36.392582, 40.285473, 48.617905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624043, 39.877544, 48.438698>,  <36.075500, 39.860222, 49.074657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624043, 39.877544, 48.438698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993423, 39.978748, 48.323299>,  <36.215050, 40.039471, 48.254059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993423, 39.978748, 48.323299>,  <35.624043, 39.877544, 48.438698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993423, 39.978748, 48.323299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027901, -0.705571, -0.708090,
		-0.382708, 0.661934, -0.644499,
		0.923448, 0.253009, -0.288496,
		36.270458, 40.054649, 48.236752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579590, 39.637028, 47.850498>,  <35.624043, 39.877544, 48.438698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579590, 39.637028, 47.850498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967747, 39.715401, 47.906990>,  <36.200642, 39.762424, 47.940887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967747, 39.715401, 47.906990>,  <35.579590, 39.637028, 47.850498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967747, 39.715401, 47.906990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234559, -0.625008, -0.744545,
		-0.057608, 0.755629, -0.652461,
		0.970393, 0.195933, 0.141234,
		36.258865, 39.774181, 47.949360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984768, 39.864079, 47.197212>,  <35.579590, 39.637028, 47.850498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984768, 39.864079, 47.197212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219963, 39.697289, 47.474453>,  <36.361080, 39.597214, 47.640797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219963, 39.697289, 47.474453>,  <35.984768, 39.864079, 47.197212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219963, 39.697289, 47.474453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423213, -0.571640, -0.702935,
		0.689316, 0.706651, -0.159649,
		0.587991, -0.416979, 0.693105,
		36.396362, 39.572193, 47.682384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640476, 39.827572, 46.884792>,  <35.984768, 39.864079, 47.197212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640476, 39.827572, 46.884792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672993, 39.562744, 47.182800>,  <36.692501, 39.403847, 47.361607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672993, 39.562744, 47.182800>,  <36.640476, 39.827572, 46.884792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672993, 39.562744, 47.182800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551409, -0.592806, -0.586966,
		0.830265, 0.458526, 0.316881,
		0.081290, -0.662068, 0.745022,
		36.697380, 39.364124, 47.406307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350254, 39.661575, 46.880131>,  <36.640476, 39.827572, 46.884792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350254, 39.661575, 46.880131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118950, 39.371613, 47.029861>,  <36.980167, 39.197632, 47.119701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118950, 39.371613, 47.029861>,  <37.350254, 39.661575, 46.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118950, 39.371613, 47.029861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495471, -0.676548, -0.544785,
		0.648170, -0.129560, 0.750393,
		-0.578259, -0.724912, 0.374325,
		36.945473, 39.154140, 47.142159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778660, 39.152596, 46.735527>,  <37.350254, 39.661575, 46.880131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778660, 39.152596, 46.735527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435349, 38.968796, 46.826927>,  <37.229362, 38.858517, 46.881767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435349, 38.968796, 46.826927>,  <37.778660, 39.152596, 46.735527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435349, 38.968796, 46.826927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286343, -0.798316, -0.529810,
		0.425863, -0.389297, 0.816755,
		-0.858282, -0.459499, 0.228501,
		37.177864, 38.830948, 46.895477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987606, 38.530762, 46.861019>,  <37.778660, 39.152596, 46.735527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987606, 38.530762, 46.861019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599747, 38.516796, 46.764217>,  <37.367031, 38.508419, 46.706135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599747, 38.516796, 46.764217>,  <37.987606, 38.530762, 46.861019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599747, 38.516796, 46.764217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179267, -0.774580, -0.606539,
		-0.166278, -0.631512, 0.757327,
		-0.969647, -0.034909, -0.242004,
		37.308853, 38.506325, 46.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872341, 37.822273, 46.724682>,  <37.987606, 38.530762, 46.861019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872341, 37.822273, 46.724682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559196, 38.004360, 46.555019>,  <37.371311, 38.113613, 46.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559196, 38.004360, 46.555019>,  <37.872341, 37.822273, 46.724682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559196, 38.004360, 46.555019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004615, -0.685931, -0.727652,
		-0.622176, -0.567695, 0.539091,
		-0.782864, 0.455215, -0.424150,
		37.324337, 38.140926, 46.427773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584393, 37.298046, 46.695766>,  <37.872341, 37.822273, 46.724682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584393, 37.298046, 46.695766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426888, 37.572437, 46.451019>,  <37.332386, 37.737072, 46.304169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426888, 37.572437, 46.451019>,  <37.584393, 37.298046, 46.695766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426888, 37.572437, 46.451019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016742, -0.660182, -0.750919,
		-0.919062, -0.305925, 0.248468,
		-0.393759, 0.685981, -0.611870,
		37.308762, 37.778233, 46.267460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414135, 36.862953, 46.228779>,  <37.584393, 37.298046, 46.695766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414135, 36.862953, 46.228779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323875, 37.206749, 46.045322>,  <37.269722, 37.413029, 45.935249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323875, 37.206749, 46.045322>,  <37.414135, 36.862953, 46.228779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323875, 37.206749, 46.045322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212791, -0.502902, -0.837741,
		-0.950686, -0.091437, 0.296370,
		-0.225645, 0.859494, -0.458645,
		37.256184, 37.464596, 45.907730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699146, 36.888466, 45.921394>,  <37.414135, 36.862953, 46.228779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699146, 36.888466, 45.921394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942043, 37.137596, 45.724075>,  <37.087780, 37.287075, 45.605686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942043, 37.137596, 45.724075>,  <36.699146, 36.888466, 45.921394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942043, 37.137596, 45.724075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208420, -0.474259, -0.855360,
		-0.766692, 0.622224, -0.158181,
		0.607244, 0.622829, -0.493294,
		37.124218, 37.324444, 45.576088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368637, 36.922905, 45.287426>,  <36.699146, 36.888466, 45.921394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368637, 36.922905, 45.287426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729553, 37.077541, 45.211098>,  <36.946102, 37.170322, 45.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729553, 37.077541, 45.211098>,  <36.368637, 36.922905, 45.287426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729553, 37.077541, 45.211098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096052, -0.251220, -0.963152,
		-0.420287, 0.887374, -0.189541,
		0.902293, 0.386594, -0.190819,
		37.000240, 37.193520, 45.153851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322765, 37.181332, 44.683090>,  <36.368637, 36.922905, 45.287426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322765, 37.181332, 44.683090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721703, 37.165340, 44.707474>,  <36.961063, 37.155746, 44.722103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721703, 37.165340, 44.707474>,  <36.322765, 37.181332, 44.683090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721703, 37.165340, 44.707474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046314, -0.298212, -0.953375,
		0.056292, 0.953662, -0.295567,
		0.997340, -0.039978, 0.060955,
		37.020905, 37.153347, 44.725761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563835, 37.539165, 44.166641>,  <36.322765, 37.181332, 44.683090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563835, 37.539165, 44.166641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838348, 37.263210, 44.258785>,  <37.003056, 37.097637, 44.314072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838348, 37.263210, 44.258785>,  <36.563835, 37.539165, 44.166641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838348, 37.263210, 44.258785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154311, -0.171407, -0.973041,
		0.710776, 0.703329, -0.011176,
		0.686283, -0.689890, 0.230363,
		37.044235, 37.056244, 44.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116894, 37.670326, 43.785034>,  <36.563835, 37.539165, 44.166641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116894, 37.670326, 43.785034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186737, 37.293552, 43.899769>,  <37.228642, 37.067490, 43.968609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186737, 37.293552, 43.899769>,  <37.116894, 37.670326, 43.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186737, 37.293552, 43.899769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218397, -0.247009, -0.944081,
		0.960112, 0.227491, 0.162585,
		0.174610, -0.941931, 0.286839,
		37.239120, 37.010975, 43.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712925, 37.584869, 43.494469>,  <37.116894, 37.670326, 43.785034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712925, 37.584869, 43.494469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604160, 37.204239, 43.551838>,  <37.538902, 36.975861, 43.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604160, 37.204239, 43.551838>,  <37.712925, 37.584869, 43.494469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604160, 37.204239, 43.551838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370649, -0.241096, -0.896935,
		0.888079, -0.190726, 0.418257,
		-0.271909, -0.951575, 0.143420,
		37.522587, 36.918766, 43.594864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190399, 37.212364, 43.148422>,  <37.712925, 37.584869, 43.494469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190399, 37.212364, 43.148422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903976, 36.938004, 43.200272>,  <37.732124, 36.773388, 43.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903976, 36.938004, 43.200272>,  <38.190399, 37.212364, 43.148422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903976, 36.938004, 43.200272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272256, -0.445417, -0.852925,
		0.642760, -0.575450, 0.505684,
		-0.716056, -0.685902, 0.129626,
		37.689159, 36.732235, 43.239159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512539, 36.662537, 42.863945>,  <38.190399, 37.212364, 43.148422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512539, 36.662537, 42.863945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117874, 36.602757, 42.838120>,  <37.881077, 36.566887, 42.822624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117874, 36.602757, 42.838120>,  <38.512539, 36.662537, 42.863945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117874, 36.602757, 42.838120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127182, -0.459972, -0.878778,
		0.101638, -0.875265, 0.472843,
		-0.986658, -0.149454, -0.064568,
		37.821877, 36.557919, 42.818748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314743, 35.930588, 42.656303>,  <38.512539, 36.662537, 42.863945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314743, 35.930588, 42.656303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993176, 36.141880, 42.546982>,  <37.800236, 36.268654, 42.481388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993176, 36.141880, 42.546982>,  <38.314743, 35.930588, 42.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993176, 36.141880, 42.546982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049395, -0.517240, -0.854414,
		-0.592692, -0.673375, 0.441908,
		-0.803913, 0.528232, -0.273302,
		37.752003, 36.300350, 42.464993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821533, 35.470596, 42.364037>,  <38.314743, 35.930588, 42.656303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821533, 35.470596, 42.364037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707024, 35.830189, 42.231441>,  <37.638317, 36.045944, 42.151882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707024, 35.830189, 42.231441>,  <37.821533, 35.470596, 42.364037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707024, 35.830189, 42.231441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095923, -0.371122, -0.923616,
		-0.953334, -0.232611, 0.192475,
		-0.286275, 0.898977, -0.331491,
		37.621140, 36.099880, 42.131996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358692, 35.317383, 41.853840>,  <37.821533, 35.470596, 42.364037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358692, 35.317383, 41.853840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461506, 35.686810, 41.740021>,  <37.523193, 35.908466, 41.671730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461506, 35.686810, 41.740021>,  <37.358692, 35.317383, 41.853840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461506, 35.686810, 41.740021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038887, -0.284318, -0.957941,
		-0.965621, 0.257285, -0.037164,
		0.257030, 0.923563, -0.284548,
		37.538616, 35.963879, 41.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068165, 35.338963, 41.226284>,  <37.358692, 35.317383, 41.853840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068165, 35.338963, 41.226284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340851, 35.631409, 41.215446>,  <37.504463, 35.806877, 41.208942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340851, 35.631409, 41.215446>,  <37.068165, 35.338963, 41.226284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340851, 35.631409, 41.215446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073547, -0.105331, -0.991714,
		-0.727914, 0.674071, -0.125577,
		0.681713, 0.731118, -0.027096,
		37.545364, 35.850742, 41.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813560, 35.664757, 40.704197>,  <37.068165, 35.338963, 41.226284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813560, 35.664757, 40.704197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193970, 35.781567, 40.744755>,  <37.422215, 35.851654, 40.769089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193970, 35.781567, 40.744755>,  <36.813560, 35.664757, 40.704197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193970, 35.781567, 40.744755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140587, -0.116468, -0.983194,
		-0.275307, 0.949293, -0.151818,
		0.951021, 0.292024, 0.101393,
		37.479275, 35.869175, 40.775173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944313, 36.108009, 40.090572>,  <36.813560, 35.664757, 40.704197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944313, 36.108009, 40.090572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301918, 36.011993, 40.241898>,  <37.516479, 35.954384, 40.332695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301918, 36.011993, 40.241898>,  <36.944313, 36.108009, 40.090572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301918, 36.011993, 40.241898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380196, -0.040306, -0.924028,
		0.237050, 0.969927, 0.055227,
		0.894013, -0.240038, 0.378316,
		37.570122, 35.939983, 40.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292431, 36.517712, 39.740952>,  <36.944313, 36.108009, 40.090572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292431, 36.517712, 39.740952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546177, 36.233543, 39.862854>,  <37.698425, 36.063042, 39.935997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546177, 36.233543, 39.862854>,  <37.292431, 36.517712, 39.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546177, 36.233543, 39.862854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296531, -0.140451, -0.944639,
		0.713899, 0.689616, 0.121566,
		0.634364, -0.710425, 0.304760,
		37.736485, 36.020416, 39.954281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919064, 36.595467, 39.431103>,  <37.292431, 36.517712, 39.740952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919064, 36.595467, 39.431103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925629, 36.206142, 39.522659>,  <37.929569, 35.972546, 39.577591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925629, 36.206142, 39.522659>,  <37.919064, 36.595467, 39.431103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925629, 36.206142, 39.522659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191610, -0.221614, -0.956124,
		0.981334, 0.059552, 0.182858,
		0.016415, -0.973314, 0.228888,
		37.930553, 35.914146, 39.591328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505688, 36.379406, 39.265728>,  <37.919064, 36.595467, 39.431103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505688, 36.379406, 39.265728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334908, 36.017712, 39.268990>,  <38.232441, 35.800694, 39.270947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334908, 36.017712, 39.268990>,  <38.505688, 36.379406, 39.265728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334908, 36.017712, 39.268990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445172, -0.218027, -0.868496,
		0.787106, -0.367174, 0.495628,
		-0.426950, -0.904239, 0.008154,
		38.206821, 35.746441, 39.271435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008560, 35.934635, 38.918900>,  <38.505688, 36.379406, 39.265728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008560, 35.934635, 38.918900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676125, 35.712322, 38.910835>,  <38.476665, 35.578934, 38.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676125, 35.712322, 38.910835>,  <39.008560, 35.934635, 38.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676125, 35.712322, 38.910835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338286, -0.476410, -0.811539,
		0.441431, -0.681279, 0.583950,
		-0.831085, -0.555780, -0.020165,
		38.426800, 35.545589, 38.904785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122520, 35.308411, 38.793949>,  <39.008560, 35.934635, 38.918900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122520, 35.308411, 38.793949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740582, 35.310207, 38.675121>,  <38.511417, 35.311287, 38.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740582, 35.310207, 38.675121>,  <39.122520, 35.308411, 38.793949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740582, 35.310207, 38.675121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246937, -0.544004, -0.801924,
		-0.165210, -0.839071, 0.518330,
		-0.954844, 0.004491, -0.297073,
		38.454128, 35.311554, 38.585999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763283, 35.446934, 38.412075>,  <39.122520, 35.308411, 38.793949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763283, 35.446934, 38.412075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875187, 35.677807, 38.105198>,  <39.942329, 35.816330, 37.921070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875187, 35.677807, 38.105198>,  <39.763283, 35.446934, 38.412075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875187, 35.677807, 38.105198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373667, -0.801556, -0.466778,
		-0.884369, -0.156092, -0.439917,
		0.279758, 0.577186, -0.767197,
		39.959114, 35.850964, 37.875038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638100, 35.074932, 37.798752>,  <39.763283, 35.446934, 38.412075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638100, 35.074932, 37.798752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949203, 35.320610, 37.745296>,  <40.135864, 35.468018, 37.713223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949203, 35.320610, 37.745296>,  <39.638100, 35.074932, 37.798752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949203, 35.320610, 37.745296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565229, -0.776408, -0.278760,
		-0.274969, 0.141273, -0.951017,
		0.777759, 0.614193, -0.133636,
		40.182529, 35.504868, 37.705204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154118, 35.002590, 37.118633>,  <39.638100, 35.074932, 37.798752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154118, 35.002590, 37.118633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354931, 35.140583, 37.435860>,  <40.475418, 35.223381, 37.626194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354931, 35.140583, 37.435860>,  <40.154118, 35.002590, 37.118633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354931, 35.140583, 37.435860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544823, -0.838318, 0.019782,
		0.671664, 0.422148, -0.608817,
		0.502032, 0.344984, 0.793064,
		40.505539, 35.244080, 37.673779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943169, 35.269955, 37.099941>,  <40.154118, 35.002590, 37.118633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943169, 35.269955, 37.099941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840733, 35.105564, 37.449917>,  <40.779270, 35.006927, 37.659901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840733, 35.105564, 37.449917>,  <40.943169, 35.269955, 37.099941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840733, 35.105564, 37.449917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436217, -0.856853, -0.274805,
		0.862631, 0.311286, 0.398709,
		-0.256092, -0.410979, 0.874936,
		40.763905, 34.982269, 37.712399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542274, 34.779358, 37.266243>,  <40.943169, 35.269955, 37.099941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542274, 34.779358, 37.266243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225430, 34.663403, 37.481102>,  <41.035324, 34.593830, 37.610020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225430, 34.663403, 37.481102>,  <41.542274, 34.779358, 37.266243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225430, 34.663403, 37.481102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289948, -0.953099, -0.086789,
		0.537116, 0.086999, 0.839010,
		-0.792109, -0.289885, 0.537150,
		40.987797, 34.576439, 37.642246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808716, 34.254726, 37.652382>,  <41.542274, 34.779358, 37.266243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808716, 34.254726, 37.652382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412258, 34.209984, 37.623772>,  <41.174381, 34.183136, 37.606606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412258, 34.209984, 37.623772>,  <41.808716, 34.254726, 37.652382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412258, 34.209984, 37.623772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130817, -0.914843, -0.382032,
		-0.022700, -0.388006, 0.921377,
		-0.991147, -0.111860, -0.071524,
		41.114914, 34.176426, 37.602314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612411, 33.923512, 37.615425>,  <41.808716, 34.254726, 37.652382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612411, 33.923512, 37.615425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814716, 33.730125, 37.901211>,  <42.936100, 33.614094, 38.072681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814716, 33.730125, 37.901211>,  <42.612411, 33.923512, 37.615425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814716, 33.730125, 37.901211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369510, 0.869791, 0.326994,
		-0.779529, 0.098621, 0.618554,
		0.505764, -0.483463, 0.714469,
		42.966446, 33.585087, 38.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845383, 34.470371, 37.057392>,  <42.612411, 33.923512, 37.615425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845383, 34.470371, 37.057392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187763, 34.662739, 37.133358>,  <43.393192, 34.778160, 37.178936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187763, 34.662739, 37.133358>,  <42.845383, 34.470371, 37.057392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187763, 34.662739, 37.133358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436831, 0.869101, -0.232038,
		-0.276648, 0.115652, 0.953987,
		0.855947, 0.480924, 0.189915,
		43.444546, 34.807014, 37.190331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694824, 35.053032, 37.442410>,  <42.845383, 34.470371, 37.057392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694824, 35.053032, 37.442410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059822, 35.152756, 37.312668>,  <43.278820, 35.212589, 37.234821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059822, 35.152756, 37.312668>,  <42.694824, 35.053032, 37.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059822, 35.152756, 37.312668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347847, 0.890127, -0.294409,
		0.215320, 0.381472, 0.898953,
		0.912491, 0.249306, -0.324356,
		43.333569, 35.227547, 37.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887459, 35.641209, 37.797623>,  <42.694824, 35.053032, 37.442410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887459, 35.641209, 37.797623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091606, 35.630653, 37.453800>,  <43.214092, 35.624321, 37.247509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091606, 35.630653, 37.453800>,  <42.887459, 35.641209, 37.797623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091606, 35.630653, 37.453800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375282, 0.892496, -0.250229,
		0.773751, 0.450283, 0.445595,
		0.510366, -0.026391, -0.859552,
		43.244717, 35.622738, 37.195934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026386, 36.334133, 37.705597>,  <42.887459, 35.641209, 37.797623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026386, 36.334133, 37.705597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100800, 36.148613, 37.359123>,  <43.145447, 36.037300, 37.151237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100800, 36.148613, 37.359123>,  <43.026386, 36.334133, 37.705597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100800, 36.148613, 37.359123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376490, 0.780639, -0.498856,
		0.907550, 0.418914, -0.029393,
		0.186032, -0.463803, -0.866186,
		43.156609, 36.009472, 37.099266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439930, 36.797817, 37.276905>,  <43.026386, 36.334133, 37.705597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439930, 36.797817, 37.276905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246010, 36.535168, 37.045799>,  <43.129658, 36.377579, 36.907135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246010, 36.535168, 37.045799>,  <43.439930, 36.797817, 37.276905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246010, 36.535168, 37.045799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264316, 0.739692, -0.618864,
		0.833729, -0.147314, -0.532160,
		-0.484802, -0.656624, -0.577765,
		43.100571, 36.338181, 36.872471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607952, 36.918922, 36.545101>,  <43.439930, 36.797817, 37.276905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607952, 36.918922, 36.545101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269600, 36.712132, 36.492626>,  <43.066589, 36.588055, 36.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269600, 36.712132, 36.492626>,  <43.607952, 36.918922, 36.545101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269600, 36.712132, 36.492626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270358, 0.627624, -0.730064,
		0.459766, -0.582082, -0.670668,
		-0.845885, -0.516980, -0.131190,
		43.015835, 36.557037, 36.453270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522896, 37.058277, 35.889992>,  <43.607952, 36.918922, 36.545101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522896, 37.058277, 35.889992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172615, 36.891579, 35.987530>,  <42.962444, 36.791557, 36.046051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172615, 36.891579, 35.987530>,  <43.522896, 37.058277, 35.889992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172615, 36.891579, 35.987530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409048, 0.371976, -0.833255,
		0.256553, -0.829431, -0.496211,
		-0.875706, -0.416748, 0.243845,
		42.909904, 36.766556, 36.060684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332653, 36.718410, 35.280727>,  <43.522896, 37.058277, 35.889992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332653, 36.718410, 35.280727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999836, 36.788651, 35.491203>,  <42.800144, 36.830795, 35.617489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999836, 36.788651, 35.491203>,  <43.332653, 36.718410, 35.280727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999836, 36.788651, 35.491203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400927, 0.465186, -0.789215,
		-0.383360, -0.867621, -0.316651,
		-0.832041, 0.175600, 0.526186,
		42.750225, 36.841331, 35.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835876, 36.482758, 34.940174>,  <43.332653, 36.718410, 35.280727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835876, 36.482758, 34.940174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632301, 36.712543, 35.196602>,  <42.510155, 36.850414, 35.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632301, 36.712543, 35.196602>,  <42.835876, 36.482758, 34.940174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632301, 36.712543, 35.196602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533095, 0.374391, -0.758710,
		-0.675865, -0.727887, 0.115704,
		-0.508937, 0.574467, 0.641070,
		42.479622, 36.884884, 35.388924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148468, 36.502644, 34.709457>,  <42.835876, 36.482758, 34.940174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148468, 36.502644, 34.709457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161690, 36.826347, 34.944065>,  <42.169624, 37.020569, 35.084831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161690, 36.826347, 34.944065>,  <42.148468, 36.502644, 34.709457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161690, 36.826347, 34.944065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491202, 0.524231, -0.695630,
		-0.870418, -0.265106, 0.414839,
		0.033055, 0.809259, 0.586521,
		42.171608, 37.069126, 35.120022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475193, 36.662701, 34.720196>,  <42.148468, 36.502644, 34.709457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475193, 36.662701, 34.720196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688461, 36.986698, 34.817875>,  <41.816422, 37.181095, 34.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688461, 36.986698, 34.817875>,  <41.475193, 36.662701, 34.720196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688461, 36.986698, 34.817875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560317, 0.554362, -0.615408,
		-0.633853, 0.191290, 0.749426,
		0.533174, 0.809995, 0.244201,
		41.848415, 37.229698, 34.891136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039066, 37.189018, 34.721230>,  <41.475193, 36.662701, 34.720196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039066, 37.189018, 34.721230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393341, 37.372784, 34.694412>,  <41.605907, 37.483044, 34.678322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393341, 37.372784, 34.694412>,  <41.039066, 37.189018, 34.721230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393341, 37.372784, 34.694412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420399, 0.732287, -0.535743,
		-0.197029, 0.502689, 0.841715,
		0.885689, 0.459413, -0.067048,
		41.659046, 37.510609, 34.674297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949081, 37.919147, 34.817287>,  <41.039066, 37.189018, 34.721230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949081, 37.919147, 34.817287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262482, 37.849445, 34.578709>,  <41.450523, 37.807625, 34.435562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262482, 37.849445, 34.578709>,  <40.949081, 37.919147, 34.817287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262482, 37.849445, 34.578709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298552, 0.736257, -0.607283,
		0.544965, 0.653881, 0.524836,
		0.783505, -0.174257, -0.596452,
		41.497532, 37.797169, 34.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060612, 38.495773, 34.457664>,  <40.949081, 37.919147, 34.817287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060612, 38.495773, 34.457664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301464, 38.259438, 34.242870>,  <41.445976, 38.117638, 34.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301464, 38.259438, 34.242870>,  <41.060612, 38.495773, 34.457664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301464, 38.259438, 34.242870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198743, 0.540484, -0.817544,
		0.773268, 0.598988, 0.208016,
		0.602128, -0.590839, -0.536983,
		41.482101, 38.082188, 34.081776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473915, 38.962650, 34.032879>,  <41.060612, 38.495773, 34.457664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473915, 38.962650, 34.032879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468864, 38.601887, 33.860184>,  <41.465836, 38.385429, 33.756565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468864, 38.601887, 33.860184>,  <41.473915, 38.962650, 34.032879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468864, 38.601887, 33.860184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343205, 0.409451, -0.845317,
		0.939176, 0.137501, -0.314711,
		-0.012627, -0.901911, -0.431737,
		41.465076, 38.331314, 33.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883217, 39.013718, 33.393787>,  <41.473915, 38.962650, 34.032879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883217, 39.013718, 33.393787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625198, 38.708729, 33.373585>,  <41.470387, 38.525734, 33.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625198, 38.708729, 33.373585>,  <41.883217, 39.013718, 33.393787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625198, 38.708729, 33.373585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316030, 0.326374, -0.890845,
		0.695730, -0.558673, -0.451491,
		-0.645046, -0.762473, -0.050511,
		41.431686, 38.479988, 33.358433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885761, 38.812004, 32.677174>,  <41.883217, 39.013718, 33.393787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885761, 38.812004, 32.677174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542992, 38.675041, 32.831287>,  <41.337330, 38.592865, 32.923756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542992, 38.675041, 32.831287>,  <41.885761, 38.812004, 32.677174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542992, 38.675041, 32.831287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482183, 0.268334, -0.833965,
		0.182165, -0.900421, -0.395041,
		-0.856922, -0.342401, 0.385287,
		41.285915, 38.572319, 32.946873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669380, 38.515118, 32.039104>,  <41.885761, 38.812004, 32.677174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669380, 38.515118, 32.039104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354179, 38.510605, 32.285332>,  <41.165058, 38.507896, 32.433067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354179, 38.510605, 32.285332>,  <41.669380, 38.515118, 32.039104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354179, 38.510605, 32.285332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591232, 0.292786, -0.751479,
		-0.171752, -0.956111, -0.237386,
		-0.788002, -0.011283, 0.615570,
		41.117779, 38.507221, 32.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285610, 38.250950, 31.634096>,  <41.669380, 38.515118, 32.039104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285610, 38.250950, 31.634096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062927, 38.465961, 31.887440>,  <40.929317, 38.594967, 32.039448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062927, 38.465961, 31.887440>,  <41.285610, 38.250950, 31.634096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062927, 38.465961, 31.887440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348077, 0.541335, -0.765375,
		-0.754269, -0.646547, -0.114265,
		-0.556706, 0.537525, 0.633360,
		40.895916, 38.627220, 32.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645592, 38.322720, 31.299952>,  <41.285610, 38.250950, 31.634096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645592, 38.322720, 31.299952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676708, 38.623081, 31.562277>,  <40.695377, 38.803299, 31.719671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676708, 38.623081, 31.562277>,  <40.645592, 38.322720, 31.299952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676708, 38.623081, 31.562277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338875, 0.638555, -0.690949,
		-0.937610, -0.168489, 0.304137,
		0.077791, 0.750906, 0.655812,
		40.700047, 38.848354, 31.759020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048382, 38.652039, 31.237827>,  <40.645592, 38.322720, 31.299952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048382, 38.652039, 31.237827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325329, 38.897289, 31.389988>,  <40.491497, 39.044437, 31.481285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325329, 38.897289, 31.389988>,  <40.048382, 38.652039, 31.237827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325329, 38.897289, 31.389988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136648, 0.629084, -0.765233,
		-0.708487, 0.477841, 0.519340,
		0.692367, 0.613125, 0.380401,
		40.533039, 39.081226, 31.504108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757915, 39.376396, 31.188570>,  <40.048382, 38.652039, 31.237827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757915, 39.376396, 31.188570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156799, 39.373005, 31.218227>,  <40.396130, 39.370972, 31.236023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156799, 39.373005, 31.218227>,  <39.757915, 39.376396, 31.188570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156799, 39.373005, 31.218227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055056, 0.754292, -0.654227,
		-0.050380, 0.656485, 0.752655,
		0.997212, -0.008479, 0.074145,
		40.455963, 39.370461, 31.240471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859970, 39.867268, 30.816004>,  <39.757915, 39.376396, 31.188570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859970, 39.867268, 30.816004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245605, 39.793125, 30.892080>,  <40.476986, 39.748642, 30.937725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245605, 39.793125, 30.892080>,  <39.859970, 39.867268, 30.816004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245605, 39.793125, 30.892080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263403, 0.758710, -0.595800,
		-0.033867, 0.624502, 0.780288,
		0.964091, -0.185352, 0.190190,
		40.534832, 39.737518, 30.949137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070183, 40.486813, 30.916029>,  <39.859970, 39.867268, 30.816004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070183, 40.486813, 30.916029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 40.314377, 30.825556>,  <40.629223, 40.210915, 30.771273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 40.314377, 30.825556>,  <40.070183, 40.486813, 30.916029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419582, 40.314377, 30.825556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166576, 0.701232, -0.693200,
		0.457437, 0.567834, 0.684336,
		0.873501, -0.431089, -0.226182,
		40.681633, 40.185051, 30.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496353, 41.003536, 30.669769>,  <40.070183, 40.486813, 30.916029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496353, 41.003536, 30.669769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644215, 40.661026, 30.525465>,  <40.732929, 40.455521, 30.438883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644215, 40.661026, 30.525465>,  <40.496353, 41.003536, 30.669769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644215, 40.661026, 30.525465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094447, 0.351624, -0.931365,
		0.924358, 0.378352, 0.049105,
		0.369650, -0.856277, -0.360761,
		40.755108, 40.404144, 30.417236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124855, 41.048870, 30.382326>,  <40.496353, 41.003536, 30.669769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124855, 41.048870, 30.382326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886864, 40.775673, 30.212847>,  <40.744068, 40.611755, 30.111158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886864, 40.775673, 30.212847>,  <41.124855, 41.048870, 30.382326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886864, 40.775673, 30.212847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088330, 0.468404, -0.879088,
		0.798871, -0.560466, -0.218364,
		-0.594981, -0.682990, -0.423700,
		40.708370, 40.570778, 30.085737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144505, 41.154125, 29.775181>,  <41.124855, 41.048870, 30.382326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144505, 41.154125, 29.775181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329487, 41.021992, 29.446056>,  <41.440475, 40.942711, 29.248583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329487, 41.021992, 29.446056>,  <41.144505, 41.154125, 29.775181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329487, 41.021992, 29.446056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460878, -0.703225, 0.541356,
		-0.757448, -0.629568, -0.172967,
		0.462455, -0.330332, -0.822810,
		41.468224, 40.922894, 29.199213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056709, 40.396313, 29.660666>,  <41.144505, 41.154125, 29.775181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056709, 40.396313, 29.660666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405872, 40.504860, 29.498487>,  <41.615372, 40.569988, 29.401180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405872, 40.504860, 29.498487>,  <41.056709, 40.396313, 29.660666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405872, 40.504860, 29.498487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478877, -0.635473, 0.605682,
		-0.093287, -0.722865, -0.684664,
		0.872911, 0.271368, -0.405444,
		41.667747, 40.586269, 29.376854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476559, 39.833954, 29.470242>,  <41.056709, 40.396313, 29.660666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476559, 39.833954, 29.470242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731197, 40.134331, 29.540482>,  <41.883980, 40.314556, 29.582626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731197, 40.134331, 29.540482>,  <41.476559, 39.833954, 29.470242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731197, 40.134331, 29.540482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486934, -0.567955, 0.663568,
		0.598035, -0.336916, -0.727215,
		0.636592, 0.750943, 0.175600,
		41.922176, 40.359615, 29.593163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970078, 39.458019, 29.653963>,  <41.476559, 39.833954, 29.470242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970078, 39.458019, 29.653963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068462, 39.834976, 29.744652>,  <42.127491, 40.061150, 29.799065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068462, 39.834976, 29.744652>,  <41.970078, 39.458019, 29.653963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068462, 39.834976, 29.744652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564449, -0.329410, 0.756892,
		0.787973, -0.058191, -0.612954,
		0.245958, 0.942392, 0.226720,
		42.142250, 40.117695, 29.812668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629295, 39.488522, 29.603773>,  <41.970078, 39.458019, 29.653963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629295, 39.488522, 29.603773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521141, 39.747910, 29.888414>,  <42.456249, 39.903542, 30.059200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521141, 39.747910, 29.888414>,  <42.629295, 39.488522, 29.603773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521141, 39.747910, 29.888414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664004, -0.409604, 0.625558,
		0.697131, 0.641649, -0.319836,
		-0.270383, 0.648469, 0.711605,
		42.440025, 39.942451, 30.101896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209808, 39.874470, 29.944557>,  <42.629295, 39.488522, 29.603773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209808, 39.874470, 29.944557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918758, 39.869209, 30.218897>,  <42.744129, 39.866055, 30.383501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918758, 39.869209, 30.218897>,  <43.209808, 39.874470, 29.944557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918758, 39.869209, 30.218897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672471, -0.211088, 0.709383,
		0.135447, 0.977379, 0.162436,
		-0.727624, -0.013150, 0.685850,
		42.700470, 39.865265, 30.424652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550175, 40.265892, 30.572964>,  <43.209808, 39.874470, 29.944557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550175, 40.265892, 30.572964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234848, 40.048759, 30.688826>,  <43.045654, 39.918480, 30.758343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234848, 40.048759, 30.688826>,  <43.550175, 40.265892, 30.572964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234848, 40.048759, 30.688826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566389, -0.456331, 0.686269,
		-0.240349, 0.705052, 0.667184,
		-0.788312, -0.542829, 0.289655,
		42.998356, 39.885910, 30.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520458, 40.259388, 31.338131>,  <43.550175, 40.265892, 30.572964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520458, 40.259388, 31.338131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280205, 39.949696, 31.258324>,  <43.136051, 39.763882, 31.210440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280205, 39.949696, 31.258324>,  <43.520458, 40.259388, 31.338131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280205, 39.949696, 31.258324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433668, -0.525128, 0.732238,
		-0.671694, 0.353280, 0.651168,
		-0.600632, -0.774231, -0.199520,
		43.100014, 39.717426, 31.198467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235336, 40.062737, 32.008015>,  <43.520458, 40.259388, 31.338131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235336, 40.062737, 32.008015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195301, 39.744747, 31.768684>,  <43.171280, 39.553951, 31.625086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195301, 39.744747, 31.768684>,  <43.235336, 40.062737, 32.008015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195301, 39.744747, 31.768684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478305, -0.565745, 0.671681,
		-0.872472, -0.218958, 0.436864,
		-0.100084, -0.794978, -0.598326,
		43.165276, 39.506252, 31.589186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027275, 39.445984, 32.396488>,  <43.235336, 40.062737, 32.008015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027275, 39.445984, 32.396488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149113, 39.240559, 32.075623>,  <43.222214, 39.117302, 31.883102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149113, 39.240559, 32.075623>,  <43.027275, 39.445984, 32.396488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149113, 39.240559, 32.075623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324144, -0.736027, 0.594303,
		-0.895630, -0.441040, -0.057721,
		0.304595, -0.513565, -0.802167,
		43.240490, 39.086491, 31.834972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822853, 38.797035, 32.493275>,  <43.027275, 39.445984, 32.396488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822853, 38.797035, 32.493275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122383, 38.771309, 32.229420>,  <43.302101, 38.755871, 32.071106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122383, 38.771309, 32.229420>,  <42.822853, 38.797035, 32.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122383, 38.771309, 32.229420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436923, -0.700473, 0.564302,
		-0.498352, -0.710775, -0.496432,
		0.748828, -0.064318, -0.659636,
		43.347031, 38.752014, 32.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953346, 38.142159, 32.321625>,  <42.822853, 38.797035, 32.493275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953346, 38.142159, 32.321625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305500, 38.314713, 32.242813>,  <43.516792, 38.418243, 32.195526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305500, 38.314713, 32.242813>,  <42.953346, 38.142159, 32.321625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305500, 38.314713, 32.242813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444312, -0.604977, 0.660749,
		0.165838, -0.669260, -0.724285,
		0.880389, 0.431386, -0.197032,
		43.569618, 38.444130, 32.183704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359009, 37.630741, 32.294758>,  <42.953346, 38.142159, 32.321625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359009, 37.630741, 32.294758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627426, 37.922325, 32.348885>,  <43.788475, 38.097275, 32.381363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627426, 37.922325, 32.348885>,  <43.359009, 37.630741, 32.294758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627426, 37.922325, 32.348885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548184, -0.610706, 0.571430,
		0.499193, -0.309274, -0.809417,
		0.671044, 0.728963, 0.135321,
		43.828739, 38.141014, 32.389481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939178, 37.306999, 32.358055>,  <43.359009, 37.630741, 32.294758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939178, 37.306999, 32.358055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070225, 37.662479, 32.486347>,  <44.148853, 37.875767, 32.563324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070225, 37.662479, 32.486347>,  <43.939178, 37.306999, 32.358055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070225, 37.662479, 32.486347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616082, -0.458315, 0.640617,
		0.716317, -0.012278, -0.697667,
		0.327617, 0.888705, 0.320735,
		44.168510, 37.929092, 32.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732349, 37.326866, 32.364212>,  <43.939178, 37.306999, 32.358055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732349, 37.326866, 32.364212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594032, 37.597832, 32.623913>,  <44.511040, 37.760410, 32.779736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594032, 37.597832, 32.623913>,  <44.732349, 37.326866, 32.364212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594032, 37.597832, 32.623913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615296, -0.358693, 0.701961,
		0.708403, 0.642220, -0.292777,
		-0.345796, 0.677416, 0.649255,
		44.490292, 37.801056, 32.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375687, 37.370514, 32.905876>,  <44.732349, 37.326866, 32.364212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375687, 37.370514, 32.905876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061356, 37.558918, 33.066189>,  <44.872757, 37.671963, 33.162376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061356, 37.558918, 33.066189>,  <45.375687, 37.370514, 32.905876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061356, 37.558918, 33.066189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131148, -0.506384, 0.852277,
		0.604382, 0.722302, 0.336158,
		-0.785826, 0.471014, 0.400778,
		44.825607, 37.700222, 33.186420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584351, 37.752399, 33.597481>,  <45.375687, 37.370514, 32.905876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584351, 37.752399, 33.597481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194237, 37.666531, 33.618435>,  <44.960171, 37.615009, 33.631008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194237, 37.666531, 33.618435>,  <45.584351, 37.752399, 33.597481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194237, 37.666531, 33.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156746, -0.505003, 0.848765,
		-0.155751, 0.835995, 0.526169,
		-0.975281, -0.214671, 0.052384,
		44.901653, 37.602131, 33.634151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386398, 37.895279, 34.302830>,  <45.584351, 37.752399, 33.597481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386398, 37.895279, 34.302830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105793, 37.647621, 34.161667>,  <44.937428, 37.499027, 34.076969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105793, 37.647621, 34.161667>,  <45.386398, 37.895279, 34.302830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105793, 37.647621, 34.161667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175447, -0.630000, 0.756517,
		-0.690720, 0.468792, 0.550581,
		-0.701515, -0.619140, -0.352905,
		44.895340, 37.461880, 34.055794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977398, 37.763382, 34.930138>,  <45.386398, 37.895279, 34.302830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977398, 37.763382, 34.930138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904221, 37.478638, 34.658909>,  <44.860313, 37.307793, 34.496170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904221, 37.478638, 34.658909>,  <44.977398, 37.763382, 34.930138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904221, 37.478638, 34.658909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108411, -0.700116, 0.705751,
		-0.977128, 0.055602, 0.205255,
		-0.182944, -0.711861, -0.678075,
		44.849339, 37.265079, 34.455486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554466, 37.399292, 35.352802>,  <44.977398, 37.763382, 34.930138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554466, 37.399292, 35.352802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665039, 37.167599, 35.046059>,  <44.731384, 37.028584, 34.862011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665039, 37.167599, 35.046059>,  <44.554466, 37.399292, 35.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665039, 37.167599, 35.046059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113471, -0.772702, 0.624545,
		-0.954311, -0.259660, -0.147874,
		0.276432, -0.579231, -0.766862,
		44.747971, 36.993828, 34.816002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113201, 36.782856, 35.355515>,  <44.554466, 37.399292, 35.352802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113201, 36.782856, 35.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455997, 36.720440, 35.159058>,  <44.661674, 36.682991, 35.041183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455997, 36.720440, 35.159058>,  <44.113201, 36.782856, 35.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455997, 36.720440, 35.159058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257434, -0.695993, 0.670314,
		-0.446425, -0.700889, -0.556290,
		0.856991, -0.156037, -0.491142,
		44.713093, 36.673630, 35.011715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260700, 36.140194, 35.490566>,  <44.113201, 36.782856, 35.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260700, 36.140194, 35.490566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620956, 36.235733, 35.345345>,  <44.837109, 36.293056, 35.258213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620956, 36.235733, 35.345345>,  <44.260700, 36.140194, 35.490566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620956, 36.235733, 35.345345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429415, -0.617436, 0.659071,
		-0.066746, -0.749484, -0.658649,
		0.900637, 0.238844, -0.363051,
		44.891148, 36.307384, 35.236427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560463, 35.519634, 35.263329>,  <44.260700, 36.140194, 35.490566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560463, 35.519634, 35.263329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850418, 35.773163, 35.371262>,  <45.024391, 35.925282, 35.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850418, 35.773163, 35.371262>,  <44.560463, 35.519634, 35.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850418, 35.773163, 35.371262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341166, -0.670610, 0.658702,
		0.598455, -0.385423, -0.702353,
		0.724884, 0.633823, 0.269837,
		45.067883, 35.963310, 35.452213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041538, 35.142082, 35.278290>,  <44.560463, 35.519634, 35.263329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041538, 35.142082, 35.278290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205471, 35.443935, 35.483253>,  <45.303833, 35.625050, 35.606232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205471, 35.443935, 35.483253>,  <45.041538, 35.142082, 35.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205471, 35.443935, 35.483253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474165, -0.656140, 0.587066,
		0.779232, 0.002365, -0.626731,
		0.409835, 0.754635, 0.512407,
		45.328423, 35.670326, 35.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688335, 34.888988, 35.480625>,  <45.041538, 35.142082, 35.278290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688335, 34.888988, 35.480625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664711, 35.185249, 35.748341>,  <45.650536, 35.363007, 35.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664711, 35.185249, 35.748341>,  <45.688335, 34.888988, 35.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664711, 35.185249, 35.748341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437127, -0.583574, 0.684369,
		0.897459, 0.332982, -0.289295,
		-0.059058, 0.740652, 0.669289,
		45.646996, 35.407444, 35.949127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347775, 34.999733, 35.721760>,  <45.688335, 34.888988, 35.480625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347775, 34.999733, 35.721760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119072, 35.160576, 36.007809>,  <45.981850, 35.257080, 36.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119072, 35.160576, 36.007809>,  <46.347775, 34.999733, 35.721760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119072, 35.160576, 36.007809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498839, -0.521634, 0.692140,
		0.651348, 0.752468, 0.097661,
		-0.571756, 0.402108, 0.715125,
		45.947544, 35.281208, 36.222347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706936, 35.597260, 35.714020>,  <46.347775, 34.999733, 35.721760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706936, 35.597260, 35.714020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619064, 35.967361, 35.590309>,  <46.566341, 36.189423, 35.516083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619064, 35.967361, 35.590309>,  <46.706936, 35.597260, 35.714020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619064, 35.967361, 35.590309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775730, 0.357913, 0.519752,
		0.591594, -0.125735, -0.796371,
		-0.219681, 0.925251, -0.309275,
		46.553162, 36.244938, 35.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420177, 35.890217, 35.458965>,  <46.706936, 35.597260, 35.714020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420177, 35.890217, 35.458965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174782, 36.180065, 35.584538>,  <47.027546, 36.353973, 35.659882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174782, 36.180065, 35.584538>,  <47.420177, 35.890217, 35.458965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174782, 36.180065, 35.584538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763106, 0.441674, 0.471797,
		0.203223, 0.529002, -0.823928,
		-0.613489, 0.724625, 0.313926,
		46.990734, 36.397453, 35.678715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126785, 35.455643, 34.960747>,  <47.420177, 35.890217, 35.458965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126785, 35.455643, 34.960747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386066, 35.359550, 35.249779>,  <47.541634, 35.301895, 35.423199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386066, 35.359550, 35.249779>,  <47.126785, 35.455643, 34.960747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386066, 35.359550, 35.249779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434080, -0.663072, -0.609844,
		0.625630, 0.708959, -0.325522,
		0.648199, -0.240234, 0.722583,
		47.580524, 35.287479, 35.466553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676540, 35.486168, 34.564121>,  <47.126785, 35.455643, 34.960747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676540, 35.486168, 34.564121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771935, 35.283138, 34.895298>,  <47.829170, 35.161320, 35.094006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771935, 35.283138, 34.895298>,  <47.676540, 35.486168, 34.564121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771935, 35.283138, 34.895298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719250, -0.480531, -0.501767,
		0.652537, 0.715164, 0.250472,
		0.238486, -0.507573, 0.827946,
		47.843479, 35.130867, 35.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.883522, 41.026417, 45.001434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596046, 40.763348, 45.091728>,  <33.423561, 40.605507, 45.145905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596046, 40.763348, 45.091728>,  <33.883522, 41.026417, 45.001434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596046, 40.763348, 45.091728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206687, -0.512031, -0.833729,
		0.663906, -0.552533, 0.503922,
		-0.718686, -0.657671, 0.225739,
		33.380440, 40.566048, 45.159451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132996, 40.341743, 44.943771>,  <33.883522, 41.026417, 45.001434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132996, 40.341743, 44.943771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742844, 40.270393, 44.891903>,  <33.508751, 40.227581, 44.860783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742844, 40.270393, 44.891903>,  <34.132996, 40.341743, 44.943771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742844, 40.270393, 44.891903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205369, -0.520417, -0.828849,
		0.080365, -0.835073, 0.544238,
		-0.975379, -0.178379, -0.129675,
		33.450230, 40.216881, 44.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985535, 39.521614, 44.908218>,  <34.132996, 40.341743, 44.943771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985535, 39.521614, 44.908218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682560, 39.720528, 44.738987>,  <33.500774, 39.839874, 44.637447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682560, 39.720528, 44.738987>,  <33.985535, 39.521614, 44.908218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682560, 39.720528, 44.738987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129789, -0.520384, -0.844011,
		-0.639875, -0.694198, 0.329618,
		-0.757440, 0.497282, -0.423080,
		33.455326, 39.869713, 44.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625538, 39.026775, 44.512661>,  <33.985535, 39.521614, 44.908218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625538, 39.026775, 44.512661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516132, 39.381706, 44.364155>,  <33.450489, 39.594666, 44.275051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516132, 39.381706, 44.364155>,  <33.625538, 39.026775, 44.512661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516132, 39.381706, 44.364155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127995, -0.348971, -0.928352,
		-0.953315, -0.301434, -0.018127,
		-0.273511, 0.887332, -0.371261,
		33.434078, 39.647907, 44.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178036, 38.806744, 43.929024>,  <33.625538, 39.026775, 44.512661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178036, 38.806744, 43.929024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304680, 39.181568, 43.870132>,  <33.380669, 39.406464, 43.834797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304680, 39.181568, 43.870132>,  <33.178036, 38.806744, 43.929024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304680, 39.181568, 43.870132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102347, -0.188051, -0.976812,
		-0.943017, 0.294204, -0.155444,
		0.316614, 0.937060, -0.147224,
		33.399662, 39.462685, 43.825966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757786, 39.193108, 43.357601>,  <33.178036, 38.806744, 43.929024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757786, 39.193108, 43.357601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110229, 39.377995, 43.397606>,  <33.321697, 39.488926, 43.421608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110229, 39.377995, 43.397606>,  <32.757786, 39.193108, 43.357601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110229, 39.377995, 43.397606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188330, -0.148968, -0.970742,
		-0.433793, 0.874166, -0.218306,
		0.881111, 0.462214, 0.100010,
		33.374561, 39.516659, 43.427608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834991, 39.617020, 42.754055>,  <32.757786, 39.193108, 43.357601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834991, 39.617020, 42.754055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200611, 39.561275, 42.906418>,  <33.419983, 39.527828, 42.997837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200611, 39.561275, 42.906418>,  <32.834991, 39.617020, 42.754055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200611, 39.561275, 42.906418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339904, -0.249220, -0.906838,
		0.221307, 0.958368, -0.180431,
		0.914051, -0.139360, 0.380907,
		33.474827, 39.519466, 43.020691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293503, 39.919876, 42.287769>,  <32.834991, 39.617020, 42.754055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293503, 39.919876, 42.287769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537865, 39.685555, 42.500797>,  <33.684483, 39.544960, 42.628616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537865, 39.685555, 42.500797>,  <33.293503, 39.919876, 42.287769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537865, 39.685555, 42.500797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339793, -0.413578, -0.844686,
		0.715079, 0.696985, -0.053604,
		0.610903, -0.585803, 0.532572,
		33.721134, 39.509815, 42.660568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931175, 40.005901, 42.039116>,  <33.293503, 39.919876, 42.287769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931175, 40.005901, 42.039116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919888, 39.644688, 42.210575>,  <33.913116, 39.427959, 42.313450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919888, 39.644688, 42.210575>,  <33.931175, 40.005901, 42.039116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919888, 39.644688, 42.210575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373214, -0.407322, -0.833546,
		0.927316, 0.136458, 0.348517,
		-0.028215, -0.903032, 0.428645,
		33.911423, 39.373779, 42.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418968, 39.749401, 41.666683>,  <33.931175, 40.005901, 42.039116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418968, 39.749401, 41.666683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211967, 39.444958, 41.823101>,  <34.087769, 39.262291, 41.916950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211967, 39.444958, 41.823101>,  <34.418968, 39.749401, 41.666683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211967, 39.444958, 41.823101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269307, -0.578642, -0.769836,
		0.812200, -0.293078, 0.504417,
		-0.517498, -0.761104, 0.391045,
		34.056717, 39.216625, 41.940414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839073, 39.200516, 41.709049>,  <34.418968, 39.749401, 41.666683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839073, 39.200516, 41.709049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479076, 39.026272, 41.715511>,  <34.263077, 38.921726, 41.719387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479076, 39.026272, 41.715511>,  <34.839073, 39.200516, 41.709049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479076, 39.026272, 41.715511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317893, -0.681234, -0.659442,
		0.298262, -0.588357, 0.751582,
		-0.899991, -0.435610, 0.016152,
		34.209080, 38.895588, 41.720356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991974, 38.557110, 41.715790>,  <34.839073, 39.200516, 41.709049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991974, 38.557110, 41.715790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612633, 38.575962, 41.590309>,  <34.385029, 38.587273, 41.515018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612633, 38.575962, 41.590309>,  <34.991974, 38.557110, 41.715790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612633, 38.575962, 41.590309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229287, -0.581550, -0.780530,
		-0.219223, -0.812145, 0.540706,
		-0.948350, 0.047134, -0.313703,
		34.328129, 38.590103, 41.496197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830566, 37.867290, 41.545090>,  <34.991974, 38.557110, 41.715790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830566, 37.867290, 41.545090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568485, 38.100990, 41.353527>,  <34.411236, 38.241211, 41.238590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568485, 38.100990, 41.353527>,  <34.830566, 37.867290, 41.545090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568485, 38.100990, 41.353527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249226, -0.431278, -0.867113,
		-0.713159, -0.687493, 0.136963,
		-0.655203, 0.584255, -0.478911,
		34.371925, 38.276268, 41.209854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284950, 37.314629, 41.384716>,  <34.830566, 37.867290, 41.545090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284950, 37.314629, 41.384716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254707, 37.629387, 41.139744>,  <34.236561, 37.818241, 40.992760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254707, 37.629387, 41.139744>,  <34.284950, 37.314629, 41.384716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254707, 37.629387, 41.139744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108908, -0.603998, -0.789510,
		-0.991172, -0.126393, -0.040032,
		-0.075610, 0.786900, -0.612431,
		34.232025, 37.865456, 40.956013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782040, 37.168911, 40.920326>,  <34.284950, 37.314629, 41.384716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782040, 37.168911, 40.920326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983742, 37.457359, 40.730289>,  <34.104763, 37.630428, 40.616268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983742, 37.457359, 40.730289>,  <33.782040, 37.168911, 40.920326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983742, 37.457359, 40.730289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053085, -0.523231, -0.850536,
		-0.861921, 0.454108, -0.225562,
		0.504256, 0.721121, -0.475090,
		34.135017, 37.673695, 40.587761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475449, 37.241344, 40.272835>,  <33.782040, 37.168911, 40.920326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475449, 37.241344, 40.272835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843830, 37.390926, 40.229027>,  <34.064861, 37.480675, 40.202744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843830, 37.390926, 40.229027>,  <33.475449, 37.241344, 40.272835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843830, 37.390926, 40.229027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037035, -0.363785, -0.930746,
		-0.387902, 0.853121, -0.348880,
		0.920956, 0.373959, -0.109517,
		34.120117, 37.503113, 40.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375740, 37.710526, 39.721378>,  <33.475449, 37.241344, 40.272835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375740, 37.710526, 39.721378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768772, 37.636253, 39.724438>,  <34.004593, 37.591690, 39.726273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768772, 37.636253, 39.724438>,  <33.375740, 37.710526, 39.721378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768772, 37.636253, 39.724438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066446, -0.389467, -0.918641,
		0.173549, 0.902131, -0.395020,
		0.982581, -0.185677, 0.007649,
		34.063545, 37.580551, 39.726734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570423, 37.877739, 39.050976>,  <33.375740, 37.710526, 39.721378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570423, 37.877739, 39.050976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847298, 37.636089, 39.208923>,  <34.013420, 37.491100, 39.303692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847298, 37.636089, 39.208923>,  <33.570423, 37.877739, 39.050976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847298, 37.636089, 39.208923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070128, -0.600825, -0.796299,
		0.718306, 0.523494, -0.458247,
		0.692184, -0.604122, 0.394865,
		34.054955, 37.454853, 39.327381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984501, 37.781422, 38.535328>,  <33.570423, 37.877739, 39.050976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984501, 37.781422, 38.535328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093948, 37.484211, 38.779636>,  <34.159618, 37.305885, 38.926224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093948, 37.484211, 38.779636>,  <33.984501, 37.781422, 38.535328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093948, 37.484211, 38.779636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019273, -0.639116, -0.768869,
		0.961645, 0.198607, -0.189196,
		0.273621, -0.743025, 0.610775,
		34.176033, 37.261303, 38.962868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614693, 37.493118, 38.165161>,  <33.984501, 37.781422, 38.535328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614693, 37.493118, 38.165161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439934, 37.228348, 38.408794>,  <34.335079, 37.069485, 38.554974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439934, 37.228348, 38.408794>,  <34.614693, 37.493118, 38.165161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439934, 37.228348, 38.408794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194990, -0.591333, -0.782499,
		0.878124, -0.460635, 0.129282,
		-0.436895, -0.661922, 0.609083,
		34.308865, 37.029770, 38.591518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889263, 37.018242, 37.981415>,  <34.614693, 37.493118, 38.165161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889263, 37.018242, 37.981415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558483, 36.867683, 38.148499>,  <34.360016, 36.777348, 38.248749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558483, 36.867683, 38.148499>,  <34.889263, 37.018242, 37.981415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558483, 36.867683, 38.148499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179347, -0.527518, -0.830397,
		0.532907, -0.761611, 0.368725,
		-0.826949, -0.376395, 0.417711,
		34.310398, 36.754765, 38.273811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865379, 36.295670, 38.048195>,  <34.889263, 37.018242, 37.981415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865379, 36.295670, 38.048195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488979, 36.421951, 37.999451>,  <34.263138, 36.497719, 37.970203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488979, 36.421951, 37.999451>,  <34.865379, 36.295670, 38.048195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488979, 36.421951, 37.999451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094895, -0.591816, -0.800467,
		-0.324826, -0.741677, 0.586858,
		-0.941001, 0.315703, -0.121856,
		34.206680, 36.516663, 37.962894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460201, 36.617119, 38.462044>,  <34.865379, 36.295670, 38.048195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460201, 36.617119, 38.462044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772629, 36.710434, 38.230350>,  <35.960083, 36.766422, 38.091335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772629, 36.710434, 38.230350>,  <35.460201, 36.617119, 38.462044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772629, 36.710434, 38.230350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361333, 0.587676, 0.723930,
		0.509284, -0.774735, 0.374721,
		0.781069, 0.233287, -0.579231,
		36.006950, 36.780422, 38.056580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053070, 36.557976, 38.910725>,  <35.460201, 36.617119, 38.462044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053070, 36.557976, 38.910725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171551, 36.788364, 38.605957>,  <36.242638, 36.926598, 38.423096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171551, 36.788364, 38.605957>,  <36.053070, 36.557976, 38.910725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171551, 36.788364, 38.605957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511891, 0.577747, 0.635749,
		0.806371, -0.578328, -0.123707,
		0.296200, 0.575974, -0.761918,
		36.260410, 36.961155, 38.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732166, 36.672901, 39.080227>,  <36.053070, 36.557976, 38.910725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732166, 36.672901, 39.080227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633858, 36.972111, 38.833630>,  <36.574871, 37.151634, 38.685673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633858, 36.972111, 38.833630>,  <36.732166, 36.672901, 39.080227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633858, 36.972111, 38.833630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423568, 0.654942, 0.625812,
		0.871886, -0.107317, -0.477806,
		-0.245775, 0.748020, -0.616491,
		36.560123, 37.196518, 38.648682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381145, 37.035641, 38.929291>,  <36.732166, 36.672901, 39.080227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381145, 37.035641, 38.929291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057980, 37.267155, 38.884941>,  <36.864082, 37.406063, 38.858330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057980, 37.267155, 38.884941>,  <37.381145, 37.035641, 38.929291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057980, 37.267155, 38.884941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416128, 0.693525, 0.588099,
		0.417275, 0.428994, -0.801153,
		-0.807911, 0.578781, -0.110875,
		36.815605, 37.440788, 38.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715858, 37.602970, 39.129093>,  <37.381145, 37.035641, 38.929291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715858, 37.602970, 39.129093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328907, 37.702610, 39.110645>,  <37.096737, 37.762394, 39.099579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328907, 37.702610, 39.110645>,  <37.715858, 37.602970, 39.129093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328907, 37.702610, 39.110645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161612, 0.747001, 0.644880,
		0.195091, 0.616390, -0.762891,
		-0.967378, 0.249103, -0.046117,
		37.038692, 37.777340, 39.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686085, 38.302887, 39.133263>,  <37.715858, 37.602970, 39.129093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686085, 38.302887, 39.133263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317417, 38.210224, 39.257748>,  <37.096214, 38.154629, 39.332439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317417, 38.210224, 39.257748>,  <37.686085, 38.302887, 39.133263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317417, 38.210224, 39.257748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006886, 0.792278, 0.610122,
		-0.387906, 0.564476, -0.728626,
		-0.921673, -0.231652, 0.311216,
		37.040916, 38.140728, 39.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217052, 38.864937, 39.027607>,  <37.686085, 38.302887, 39.133263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217052, 38.864937, 39.027607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058510, 38.665703, 39.336102>,  <36.963383, 38.546162, 39.521198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058510, 38.665703, 39.336102>,  <37.217052, 38.864937, 39.027607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058510, 38.665703, 39.336102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028734, 0.832901, 0.552675,
		-0.917646, 0.241218, -0.315815,
		-0.396358, -0.498085, 0.771240,
		36.939602, 38.516277, 39.567474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930832, 39.320637, 39.379921>,  <37.217052, 38.864937, 39.027607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930832, 39.320637, 39.379921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911625, 39.029842, 39.653908>,  <36.900101, 38.855366, 39.818298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911625, 39.029842, 39.653908>,  <36.930832, 39.320637, 39.379921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911625, 39.029842, 39.653908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065454, 0.681995, 0.728422,
		-0.996700, 0.079808, 0.014839,
		-0.048013, -0.726990, 0.684968,
		36.897221, 38.811745, 39.859398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469513, 39.584408, 39.909981>,  <36.930832, 39.320637, 39.379921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469513, 39.584408, 39.909981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 39.305256, 40.081917>,  <36.836159, 39.137764, 40.185081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 39.305256, 40.081917>,  <36.469513, 39.584408, 39.909981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698666, 39.305256, 40.081917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082200, 0.570709, 0.817028,
		-0.815503, -0.432730, 0.384317,
		0.572885, -0.697879, 0.429845,
		36.870533, 39.095894, 40.210869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027668, 39.412743, 40.400154>,  <36.469513, 39.584408, 39.909981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027668, 39.412743, 40.400154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409069, 39.340195, 40.496437>,  <36.637909, 39.296665, 40.554207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409069, 39.340195, 40.496437>,  <36.027668, 39.412743, 40.400154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409069, 39.340195, 40.496437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071564, 0.639570, 0.765394,
		-0.292765, -0.747031, 0.596853,
		0.953503, -0.181368, 0.240704,
		36.695122, 39.285786, 40.568649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960579, 39.436630, 41.176571>,  <36.027668, 39.412743, 40.400154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960579, 39.436630, 41.176571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354633, 39.425217, 41.108822>,  <36.591068, 39.418369, 41.068172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354633, 39.425217, 41.108822>,  <35.960579, 39.436630, 41.176571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354633, 39.425217, 41.108822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161857, 0.484197, 0.859858,
		0.057476, -0.874494, 0.481620,
		0.985139, -0.028532, -0.169372,
		36.650173, 39.416656, 41.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262184, 39.171810, 41.767002>,  <35.960579, 39.436630, 41.176571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262184, 39.171810, 41.767002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551212, 39.383354, 41.588928>,  <36.724628, 39.510281, 41.482082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551212, 39.383354, 41.588928>,  <36.262184, 39.171810, 41.767002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551212, 39.383354, 41.588928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068317, 0.586212, 0.807272,
		0.687909, -0.613728, 0.387452,
		0.722575, 0.528860, -0.445189,
		36.767986, 39.542011, 41.455372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760254, 39.258198, 42.256374>,  <36.262184, 39.171810, 41.767002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760254, 39.258198, 42.256374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808823, 39.546848, 41.983757>,  <36.837963, 39.720039, 41.820187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808823, 39.546848, 41.983757>,  <36.760254, 39.258198, 42.256374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808823, 39.546848, 41.983757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131075, 0.668959, 0.731652,
		0.983909, -0.178171, -0.013363,
		0.121420, 0.721630, -0.681548,
		36.845249, 39.763336, 41.779293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383007, 39.595463, 42.502422>,  <36.760254, 39.258198, 42.256374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383007, 39.595463, 42.502422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170666, 39.848495, 42.276844>,  <37.043262, 40.000317, 42.141499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170666, 39.848495, 42.276844>,  <37.383007, 39.595463, 42.502422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170666, 39.848495, 42.276844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118115, 0.714183, 0.689921,
		0.839192, 0.299637, -0.453844,
		-0.530854, 0.632582, -0.563945,
		37.011410, 40.038269, 42.107662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631767, 40.163792, 42.733944>,  <37.383007, 39.595463, 42.502422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631767, 40.163792, 42.733944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289265, 40.271721, 42.557751>,  <37.083763, 40.336479, 42.452034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289265, 40.271721, 42.557751>,  <37.631767, 40.163792, 42.733944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289265, 40.271721, 42.557751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156283, 0.677454, 0.718771,
		0.492348, 0.684290, -0.537904,
		-0.856253, 0.269820, -0.440486,
		37.032391, 40.352669, 42.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576683, 40.937508, 42.823345>,  <37.631767, 40.163792, 42.733944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576683, 40.937508, 42.823345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203159, 40.812847, 42.753056>,  <36.979046, 40.738052, 42.710884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203159, 40.812847, 42.753056>,  <37.576683, 40.937508, 42.823345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203159, 40.812847, 42.753056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318763, 0.501699, 0.804170,
		-0.162460, 0.806953, -0.567832,
		-0.933808, -0.311650, -0.175720,
		36.923016, 40.719353, 42.700340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105484, 41.542156, 43.002323>,  <37.576683, 40.937508, 42.823345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105484, 41.542156, 43.002323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878582, 41.213322, 42.982746>,  <36.742443, 41.016022, 42.971001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878582, 41.213322, 42.982746>,  <37.105484, 41.542156, 43.002323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878582, 41.213322, 42.982746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569205, 0.348420, 0.744721,
		-0.595172, 0.450305, -0.665579,
		-0.567252, -0.822088, -0.048946,
		36.708405, 40.966694, 42.968063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475643, 41.814102, 43.066456>,  <37.105484, 41.542156, 43.002323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475643, 41.814102, 43.066456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471718, 41.431316, 43.182472>,  <36.469364, 41.201645, 43.252083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471718, 41.431316, 43.182472>,  <36.475643, 41.814102, 43.066456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471718, 41.431316, 43.182472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432100, 0.265635, 0.861816,
		-0.901772, -0.116871, -0.416111,
		-0.009812, -0.956963, 0.290042,
		36.468773, 41.144226, 43.269485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.780155, 41.716251, 43.408718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965107, 41.385098, 43.535717>,  <36.076080, 41.186405, 43.611916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965107, 41.385098, 43.535717>,  <35.780155, 41.716251, 43.408718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965107, 41.385098, 43.535717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478843, 0.068222, 0.875246,
		-0.746265, -0.556731, -0.364883,
		0.462384, -0.827887, 0.317498,
		36.103821, 41.136730, 43.630966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259270, 41.302788, 43.640434>,  <35.780155, 41.716251, 43.408718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259270, 41.302788, 43.640434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581039, 41.180225, 43.844009>,  <35.774101, 41.106689, 43.966156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581039, 41.180225, 43.844009>,  <35.259270, 41.302788, 43.640434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581039, 41.180225, 43.844009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501314, 0.109524, 0.858306,
		-0.318729, -0.945580, -0.065501,
		0.804423, -0.306404, 0.508941,
		35.822365, 41.088306, 43.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963234, 40.931797, 44.264866>,  <35.259270, 41.302788, 43.640434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963234, 40.931797, 44.264866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349632, 40.997566, 44.344677>,  <35.581470, 41.037029, 44.392563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349632, 40.997566, 44.344677>,  <34.963234, 40.931797, 44.264866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349632, 40.997566, 44.344677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232072, 0.211235, 0.949485,
		0.113968, -0.963507, 0.242210,
		0.965999, 0.164421, 0.199529,
		35.639431, 41.046894, 44.404537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103832, 40.501385, 44.768139>,  <34.963234, 40.931797, 44.264866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103832, 40.501385, 44.768139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361637, 40.806904, 44.782078>,  <35.516319, 40.990215, 44.790443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361637, 40.806904, 44.782078>,  <35.103832, 40.501385, 44.768139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361637, 40.806904, 44.782078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204270, 0.128088, 0.970498,
		0.736799, -0.632621, 0.238576,
		0.644516, 0.763796, 0.034851,
		35.554993, 41.036041, 44.792534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457489, 40.584305, 45.491718>,  <35.103832, 40.501385, 44.768139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457489, 40.584305, 45.491718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527149, 40.945709, 45.335083>,  <35.568943, 41.162552, 45.241100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527149, 40.945709, 45.335083>,  <35.457489, 40.584305, 45.491718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527149, 40.945709, 45.335083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192648, 0.421241, 0.886252,
		0.965691, -0.078900, 0.247417,
		0.174147, 0.903510, -0.391589,
		35.579395, 41.216763, 45.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018555, 40.797005, 45.875248>,  <35.457489, 40.584305, 45.491718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018555, 40.797005, 45.875248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827091, 41.105003, 45.706490>,  <35.712212, 41.289803, 45.605236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827091, 41.105003, 45.706490>,  <36.018555, 40.797005, 45.875248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827091, 41.105003, 45.706490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041840, 0.459966, 0.886951,
		0.877003, 0.442199, -0.187950,
		-0.478659, 0.769995, -0.421893,
		35.683495, 41.336002, 45.579922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109444, 41.336868, 46.370056>,  <36.018555, 40.797005, 45.875248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109444, 41.336868, 46.370056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821415, 41.515003, 46.157200>,  <35.648598, 41.621883, 46.029484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821415, 41.515003, 46.157200>,  <36.109444, 41.336868, 46.370056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821415, 41.515003, 46.157200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177590, 0.623074, 0.761736,
		0.670793, 0.643005, -0.369568,
		-0.720068, 0.445335, -0.532145,
		35.605396, 41.648605, 45.997555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271996, 42.063038, 46.244499>,  <36.109444, 41.336868, 46.370056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271996, 42.063038, 46.244499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874050, 42.022552, 46.245663>,  <35.635284, 41.998260, 46.246361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874050, 42.022552, 46.245663>,  <36.271996, 42.063038, 46.244499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874050, 42.022552, 46.245663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066566, 0.675450, 0.734395,
		-0.076296, 0.730427, -0.678716,
		-0.994861, -0.101211, 0.002912,
		35.575592, 41.992188, 46.246536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045658, 42.747578, 46.412876>,  <36.271996, 42.063038, 46.244499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045658, 42.747578, 46.412876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699581, 42.547806, 46.430798>,  <35.491936, 42.427944, 46.441551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699581, 42.547806, 46.430798>,  <36.045658, 42.747578, 46.412876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699581, 42.547806, 46.430798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397602, 0.737737, 0.545579,
		-0.305530, 0.454219, -0.836861,
		-0.865196, -0.499428, 0.044803,
		35.440022, 42.397976, 46.444237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555420, 43.308834, 46.371590>,  <36.045658, 42.747578, 46.412876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555420, 43.308834, 46.371590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353699, 42.991848, 46.508812>,  <35.232666, 42.801659, 46.591145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353699, 42.991848, 46.508812>,  <35.555420, 43.308834, 46.371590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353699, 42.991848, 46.508812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375915, 0.559117, 0.738969,
		-0.777411, 0.243705, -0.579862,
		-0.504301, -0.792462, 0.343052,
		35.202408, 42.754108, 46.611729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880241, 43.562798, 46.617355>,  <35.555420, 43.308834, 46.371590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880241, 43.562798, 46.617355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955723, 43.220493, 46.810047>,  <35.001011, 43.015110, 46.925663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955723, 43.220493, 46.810047>,  <34.880241, 43.562798, 46.617355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955723, 43.220493, 46.810047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222541, 0.440517, 0.869724,
		-0.956487, -0.271320, -0.107317,
		0.188699, -0.855762, 0.481729,
		35.012333, 42.963764, 46.954567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331444, 43.511127, 47.080643>,  <34.880241, 43.562798, 46.617355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331444, 43.511127, 47.080643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622002, 43.277744, 47.225933>,  <34.796337, 43.137714, 47.313107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622002, 43.277744, 47.225933>,  <34.331444, 43.511127, 47.080643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622002, 43.277744, 47.225933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154429, 0.376416, 0.913489,
		-0.669708, -0.719642, 0.183322,
		0.726391, -0.583461, 0.363223,
		34.839920, 43.102707, 47.334900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045959, 43.166718, 47.604256>,  <34.331444, 43.511127, 47.080643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045959, 43.166718, 47.604256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441067, 43.165737, 47.666622>,  <34.678131, 43.165150, 47.704041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441067, 43.165737, 47.666622>,  <34.045959, 43.166718, 47.604256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441067, 43.165737, 47.666622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145983, 0.336914, 0.930150,
		-0.054812, -0.941532, 0.332434,
		0.987768, -0.002454, 0.155915,
		34.737396, 43.165001, 47.713398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061890, 42.853195, 48.273476>,  <34.045959, 43.166718, 47.604256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061890, 42.853195, 48.273476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394093, 43.061844, 48.195328>,  <34.593414, 43.187031, 48.148438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394093, 43.061844, 48.195328>,  <34.061890, 42.853195, 48.273476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394093, 43.061844, 48.195328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032651, 0.395737, 0.917783,
		0.556048, -0.755848, 0.345694,
		0.830509, 0.521619, -0.195369,
		34.643246, 43.218330, 48.136719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612225, 42.651413, 48.771732>,  <34.061890, 42.853195, 48.273476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612225, 42.651413, 48.771732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700108, 43.014378, 48.628441>,  <34.752838, 43.232159, 48.542465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700108, 43.014378, 48.628441>,  <34.612225, 42.651413, 48.771732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700108, 43.014378, 48.628441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100168, 0.344273, 0.933511,
		0.970409, -0.240986, -0.015253,
		0.219712, 0.907415, -0.358224,
		34.766022, 43.286602, 48.520973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934113, 42.804806, 49.290352>,  <34.612225, 42.651413, 48.771732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934113, 42.804806, 49.290352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868904, 43.154495, 49.107414>,  <34.829781, 43.364307, 48.997650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868904, 43.154495, 49.107414>,  <34.934113, 42.804806, 49.290352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868904, 43.154495, 49.107414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072122, 0.451746, 0.889227,
		0.983983, 0.177945, -0.010592,
		-0.163019, 0.874220, -0.457344,
		34.820000, 43.416759, 48.970211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334175, 43.279819, 49.700542>,  <34.934113, 42.804806, 49.290352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334175, 43.279819, 49.700542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084957, 43.522552, 49.503132>,  <34.935425, 43.668194, 49.384686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084957, 43.522552, 49.503132>,  <35.334175, 43.279819, 49.700542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084957, 43.522552, 49.503132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252720, 0.440946, 0.861220,
		0.740236, 0.661301, -0.121370,
		-0.623043, 0.606834, -0.493528,
		34.898045, 43.704601, 49.355072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617470, 43.937294, 49.737026>,  <35.334175, 43.279819, 49.700542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617470, 43.937294, 49.737026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225418, 43.993771, 49.681290>,  <34.990189, 44.027657, 49.647850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225418, 43.993771, 49.681290>,  <35.617470, 43.937294, 49.737026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225418, 43.993771, 49.681290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082455, 0.348898, 0.933526,
		0.180418, 0.926464, -0.330323,
		-0.980128, 0.141188, -0.139339,
		34.931381, 44.036125, 49.639488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450825, 44.609467, 49.992020>,  <35.617470, 43.937294, 49.737026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450825, 44.609467, 49.992020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105053, 44.408386, 49.995033>,  <34.897591, 44.287739, 49.996841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105053, 44.408386, 49.995033>,  <35.450825, 44.609467, 49.992020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105053, 44.408386, 49.995033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212895, 0.379584, 0.900329,
		-0.455458, 0.776664, -0.435145,
		-0.864427, -0.502702, 0.007536,
		34.845726, 44.257576, 49.997295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036865, 45.103607, 50.153355>,  <35.450825, 44.609467, 49.992020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036865, 45.103607, 50.153355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821095, 44.779099, 50.243553>,  <34.691631, 44.584393, 50.297672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821095, 44.779099, 50.243553>,  <35.036865, 45.103607, 50.153355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821095, 44.779099, 50.243553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146879, 0.354355, 0.923504,
		-0.829122, 0.465044, -0.310309,
		-0.539429, -0.811275, 0.225498,
		34.659267, 44.535717, 50.311203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390217, 45.379368, 50.426846>,  <35.036865, 45.103607, 50.153355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390217, 45.379368, 50.426846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429127, 45.004471, 50.560776>,  <34.452473, 44.779533, 50.641136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429127, 45.004471, 50.560776>,  <34.390217, 45.379368, 50.426846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429127, 45.004471, 50.560776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299142, 0.293335, 0.908002,
		-0.949238, -0.188483, -0.251837,
		0.097270, -0.937245, 0.334828,
		34.458309, 44.723297, 50.661224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724480, 45.156586, 50.719822>,  <34.390217, 45.379368, 50.426846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724480, 45.156586, 50.719822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026161, 44.954597, 50.887718>,  <34.207169, 44.833405, 50.988457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026161, 44.954597, 50.887718>,  <33.724480, 45.156586, 50.719822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026161, 44.954597, 50.887718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200272, 0.431877, 0.879417,
		-0.625358, -0.747319, 0.224590,
		0.754201, -0.504971, 0.419745,
		34.252422, 44.803104, 51.013641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159889, 45.416149, 50.253544>,  <33.724480, 45.156586, 50.719822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159889, 45.416149, 50.253544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939678, 45.736790, 50.346802>,  <32.807552, 45.929173, 50.402756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939678, 45.736790, 50.346802>,  <33.159889, 45.416149, 50.253544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939678, 45.736790, 50.346802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370859, 0.485041, -0.791959,
		-0.747922, -0.349527, -0.564308,
		-0.550524, 0.801602, 0.233148,
		32.774521, 45.977272, 50.416744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517616, 45.721794, 50.081402>,  <33.159889, 45.416149, 50.253544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517616, 45.721794, 50.081402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460552, 46.109180, 50.163113>,  <32.426311, 46.341610, 50.212139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460552, 46.109180, 50.163113>,  <32.517616, 45.721794, 50.081402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460552, 46.109180, 50.163113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132039, 0.185920, -0.973653,
		-0.980925, -0.165876, 0.101351,
		-0.142662, 0.968462, 0.204276,
		32.417755, 46.399719, 50.224396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419922, 45.432026, 50.653091>,  <32.517616, 45.721794, 50.081402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419922, 45.432026, 50.653091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097385, 45.282143, 50.836140>,  <31.903864, 45.192215, 50.945969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097385, 45.282143, 50.836140>,  <32.419922, 45.432026, 50.653091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097385, 45.282143, 50.836140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010039, -0.782277, -0.622849,
		0.591372, -0.497632, 0.634541,
		-0.806337, -0.374706, 0.457621,
		31.855484, 45.169731, 50.973427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548843, 44.678078, 50.806301>,  <32.419922, 45.432026, 50.653091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548843, 44.678078, 50.806301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153015, 44.732922, 50.823940>,  <31.915518, 44.765827, 50.834522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153015, 44.732922, 50.823940>,  <32.548843, 44.678078, 50.806301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153015, 44.732922, 50.823940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143937, -0.930723, -0.336210,
		-0.005055, -0.339052, 0.940754,
		-0.989574, 0.137109, 0.044097,
		31.856142, 44.774055, 50.837170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248463, 44.047466, 51.052338>,  <32.548843, 44.678078, 50.806301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248463, 44.047466, 51.052338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961071, 44.241592, 50.853039>,  <31.788635, 44.358070, 50.733459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961071, 44.241592, 50.853039>,  <32.248463, 44.047466, 51.052338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961071, 44.241592, 50.853039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247992, -0.848003, -0.468391,
		-0.649836, -0.212968, 0.729629,
		-0.718480, 0.485319, -0.498248,
		31.745527, 44.387188, 50.703564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691467, 43.595440, 51.096050>,  <32.248463, 44.047466, 51.052338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691467, 43.595440, 51.096050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627869, 43.845837, 50.790672>,  <31.589710, 43.996075, 50.607445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627869, 43.845837, 50.790672>,  <31.691467, 43.595440, 51.096050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627869, 43.845837, 50.790672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142490, -0.779739, -0.609675,
		-0.976943, 0.011849, 0.213172,
		-0.158995, 0.625992, -0.763449,
		31.580170, 44.033634, 50.561638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369143, 43.168110, 50.669842>,  <31.691467, 43.595440, 51.096050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369143, 43.168110, 50.669842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456982, 43.471279, 50.424133>,  <31.509686, 43.653179, 50.276707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456982, 43.471279, 50.424133>,  <31.369143, 43.168110, 50.669842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456982, 43.471279, 50.424133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071977, -0.640513, -0.764566,
		-0.972931, 0.123685, -0.195210,
		0.219600, 0.757921, -0.614273,
		31.522861, 43.698654, 50.239853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866188, 43.163700, 50.021549>,  <31.369143, 43.168110, 50.669842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866188, 43.163700, 50.021549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197638, 43.362144, 49.917816>,  <31.396507, 43.481213, 49.855576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197638, 43.362144, 49.917816>,  <30.866188, 43.163700, 50.021549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197638, 43.362144, 49.917816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104247, -0.591900, -0.799242,
		-0.550015, 0.635236, -0.542180,
		0.828623, 0.496115, -0.259332,
		31.446224, 43.510979, 49.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780455, 43.106293, 49.383278>,  <30.866188, 43.163700, 50.021549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780455, 43.106293, 49.383278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169046, 43.198887, 49.403839>,  <31.402201, 43.254444, 49.416176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169046, 43.198887, 49.403839>,  <30.780455, 43.106293, 49.383278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169046, 43.198887, 49.403839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138576, -0.378326, -0.915241,
		-0.192416, 0.896262, -0.399614,
		0.971480, 0.231484, 0.051404,
		31.460491, 43.268333, 49.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905434, 43.308594, 48.744282>,  <30.780455, 43.106293, 49.383278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905434, 43.308594, 48.744282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.266537, 43.246460, 48.904728>,  <31.483198, 43.209179, 49.000996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.266537, 43.246460, 48.904728>,  <30.905434, 43.308594, 48.744282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266537, 43.246460, 48.904728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350507, -0.274904, -0.895306,
		0.249340, 0.948841, -0.193726,
		0.902759, -0.155334, 0.401120,
		31.537365, 43.199860, 49.025063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401764, 43.512093, 48.287121>,  <30.905434, 43.308594, 48.744282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401764, 43.512093, 48.287121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600643, 43.248211, 48.512539>,  <31.719971, 43.089882, 48.647789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600643, 43.248211, 48.512539>,  <31.401764, 43.512093, 48.287121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600643, 43.248211, 48.512539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544944, -0.267981, -0.794495,
		0.675152, 0.702122, 0.226263,
		0.497198, -0.659705, 0.563545,
		31.749802, 43.050301, 48.681602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232162, 43.625099, 48.113358>,  <31.401764, 43.512093, 48.287121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232162, 43.625099, 48.113358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180279, 43.268780, 48.287560>,  <32.149147, 43.054989, 48.392078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180279, 43.268780, 48.287560>,  <32.232162, 43.625099, 48.113358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180279, 43.268780, 48.287560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685440, -0.397923, -0.609779,
		0.716483, 0.219415, 0.662200,
		-0.129710, -0.890794, 0.435501,
		32.141365, 43.001541, 48.418209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868443, 43.373367, 48.274548>,  <32.232162, 43.625099, 48.113358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868443, 43.373367, 48.274548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626377, 43.054928, 48.275856>,  <32.481140, 42.863865, 48.276642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626377, 43.054928, 48.275856>,  <32.868443, 43.373367, 48.274548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626377, 43.054928, 48.275856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612549, -0.468254, -0.636806,
		0.508491, -0.383367, 0.771017,
		-0.605162, -0.796096, 0.003272,
		32.444828, 42.816097, 48.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341488, 42.801270, 48.285309>,  <32.868443, 43.373367, 48.274548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341488, 42.801270, 48.285309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014118, 42.591316, 48.191780>,  <32.817696, 42.465343, 48.135662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014118, 42.591316, 48.191780>,  <33.341488, 42.801270, 48.285309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014118, 42.591316, 48.191780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537378, -0.555057, -0.634931,
		0.203478, -0.645297, 0.736334,
		-0.818426, -0.524884, -0.233826,
		32.768589, 42.433849, 48.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525723, 42.077305, 48.288891>,  <33.341488, 42.801270, 48.285309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525723, 42.077305, 48.288891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.199745, 42.116333, 48.060383>,  <33.004158, 42.139751, 47.923279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.199745, 42.116333, 48.060383>,  <33.525723, 42.077305, 48.288891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199745, 42.116333, 48.060383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352693, -0.698669, -0.622470,
		-0.459864, -0.708760, 0.534961,
		-0.814943, 0.097575, -0.571268,
		32.955261, 42.145607, 47.889004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314377, 41.394306, 48.058228>,  <33.525723, 42.077305, 48.288891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314377, 41.394306, 48.058228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137379, 41.619041, 47.778648>,  <33.031181, 41.753883, 47.610901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137379, 41.619041, 47.778648>,  <33.314377, 41.394306, 48.058228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137379, 41.619041, 47.778648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306928, -0.637454, -0.706716,
		-0.842612, -0.527246, 0.109625,
		-0.442494, 0.561840, -0.698953,
		33.004631, 41.787594, 47.568962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858929, 40.986217, 47.811779>,  <33.314377, 41.394306, 48.058228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858929, 40.986217, 47.811779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887180, 41.250301, 47.512680>,  <32.904133, 41.408752, 47.333221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887180, 41.250301, 47.512680>,  <32.858929, 40.986217, 47.811779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887180, 41.250301, 47.512680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098778, -0.750568, -0.653369,
		-0.992600, -0.027713, -0.118228,
		0.070632, 0.660212, -0.747751,
		32.908371, 41.448364, 47.288353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250050, 40.864376, 47.309238>,  <32.858929, 40.986217, 47.811779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250050, 40.864376, 47.309238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564346, 41.051971, 47.147911>,  <32.752926, 41.164528, 47.051117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564346, 41.051971, 47.147911>,  <32.250050, 40.864376, 47.309238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564346, 41.051971, 47.147911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062132, -0.588890, -0.805821,
		-0.615426, 0.658226, -0.433576,
		0.785742, 0.468985, -0.403315,
		32.800068, 41.192665, 47.026917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974655, 41.054211, 46.676773>,  <32.250050, 40.864376, 47.309238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974655, 41.054211, 46.676773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371151, 41.064125, 46.624886>,  <32.609047, 41.070072, 46.593754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371151, 41.064125, 46.624886>,  <31.974655, 41.054211, 46.676773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371151, 41.064125, 46.624886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102499, -0.475032, -0.873979,
		-0.083283, 0.879620, -0.468331,
		0.991241, 0.024784, -0.129722,
		32.668522, 41.071560, 46.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098331, 41.303623, 45.971294>,  <31.974655, 41.054211, 46.676773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098331, 41.303623, 45.971294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456070, 41.143471, 46.051128>,  <32.670715, 41.047379, 46.099030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456070, 41.143471, 46.051128>,  <32.098331, 41.303623, 45.971294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456070, 41.143471, 46.051128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072920, -0.309694, -0.948036,
		0.441385, 0.862430, -0.247779,
		0.894350, -0.400381, 0.199583,
		32.724377, 41.023357, 46.111004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605694, 41.496349, 45.457104>,  <32.098331, 41.303623, 45.971294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605694, 41.496349, 45.457104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771408, 41.173809, 45.625942>,  <32.870838, 40.980286, 45.727245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771408, 41.173809, 45.625942>,  <32.605694, 41.496349, 45.457104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771408, 41.173809, 45.625942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434602, -0.232216, -0.870170,
		0.799679, 0.543946, 0.254236,
		0.414288, -0.806349, 0.422099,
		32.895695, 40.931904, 45.752571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254990, 41.474312, 45.188374>,  <32.605694, 41.496349, 45.457104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254990, 41.474312, 45.188374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181274, 41.106422, 45.327023>,  <33.137047, 40.885689, 45.410213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181274, 41.106422, 45.327023>,  <33.254990, 41.474312, 45.188374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181274, 41.106422, 45.327023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281598, -0.387290, -0.877900,
		0.941669, -0.064178, 0.330365,
		-0.184289, -0.919721, 0.346627,
		33.125988, 40.830505, 45.431011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.212685, 40.051086, 32.150173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967968, 39.807415, 31.948338>,  <40.821136, 39.661213, 31.827236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967968, 39.807415, 31.948338>,  <41.212685, 40.051086, 32.150173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967968, 39.807415, 31.948338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204765, -0.494193, 0.844893,
		-0.764054, 0.620224, 0.177607,
		-0.611795, -0.609176, -0.504591,
		40.784431, 39.624660, 31.796961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635929, 39.888588, 32.613834>,  <41.212685, 40.051086, 32.150173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635929, 39.888588, 32.613834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655689, 39.585590, 32.353447>,  <40.667545, 39.403790, 32.197216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655689, 39.585590, 32.353447>,  <40.635929, 39.888588, 32.613834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655689, 39.585590, 32.353447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001423, -0.651815, 0.758376,
		-0.998778, -0.036535, -0.033276,
		0.049397, -0.757497, -0.650967,
		40.670509, 39.358341, 32.158157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370380, 39.356552, 32.993645>,  <40.635929, 39.888588, 32.613834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370380, 39.356552, 32.993645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524521, 39.129913, 32.702312>,  <40.617004, 38.993931, 32.527512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524521, 39.129913, 32.702312>,  <40.370380, 39.356552, 32.993645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524521, 39.129913, 32.702312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115396, -0.753506, 0.647235,
		-0.915528, -0.333457, -0.224978,
		0.385348, -0.566600, -0.728335,
		40.640125, 38.959934, 32.483810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984241, 38.635799, 33.117809>,  <40.370380, 39.356552, 32.993645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984241, 38.635799, 33.117809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342072, 38.645515, 32.939308>,  <40.556770, 38.651344, 32.832207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342072, 38.645515, 32.939308>,  <39.984241, 38.635799, 33.117809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342072, 38.645515, 32.939308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352637, -0.651781, 0.671438,
		-0.274546, -0.758018, -0.591636,
		0.894579, 0.024292, -0.446249,
		40.610447, 38.652802, 32.805435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156864, 37.973755, 33.214241>,  <39.984241, 38.635799, 33.117809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156864, 37.973755, 33.214241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495914, 38.169514, 33.132236>,  <40.699345, 38.286968, 33.083035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495914, 38.169514, 33.132236>,  <40.156864, 37.973755, 33.214241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495914, 38.169514, 33.132236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510355, -0.646250, 0.567361,
		0.145172, -0.585538, -0.797540,
		0.847622, 0.489393, -0.205015,
		40.750202, 38.316330, 33.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709843, 37.435917, 33.121983>,  <40.156864, 37.973755, 33.214241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709843, 37.435917, 33.121983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938457, 37.755863, 33.195259>,  <41.075626, 37.947830, 33.239227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938457, 37.755863, 33.195259>,  <40.709843, 37.435917, 33.121983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938457, 37.755863, 33.195259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498236, -0.515659, 0.697035,
		0.651998, -0.307110, -0.693240,
		0.571542, 0.799862, 0.183195,
		41.109921, 37.995823, 33.250217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405064, 37.164108, 33.124981>,  <40.709843, 37.435917, 33.121983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405064, 37.164108, 33.124981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399723, 37.516376, 33.314400>,  <41.396519, 37.727737, 33.428051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399723, 37.516376, 33.314400>,  <41.405064, 37.164108, 33.124981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399723, 37.516376, 33.314400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646282, -0.353768, 0.676142,
		0.762982, 0.315073, -0.564436,
		-0.013355, 0.880669, 0.473545,
		41.395718, 37.780579, 33.456463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108269, 37.178303, 33.435024>,  <41.405064, 37.164108, 33.124981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108269, 37.178303, 33.435024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951054, 37.494896, 33.622246>,  <41.856724, 37.684853, 33.734577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951054, 37.494896, 33.622246>,  <42.108269, 37.178303, 33.435024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951054, 37.494896, 33.622246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530116, -0.220872, 0.818653,
		0.751330, 0.569885, -0.332767,
		-0.393040, 0.791484, 0.468053,
		41.833141, 37.732342, 33.762661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650871, 37.610134, 33.821484>,  <42.108269, 37.178303, 33.435024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650871, 37.610134, 33.821484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300873, 37.683662, 34.000629>,  <42.090874, 37.727779, 34.108116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300873, 37.683662, 34.000629>,  <42.650871, 37.610134, 33.821484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300873, 37.683662, 34.000629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372312, -0.335814, 0.865224,
		0.309446, 0.923817, 0.225398,
		-0.875001, 0.183822, 0.447865,
		42.038372, 37.738808, 34.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789547, 38.033352, 34.435303>,  <42.650871, 37.610134, 33.821484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789547, 38.033352, 34.435303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426781, 37.884449, 34.514217>,  <42.209122, 37.795109, 34.561565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426781, 37.884449, 34.514217>,  <42.789547, 38.033352, 34.435303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426781, 37.884449, 34.514217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335258, -0.354079, 0.873058,
		-0.255143, 0.857936, 0.445923,
		-0.906920, -0.372254, 0.197289,
		42.154705, 37.772774, 34.573402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717201, 38.239891, 35.129871>,  <42.789547, 38.033352, 34.435303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717201, 38.239891, 35.129871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.447647, 37.948414, 35.081074>,  <42.285915, 37.773529, 35.051796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.447647, 37.948414, 35.081074>,  <42.717201, 38.239891, 35.129871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447647, 37.948414, 35.081074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285177, -0.408857, 0.866897,
		-0.681579, 0.549402, 0.483330,
		-0.673888, -0.728693, -0.121991,
		42.245480, 37.729805, 35.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332832, 38.176460, 35.728107>,  <42.717201, 38.239891, 35.129871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332832, 38.176460, 35.728107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282394, 37.825237, 35.543446>,  <42.252132, 37.614506, 35.432648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282394, 37.825237, 35.543446>,  <42.332832, 38.176460, 35.728107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282394, 37.825237, 35.543446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278553, -0.477984, 0.833031,
		-0.952108, -0.023557, 0.304854,
		-0.126092, -0.878053, -0.461654,
		42.244568, 37.561821, 35.404949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918983, 37.769455, 36.178280>,  <42.332832, 38.176460, 35.728107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918983, 37.769455, 36.178280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.108086, 37.509003, 35.940781>,  <42.221546, 37.352730, 35.798283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.108086, 37.509003, 35.940781>,  <41.918983, 37.769455, 36.178280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108086, 37.509003, 35.940781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165380, -0.596264, 0.785569,
		-0.865537, -0.469574, -0.174202,
		0.472753, -0.651130, -0.593746,
		42.249912, 37.313663, 35.762657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634552, 37.077835, 36.239090>,  <41.918983, 37.769455, 36.178280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634552, 37.077835, 36.239090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990368, 37.008720, 36.069920>,  <42.203857, 36.967251, 35.968418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990368, 37.008720, 36.069920>,  <41.634552, 37.077835, 36.239090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990368, 37.008720, 36.069920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212604, -0.662809, 0.717972,
		-0.404374, -0.728580, -0.552859,
		0.889540, -0.172789, -0.422922,
		42.257229, 36.956882, 35.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758938, 36.442650, 36.558872>,  <41.634552, 37.077835, 36.239090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758938, 36.442650, 36.558872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111603, 36.534344, 36.393887>,  <42.323200, 36.589359, 36.294895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111603, 36.534344, 36.393887>,  <41.758938, 36.442650, 36.558872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111603, 36.534344, 36.393887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430624, -0.748283, 0.504615,
		-0.192967, -0.622517, -0.758444,
		0.881662, 0.229230, -0.412464,
		42.376102, 36.603111, 36.270149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976955, 35.772739, 36.262459>,  <41.758938, 36.442650, 36.558872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976955, 35.772739, 36.262459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289413, 36.016247, 36.317905>,  <42.476887, 36.162350, 36.351173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289413, 36.016247, 36.317905>,  <41.976955, 35.772739, 36.262459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289413, 36.016247, 36.317905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549425, -0.775701, 0.310516,
		0.296561, -0.166395, -0.940407,
		0.781143, 0.608770, 0.138621,
		42.523758, 36.198879, 36.359493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620815, 35.375507, 36.138096>,  <41.976955, 35.772739, 36.262459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620815, 35.375507, 36.138096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768459, 35.680431, 36.350750>,  <42.857048, 35.863384, 36.478344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768459, 35.680431, 36.350750>,  <42.620815, 35.375507, 36.138096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768459, 35.680431, 36.350750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659415, -0.617916, 0.428196,
		0.654926, 0.192518, -0.730759,
		0.369112, 0.762310, 0.531638,
		42.879192, 35.909126, 36.510242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375244, 35.350796, 36.005543>,  <42.620815, 35.375507, 36.138096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375244, 35.350796, 36.005543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296482, 35.533607, 36.352497>,  <43.249226, 35.643295, 36.560669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296482, 35.533607, 36.352497>,  <43.375244, 35.350796, 36.005543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296482, 35.533607, 36.352497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728545, -0.523826, 0.441394,
		0.656087, 0.718841, -0.229821,
		-0.196906, 0.457028, 0.867383,
		43.237411, 35.670715, 36.612713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012848, 35.517338, 36.169575>,  <43.375244, 35.350796, 36.005543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012848, 35.517338, 36.169575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780659, 35.560493, 36.492413>,  <43.641346, 35.586388, 36.686115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780659, 35.560493, 36.492413>,  <44.012848, 35.517338, 36.169575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780659, 35.560493, 36.492413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588714, -0.629160, 0.507517,
		0.562551, 0.769751, 0.301694,
		-0.580475, 0.107893, 0.807098,
		43.606518, 35.592861, 36.734543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523575, 35.469719, 36.707478>,  <44.012848, 35.517338, 36.169575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523575, 35.469719, 36.707478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164871, 35.392399, 36.866703>,  <43.949650, 35.346004, 36.962238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164871, 35.392399, 36.866703>,  <44.523575, 35.469719, 36.707478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164871, 35.392399, 36.866703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412306, -0.691671, 0.592955,
		0.160712, 0.695863, 0.699961,
		-0.896758, -0.193303, 0.398068,
		43.895844, 35.334408, 36.986122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612968, 35.446003, 37.393089>,  <44.523575, 35.469719, 36.707478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612968, 35.446003, 37.393089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269032, 35.253372, 37.325256>,  <44.062672, 35.137794, 37.284557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269032, 35.253372, 37.325256>,  <44.612968, 35.446003, 37.393089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269032, 35.253372, 37.325256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270915, -0.711871, 0.647954,
		-0.432760, 0.511195, 0.742562,
		-0.859840, -0.481580, -0.169579,
		44.011078, 35.108898, 37.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142689, 35.894844, 37.068600>,  <44.612968, 35.446003, 37.393089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142689, 35.894844, 37.068600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392906, 35.709148, 36.817783>,  <45.543037, 35.597733, 36.667294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392906, 35.709148, 36.817783>,  <45.142689, 35.894844, 37.068600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392906, 35.709148, 36.817783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371425, 0.529581, -0.762619,
		0.686103, 0.709950, 0.158848,
		0.625545, -0.464235, -0.627041,
		45.580570, 35.569878, 36.629673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482525, 36.361675, 36.719421>,  <45.142689, 35.894844, 37.068600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482525, 36.361675, 36.719421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537930, 36.049973, 36.474937>,  <45.571171, 35.862953, 36.328247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537930, 36.049973, 36.474937>,  <45.482525, 36.361675, 36.719421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537930, 36.049973, 36.474937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325780, 0.546960, -0.771169,
		0.935244, 0.305936, -0.178105,
		0.138512, -0.779254, -0.611209,
		45.579483, 35.816196, 36.291576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839203, 36.690613, 36.226662>,  <45.482525, 36.361675, 36.719421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839203, 36.690613, 36.226662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682083, 36.368149, 36.049656>,  <45.587811, 36.174671, 35.943451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682083, 36.368149, 36.049656>,  <45.839203, 36.690613, 36.226662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682083, 36.368149, 36.049656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094346, 0.513978, -0.852599,
		0.914773, -0.293147, -0.277947,
		-0.392796, -0.806158, -0.442516,
		45.564243, 36.126301, 35.916901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072124, 36.811928, 35.546467>,  <45.839203, 36.690613, 36.226662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072124, 36.811928, 35.546467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776264, 36.545887, 35.505371>,  <45.598747, 36.386261, 35.480713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776264, 36.545887, 35.505371>,  <46.072124, 36.811928, 35.546467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776264, 36.545887, 35.505371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210554, 0.373688, -0.903341,
		0.639210, -0.646522, -0.416438,
		-0.739647, -0.665107, -0.102737,
		45.554371, 36.346355, 35.474548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059479, 36.720062, 34.925106>,  <46.072124, 36.811928, 35.546467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059479, 36.720062, 34.925106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699879, 36.565804, 35.008121>,  <45.484119, 36.473248, 35.057930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699879, 36.565804, 35.008121>,  <46.059479, 36.720062, 34.925106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699879, 36.565804, 35.008121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357043, 0.370995, -0.857253,
		0.253600, -0.844773, -0.471218,
		-0.899003, -0.385644, 0.207536,
		45.430180, 36.450111, 35.070381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803677, 36.431831, 34.291615>,  <46.059479, 36.720062, 34.925106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803677, 36.431831, 34.291615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469559, 36.493275, 34.502781>,  <45.269089, 36.530140, 34.629478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469559, 36.493275, 34.502781>,  <45.803677, 36.431831, 34.291615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469559, 36.493275, 34.502781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367808, 0.557568, -0.744201,
		-0.408665, -0.815795, -0.409233,
		-0.835291, 0.153610, 0.527914,
		45.218971, 36.539356, 34.661156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233112, 36.371563, 33.774879>,  <45.803677, 36.431831, 34.291615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233112, 36.371563, 33.774879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080948, 36.546906, 34.100609>,  <44.989651, 36.652111, 34.296047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080948, 36.546906, 34.100609>,  <45.233112, 36.371563, 33.774879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080948, 36.546906, 34.100609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667004, 0.479893, -0.569920,
		-0.640619, -0.759963, 0.109831,
		-0.380411, 0.438359, 0.814327,
		44.966824, 36.678413, 34.344906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512592, 36.340805, 33.685616>,  <45.233112, 36.371563, 33.774879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512592, 36.340805, 33.685616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594582, 36.646706, 33.929955>,  <44.643776, 36.830246, 34.076557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594582, 36.646706, 33.929955>,  <44.512592, 36.340805, 33.685616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594582, 36.646706, 33.929955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678397, 0.560875, -0.474549,
		-0.705522, -0.317124, 0.633775,
		0.204978, 0.764756, 0.610846,
		44.656075, 36.876133, 34.113209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845310, 36.754795, 33.721497>,  <44.512592, 36.340805, 33.685616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845310, 36.754795, 33.721497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159061, 36.974915, 33.835983>,  <44.347313, 37.106987, 33.904675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159061, 36.974915, 33.835983>,  <43.845310, 36.754795, 33.721497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159061, 36.974915, 33.835983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384904, 0.793665, -0.471110,
		-0.486415, 0.259361, 0.834346,
		0.784378, 0.550298, 0.286221,
		44.394375, 37.140003, 33.921848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626839, 37.479195, 33.722630>,  <43.845310, 36.754795, 33.721497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626839, 37.479195, 33.722630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025028, 37.513176, 33.705620>,  <44.263943, 37.533566, 33.695412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025028, 37.513176, 33.705620>,  <43.626839, 37.479195, 33.722630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025028, 37.513176, 33.705620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089278, 0.683458, -0.724510,
		-0.032485, 0.725030, 0.687951,
		0.995477, 0.084955, -0.042527,
		44.323669, 37.538662, 33.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737770, 38.189110, 33.770267>,  <43.626839, 37.479195, 33.722630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737770, 38.189110, 33.770267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051140, 38.033775, 33.576176>,  <44.239162, 37.940575, 33.459721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051140, 38.033775, 33.576176>,  <43.737770, 38.189110, 33.770267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051140, 38.033775, 33.576176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102091, 0.689730, -0.716833,
		0.613048, 0.611120, 0.500704,
		0.783422, -0.388336, -0.485227,
		44.286167, 37.917274, 33.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085827, 38.748180, 33.638725>,  <43.737770, 38.189110, 33.770267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085827, 38.748180, 33.638725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191406, 38.449913, 33.394001>,  <44.254753, 38.270954, 33.247166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191406, 38.449913, 33.394001>,  <44.085827, 38.748180, 33.638725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191406, 38.449913, 33.394001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181702, 0.584509, -0.790781,
		0.947268, 0.319890, 0.018789,
		0.263945, -0.745667, -0.611811,
		44.270588, 38.226212, 33.210457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379101, 39.069626, 33.140518>,  <44.085827, 38.748180, 33.638725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379101, 39.069626, 33.140518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323170, 38.717907, 32.958405>,  <44.289612, 38.506878, 32.849136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323170, 38.717907, 32.958405>,  <44.379101, 39.069626, 33.140518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323170, 38.717907, 32.958405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267462, 0.476254, -0.837643,
		0.953369, 0.004648, -0.301771,
		-0.139827, -0.879296, -0.455289,
		44.281223, 38.454117, 32.821819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751995, 39.057995, 32.561089>,  <44.379101, 39.069626, 33.140518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751995, 39.057995, 32.561089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454948, 38.794628, 32.512093>,  <44.276722, 38.636608, 32.482693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454948, 38.794628, 32.512093>,  <44.751995, 39.057995, 32.561089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454948, 38.794628, 32.512093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272447, 0.464090, -0.842848,
		0.611797, -0.592538, -0.524026,
		-0.742615, -0.658421, -0.122494,
		44.232162, 38.597103, 32.475346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635269, 39.058033, 31.837473>,  <44.751995, 39.057995, 32.561089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635269, 39.058033, 31.837473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308975, 38.857132, 31.952242>,  <44.113201, 38.736591, 32.021103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308975, 38.857132, 31.952242>,  <44.635269, 39.058033, 31.837473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308975, 38.857132, 31.952242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547138, 0.509040, -0.664468,
		0.187678, -0.699013, -0.690042,
		-0.815731, -0.502255, 0.286921,
		44.064255, 38.706455, 32.038319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369503, 38.805531, 31.182810>,  <44.635269, 39.058033, 31.837473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369503, 38.805531, 31.182810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059940, 38.797455, 31.436001>,  <43.874203, 38.792610, 31.587915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059940, 38.797455, 31.436001>,  <44.369503, 38.805531, 31.182810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059940, 38.797455, 31.436001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594534, 0.367468, -0.715190,
		-0.218162, -0.929817, -0.296387,
		-0.773908, -0.020184, 0.632976,
		43.827766, 38.791401, 31.625893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817299, 38.774319, 30.712370>,  <44.369503, 38.805531, 31.182810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817299, 38.774319, 30.712370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639896, 38.865562, 31.059072>,  <43.533455, 38.920307, 31.267094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639896, 38.865562, 31.059072>,  <43.817299, 38.774319, 30.712370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639896, 38.865562, 31.059072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787558, 0.362460, -0.498373,
		-0.427849, -0.903653, 0.018897,
		-0.443507, 0.228110, 0.866757,
		43.506844, 38.933994, 31.319099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190544, 38.571236, 30.666754>,  <43.817299, 38.774319, 30.712370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190544, 38.571236, 30.666754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.176605, 38.851818, 30.951500>,  <43.168243, 39.020168, 31.122347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.176605, 38.851818, 30.951500>,  <43.190544, 38.571236, 30.666754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176605, 38.851818, 30.951500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717077, 0.478598, -0.506700,
		-0.696122, -0.528119, 0.486317,
		-0.034848, 0.701452, 0.711865,
		43.166149, 39.062252, 31.165060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483910, 38.619183, 30.910769>,  <43.190544, 38.571236, 30.666754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483910, 38.619183, 30.910769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675686, 38.959675, 30.996136>,  <42.790752, 39.163971, 31.047356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675686, 38.959675, 30.996136>,  <42.483910, 38.619183, 30.910769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675686, 38.959675, 30.996136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752668, 0.523904, -0.398767,
		-0.451253, 0.030551, 0.891873,
		0.479439, 0.851230, 0.213418,
		42.819519, 39.215042, 31.060162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922279, 39.140450, 31.095644>,  <42.483910, 38.619183, 30.910769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922279, 39.140450, 31.095644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248966, 39.356960, 31.015650>,  <42.444977, 39.486866, 30.967653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248966, 39.356960, 31.015650>,  <41.922279, 39.140450, 31.095644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248966, 39.356960, 31.015650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564557, 0.677815, -0.471001,
		-0.119388, 0.497577, 0.859164,
		0.816714, 0.541279, -0.199988,
		42.493980, 39.519344, 30.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779545, 39.776985, 31.286720>,  <41.922279, 39.140450, 31.095644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779545, 39.776985, 31.286720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068199, 39.814770, 31.012400>,  <42.241390, 39.837440, 30.847807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068199, 39.814770, 31.012400>,  <41.779545, 39.776985, 31.286720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068199, 39.814770, 31.012400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517896, 0.731038, -0.444261,
		0.459378, 0.675766, 0.576464,
		0.721634, 0.094465, -0.685799,
		42.284691, 39.843109, 30.806660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.600105, 40.286659, 40.820499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346859, 40.053375, 41.024078>,  <37.194912, 39.913403, 41.146225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346859, 40.053375, 41.024078>,  <37.600105, 40.286659, 40.820499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346859, 40.053375, 41.024078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073052, -0.699590, -0.710800,
		0.770601, -0.412840, 0.485528,
		-0.633117, -0.583212, 0.508946,
		37.156925, 39.878410, 41.176762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906422, 39.612576, 40.817825>,  <37.600105, 40.286659, 40.820499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906422, 39.612576, 40.817825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522839, 39.541706, 40.906387>,  <37.292690, 39.499184, 40.959522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522839, 39.541706, 40.906387>,  <37.906422, 39.612576, 40.817825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522839, 39.541706, 40.906387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003679, -0.788490, -0.615037,
		0.283539, -0.588978, 0.756777,
		-0.958954, -0.177171, 0.221400,
		37.235153, 39.488556, 40.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926243, 38.910580, 40.836792>,  <37.906422, 39.612576, 40.817825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926243, 38.910580, 40.836792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541527, 39.011089, 40.793312>,  <37.310696, 39.071396, 40.767223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541527, 39.011089, 40.793312>,  <37.926243, 38.910580, 40.836792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541527, 39.011089, 40.793312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123550, -0.752670, -0.646702,
		-0.244308, -0.608566, 0.754958,
		-0.961794, 0.251270, -0.108695,
		37.252987, 39.086472, 40.760704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518703, 38.229233, 40.878460>,  <37.926243, 38.910580, 40.836792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518703, 38.229233, 40.878460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294415, 38.483707, 40.666473>,  <37.159840, 38.636391, 40.539284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294415, 38.483707, 40.666473>,  <37.518703, 38.229233, 40.878460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294415, 38.483707, 40.666473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260870, -0.743187, -0.616133,
		-0.785833, -0.207231, 0.582685,
		-0.560726, 0.636182, -0.529960,
		37.126198, 38.674561, 40.507484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013718, 37.855965, 40.749569>,  <37.518703, 38.229233, 40.878460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013718, 37.855965, 40.749569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996693, 38.152706, 40.481888>,  <36.986477, 38.330753, 40.321278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996693, 38.152706, 40.481888>,  <37.013718, 37.855965, 40.749569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996693, 38.152706, 40.481888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304148, -0.647641, -0.698609,
		-0.951674, 0.173806, 0.253197,
		-0.042558, 0.741857, -0.669206,
		36.983925, 38.375263, 40.281124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295055, 37.822075, 40.422955>,  <37.013718, 37.855965, 40.749569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295055, 37.822075, 40.422955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541100, 38.020092, 40.177490>,  <36.688725, 38.138901, 40.030212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541100, 38.020092, 40.177490>,  <36.295055, 37.822075, 40.422955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541100, 38.020092, 40.177490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289535, -0.582114, -0.759811,
		-0.733358, 0.645040, -0.214730,
		0.615106, 0.495042, -0.613660,
		36.725632, 38.168606, 39.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926922, 37.915707, 39.879002>,  <36.295055, 37.822075, 40.422955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926922, 37.915707, 39.879002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296310, 37.958443, 39.731602>,  <36.517944, 37.984085, 39.643162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296310, 37.958443, 39.731602>,  <35.926922, 37.915707, 39.879002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296310, 37.958443, 39.731602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252531, -0.553824, -0.793414,
		-0.288855, 0.825750, -0.484458,
		0.923467, 0.106841, -0.368503,
		36.573349, 37.990494, 39.621052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694504, 38.107803, 39.141491>,  <35.926922, 37.915707, 39.879002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694504, 38.107803, 39.141491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083076, 38.015270, 39.120285>,  <36.316219, 37.959751, 39.107563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083076, 38.015270, 39.120285>,  <35.694504, 38.107803, 39.141491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083076, 38.015270, 39.120285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134893, -0.354413, -0.925308,
		0.195265, 0.906023, -0.375492,
		0.971430, -0.231332, -0.053011,
		36.374504, 37.945869, 39.104382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011887, 38.377750, 38.500038>,  <35.694504, 38.107803, 39.141491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011887, 38.377750, 38.500038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223969, 38.058731, 38.615143>,  <36.351215, 37.867321, 38.684204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223969, 38.058731, 38.615143>,  <36.011887, 38.377750, 38.500038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223969, 38.058731, 38.615143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078301, -0.383999, -0.920007,
		0.844249, 0.465257, -0.266045,
		0.530201, -0.797547, 0.287761,
		36.383030, 37.819466, 38.701469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328999, 38.242680, 37.841820>,  <36.011887, 38.377750, 38.500038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328999, 38.242680, 37.841820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374298, 37.916889, 38.069435>,  <36.401478, 37.721416, 38.206005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374298, 37.916889, 38.069435>,  <36.328999, 38.242680, 37.841820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374298, 37.916889, 38.069435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110316, -0.579488, -0.807480,
		0.987424, 0.028672, -0.155475,
		0.113248, -0.814476, 0.569037,
		36.408272, 37.672546, 38.240147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704094, 37.737377, 37.421371>,  <36.328999, 38.242680, 37.841820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704094, 37.737377, 37.421371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542873, 37.517365, 37.713951>,  <36.446140, 37.385357, 37.889500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542873, 37.517365, 37.713951>,  <36.704094, 37.737377, 37.421371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542873, 37.517365, 37.713951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131419, -0.756171, -0.641042,
		0.905694, -0.354497, 0.232488,
		-0.403048, -0.550035, 0.731447,
		36.421959, 37.352356, 37.933384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973042, 37.129601, 37.280014>,  <36.704094, 37.737377, 37.421371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973042, 37.129601, 37.280014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684319, 37.016361, 37.532631>,  <36.511086, 36.948418, 37.684200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684319, 37.016361, 37.532631>,  <36.973042, 37.129601, 37.280014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684319, 37.016361, 37.532631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052917, -0.887266, -0.458213,
		0.690065, -0.364163, 0.625457,
		-0.721810, -0.283099, 0.631541,
		36.467777, 36.931431, 37.722092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162830, 36.378426, 37.480831>,  <36.973042, 37.129601, 37.280014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162830, 36.378426, 37.480831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779888, 36.482883, 37.530281>,  <36.550125, 36.545559, 37.559952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779888, 36.482883, 37.530281>,  <37.162830, 36.378426, 37.480831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779888, 36.482883, 37.530281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282404, -0.755349, -0.591351,
		-0.061049, -0.601043, 0.796882,
		-0.957351, 0.261144, 0.123623,
		36.492683, 36.561226, 37.567368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603485, 35.952724, 37.894627>,  <37.162830, 36.378426, 37.480831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603485, 35.952724, 37.894627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856621, 35.649658, 37.958450>,  <38.008503, 35.467819, 37.996746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856621, 35.649658, 37.958450>,  <37.603485, 35.952724, 37.894627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856621, 35.649658, 37.958450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137659, 0.092696, 0.986133,
		-0.761950, -0.646026, -0.045638,
		0.632837, -0.757666, 0.159561,
		38.046471, 35.422359, 38.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215267, 35.576092, 38.365276>,  <37.603485, 35.952724, 37.894627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215267, 35.576092, 38.365276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604664, 35.493862, 38.405403>,  <37.838303, 35.444527, 38.429478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604664, 35.493862, 38.405403>,  <37.215267, 35.576092, 38.365276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604664, 35.493862, 38.405403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101503, 0.004776, 0.994824,
		-0.204984, -0.978631, -0.016216,
		0.973488, -0.205569, 0.100313,
		37.896709, 35.432190, 38.435497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175426, 35.050503, 38.774334>,  <37.215267, 35.576092, 38.365276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175426, 35.050503, 38.774334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547287, 35.193401, 38.810402>,  <37.770401, 35.279140, 38.832043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547287, 35.193401, 38.810402>,  <37.175426, 35.050503, 38.774334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547287, 35.193401, 38.810402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145641, 0.131496, 0.980560,
		0.338443, -0.924708, 0.174275,
		0.929648, 0.357245, 0.090171,
		37.826183, 35.300575, 38.837452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428585, 34.767757, 39.405067>,  <37.175426, 35.050503, 38.774334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428585, 34.767757, 39.405067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665028, 35.083248, 39.337528>,  <37.806892, 35.272541, 39.297005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665028, 35.083248, 39.337528>,  <37.428585, 34.767757, 39.405067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665028, 35.083248, 39.337528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043334, 0.177976, 0.983080,
		0.805429, -0.588421, 0.071024,
		0.591106, 0.788724, -0.168845,
		37.842358, 35.319866, 39.286873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013508, 34.664150, 39.912628>,  <37.428585, 34.767757, 39.405067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013508, 34.664150, 39.912628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985729, 35.047707, 39.802570>,  <37.969063, 35.277840, 39.736538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985729, 35.047707, 39.802570>,  <38.013508, 34.664150, 39.912628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985729, 35.047707, 39.802570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141145, 0.282477, 0.948833,
		0.987550, 0.027060, -0.154960,
		-0.069448, 0.958892, -0.275141,
		37.964893, 35.335373, 39.720028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516941, 35.012745, 40.353035>,  <38.013508, 34.664150, 39.912628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516941, 35.012745, 40.353035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229893, 35.265942, 40.236870>,  <38.057663, 35.417862, 40.167171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229893, 35.265942, 40.236870>,  <38.516941, 35.012745, 40.353035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229893, 35.265942, 40.236870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027794, 0.390631, 0.920128,
		0.695878, 0.668376, -0.262732,
		-0.717622, 0.632994, -0.290408,
		38.014606, 35.455841, 40.149746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780548, 35.565788, 40.685696>,  <38.516941, 35.012745, 40.353035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780548, 35.565788, 40.685696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408630, 35.667870, 40.579597>,  <38.185482, 35.729118, 40.515938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408630, 35.667870, 40.579597>,  <38.780548, 35.565788, 40.685696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408630, 35.667870, 40.579597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105800, 0.504906, 0.856665,
		0.352552, 0.824584, -0.442457,
		-0.929792, 0.255207, -0.265247,
		38.129692, 35.744431, 40.500023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698223, 36.268429, 40.792458>,  <38.780548, 35.565788, 40.685696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698223, 36.268429, 40.792458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337143, 36.098553, 40.820068>,  <38.120495, 35.996628, 40.836636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337143, 36.098553, 40.820068>,  <38.698223, 36.268429, 40.792458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337143, 36.098553, 40.820068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199640, 0.555539, 0.807168,
		-0.381144, 0.714853, -0.586272,
		-0.902704, -0.424690, 0.069027,
		38.066330, 35.971146, 40.840778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474449, 36.790756, 41.115063>,  <38.698223, 36.268429, 40.792458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474449, 36.790756, 41.115063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182854, 36.518909, 41.147781>,  <38.007896, 36.355801, 41.167412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182854, 36.518909, 41.147781>,  <38.474449, 36.790756, 41.115063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182854, 36.518909, 41.147781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266644, 0.391989, 0.880481,
		-0.630453, 0.620054, -0.466973,
		-0.728993, -0.679617, 0.081797,
		37.964157, 36.315025, 41.172321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955921, 37.176788, 41.442257>,  <38.474449, 36.790756, 41.115063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955921, 37.176788, 41.442257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843391, 36.799248, 41.511547>,  <37.775875, 36.572723, 41.553120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843391, 36.799248, 41.511547>,  <37.955921, 37.176788, 41.442257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843391, 36.799248, 41.511547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343329, 0.267562, 0.900298,
		-0.896093, 0.193802, -0.399322,
		-0.281323, -0.943849, 0.173223,
		37.758995, 36.516094, 41.563515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330269, 37.292542, 41.828060>,  <37.955921, 37.176788, 41.442257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330269, 37.292542, 41.828060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386250, 36.903690, 41.903309>,  <37.419838, 36.670380, 41.948456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386250, 36.903690, 41.903309>,  <37.330269, 37.292542, 41.828060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386250, 36.903690, 41.903309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326199, 0.134117, 0.935739,
		-0.934884, -0.192322, -0.298336,
		0.139951, -0.972124, 0.188119,
		37.428234, 36.612053, 41.959743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691917, 37.046429, 42.228127>,  <37.330269, 37.292542, 41.828060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691917, 37.046429, 42.228127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024246, 36.832977, 42.291340>,  <37.223644, 36.704906, 42.329269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024246, 36.832977, 42.291340>,  <36.691917, 37.046429, 42.228127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024246, 36.832977, 42.291340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160909, 0.041511, 0.986096,
		-0.532767, -0.844701, -0.051377,
		0.830823, -0.533626, 0.158036,
		37.273495, 36.672890, 42.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531368, 36.508617, 42.618156>,  <36.691917, 37.046429, 42.228127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531368, 36.508617, 42.618156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922970, 36.556137, 42.684410>,  <37.157932, 36.584648, 42.724163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922970, 36.556137, 42.684410>,  <36.531368, 36.508617, 42.618156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922970, 36.556137, 42.684410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153185, -0.107293, 0.982356,
		0.134476, -0.987104, -0.086842,
		0.979005, 0.118800, 0.165638,
		37.216671, 36.591778, 42.734100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615234, 35.985626, 43.223324>,  <36.531368, 36.508617, 42.618156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615234, 35.985626, 43.223324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941463, 36.217083, 43.222149>,  <37.137203, 36.355957, 43.221443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941463, 36.217083, 43.222149>,  <36.615234, 35.985626, 43.223324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941463, 36.217083, 43.222149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046329, 0.070364, 0.996445,
		0.576792, -0.812541, 0.084195,
		0.815577, 0.578642, -0.002941,
		37.186138, 36.390675, 43.221268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019611, 35.741230, 43.793797>,  <36.615234, 35.985626, 43.223324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019611, 35.741230, 43.793797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185501, 36.100945, 43.738235>,  <37.285034, 36.316772, 43.704899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185501, 36.100945, 43.738235>,  <37.019611, 35.741230, 43.793797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185501, 36.100945, 43.738235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009696, 0.157006, 0.987550,
		0.909898, -0.408210, 0.073833,
		0.414720, 0.899285, -0.138901,
		37.309917, 36.370731, 43.696564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362610, 35.107845, 44.188641>,  <37.019611, 35.741230, 43.793797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362610, 35.107845, 44.188641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075172, 34.840660, 44.266041>,  <36.902710, 34.680347, 44.312481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075172, 34.840660, 44.266041>,  <37.362610, 35.107845, 44.188641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075172, 34.840660, 44.266041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303599, -0.551663, -0.776850,
		0.625655, -0.499495, 0.599217,
		-0.718598, -0.667962, 0.193505,
		36.859592, 34.640270, 44.324093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706390, 34.500080, 43.966358>,  <37.362610, 35.107845, 44.188641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706390, 34.500080, 43.966358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322414, 34.397369, 44.011230>,  <37.092030, 34.335743, 44.038155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322414, 34.397369, 44.011230>,  <37.706390, 34.500080, 43.966358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322414, 34.397369, 44.011230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032223, -0.498850, -0.866089,
		0.278352, -0.827777, 0.487139,
		-0.959938, -0.256775, 0.112182,
		37.034431, 34.320335, 44.044884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587845, 33.671940, 43.755737>,  <37.706390, 34.500080, 43.966358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587845, 33.671940, 43.755737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234844, 33.858227, 43.729488>,  <37.023045, 33.969997, 43.713737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234844, 33.858227, 43.729488>,  <37.587845, 33.671940, 43.755737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234844, 33.858227, 43.729488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159823, -0.428187, -0.889445,
		-0.442339, -0.774440, 0.452305,
		-0.882493, 0.465725, -0.065630,
		36.970093, 33.997940, 43.709801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044788, 33.144157, 43.797565>,  <37.587845, 33.671940, 43.755737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044788, 33.144157, 43.797565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899612, 33.458992, 43.598061>,  <36.812508, 33.647892, 43.478359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899612, 33.458992, 43.598061>,  <37.044788, 33.144157, 43.797565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899612, 33.458992, 43.598061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314536, -0.607329, -0.729533,
		-0.877121, -0.107898, 0.467992,
		-0.362940, 0.787090, -0.498763,
		36.790730, 33.695118, 43.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635651, 32.814205, 43.418430>,  <37.044788, 33.144157, 43.797565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635651, 32.814205, 43.418430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597763, 33.182774, 43.267696>,  <36.575031, 33.403915, 43.177254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597763, 33.182774, 43.267696>,  <36.635651, 32.814205, 43.418430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597763, 33.182774, 43.267696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378810, -0.383421, -0.842313,
		-0.920615, 0.062971, 0.385361,
		-0.094714, 0.921424, -0.376837,
		36.569347, 33.459202, 43.154644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950016, 32.825298, 43.226227>,  <36.635651, 32.814205, 43.418430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950016, 32.825298, 43.226227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128571, 33.118683, 43.021179>,  <36.235703, 33.294712, 42.898151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128571, 33.118683, 43.021179>,  <35.950016, 32.825298, 43.226227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128571, 33.118683, 43.021179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434829, -0.322891, -0.840634,
		-0.782091, 0.598147, 0.174796,
		0.446383, 0.733459, -0.512622,
		36.262486, 33.338722, 42.867393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446743, 33.035728, 42.622589>,  <35.950016, 32.825298, 43.226227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446743, 33.035728, 42.622589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812336, 33.140610, 42.498726>,  <36.031693, 33.203541, 42.424408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812336, 33.140610, 42.498726>,  <35.446743, 33.035728, 42.622589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812336, 33.140610, 42.498726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239146, -0.268419, -0.933145,
		-0.327794, 0.926930, -0.182625,
		0.913980, 0.262206, -0.309658,
		36.086529, 33.219273, 42.405827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364414, 33.380795, 41.959442>,  <35.446743, 33.035728, 42.622589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364414, 33.380795, 41.959442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747116, 33.268593, 41.990253>,  <35.976738, 33.201271, 42.008739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747116, 33.268593, 41.990253>,  <35.364414, 33.380795, 41.959442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747116, 33.268593, 41.990253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017880, -0.207597, -0.978051,
		0.290341, 0.937133, -0.193605,
		0.956756, -0.280507, 0.077030,
		36.034142, 33.184441, 42.013363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758579, 33.839069, 41.515297>,  <35.364414, 33.380795, 41.959442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758579, 33.839069, 41.515297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981422, 33.509087, 41.553391>,  <36.115128, 33.311096, 41.576248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981422, 33.509087, 41.553391>,  <35.758579, 33.839069, 41.515297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981422, 33.509087, 41.553391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093126, -0.176019, -0.979972,
		0.825200, 0.537085, -0.174888,
		0.557111, -0.824959, 0.095234,
		36.148556, 33.261600, 41.581963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276199, 33.806709, 40.952503>,  <35.758579, 33.839069, 41.515297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276199, 33.806709, 40.952503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282013, 33.416622, 41.040806>,  <36.285503, 33.182568, 41.093788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282013, 33.416622, 41.040806>,  <36.276199, 33.806709, 40.952503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282013, 33.416622, 41.040806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117197, -0.220917, -0.968226,
		0.993002, -0.011797, -0.117504,
		0.014536, -0.975221, 0.220754,
		36.286373, 33.124054, 41.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654114, 33.547871, 40.385521>,  <36.276199, 33.806709, 40.952503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654114, 33.547871, 40.385521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461391, 33.232716, 40.538929>,  <36.345757, 33.043621, 40.630974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461391, 33.232716, 40.538929>,  <36.654114, 33.547871, 40.385521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461391, 33.232716, 40.538929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093762, -0.388804, -0.916537,
		0.871245, -0.477556, 0.113456,
		-0.481810, -0.787890, 0.383520,
		36.316849, 32.996349, 40.653984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120701, 33.047050, 40.303402>,  <36.654114, 33.547871, 40.385521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120701, 33.047050, 40.303402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735123, 32.940784, 40.309422>,  <36.503777, 32.877026, 40.313034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735123, 32.940784, 40.309422>,  <37.120701, 33.047050, 40.303402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735123, 32.940784, 40.309422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111955, -0.456229, -0.882792,
		0.241397, -0.849279, 0.469523,
		-0.963947, -0.265669, 0.015051,
		36.445938, 32.861084, 40.313938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.613163, 36.087021, 47.604744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.231030, 35.987854, 47.669090>,  <37.001751, 35.928352, 47.707699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.231030, 35.987854, 47.669090>,  <37.613163, 36.087021, 47.604744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231030, 35.987854, 47.669090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006617, -0.526239, -0.850311,
		0.295465, -0.813393, 0.501092,
		-0.955331, -0.247921, 0.160867,
		36.944431, 35.913479, 47.717350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543858, 35.332226, 47.574093>,  <37.613163, 36.087021, 47.604744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543858, 35.332226, 47.574093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176331, 35.467255, 47.492294>,  <36.955814, 35.548271, 47.443214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176331, 35.467255, 47.492294>,  <37.543858, 35.332226, 47.574093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176331, 35.467255, 47.492294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081036, -0.668454, -0.739326,
		-0.386271, -0.662735, 0.641543,
		-0.918819, 0.337568, -0.204499,
		36.900684, 35.568523, 47.430946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263493, 34.745018, 47.317974>,  <37.543858, 35.332226, 47.574093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263493, 34.745018, 47.317974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995991, 35.019356, 47.203171>,  <36.835487, 35.183960, 47.134289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995991, 35.019356, 47.203171>,  <37.263493, 34.745018, 47.317974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995991, 35.019356, 47.203171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224305, -0.554171, -0.801612,
		-0.708838, -0.471706, 0.524445,
		-0.668757, 0.685849, -0.287011,
		36.795364, 35.225109, 47.117069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757156, 34.344597, 46.993973>,  <37.263493, 34.745018, 47.317974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757156, 34.344597, 46.993973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716324, 34.717709, 46.855690>,  <36.691826, 34.941574, 46.772720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716324, 34.717709, 46.855690>,  <36.757156, 34.344597, 46.993973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716324, 34.717709, 46.855690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225760, -0.360173, -0.905156,
		-0.968820, -0.014352, 0.247349,
		-0.102079, 0.932775, -0.345702,
		36.685699, 34.997540, 46.751980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145786, 34.378399, 46.594391>,  <36.757156, 34.344597, 46.993973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145786, 34.378399, 46.594391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378727, 34.667053, 46.444668>,  <36.518490, 34.840248, 46.354836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378727, 34.667053, 46.444668>,  <36.145786, 34.378399, 46.594391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378727, 34.667053, 46.444668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248895, -0.280054, -0.927157,
		-0.773899, 0.633094, 0.016522,
		0.582350, 0.721638, -0.374307,
		36.553432, 34.883545, 46.332375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697636, 34.788239, 46.117081>,  <36.145786, 34.378399, 46.594391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697636, 34.788239, 46.117081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077003, 34.853378, 46.008278>,  <36.304623, 34.892464, 45.942997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077003, 34.853378, 46.008278>,  <35.697636, 34.788239, 46.117081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077003, 34.853378, 46.008278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235578, -0.212159, -0.948415,
		-0.212159, 0.963571, -0.162851,
		0.948415, 0.162851, -0.272008,
		36.361526, 34.902233, 45.926674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600021, 35.132362, 45.468735>,  <35.697636, 34.788239, 46.117081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600021, 35.132362, 45.468735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991028, 35.048134, 45.464264>,  <36.225632, 34.997597, 45.461582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991028, 35.048134, 45.464264>,  <35.600021, 35.132362, 45.468735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991028, 35.048134, 45.464264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074924, -0.297266, -0.951851,
		0.197110, 0.931285, -0.306358,
		0.977514, -0.210572, -0.011181,
		36.284283, 34.984962, 45.460911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976322, 35.456646, 44.887905>,  <35.600021, 35.132362, 45.468735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976322, 35.456646, 44.887905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.236633, 35.168343, 44.983402>,  <36.392818, 34.995361, 45.040699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.236633, 35.168343, 44.983402>,  <35.976322, 35.456646, 44.887905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236633, 35.168343, 44.983402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132642, -0.201680, -0.970429,
		0.747593, 0.663200, -0.035646,
		0.650777, -0.720757, 0.238743,
		36.431866, 34.952114, 45.055023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669502, 35.536392, 44.433094>,  <35.976322, 35.456646, 44.887905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669502, 35.536392, 44.433094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684284, 35.160614, 44.569374>,  <36.693153, 34.935146, 44.651142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684284, 35.160614, 44.569374>,  <36.669502, 35.536392, 44.433094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684284, 35.160614, 44.569374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094703, -0.336103, -0.937052,
		0.994819, 0.066896, 0.076547,
		0.036957, -0.939447, 0.340697,
		36.695370, 34.878780, 44.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329258, 35.802383, 44.436924>,  <36.669502, 35.536392, 44.433094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329258, 35.802383, 44.436924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340534, 36.170879, 44.281738>,  <37.347298, 36.391979, 44.188629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340534, 36.170879, 44.281738>,  <37.329258, 35.802383, 44.436924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340534, 36.170879, 44.281738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038608, 0.386823, 0.921346,
		0.998857, -0.040948, -0.024664,
		0.028187, 0.921245, -0.387962,
		37.348991, 36.447254, 44.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808876, 36.182499, 44.870777>,  <37.329258, 35.802383, 44.436924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808876, 36.182499, 44.870777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610786, 36.468563, 44.673477>,  <37.491932, 36.640202, 44.555096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610786, 36.468563, 44.673477>,  <37.808876, 36.182499, 44.870777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610786, 36.468563, 44.673477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053238, 0.591681, 0.804413,
		0.867131, 0.372107, -0.331090,
		-0.495227, 0.715158, -0.493254,
		37.462219, 36.683109, 44.525501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225159, 36.820301, 44.763000>,  <37.808876, 36.182499, 44.870777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225159, 36.820301, 44.763000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845287, 36.939377, 44.801979>,  <37.617363, 37.010822, 44.825367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845287, 36.939377, 44.801979>,  <38.225159, 36.820301, 44.763000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845287, 36.939377, 44.801979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236800, 0.478698, 0.845443,
		0.205030, 0.825973, -0.525101,
		-0.949678, 0.297685, 0.097443,
		37.560383, 37.028683, 44.831211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243011, 37.539520, 44.929359>,  <38.225159, 36.820301, 44.763000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243011, 37.539520, 44.929359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865540, 37.433716, 45.008869>,  <37.639057, 37.370232, 45.056576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865540, 37.433716, 45.008869>,  <38.243011, 37.539520, 44.929359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865540, 37.433716, 45.008869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000335, 0.599987, 0.800010,
		-0.330873, 0.755016, -0.566105,
		-0.943675, -0.264512, 0.198773,
		37.582436, 37.354362, 45.068501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983715, 38.204613, 45.149719>,  <38.243011, 37.539520, 44.929359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983715, 38.204613, 45.149719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703835, 37.945724, 45.270725>,  <37.535904, 37.790390, 45.343327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703835, 37.945724, 45.270725>,  <37.983715, 38.204613, 45.149719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703835, 37.945724, 45.270725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240931, 0.612392, 0.752946,
		-0.672580, 0.453957, -0.584431,
		-0.699706, -0.647224, 0.302511,
		37.493923, 37.751556, 45.361477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329632, 38.575668, 45.205780>,  <37.983715, 38.204613, 45.149719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329632, 38.575668, 45.205780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254364, 38.249992, 45.425484>,  <37.209202, 38.054585, 45.557304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254364, 38.249992, 45.425484>,  <37.329632, 38.575668, 45.205780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254364, 38.249992, 45.425484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354074, 0.577878, 0.735316,
		-0.916091, -0.056111, -0.397024,
		-0.188172, -0.814192, 0.549256,
		37.197914, 38.005733, 45.590260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641296, 38.599617, 45.447842>,  <37.329632, 38.575668, 45.205780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641296, 38.599617, 45.447842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830658, 38.347305, 45.693768>,  <36.944275, 38.195919, 45.841324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830658, 38.347305, 45.693768>,  <36.641296, 38.599617, 45.447842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830658, 38.347305, 45.693768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349746, 0.506001, 0.788442,
		-0.808432, -0.588284, 0.018931,
		0.473407, -0.630781, 0.614817,
		36.972679, 38.158070, 45.878212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216473, 38.552464, 45.949818>,  <36.641296, 38.599617, 45.447842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216473, 38.552464, 45.949818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554573, 38.405434, 46.104965>,  <36.757435, 38.317215, 46.198051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554573, 38.405434, 46.104965>,  <36.216473, 38.552464, 45.949818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554573, 38.405434, 46.104965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219566, 0.422837, 0.879204,
		-0.487179, -0.828309, 0.276696,
		0.845250, -0.367577, 0.387866,
		36.808147, 38.295162, 46.221325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065235, 38.408260, 46.552189>,  <36.216473, 38.552464, 45.949818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065235, 38.408260, 46.552189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461948, 38.434685, 46.596024>,  <36.699974, 38.450539, 46.622326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461948, 38.434685, 46.596024>,  <36.065235, 38.408260, 46.552189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461948, 38.434685, 46.596024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127836, 0.473894, 0.871253,
		0.005617, -0.878100, 0.478443,
		0.991779, 0.066057, 0.109591,
		36.759483, 38.454502, 46.628902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103180, 38.207016, 47.314034>,  <36.065235, 38.408260, 46.552189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103180, 38.207016, 47.314034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427856, 38.396297, 47.177074>,  <36.622662, 38.509865, 47.094898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427856, 38.396297, 47.177074>,  <36.103180, 38.207016, 47.314034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427856, 38.396297, 47.177074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028252, 0.617336, 0.786192,
		0.583401, -0.628473, 0.514456,
		0.811693, 0.473200, -0.342399,
		36.671364, 38.538258, 47.074356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298660, 38.323311, 47.939098>,  <36.103180, 38.207016, 47.314034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298660, 38.323311, 47.939098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489098, 38.568260, 47.686646>,  <36.603363, 38.715229, 47.535172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489098, 38.568260, 47.686646>,  <36.298660, 38.323311, 47.939098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489098, 38.568260, 47.686646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092479, 0.748579, 0.656565,
		0.874516, -0.254223, 0.413029,
		0.476099, 0.612373, -0.631134,
		36.631927, 38.751972, 47.497307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740810, 38.589363, 48.422729>,  <36.298660, 38.323311, 47.939098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740810, 38.589363, 48.422729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718899, 38.824268, 48.099712>,  <36.705753, 38.965210, 47.905903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718899, 38.824268, 48.099712>,  <36.740810, 38.589363, 48.422729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718899, 38.824268, 48.099712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128839, 0.797839, 0.588943,
		0.990152, 0.136303, 0.031960,
		-0.054776, 0.587260, -0.807543,
		36.702465, 39.000446, 47.857449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269009, 39.268024, 48.592285>,  <36.740810, 38.589363, 48.422729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269009, 39.268024, 48.592285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003403, 39.336411, 48.301121>,  <36.844040, 39.377441, 48.126423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003403, 39.336411, 48.301121>,  <37.269009, 39.268024, 48.592285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003403, 39.336411, 48.301121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194363, 0.900581, 0.388816,
		0.722018, 0.399658, -0.564769,
		-0.664013, 0.170962, -0.727914,
		36.804199, 39.387699, 48.082748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483227, 39.953129, 48.287659>,  <37.269009, 39.268024, 48.592285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483227, 39.953129, 48.287659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099503, 39.910805, 48.182941>,  <36.869270, 39.885410, 48.120110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099503, 39.910805, 48.182941>,  <37.483227, 39.953129, 48.287659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099503, 39.910805, 48.182941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192627, 0.923132, 0.332750,
		0.206460, 0.369637, -0.905948,
		-0.959306, -0.105811, -0.261792,
		36.811710, 39.879063, 48.104404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.184778, 40.434418, 47.062565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476671, 40.184143, 47.172840>,  <30.651806, 40.033978, 47.239006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476671, 40.184143, 47.172840>,  <30.184778, 40.434418, 47.062565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476671, 40.184143, 47.172840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145350, -0.252031, -0.956741,
		0.668106, 0.738235, -0.092971,
		0.729732, -0.625691, 0.275686,
		30.695591, 39.996437, 47.255547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721220, 40.415054, 46.537144>,  <30.184778, 40.434418, 47.062565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721220, 40.415054, 46.537144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802818, 40.071060, 46.724251>,  <30.851776, 39.864662, 46.836514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802818, 40.071060, 46.724251>,  <30.721220, 40.415054, 46.537144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802818, 40.071060, 46.724251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290304, -0.403182, -0.867852,
		0.934938, 0.312832, 0.167411,
		0.203995, -0.859989, 0.467767,
		30.864017, 39.813065, 46.864582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319729, 40.197815, 46.220409>,  <30.721220, 40.415054, 46.537144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319729, 40.197815, 46.220409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172457, 39.862720, 46.381721>,  <31.084093, 39.661663, 46.478508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172457, 39.862720, 46.381721>,  <31.319729, 40.197815, 46.220409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172457, 39.862720, 46.381721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304352, -0.518451, -0.799111,
		0.878528, -0.171478, 0.445852,
		-0.368182, -0.837737, 0.403285,
		31.062002, 39.611401, 46.502708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884853, 39.676163, 46.224754>,  <31.319729, 40.197815, 46.220409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884853, 39.676163, 46.224754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528620, 39.494350, 46.231205>,  <31.314878, 39.385265, 46.235077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528620, 39.494350, 46.231205>,  <31.884853, 39.676163, 46.224754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528620, 39.494350, 46.231205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299751, -0.613248, -0.730806,
		0.342061, -0.646012, 0.682395,
		-0.890586, -0.454528, 0.016126,
		31.261444, 39.357990, 46.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076275, 38.945827, 46.085239>,  <31.884853, 39.676163, 46.224754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076275, 38.945827, 46.085239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681261, 38.958855, 46.023636>,  <31.444254, 38.966671, 45.986675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681261, 38.958855, 46.023636>,  <32.076275, 38.945827, 46.085239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681261, 38.958855, 46.023636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099125, -0.631371, -0.769119,
		-0.122283, -0.774796, 0.620272,
		-0.987533, 0.032566, -0.154008,
		31.385002, 38.968624, 45.977432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872932, 38.279881, 46.033047>,  <32.076275, 38.945827, 46.085239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872932, 38.279881, 46.033047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587782, 38.493988, 45.851810>,  <31.416693, 38.622452, 45.743069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587782, 38.493988, 45.851810>,  <31.872932, 38.279881, 46.033047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587782, 38.493988, 45.851810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213275, -0.450007, -0.867184,
		-0.668075, -0.714827, 0.206638,
		-0.712874, 0.535273, -0.453093,
		31.373919, 38.654568, 45.715881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512085, 37.825027, 45.681976>,  <31.872932, 38.279881, 46.033047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512085, 37.825027, 45.681976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436020, 38.177597, 45.509033>,  <31.390381, 38.389137, 45.405266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436020, 38.177597, 45.509033>,  <31.512085, 37.825027, 45.681976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436020, 38.177597, 45.509033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141563, -0.411175, -0.900497,
		-0.971493, -0.232448, -0.046586,
		-0.190163, 0.881421, -0.432359,
		31.378971, 38.442024, 45.379326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136911, 37.561382, 44.977398>,  <31.512085, 37.825027, 45.681976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136911, 37.561382, 44.977398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240231, 37.947296, 44.957508>,  <31.302223, 38.178844, 44.945572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240231, 37.947296, 44.957508>,  <31.136911, 37.561382, 44.977398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240231, 37.947296, 44.957508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299136, -0.128819, -0.945475,
		-0.918585, 0.229341, -0.321875,
		0.258300, 0.964784, -0.049727,
		31.317720, 38.236732, 44.942589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823875, 37.931591, 44.448780>,  <31.136911, 37.561382, 44.977398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823875, 37.931591, 44.448780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155947, 38.150448, 44.491573>,  <31.355190, 38.281761, 44.517250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155947, 38.150448, 44.491573>,  <30.823875, 37.931591, 44.448780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155947, 38.150448, 44.491573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150248, -0.034787, -0.988036,
		-0.536870, 0.836320, -0.111086,
		0.830178, 0.547137, 0.106979,
		31.405001, 38.314590, 44.523666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763470, 38.454655, 43.932732>,  <30.823875, 37.931591, 44.448780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763470, 38.454655, 43.932732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144178, 38.396954, 44.041046>,  <31.372602, 38.362331, 44.106033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144178, 38.396954, 44.041046>,  <30.763470, 38.454655, 43.932732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144178, 38.396954, 44.041046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263047, -0.070605, -0.962196,
		0.157921, 0.987018, -0.029253,
		0.951771, -0.144256, 0.270782,
		31.429710, 38.353676, 44.122280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147621, 38.947697, 43.594631>,  <30.763470, 38.454655, 43.932732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147621, 38.947697, 43.594631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412821, 38.665371, 43.694439>,  <31.571941, 38.495975, 43.754322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412821, 38.665371, 43.694439>,  <31.147621, 38.947697, 43.594631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412821, 38.665371, 43.694439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286524, -0.068678, -0.955608,
		0.691618, 0.705060, 0.156700,
		0.662999, -0.705814, 0.249516,
		31.611721, 38.453625, 43.769295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681622, 39.135796, 43.232510>,  <31.147621, 38.947697, 43.594631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681622, 39.135796, 43.232510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757191, 38.752159, 43.316841>,  <31.802532, 38.521976, 43.367439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757191, 38.752159, 43.316841>,  <31.681622, 39.135796, 43.232510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757191, 38.752159, 43.316841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271576, -0.155295, -0.949805,
		0.943692, 0.236696, 0.231128,
		0.188922, -0.959093, 0.210832,
		31.813868, 38.464432, 43.380089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230743, 39.018032, 42.847260>,  <31.681622, 39.135796, 43.232510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230743, 39.018032, 42.847260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092587, 38.650791, 42.925011>,  <32.009693, 38.430447, 42.971661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092587, 38.650791, 42.925011>,  <32.230743, 39.018032, 42.847260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092587, 38.650791, 42.925011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187287, -0.270396, -0.944357,
		0.919579, -0.289773, 0.265343,
		-0.345397, -0.918106, 0.194380,
		31.988968, 38.375359, 42.983326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691730, 38.542576, 42.470818>,  <32.230743, 39.018032, 42.847260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691730, 38.542576, 42.470818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375671, 38.314980, 42.561951>,  <32.186035, 38.178421, 42.616631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375671, 38.314980, 42.561951>,  <32.691730, 38.542576, 42.470818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375671, 38.314980, 42.561951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078145, -0.462220, -0.883315,
		0.607909, -0.680149, 0.409688,
		-0.790152, -0.568990, 0.227838,
		32.138626, 38.144283, 42.630302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352985, 38.255421, 42.490864>,  <32.691730, 38.542576, 42.470818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352985, 38.255421, 42.490864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595322, 38.534870, 42.338615>,  <33.740723, 38.702541, 42.247265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595322, 38.534870, 42.338615>,  <33.352985, 38.255421, 42.490864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595322, 38.534870, 42.338615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094954, 0.411502, 0.906449,
		0.789896, -0.585309, 0.182968,
		0.605844, 0.698627, -0.380621,
		33.777077, 38.744457, 42.224430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040451, 38.283184, 42.905468>,  <33.352985, 38.255421, 42.490864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040451, 38.283184, 42.905468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 38.632484, 42.728256>,  <33.910599, 38.842064, 42.621929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 38.632484, 42.728256>,  <34.040451, 38.283184, 42.905468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959293, 38.632484, 42.728256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201726, 0.480011, 0.853754,
		0.958197, 0.083848, -0.273547,
		-0.202891, 0.873246, -0.443030,
		33.898426, 38.894459, 42.595348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471737, 38.747620, 43.349152>,  <34.040451, 38.283184, 42.905468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471737, 38.747620, 43.349152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234768, 38.984337, 43.130493>,  <34.092587, 39.126366, 42.999298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234768, 38.984337, 43.130493>,  <34.471737, 38.747620, 43.349152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234768, 38.984337, 43.130493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038811, 0.656778, 0.753085,
		0.804692, 0.467360, -0.366122,
		-0.592423, 0.591792, -0.546642,
		34.057041, 39.161873, 42.966499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689838, 39.422398, 43.550735>,  <34.471737, 38.747620, 43.349152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689838, 39.422398, 43.550735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325138, 39.435284, 43.386940>,  <34.106319, 39.443016, 43.288662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325138, 39.435284, 43.386940>,  <34.689838, 39.422398, 43.550735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325138, 39.435284, 43.386940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325446, 0.551563, 0.768026,
		0.250603, 0.833511, -0.492400,
		-0.911747, 0.032220, -0.409486,
		34.051613, 39.444950, 43.264095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477753, 40.194813, 43.458076>,  <34.689838, 39.422398, 43.550735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477753, 40.194813, 43.458076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154835, 39.958858, 43.465218>,  <33.961086, 39.817287, 43.469501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154835, 39.958858, 43.465218>,  <34.477753, 40.194813, 43.458076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154835, 39.958858, 43.465218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380958, 0.543992, 0.747625,
		-0.450726, 0.596748, -0.663881,
		-0.807290, -0.589884, 0.017855,
		33.912647, 39.781895, 43.470573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896687, 40.656658, 43.570057>,  <34.477753, 40.194813, 43.458076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896687, 40.656658, 43.570057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733955, 40.301010, 43.653919>,  <33.636318, 40.087620, 43.704239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733955, 40.301010, 43.653919>,  <33.896687, 40.656658, 43.570057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733955, 40.301010, 43.653919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312503, 0.351120, 0.882642,
		-0.858392, 0.293560, -0.420697,
		-0.406824, -0.889122, 0.209660,
		33.611908, 40.034275, 43.716816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144989, 40.785378, 43.738960>,  <33.896687, 40.656658, 43.570057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144989, 40.785378, 43.738960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241535, 40.439350, 43.914871>,  <33.299461, 40.231735, 44.020420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241535, 40.439350, 43.914871>,  <33.144989, 40.785378, 43.738960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241535, 40.439350, 43.914871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439369, 0.306658, 0.844344,
		-0.865274, -0.397019, -0.306066,
		0.241363, -0.865065, 0.439781,
		33.313946, 40.179832, 44.046806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463226, 40.528397, 44.077843>,  <33.144989, 40.785378, 43.738960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463226, 40.528397, 44.077843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771641, 40.334663, 44.243214>,  <32.956688, 40.218422, 44.342438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771641, 40.334663, 44.243214>,  <32.463226, 40.528397, 44.077843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771641, 40.334663, 44.243214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352616, 0.215884, 0.910525,
		-0.530255, -0.847827, -0.004332,
		0.771033, -0.484338, 0.413431,
		33.002953, 40.189362, 44.367245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166477, 40.053226, 44.672035>,  <32.463226, 40.528397, 44.077843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166477, 40.053226, 44.672035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560379, 40.091026, 44.730453>,  <32.796719, 40.113705, 44.765507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560379, 40.091026, 44.730453>,  <32.166477, 40.053226, 44.672035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560379, 40.091026, 44.730453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159761, 0.159132, 0.974245,
		0.068819, -0.982725, 0.171803,
		0.984754, 0.094494, 0.146050,
		32.855804, 40.119377, 44.774269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382359, 39.794552, 45.338165>,  <32.166477, 40.053226, 44.672035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382359, 39.794552, 45.338165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693111, 40.035030, 45.263317>,  <32.879562, 40.179317, 45.218407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693111, 40.035030, 45.263317>,  <32.382359, 39.794552, 45.338165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693111, 40.035030, 45.263317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007266, 0.305723, 0.952093,
		0.629604, -0.738304, 0.241879,
		0.776882, 0.601199, -0.187120,
		32.926178, 40.215389, 45.207180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022190, 39.575005, 45.751942>,  <32.382359, 39.794552, 45.338165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022190, 39.575005, 45.751942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013687, 39.964794, 45.662544>,  <33.008587, 40.198669, 45.608906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013687, 39.964794, 45.662544>,  <33.022190, 39.575005, 45.751942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013687, 39.964794, 45.662544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140561, 0.224234, 0.964345,
		0.989844, -0.010913, -0.141740,
		-0.021259, 0.974474, -0.223491,
		33.007309, 40.257137, 45.595497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496868, 39.933964, 46.242760>,  <33.022190, 39.575005, 45.751942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496868, 39.933964, 46.242760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310947, 40.252583, 46.088112>,  <33.199394, 40.443752, 45.995323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310947, 40.252583, 46.088112>,  <33.496868, 39.933964, 46.242760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310947, 40.252583, 46.088112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008921, 0.432418, 0.901629,
		0.885368, 0.422531, -0.193884,
		-0.464805, 0.796544, -0.386618,
		33.171505, 40.491547, 45.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904575, 40.535027, 46.457607>,  <33.496868, 39.933964, 46.242760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904575, 40.535027, 46.457607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556095, 40.699936, 46.350998>,  <33.347008, 40.798882, 46.287033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556095, 40.699936, 46.350998>,  <33.904575, 40.535027, 46.457607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556095, 40.699936, 46.350998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096255, 0.675810, 0.730764,
		0.481393, 0.610990, -0.628452,
		-0.871204, 0.412276, -0.266519,
		33.294735, 40.823620, 46.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935833, 41.209942, 46.490402>,  <33.904575, 40.535027, 46.457607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935833, 41.209942, 46.490402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537827, 41.171207, 46.499874>,  <33.299023, 41.147968, 46.505558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537827, 41.171207, 46.499874>,  <33.935833, 41.209942, 46.490402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537827, 41.171207, 46.499874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042534, 0.627234, 0.777668,
		-0.090161, 0.772787, -0.628228,
		-0.995018, -0.096836, 0.023682,
		33.239323, 41.142155, 46.506977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324539, 41.811218, 46.025639>,  <33.935833, 41.209942, 46.490402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324539, 41.811218, 46.025639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712879, 41.852016, 46.112396>,  <34.945885, 41.876495, 46.164452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712879, 41.852016, 46.112396>,  <34.324539, 41.811218, 46.025639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712879, 41.852016, 46.112396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239677, -0.413702, -0.878297,
		0.000141, 0.904681, -0.426091,
		0.970853, 0.102000, 0.216890,
		35.004135, 41.882618, 46.177464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656467, 42.198116, 45.369591>,  <34.324539, 41.811218, 46.025639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656467, 42.198116, 45.369591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954227, 42.018444, 45.567223>,  <35.132881, 41.910641, 45.685802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954227, 42.018444, 45.567223>,  <34.656467, 42.198116, 45.369591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954227, 42.018444, 45.567223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324943, -0.402724, -0.855702,
		0.583341, 0.797528, -0.153828,
		0.744396, -0.449181, 0.494077,
		35.177547, 41.883690, 45.715446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202671, 42.403671, 45.023888>,  <34.656467, 42.198116, 45.369591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202671, 42.403671, 45.023888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344242, 42.072144, 45.197231>,  <35.429184, 41.873226, 45.301235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344242, 42.072144, 45.197231>,  <35.202671, 42.403671, 45.023888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344242, 42.072144, 45.197231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284560, -0.345954, -0.894059,
		0.890933, 0.439748, 0.113405,
		0.353928, -0.828817, 0.433356,
		35.450420, 41.823498, 45.327240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830811, 42.347248, 44.700314>,  <35.202671, 42.403671, 45.023888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830811, 42.347248, 44.700314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747879, 41.990444, 44.860981>,  <35.698120, 41.776363, 44.957382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747879, 41.990444, 44.860981>,  <35.830811, 42.347248, 44.700314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747879, 41.990444, 44.860981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373665, -0.451662, -0.810170,
		0.904097, -0.017881, 0.426954,
		-0.207326, -0.892010, 0.401664,
		35.685680, 41.722839, 44.981480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500103, 41.995392, 44.854588>,  <35.830811, 42.347248, 44.700314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500103, 41.995392, 44.854588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218472, 41.712631, 44.827557>,  <36.049492, 41.542973, 44.811337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218472, 41.712631, 44.827557>,  <36.500103, 41.995392, 44.854588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218472, 41.712631, 44.827557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463061, -0.384885, -0.798397,
		0.538381, -0.593422, 0.598327,
		-0.704074, -0.706904, -0.067576,
		36.007248, 41.500561, 44.807285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809563, 41.236229, 44.856743>,  <36.500103, 41.995392, 44.854588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809563, 41.236229, 44.856743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449665, 41.216427, 44.683300>,  <36.233727, 41.204544, 44.579235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449665, 41.216427, 44.683300>,  <36.809563, 41.236229, 44.856743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449665, 41.216427, 44.683300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394202, -0.518511, -0.758783,
		-0.187260, -0.853637, 0.486043,
		-0.899743, -0.049509, -0.433602,
		36.179741, 41.201572, 44.553219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912231, 40.657852, 44.611275>,  <36.809563, 41.236229, 44.856743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912231, 40.657852, 44.611275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587784, 40.791023, 44.418919>,  <36.393116, 40.870926, 44.303505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587784, 40.791023, 44.418919>,  <36.912231, 40.657852, 44.611275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587784, 40.791023, 44.418919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346243, -0.389327, -0.853546,
		-0.471389, -0.858828, 0.200517,
		-0.811116, 0.332924, -0.480887,
		36.344448, 40.890900, 44.274651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647797, 40.131287, 44.151886>,  <36.912231, 40.657852, 44.611275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647797, 40.131287, 44.151886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501202, 40.458157, 43.973938>,  <36.413246, 40.654278, 43.867168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501202, 40.458157, 43.973938>,  <36.647797, 40.131287, 44.151886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501202, 40.458157, 43.973938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249241, -0.374434, -0.893129,
		-0.896418, -0.438199, -0.066449,
		-0.366488, 0.817178, -0.444866,
		36.391254, 40.703312, 43.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513733, 39.851616, 43.439270>,  <36.647797, 40.131287, 44.151886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513733, 39.851616, 43.439270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487663, 40.249271, 43.404766>,  <36.472019, 40.487865, 43.384064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487663, 40.249271, 43.404766>,  <36.513733, 39.851616, 43.439270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487663, 40.249271, 43.404766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030052, -0.084449, -0.995974,
		-0.997421, -0.067508, -0.024371,
		-0.065178, 0.994138, -0.086260,
		36.468109, 40.547512, 43.378887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942440, 39.906456, 43.048897>,  <36.513733, 39.851616, 43.439270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942440, 39.906456, 43.048897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179432, 40.226952, 43.015461>,  <36.321629, 40.419247, 42.995399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179432, 40.226952, 43.015461>,  <35.942440, 39.906456, 43.048897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179432, 40.226952, 43.015461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091177, -0.169786, -0.981254,
		-0.800408, 0.573754, -0.173649,
		0.592482, 0.801236, -0.083585,
		36.357178, 40.467323, 42.990387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764629, 40.288311, 42.423077>,  <35.942440, 39.906456, 43.048897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764629, 40.288311, 42.423077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 40.431915, 42.499718>,  <36.349243, 40.518078, 42.545700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 40.431915, 42.499718>,  <35.764629, 40.288311, 42.423077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130013, 40.431915, 42.499718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307952, -0.302056, -0.902179,
		-0.266021, 0.883103, -0.386473,
		0.913454, 0.359014, 0.191600,
		36.404049, 40.539619, 42.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946373, 40.848583, 41.909607>,  <35.764629, 40.288311, 42.423077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946373, 40.848583, 41.909607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269619, 40.668777, 42.061859>,  <36.463566, 40.560894, 42.153210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269619, 40.668777, 42.061859>,  <35.946373, 40.848583, 41.909607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269619, 40.668777, 42.061859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210859, -0.382606, -0.899528,
		0.549984, 0.807185, -0.214407,
		0.808119, -0.449516, 0.380630,
		36.512054, 40.533924, 42.176048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450039, 40.935120, 41.407001>,  <35.946373, 40.848583, 41.909607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450039, 40.935120, 41.407001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605591, 40.641899, 41.630219>,  <36.698921, 40.465969, 41.764149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605591, 40.641899, 41.630219>,  <36.450039, 40.935120, 41.407001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605591, 40.641899, 41.630219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168395, -0.538959, -0.825328,
		0.905769, 0.414923, -0.086147,
		0.388877, -0.733050, 0.558044,
		36.722256, 40.421986, 41.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058208, 40.780880, 41.042019>,  <36.450039, 40.935120, 41.407001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058208, 40.780880, 41.042019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042648, 40.452545, 41.269955>,  <37.033314, 40.255547, 41.406715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042648, 40.452545, 41.269955>,  <37.058208, 40.780880, 41.042019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042648, 40.452545, 41.269955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179166, -0.566761, -0.804165,
		0.983050, 0.070815, 0.169112,
		-0.038899, -0.820833, 0.569842,
		37.030979, 40.206295, 41.440907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.648146, 34.193172, 26.168436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.347174, 34.026455, 26.372448>,  <26.166592, 33.926426, 26.494856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.347174, 34.026455, 26.372448>,  <26.648146, 34.193172, 26.168436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347174, 34.026455, 26.372448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263195, 0.519578, 0.812876,
		-0.603804, 0.745869, -0.281247,
		-0.752429, -0.416795, 0.510032,
		26.121445, 33.901417, 26.525457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268694, 34.716759, 26.512596>,  <26.648146, 34.193172, 26.168436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268694, 34.716759, 26.512596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231094, 34.375187, 26.717329>,  <26.208534, 34.170242, 26.840168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231094, 34.375187, 26.717329>,  <26.268694, 34.716759, 26.512596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231094, 34.375187, 26.717329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103587, 0.502928, 0.858098,
		-0.990169, 0.133677, 0.041182,
		-0.093997, -0.853928, 0.511831,
		26.202896, 34.119007, 26.870878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816624, 34.859081, 27.135006>,  <26.268694, 34.716759, 26.512596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816624, 34.859081, 27.135006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985800, 34.504444, 27.209923>,  <26.087305, 34.291660, 27.254873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985800, 34.504444, 27.209923>,  <25.816624, 34.859081, 27.135006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985800, 34.504444, 27.209923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102648, 0.252231, 0.962207,
		-0.900325, -0.387730, 0.197685,
		0.422939, -0.886592, 0.187290,
		26.112682, 34.238468, 27.266109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478514, 34.575359, 27.630165>,  <25.816624, 34.859081, 27.135006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478514, 34.575359, 27.630165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.837864, 34.404861, 27.672579>,  <26.053474, 34.302563, 27.698027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.837864, 34.404861, 27.672579>,  <25.478514, 34.575359, 27.630165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837864, 34.404861, 27.672579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009668, 0.260537, 0.965415,
		-0.439125, -0.866279, 0.238181,
		0.898374, -0.426241, 0.106033,
		26.107376, 34.276989, 27.704390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488407, 34.186520, 28.324259>,  <25.478514, 34.575359, 27.630165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488407, 34.186520, 28.324259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873978, 34.254860, 28.242626>,  <26.105320, 34.295864, 28.193645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873978, 34.254860, 28.242626>,  <25.488407, 34.186520, 28.324259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873978, 34.254860, 28.242626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192558, 0.081687, 0.977880,
		0.183748, -0.981904, 0.045841,
		0.963928, 0.170857, -0.204083,
		26.163157, 34.306118, 28.181400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891798, 33.700356, 28.813786>,  <25.488407, 34.186520, 28.324259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891798, 33.700356, 28.813786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130184, 33.987400, 28.669638>,  <26.273216, 34.159626, 28.583149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130184, 33.987400, 28.669638>,  <25.891798, 33.700356, 28.813786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130184, 33.987400, 28.669638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368699, 0.154138, 0.916680,
		0.713363, -0.679176, -0.172720,
		0.595965, 0.717608, -0.360368,
		26.308973, 34.202682, 28.561527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530136, 33.589767, 29.069689>,  <25.891798, 33.700356, 28.813786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530136, 33.589767, 29.069689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517363, 33.983059, 28.997871>,  <26.509699, 34.219036, 28.954781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517363, 33.983059, 28.997871>,  <26.530136, 33.589767, 29.069689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517363, 33.983059, 28.997871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216384, 0.182176, 0.959161,
		0.975786, -0.008219, -0.218574,
		-0.031935, 0.983232, -0.179543,
		26.507782, 34.278027, 28.944008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052443, 33.776268, 29.397034>,  <26.530136, 33.589767, 29.069689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052443, 33.776268, 29.397034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875854, 34.129391, 29.332830>,  <26.769901, 34.341263, 29.294308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875854, 34.129391, 29.332830>,  <27.052443, 33.776268, 29.397034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875854, 34.129391, 29.332830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399464, 0.353549, 0.845832,
		0.803451, 0.309292, -0.508729,
		-0.441469, 0.882804, -0.160508,
		26.743414, 34.394234, 29.284678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627562, 34.231255, 29.421726>,  <27.052443, 33.776268, 29.397034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627562, 34.231255, 29.421726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317680, 34.476006, 29.485519>,  <27.131752, 34.622856, 29.523794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317680, 34.476006, 29.485519>,  <27.627562, 34.231255, 29.421726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317680, 34.476006, 29.485519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404972, 0.286419, 0.868310,
		0.485624, 0.737270, -0.469684,
		-0.774705, 0.611881, 0.159482,
		27.085268, 34.659569, 29.533363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907457, 34.870026, 29.676014>,  <27.627562, 34.231255, 29.421726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907457, 34.870026, 29.676014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517527, 34.864246, 29.765013>,  <27.283567, 34.860779, 29.818411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517527, 34.864246, 29.765013>,  <27.907457, 34.870026, 29.676014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517527, 34.864246, 29.765013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197244, 0.409405, 0.890776,
		-0.103960, 0.912238, -0.396250,
		-0.974827, -0.014447, 0.222496,
		27.225079, 34.859913, 29.831762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855280, 35.496761, 29.959995>,  <27.907457, 34.870026, 29.676014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855280, 35.496761, 29.959995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532473, 35.299656, 30.090170>,  <27.338789, 35.181393, 30.168276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532473, 35.299656, 30.090170>,  <27.855280, 35.496761, 29.959995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532473, 35.299656, 30.090170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175783, 0.325662, 0.929002,
		-0.563757, 0.806928, -0.176196,
		-0.807018, -0.492759, 0.325439,
		27.290367, 35.151829, 30.187801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422184, 36.022617, 30.432329>,  <27.855280, 35.496761, 29.959995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422184, 36.022617, 30.432329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336056, 35.640491, 30.513336>,  <27.284380, 35.411217, 30.561939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336056, 35.640491, 30.513336>,  <27.422184, 36.022617, 30.432329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336056, 35.640491, 30.513336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130478, 0.177377, 0.975455,
		-0.967788, 0.236458, 0.086455,
		-0.215319, -0.955314, 0.202516,
		27.271460, 35.353897, 30.574091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091311, 36.130192, 31.067553>,  <27.422184, 36.022617, 30.432329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091311, 36.130192, 31.067553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181707, 35.741215, 31.044630>,  <27.235945, 35.507828, 31.030876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181707, 35.741215, 31.044630>,  <27.091311, 36.130192, 31.067553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181707, 35.741215, 31.044630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268571, 0.005651, 0.963243,
		-0.936375, -0.233077, 0.262447,
		0.225993, -0.972442, -0.057306,
		27.249506, 35.449482, 31.027439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842384, 35.864166, 31.661774>,  <27.091311, 36.130192, 31.067553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842384, 35.864166, 31.661774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112015, 35.596935, 31.535730>,  <27.273792, 35.436596, 31.460104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112015, 35.596935, 31.535730>,  <26.842384, 35.864166, 31.661774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112015, 35.596935, 31.535730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373504, -0.059763, 0.925701,
		-0.637274, -0.741686, 0.209246,
		0.674074, -0.668080, -0.315108,
		27.314238, 35.396511, 31.441198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730192, 35.330688, 32.098213>,  <26.842384, 35.864166, 31.661774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730192, 35.330688, 32.098213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099379, 35.294964, 31.948462>,  <27.320890, 35.273529, 31.858610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099379, 35.294964, 31.948462>,  <26.730192, 35.330688, 32.098213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099379, 35.294964, 31.948462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343766, -0.246149, 0.906221,
		-0.173090, -0.965108, -0.196484,
		0.922965, -0.089313, -0.374377,
		27.376268, 35.268169, 31.836147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068956, 34.614281, 32.223957>,  <26.730192, 35.330688, 32.098213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068956, 34.614281, 32.223957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362074, 34.885139, 32.197186>,  <27.537945, 35.047657, 32.181122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362074, 34.885139, 32.197186>,  <27.068956, 34.614281, 32.223957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362074, 34.885139, 32.197186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320231, -0.256405, 0.911980,
		0.600387, -0.689727, -0.404737,
		0.732794, 0.677150, -0.066930,
		27.581913, 35.088284, 32.177105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592388, 34.301029, 32.502537>,  <27.068956, 34.614281, 32.223957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592388, 34.301029, 32.502537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693686, 34.687584, 32.520260>,  <27.754463, 34.919518, 32.530891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693686, 34.687584, 32.520260>,  <27.592388, 34.301029, 32.502537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693686, 34.687584, 32.520260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376036, -0.140530, 0.915887,
		0.891328, -0.215281, -0.398985,
		0.253243, 0.966388, 0.044305,
		27.769659, 34.977501, 32.533550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214790, 34.258846, 32.861500>,  <27.592388, 34.301029, 32.502537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214790, 34.258846, 32.861500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113176, 34.645451, 32.875996>,  <28.052208, 34.877415, 32.884693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113176, 34.645451, 32.875996>,  <28.214790, 34.258846, 32.861500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113176, 34.645451, 32.875996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094958, -0.012360, 0.995404,
		0.962522, 0.256310, -0.088638,
		-0.254037, 0.966515, 0.036236,
		28.036964, 34.935406, 32.886868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711391, 34.560932, 33.309570>,  <28.214790, 34.258846, 32.861500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711391, 34.560932, 33.309570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398962, 34.810680, 33.306038>,  <28.211504, 34.960529, 33.303921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398962, 34.810680, 33.306038>,  <28.711391, 34.560932, 33.309570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398962, 34.810680, 33.306038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087783, 0.123790, 0.988418,
		0.618236, 0.771254, -0.151499,
		-0.781075, 0.624375, -0.008829,
		28.164639, 34.997993, 33.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809299, 35.195278, 33.828403>,  <28.711391, 34.560932, 33.309570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809299, 35.195278, 33.828403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416483, 35.149864, 33.768135>,  <28.180792, 35.122616, 33.731976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416483, 35.149864, 33.768135>,  <28.809299, 35.195278, 33.828403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416483, 35.149864, 33.768135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158918, 0.067449, 0.984985,
		-0.101665, 0.991242, -0.084280,
		-0.982043, -0.113532, -0.150669,
		28.121870, 35.115807, 33.722935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501209, 34.899776, 34.203445>,  <28.809299, 35.195278, 33.828403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501209, 34.899776, 34.203445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699772, 34.560318, 34.276524>,  <29.818909, 34.356644, 34.320370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699772, 34.560318, 34.276524>,  <29.501209, 34.899776, 34.203445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699772, 34.560318, 34.276524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075476, -0.167467, -0.982984,
		0.864803, 0.501749, -0.019079,
		0.496407, -0.848647, 0.182696,
		29.848694, 34.305725, 34.331333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041676, 34.893719, 33.785137>,  <29.501209, 34.899776, 34.203445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041676, 34.893719, 33.785137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006437, 34.510201, 33.893181>,  <29.985294, 34.280090, 33.958008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006437, 34.510201, 33.893181>,  <30.041676, 34.893719, 33.785137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006437, 34.510201, 33.893181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053798, -0.275346, -0.959839,
		0.994658, -0.070028, 0.075838,
		-0.088098, -0.958791, 0.270108,
		29.980007, 34.222565, 33.974213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587807, 34.662277, 33.453606>,  <30.041676, 34.893719, 33.785137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587807, 34.662277, 33.453606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328772, 34.365479, 33.522976>,  <30.173349, 34.187401, 33.564598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328772, 34.365479, 33.522976>,  <30.587807, 34.662277, 33.453606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328772, 34.365479, 33.522976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049549, -0.268114, -0.962112,
		0.760376, -0.614461, 0.210393,
		-0.647590, -0.741992, 0.173421,
		30.134495, 34.142879, 33.575001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891970, 34.029922, 33.162228>,  <30.587807, 34.662277, 33.453606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891970, 34.029922, 33.162228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500191, 33.950245, 33.174919>,  <30.265123, 33.902439, 33.182533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500191, 33.950245, 33.174919>,  <30.891970, 34.029922, 33.162228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500191, 33.950245, 33.174919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062965, -0.451408, -0.890094,
		0.191624, -0.869801, 0.454672,
		-0.979447, -0.199192, 0.031733,
		30.206356, 33.890488, 33.184441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884441, 33.377514, 32.937401>,  <30.891970, 34.029922, 33.162228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884441, 33.377514, 32.937401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517019, 33.530643, 32.897999>,  <30.296566, 33.622520, 32.874359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517019, 33.530643, 32.897999>,  <30.884441, 33.377514, 32.937401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517019, 33.530643, 32.897999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044296, -0.347308, -0.936704,
		-0.392804, -0.856051, 0.335979,
		-0.918554, 0.382824, -0.098504,
		30.241453, 33.645489, 32.868446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474331, 32.786850, 32.611179>,  <30.884441, 33.377514, 32.937401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474331, 32.786850, 32.611179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295645, 33.137707, 32.540668>,  <30.188433, 33.348221, 32.498363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295645, 33.137707, 32.540668>,  <30.474331, 32.786850, 32.611179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295645, 33.137707, 32.540668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005874, -0.194148, -0.980955,
		-0.894658, -0.439241, 0.081576,
		-0.446713, 0.877140, -0.176276,
		30.161631, 33.400848, 32.487785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167646, 32.642246, 32.054169>,  <30.474331, 32.786850, 32.611179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167646, 32.642246, 32.054169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107969, 33.037514, 32.039902>,  <30.072163, 33.274673, 32.031342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107969, 33.037514, 32.039902>,  <30.167646, 32.642246, 32.054169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107969, 33.037514, 32.039902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049660, -0.028536, -0.998358,
		-0.987561, -0.150718, -0.044815,
		-0.149192, 0.988165, -0.035666,
		30.063211, 33.333961, 32.029202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618801, 32.700512, 31.570463>,  <30.167646, 32.642246, 32.054169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618801, 32.700512, 31.570463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774637, 33.068207, 31.547781>,  <29.868139, 33.288826, 31.534172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774637, 33.068207, 31.547781>,  <29.618801, 32.700512, 31.570463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774637, 33.068207, 31.547781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144014, -0.000010, -0.989575,
		-0.909658, 0.393697, 0.132380,
		0.389591, 0.919240, -0.056708,
		29.891514, 33.343979, 31.530769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093740, 33.134621, 31.296734>,  <29.618801, 32.700512, 31.570463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093740, 33.134621, 31.296734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436213, 33.328167, 31.224257>,  <29.641695, 33.444294, 31.180771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436213, 33.328167, 31.224257>,  <29.093740, 33.134621, 31.296734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436213, 33.328167, 31.224257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187989, -0.034922, -0.981550,
		-0.481267, 0.874445, 0.061063,
		0.856179, 0.483867, -0.181193,
		29.693066, 33.473328, 31.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911779, 33.640919, 30.810202>,  <29.093740, 33.134621, 31.296734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911779, 33.640919, 30.810202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.309435, 33.603794, 30.788036>,  <29.548029, 33.581520, 30.774736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.309435, 33.603794, 30.788036>,  <28.911779, 33.640919, 30.810202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309435, 33.603794, 30.788036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052641, 0.032068, -0.998098,
		0.094409, 0.995167, 0.026995,
		0.994141, -0.092808, -0.055414,
		29.607677, 33.575951, 30.771412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071856, 34.035187, 30.250965>,  <28.911779, 33.640919, 30.810202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071856, 34.035187, 30.250965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405626, 33.816822, 30.281200>,  <29.605888, 33.685802, 30.299341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405626, 33.816822, 30.281200>,  <29.071856, 34.035187, 30.250965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405626, 33.816822, 30.281200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041449, -0.074601, -0.996352,
		0.549560, 0.834514, -0.039621,
		0.834425, -0.545913, 0.075587,
		29.655954, 33.653049, 30.303877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546194, 34.326683, 29.804392>,  <29.071856, 34.035187, 30.250965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546194, 34.326683, 29.804392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681206, 33.957336, 29.877579>,  <29.762213, 33.735729, 29.921492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681206, 33.957336, 29.877579>,  <29.546194, 34.326683, 29.804392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681206, 33.957336, 29.877579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139381, -0.143206, -0.979829,
		0.930938, 0.356223, 0.080363,
		0.337530, -0.923362, 0.182966,
		29.782465, 33.680328, 29.932468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149536, 34.272583, 29.359541>,  <29.546194, 34.326683, 29.804392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149536, 34.272583, 29.359541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029587, 33.896069, 29.421572>,  <29.957617, 33.670158, 29.458790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029587, 33.896069, 29.421572>,  <30.149536, 34.272583, 29.359541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029587, 33.896069, 29.421572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316760, -0.251581, -0.914533,
		0.899854, -0.225124, 0.373605,
		-0.299875, -0.941290, 0.155076,
		29.939625, 33.613682, 29.468094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517664, 33.885689, 28.951973>,  <30.149536, 34.272583, 29.359541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517664, 33.885689, 28.951973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.206215, 33.644539, 29.021587>,  <30.019346, 33.499847, 29.063356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.206215, 33.644539, 29.021587>,  <30.517664, 33.885689, 28.951973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206215, 33.644539, 29.021587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034823, -0.318441, -0.947303,
		0.626528, -0.731529, 0.268938,
		-0.778621, -0.602877, 0.174038,
		29.972630, 33.463676, 29.073799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680061, 33.401981, 28.537500>,  <30.517664, 33.885689, 28.951973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680061, 33.401981, 28.537500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290339, 33.351440, 28.612076>,  <30.056505, 33.321114, 28.656822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290339, 33.351440, 28.612076>,  <30.680061, 33.401981, 28.537500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290339, 33.351440, 28.612076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132552, -0.347551, -0.928245,
		0.182087, -0.929108, 0.321873,
		-0.974307, -0.126356, 0.186440,
		29.998047, 33.313534, 28.668007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593908, 32.835693, 28.180857>,  <30.680061, 33.401981, 28.537500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593908, 32.835693, 28.180857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224367, 32.972069, 28.250433>,  <30.002642, 33.053894, 28.292179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224367, 32.972069, 28.250433>,  <30.593908, 32.835693, 28.180857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224367, 32.972069, 28.250433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291086, -0.330791, -0.897690,
		-0.248512, -0.879968, 0.404843,
		-0.923857, 0.340931, 0.173941,
		29.947210, 33.074348, 28.302614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036427, 32.279293, 28.084036>,  <30.593908, 32.835693, 28.180857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036427, 32.279293, 28.084036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869160, 32.636005, 28.014917>,  <29.768799, 32.850033, 27.973446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869160, 32.636005, 28.014917>,  <30.036427, 32.279293, 28.084036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869160, 32.636005, 28.014917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289140, -0.311007, -0.905358,
		-0.861124, -0.328629, 0.387904,
		-0.418168, 0.891784, -0.172796,
		29.743710, 32.903542, 27.963079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434095, 32.070534, 27.878714>,  <30.036427, 32.279293, 28.084036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434095, 32.070534, 27.878714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447676, 32.451542, 27.757685>,  <29.455824, 32.680145, 27.685066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447676, 32.451542, 27.757685>,  <29.434095, 32.070534, 27.878714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447676, 32.451542, 27.757685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432125, -0.258997, -0.863822,
		-0.901174, 0.160076, 0.402816,
		0.033949, 0.952521, -0.302574,
		29.457861, 32.737297, 27.666912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855776, 32.138474, 27.473965>,  <29.434095, 32.070534, 27.878714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855776, 32.138474, 27.473965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058197, 32.472343, 27.387041>,  <29.179649, 32.672665, 27.334887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058197, 32.472343, 27.387041>,  <28.855776, 32.138474, 27.473965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058197, 32.472343, 27.387041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437444, 0.031237, -0.898703,
		-0.743340, 0.549851, 0.380933,
		0.506052, 0.834678, -0.217309,
		29.210012, 32.722748, 27.321848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357924, 32.648483, 27.425316>,  <28.855776, 32.138474, 27.473965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357924, 32.648483, 27.425316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671221, 32.792500, 27.222576>,  <28.859200, 32.878910, 27.100931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671221, 32.792500, 27.222576>,  <28.357924, 32.648483, 27.425316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671221, 32.792500, 27.222576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532700, -0.031707, -0.845710,
		-0.320562, 0.932397, 0.166960,
		0.783244, 0.360042, -0.506851,
		28.906195, 32.900513, 27.070520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173080, 33.338539, 26.976231>,  <28.357924, 32.648483, 27.425316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173080, 33.338539, 26.976231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503260, 33.184818, 26.810850>,  <28.701368, 33.092587, 26.711622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503260, 33.184818, 26.810850>,  <28.173080, 33.338539, 26.976231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503260, 33.184818, 26.810850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374453, 0.175295, -0.910526,
		0.422394, 0.906412, 0.000794,
		0.825450, -0.384303, -0.413452,
		28.750895, 33.069527, 26.686815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373808, 33.803574, 26.391949>,  <28.173080, 33.338539, 26.976231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373808, 33.803574, 26.391949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543674, 33.447426, 26.326338>,  <28.645594, 33.233738, 26.286970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543674, 33.447426, 26.326338>,  <28.373808, 33.803574, 26.391949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543674, 33.447426, 26.326338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364914, -0.002527, -0.931038,
		0.828552, 0.455235, -0.325981,
		0.424664, -0.890368, -0.164028,
		28.671074, 33.180317, 26.277130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.375530, 40.580364, 47.775589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024796, 40.438652, 47.905602>,  <36.814354, 40.353622, 47.983608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024796, 40.438652, 47.905602>,  <37.375530, 40.580364, 47.775589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024796, 40.438652, 47.905602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177333, 0.866677, 0.466287,
		-0.446895, 0.351218, -0.822758,
		-0.876834, -0.354284, 0.325031,
		36.761745, 40.332367, 48.003113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057861, 41.147995, 47.906513>,  <37.375530, 40.580364, 47.775589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057861, 41.147995, 47.906513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856571, 40.875351, 48.118992>,  <36.735798, 40.711765, 48.246479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856571, 40.875351, 48.118992>,  <37.057861, 41.147995, 47.906513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856571, 40.875351, 48.118992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166509, 0.679663, 0.714376,
		-0.847963, 0.271042, -0.455517,
		-0.503224, -0.681612, 0.531198,
		36.705605, 40.670868, 48.278351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378456, 41.469650, 48.023533>,  <37.057861, 41.147995, 47.906513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378456, 41.469650, 48.023533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429520, 41.169662, 48.283146>,  <36.460155, 40.989670, 48.438915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429520, 41.169662, 48.283146>,  <36.378456, 41.469650, 48.023533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429520, 41.169662, 48.283146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096541, 0.641887, 0.760698,
		-0.987109, -0.159767, 0.009538,
		0.127657, -0.749971, 0.649036,
		36.467815, 40.944672, 48.477856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885864, 41.488461, 48.472580>,  <36.378456, 41.469650, 48.023533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885864, 41.488461, 48.472580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160221, 41.280678, 48.676430>,  <36.324837, 41.156010, 48.798740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160221, 41.280678, 48.676430>,  <35.885864, 41.488461, 48.472580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160221, 41.280678, 48.676430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293069, 0.443828, 0.846834,
		-0.666077, -0.730193, 0.152183,
		0.685895, -0.519456, 0.509621,
		36.365990, 41.124840, 48.829315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510262, 41.193024, 49.020733>,  <35.885864, 41.488461, 48.472580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510262, 41.193024, 49.020733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894131, 41.197693, 49.133087>,  <36.124451, 41.200493, 49.200500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894131, 41.197693, 49.133087>,  <35.510262, 41.193024, 49.020733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894131, 41.197693, 49.133087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270964, 0.304621, 0.913118,
		-0.074907, -0.952402, 0.295498,
		0.959671, 0.011670, 0.280885,
		36.182034, 41.201195, 49.217354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472073, 40.970387, 49.688499>,  <35.510262, 41.193024, 49.020733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472073, 40.970387, 49.688499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826412, 41.155975, 49.688137>,  <36.039017, 41.267326, 49.687920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826412, 41.155975, 49.688137>,  <35.472073, 40.970387, 49.688499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826412, 41.155975, 49.688137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139235, 0.267698, 0.953390,
		0.442585, -0.844435, 0.301741,
		0.885851, 0.463969, -0.000905,
		36.092167, 41.295166, 49.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754108, 40.866974, 50.306782>,  <35.472073, 40.970387, 49.688499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754108, 40.866974, 50.306782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990574, 41.166634, 50.187244>,  <36.132454, 41.346428, 50.115520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990574, 41.166634, 50.187244>,  <35.754108, 40.866974, 50.306782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990574, 41.166634, 50.187244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112106, 0.290604, 0.950253,
		0.798725, -0.595254, 0.087810,
		0.591160, 0.749148, -0.298844,
		36.167923, 41.391376, 50.097591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223866, 40.922287, 50.826687>,  <35.754108, 40.866974, 50.306782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223866, 40.922287, 50.826687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276878, 41.278820, 50.653267>,  <36.308685, 41.492741, 50.549217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276878, 41.278820, 50.653267>,  <36.223866, 40.922287, 50.826687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276878, 41.278820, 50.653267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106538, 0.447682, 0.887824,
		0.985437, -0.071472, 0.154291,
		0.132528, 0.891332, -0.433548,
		36.316635, 41.546219, 50.523201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798805, 41.300209, 51.205597>,  <36.223866, 40.922287, 50.826687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798805, 41.300209, 51.205597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521385, 41.525803, 51.026306>,  <36.354935, 41.661160, 50.918732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521385, 41.525803, 51.026306>,  <36.798805, 41.300209, 51.205597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521385, 41.525803, 51.026306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203823, 0.443149, 0.872969,
		0.690973, 0.696808, -0.192393,
		-0.693551, 0.563984, -0.448229,
		36.313320, 41.695000, 50.891838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853748, 41.836269, 51.650742>,  <36.798805, 41.300209, 51.205597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853748, 41.836269, 51.650742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520817, 41.921108, 51.445904>,  <36.321056, 41.972012, 51.323002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520817, 41.921108, 51.445904>,  <36.853748, 41.836269, 51.650742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520817, 41.921108, 51.445904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204058, 0.741757, 0.638872,
		0.515352, 0.636249, -0.574107,
		-0.832329, 0.212093, -0.512098,
		36.271118, 41.984737, 51.292274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814026, 42.583599, 51.445087>,  <36.853748, 41.836269, 51.650742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814026, 42.583599, 51.445087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450317, 42.419964, 51.475723>,  <36.232090, 42.321781, 51.494106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450317, 42.419964, 51.475723>,  <36.814026, 42.583599, 51.445087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450317, 42.419964, 51.475723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311470, 0.790915, 0.526726,
		-0.276057, 0.455082, -0.846577,
		-0.909274, -0.409089, 0.076593,
		36.177536, 42.297237, 51.498703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364185, 43.099014, 51.209866>,  <36.814026, 42.583599, 51.445087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364185, 43.099014, 51.209866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.163116, 42.851490, 51.451328>,  <36.042477, 42.702976, 51.596207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.163116, 42.851490, 51.451328>,  <36.364185, 43.099014, 51.209866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163116, 42.851490, 51.451328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184645, 0.759025, 0.624330,
		-0.844530, 0.202370, -0.495798,
		-0.502668, -0.618812, 0.603653,
		36.012318, 42.665848, 51.632423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783527, 43.412807, 51.340816>,  <36.364185, 43.099014, 51.209866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783527, 43.412807, 51.340816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837765, 43.166981, 51.651669>,  <35.870308, 43.019485, 51.838181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837765, 43.166981, 51.651669>,  <35.783527, 43.412807, 51.340816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837765, 43.166981, 51.651669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116036, 0.769123, 0.628479,
		-0.983946, -0.175394, 0.032978,
		0.135596, -0.614563, 0.777127,
		35.878445, 42.982613, 51.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197838, 43.274837, 51.818817>,  <35.783527, 43.412807, 51.340816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197838, 43.274837, 51.818817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534355, 43.246952, 52.033241>,  <35.736267, 43.230221, 52.161896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534355, 43.246952, 52.033241>,  <35.197838, 43.274837, 51.818817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534355, 43.246952, 52.033241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221697, 0.859920, 0.459770,
		-0.493020, -0.505646, 0.707992,
		0.841298, -0.069716, 0.536058,
		35.786743, 43.226036, 52.194057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148491, 43.970356, 51.353146>,  <35.197838, 43.274837, 51.818817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148491, 43.970356, 51.353146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844799, 44.219688, 51.278294>,  <34.662582, 44.369289, 51.233383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844799, 44.219688, 51.278294>,  <35.148491, 43.970356, 51.353146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844799, 44.219688, 51.278294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130415, -0.427414, -0.894600,
		-0.637619, -0.654805, 0.405799,
		-0.759233, 0.623336, -0.187131,
		34.617027, 44.406689, 51.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508984, 43.526707, 51.152168>,  <35.148491, 43.970356, 51.353146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508984, 43.526707, 51.152168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455605, 43.895325, 51.006321>,  <34.423576, 44.116497, 50.918812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455605, 43.895325, 51.006321>,  <34.508984, 43.526707, 51.152168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455605, 43.895325, 51.006321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018202, -0.370130, -0.928802,
		-0.990889, -0.117306, 0.066166,
		-0.133444, 0.921544, -0.364622,
		34.415573, 44.171787, 50.896935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101974, 43.485577, 50.605690>,  <34.508984, 43.526707, 51.152168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101974, 43.485577, 50.605690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238270, 43.850929, 50.516579>,  <34.320045, 44.070141, 50.463112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238270, 43.850929, 50.516579>,  <34.101974, 43.485577, 50.605690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238270, 43.850929, 50.516579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036813, -0.223819, -0.973935,
		-0.939438, 0.340057, -0.042639,
		0.340737, 0.913382, -0.222782,
		34.340492, 44.124943, 50.449745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671875, 43.766647, 50.039829>,  <34.101974, 43.485577, 50.605690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671875, 43.766647, 50.039829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039513, 43.924088, 50.032307>,  <34.260094, 44.018551, 50.027794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039513, 43.924088, 50.032307>,  <33.671875, 43.766647, 50.039829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039513, 43.924088, 50.032307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062094, -0.191798, -0.979468,
		-0.389125, 0.899051, -0.200719,
		0.919090, 0.393599, -0.018808,
		34.315239, 44.042168, 50.026665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660698, 44.052536, 49.337440>,  <33.671875, 43.766647, 50.039829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660698, 44.052536, 49.337440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043900, 44.063984, 49.451569>,  <34.273819, 44.070854, 49.520046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043900, 44.063984, 49.451569>,  <33.660698, 44.052536, 49.337440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043900, 44.063984, 49.451569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286630, -0.124781, -0.949880,
		0.008415, 0.991771, -0.127745,
		0.958004, 0.028622, 0.285322,
		34.331303, 44.072571, 49.537167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001907, 44.473316, 48.875156>,  <33.660698, 44.052536, 49.337440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001907, 44.473316, 48.875156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276184, 44.220299, 49.019222>,  <34.440750, 44.068489, 49.105659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276184, 44.220299, 49.019222>,  <34.001907, 44.473316, 48.875156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276184, 44.220299, 49.019222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278604, -0.229048, -0.932693,
		0.672466, 0.739880, 0.019174,
		0.685689, -0.632546, 0.360161,
		34.481892, 44.030537, 49.127270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600491, 44.565273, 48.461403>,  <34.001907, 44.473316, 48.875156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600491, 44.565273, 48.461403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649860, 44.200417, 48.617744>,  <34.679482, 43.981503, 48.711548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649860, 44.200417, 48.617744>,  <34.600491, 44.565273, 48.461403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649860, 44.200417, 48.617744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354554, -0.327333, -0.875868,
		0.926854, 0.246681, 0.283003,
		0.123424, -0.912141, 0.390852,
		34.686886, 43.926773, 48.735001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175179, 44.406605, 48.051105>,  <34.600491, 44.565273, 48.461403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175179, 44.406605, 48.051105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069687, 44.056377, 48.213005>,  <35.006390, 43.846241, 48.310143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069687, 44.056377, 48.213005>,  <35.175179, 44.406605, 48.051105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069687, 44.056377, 48.213005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081477, -0.438323, -0.895117,
		0.961148, -0.203095, 0.186940,
		-0.263734, -0.875572, 0.404746,
		34.990566, 43.793705, 48.334427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775478, 43.918636, 47.922073>,  <35.175179, 44.406605, 48.051105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775478, 43.918636, 47.922073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438320, 43.711166, 47.979355>,  <35.236027, 43.586685, 48.013725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438320, 43.711166, 47.979355>,  <35.775478, 43.918636, 47.922073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438320, 43.711166, 47.979355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178413, -0.520486, -0.835023,
		0.507637, -0.678288, 0.531253,
		-0.842896, -0.518671, 0.143203,
		35.185452, 43.555565, 48.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001595, 43.228836, 47.844280>,  <35.775478, 43.918636, 47.922073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001595, 43.228836, 47.844280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605282, 43.183975, 47.813877>,  <35.367496, 43.157059, 47.795635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605282, 43.183975, 47.813877>,  <36.001595, 43.228836, 47.844280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605282, 43.183975, 47.813877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134177, -0.734657, -0.665038,
		0.018745, -0.669105, 0.742932,
		-0.990780, -0.112150, -0.076007,
		35.308048, 43.150330, 47.791077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795410, 42.412067, 47.928383>,  <36.001595, 43.228836, 47.844280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795410, 42.412067, 47.928383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512730, 42.619534, 47.735897>,  <35.343121, 42.744015, 47.620407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512730, 42.619534, 47.735897>,  <35.795410, 42.412067, 47.928383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512730, 42.619534, 47.735897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006415, -0.675417, -0.737408,
		-0.707485, -0.524213, 0.473989,
		-0.706699, 0.518665, -0.481211,
		35.300720, 42.775131, 47.591534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278469, 41.923008, 47.719795>,  <35.795410, 42.412067, 47.928383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278469, 41.923008, 47.719795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207275, 42.240330, 47.486904>,  <35.164558, 42.430721, 47.347168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207275, 42.240330, 47.486904>,  <35.278469, 41.923008, 47.719795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207275, 42.240330, 47.486904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104427, -0.603564, -0.790446,
		-0.978476, -0.079887, 0.190268,
		-0.177985, 0.793302, -0.582231,
		35.153881, 42.478321, 47.312237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762360, 41.710060, 47.362858>,  <35.278469, 41.923008, 47.719795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762360, 41.710060, 47.362858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888058, 42.019104, 47.142197>,  <34.963478, 42.204529, 47.009800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888058, 42.019104, 47.142197>,  <34.762360, 41.710060, 47.362858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888058, 42.019104, 47.142197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022707, -0.587042, -0.809238,
		-0.949070, 0.241774, -0.202020,
		0.314247, 0.772611, -0.551653,
		34.982330, 42.250889, 46.976700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403862, 41.686920, 46.732597>,  <34.762360, 41.710060, 47.362858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403862, 41.686920, 46.732597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712154, 41.926399, 46.645386>,  <34.897129, 42.070087, 46.593060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712154, 41.926399, 46.645386>,  <34.403862, 41.686920, 46.732597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712154, 41.926399, 46.645386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059211, -0.408011, -0.911055,
		-0.634407, 0.689266, -0.349915,
		0.770728, 0.598699, -0.218033,
		34.943375, 42.106010, 46.579975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714088, 41.917179, 46.423820>,  <34.403862, 41.686920, 46.732597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714088, 41.917179, 46.423820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434677, 41.694965, 46.604237>,  <33.267029, 41.561638, 46.712486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434677, 41.694965, 46.604237>,  <33.714088, 41.917179, 46.423820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434677, 41.694965, 46.604237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197030, 0.755269, 0.625098,
		-0.687919, 0.347782, -0.637036,
		-0.698531, -0.555532, 0.451041,
		33.225117, 41.528305, 46.739548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085556, 42.354916, 46.348927>,  <33.714088, 41.917179, 46.423820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085556, 42.354916, 46.348927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056057, 42.082310, 46.640160>,  <33.038357, 41.918747, 46.814899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056057, 42.082310, 46.640160>,  <33.085556, 42.354916, 46.348927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056057, 42.082310, 46.640160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436704, 0.678416, 0.590798,
		-0.896578, -0.274387, -0.347649,
		-0.073743, -0.681516, 0.728079,
		33.033936, 41.877853, 46.858582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360378, 42.480537, 46.693516>,  <33.085556, 42.354916, 46.348927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360378, 42.480537, 46.693516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567352, 42.281368, 46.971893>,  <32.691536, 42.161869, 47.138920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567352, 42.281368, 46.971893>,  <32.360378, 42.480537, 46.693516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567352, 42.281368, 46.971893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403713, 0.575045, 0.711576,
		-0.754507, -0.649154, 0.096530,
		0.517431, -0.497918, 0.695947,
		32.722580, 42.131992, 47.180679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896519, 42.354992, 47.183578>,  <32.360378, 42.480537, 46.693516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896519, 42.354992, 47.183578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222713, 42.297504, 47.407837>,  <32.418430, 42.263012, 47.542393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222713, 42.297504, 47.407837>,  <31.896519, 42.354992, 47.183578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222713, 42.297504, 47.407837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485492, 0.357488, 0.797809,
		-0.315083, -0.922793, 0.221754,
		0.815488, -0.143716, 0.560647,
		32.467361, 42.254391, 47.576031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717203, 41.924824, 47.680992>,  <31.896519, 42.354992, 47.183578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717203, 41.924824, 47.680992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043316, 42.113663, 47.815121>,  <32.238983, 42.226967, 47.895596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043316, 42.113663, 47.815121>,  <31.717203, 41.924824, 47.680992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043316, 42.113663, 47.815121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504433, 0.294644, 0.811623,
		0.284338, -0.830864, 0.478348,
		0.815291, 0.472069, 0.335337,
		32.287899, 42.255291, 47.915714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725773, 41.751942, 48.372234>,  <31.717203, 41.924824, 47.680992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725773, 41.751942, 48.372234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935028, 42.089001, 48.321198>,  <32.060581, 42.291237, 48.290577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935028, 42.089001, 48.321198>,  <31.725773, 41.751942, 48.372234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935028, 42.089001, 48.321198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379644, 0.364449, 0.850322,
		0.763020, -0.396395, 0.510561,
		0.523137, 0.842644, -0.127593,
		32.091969, 42.341793, 48.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901936, 41.841373, 48.985840>,  <31.725773, 41.751942, 48.372234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901936, 41.841373, 48.985840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957161, 42.191212, 48.799931>,  <31.990297, 42.401115, 48.688385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957161, 42.191212, 48.799931>,  <31.901936, 41.841373, 48.985840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957161, 42.191212, 48.799931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423540, 0.476331, 0.770534,
		0.895294, 0.090467, 0.436192,
		0.138064, 0.874600, -0.464773,
		31.998581, 42.453590, 48.660500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809185, 41.316090, 49.475700>,  <31.901936, 41.841373, 48.985840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809185, 41.316090, 49.475700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479568, 41.179111, 49.656227>,  <31.281799, 41.096924, 49.764542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479568, 41.179111, 49.656227>,  <31.809185, 41.316090, 49.475700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479568, 41.179111, 49.656227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147168, -0.639892, -0.754241,
		0.547084, -0.687944, 0.476899,
		-0.824039, -0.342449, 0.451318,
		31.232357, 41.076378, 49.791622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872402, 40.566235, 49.527393>,  <31.809185, 41.316090, 49.475700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872402, 40.566235, 49.527393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488489, 40.677387, 49.543392>,  <31.258141, 40.744080, 49.552990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488489, 40.677387, 49.543392>,  <31.872402, 40.566235, 49.527393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488489, 40.677387, 49.543392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201463, -0.582514, -0.787458,
		-0.195520, -0.763847, 0.615069,
		-0.959783, 0.277878, 0.039994,
		31.200554, 40.760750, 49.555389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746429, 40.057232, 49.153954>,  <31.872402, 40.566235, 49.527393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746429, 40.057232, 49.153954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414848, 40.278790, 49.185040>,  <31.215900, 40.411724, 49.203693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414848, 40.278790, 49.185040>,  <31.746429, 40.057232, 49.153954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414848, 40.278790, 49.185040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427163, -0.537243, -0.727256,
		-0.361068, -0.636060, 0.681951,
		-0.828952, 0.553894, 0.077720,
		31.166162, 40.444958, 49.208355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195415, 39.497833, 49.065460>,  <31.746429, 40.057232, 49.153954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195415, 39.497833, 49.065460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067911, 39.863686, 48.965992>,  <30.991409, 40.083199, 48.906311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067911, 39.863686, 48.965992>,  <31.195415, 39.497833, 49.065460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067911, 39.863686, 48.965992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473323, -0.380910, -0.794275,
		-0.821192, -0.135481, 0.554336,
		-0.318761, 0.914632, -0.248675,
		30.972282, 40.138077, 48.891388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489462, 39.482117, 48.898514>,  <31.195415, 39.497833, 49.065460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489462, 39.482117, 48.898514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.629364, 39.806156, 48.710297>,  <30.713306, 40.000580, 48.597366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.629364, 39.806156, 48.710297>,  <30.489462, 39.482117, 48.898514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629364, 39.806156, 48.710297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335990, -0.360381, -0.870193,
		-0.874518, 0.462452, 0.146140,
		0.349757, 0.810101, -0.470539,
		30.734291, 40.049187, 48.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927710, 39.698433, 48.357132>,  <30.489462, 39.482117, 48.898514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927710, 39.698433, 48.357132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.271276, 39.883175, 48.268635>,  <30.477417, 39.994022, 48.215538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.271276, 39.883175, 48.268635>,  <29.927710, 39.698433, 48.357132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271276, 39.883175, 48.268635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085676, -0.296335, -0.951233,
		-0.504896, 0.835986, -0.214958,
		0.858918, 0.461857, -0.221242,
		30.528952, 40.021732, 48.202263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808836, 39.938206, 47.653069>,  <29.927710, 39.698433, 48.357132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808836, 39.938206, 47.653069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205566, 39.934795, 47.703995>,  <30.443604, 39.932747, 47.734550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205566, 39.934795, 47.703995>,  <29.808836, 39.938206, 47.653069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205566, 39.934795, 47.703995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122140, -0.225414, -0.966577,
		0.036942, 0.974226, -0.222530,
		0.991825, -0.008528, 0.127319,
		30.503115, 39.932236, 47.742191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.852310, 39.936188, 53.054760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509228, 40.141460, 53.042191>,  <35.303379, 40.264626, 53.034649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509228, 40.141460, 53.042191>,  <35.852310, 39.936188, 53.054760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509228, 40.141460, 53.042191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019257, 0.029010, 0.999394,
		0.513785, 0.857788, -0.015000,
		-0.857703, 0.513185, -0.031423,
		35.251919, 40.295414, 53.032764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095821, 39.745365, 52.882946>,  <35.852310, 39.936188, 53.054760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095821, 39.745365, 52.882946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330822, 40.004230, 52.688618>,  <35.471825, 40.159550, 52.572021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330822, 40.004230, 52.688618>,  <35.095821, 39.745365, 52.882946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330822, 40.004230, 52.688618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080123, -0.550881, -0.830729,
		-0.805243, 0.526984, -0.271793,
		0.587506, 0.647162, -0.485817,
		35.507072, 40.198380, 52.542873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810307, 39.836891, 52.222202>,  <35.095821, 39.745365, 52.882946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810307, 39.836891, 52.222202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200077, 39.924809, 52.203476>,  <35.433937, 39.977558, 52.192242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200077, 39.924809, 52.203476>,  <34.810307, 39.836891, 52.222202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200077, 39.924809, 52.203476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021003, -0.296476, -0.954809,
		-0.223740, 0.929404, -0.293509,
		0.974423, 0.219793, -0.046813,
		35.492405, 39.990746, 52.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945019, 40.201393, 51.524841>,  <34.810307, 39.836891, 52.222202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945019, 40.201393, 51.524841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287346, 40.045559, 51.660965>,  <35.492741, 39.952061, 51.742638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287346, 40.045559, 51.660965>,  <34.945019, 40.201393, 51.524841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287346, 40.045559, 51.660965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145442, -0.450108, -0.881050,
		0.496416, 0.803510, -0.328547,
		0.855814, -0.389583, 0.340305,
		35.544090, 39.928684, 51.763058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507893, 40.313923, 51.046062>,  <34.945019, 40.201393, 51.524841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507893, 40.313923, 51.046062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652542, 40.002323, 51.250957>,  <35.739330, 39.815365, 51.373894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652542, 40.002323, 51.250957>,  <35.507893, 40.313923, 51.046062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652542, 40.002323, 51.250957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233617, -0.456182, -0.858674,
		0.902581, 0.430183, 0.017022,
		0.361622, -0.778999, 0.512239,
		35.761028, 39.768623, 51.404629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068058, 40.122681, 50.611164>,  <35.507893, 40.313923, 51.046062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068058, 40.122681, 50.611164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043484, 39.820435, 50.872013>,  <36.028740, 39.639088, 51.028522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043484, 39.820435, 50.872013>,  <36.068058, 40.122681, 50.611164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043484, 39.820435, 50.872013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449993, -0.604159, -0.657646,
		0.890917, 0.253051, 0.377137,
		-0.061433, -0.755617, 0.652127,
		36.025055, 39.593750, 51.067650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739246, 39.745979, 50.647842>,  <36.068058, 40.122681, 50.611164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739246, 39.745979, 50.647842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.446735, 39.498955, 50.763668>,  <36.271229, 39.350739, 50.833164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.446735, 39.498955, 50.763668>,  <36.739246, 39.745979, 50.647842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446735, 39.498955, 50.763668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328399, -0.690873, -0.644088,
		0.597818, -0.375913, 0.708027,
		-0.731278, -0.617563, 0.289567,
		36.227352, 39.313686, 50.850536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027481, 39.035358, 50.618893>,  <36.739246, 39.745979, 50.647842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027481, 39.035358, 50.618893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634312, 38.965614, 50.642418>,  <36.398411, 38.923767, 50.656532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634312, 38.965614, 50.642418>,  <37.027481, 39.035358, 50.618893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634312, 38.965614, 50.642418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083792, -0.708682, -0.700535,
		0.163826, -0.683644, 0.711190,
		-0.982924, -0.174358, 0.058816,
		36.339436, 38.913307, 50.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945217, 38.306824, 50.808907>,  <37.027481, 39.035358, 50.618893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945217, 38.306824, 50.808907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596462, 38.424171, 50.652061>,  <36.387211, 38.494579, 50.557957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596462, 38.424171, 50.652061>,  <36.945217, 38.306824, 50.808907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596462, 38.424171, 50.652061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005954, -0.794289, -0.607512,
		-0.489673, -0.532015, 0.690782,
		-0.871885, 0.293369, -0.392109,
		36.334896, 38.512184, 50.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482460, 37.766968, 50.792854>,  <36.945217, 38.306824, 50.808907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482460, 37.766968, 50.792854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354050, 38.010769, 50.502903>,  <36.277004, 38.157051, 50.328934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354050, 38.010769, 50.502903>,  <36.482460, 37.766968, 50.792854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354050, 38.010769, 50.502903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077159, -0.779679, -0.621407,
		-0.943922, -0.143558, 0.297327,
		-0.321027, 0.609501, -0.724880,
		36.257740, 38.193619, 50.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920139, 37.410255, 50.489258>,  <36.482460, 37.766968, 50.792854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920139, 37.410255, 50.489258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037807, 37.668823, 50.207661>,  <36.108410, 37.823963, 50.038704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037807, 37.668823, 50.207661>,  <35.920139, 37.410255, 50.489258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037807, 37.668823, 50.207661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198532, -0.761843, -0.616588,
		-0.934906, 0.041617, -0.352447,
		0.294170, 0.646424, -0.703989,
		36.126057, 37.862751, 49.996464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373138, 37.468636, 50.019962>,  <35.920139, 37.410255, 50.489258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373138, 37.468636, 50.019962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.714733, 37.579449, 49.843796>,  <35.919689, 37.645935, 49.738094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.714733, 37.579449, 49.843796>,  <35.373138, 37.468636, 50.019962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714733, 37.579449, 49.843796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057114, -0.791439, -0.608574,
		-0.517155, 0.544867, -0.660054,
		0.853984, 0.277028, -0.440416,
		35.970928, 37.662556, 49.711670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109211, 37.842213, 49.521011>,  <35.373138, 37.468636, 50.019962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109211, 37.842213, 49.521011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735855, 37.720108, 49.445534>,  <34.511841, 37.646847, 49.400246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735855, 37.720108, 49.445534>,  <35.109211, 37.842213, 49.521011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735855, 37.720108, 49.445534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357835, 0.751615, 0.554102,
		-0.027319, 0.584713, -0.810780,
		-0.933385, -0.305263, -0.188697,
		34.455841, 37.628529, 49.388924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771301, 38.433571, 49.327751>,  <35.109211, 37.842213, 49.521011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771301, 38.433571, 49.327751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494873, 38.171379, 49.449581>,  <34.329014, 38.014065, 49.522678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494873, 38.171379, 49.449581>,  <34.771301, 38.433571, 49.327751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494873, 38.171379, 49.449581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410449, 0.702747, 0.581101,
		-0.594937, 0.276572, -0.754691,
		-0.691072, -0.655480, 0.304572,
		34.287552, 37.974735, 49.540955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131325, 38.775398, 49.335896>,  <34.771301, 38.433571, 49.327751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131325, 38.775398, 49.335896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.056007, 38.464588, 49.576157>,  <34.010818, 38.278103, 49.720314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.056007, 38.464588, 49.576157>,  <34.131325, 38.775398, 49.335896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056007, 38.464588, 49.576157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555570, 0.588600, 0.587274,
		-0.809869, -0.223126, -0.542519,
		-0.188290, -0.777023, 0.600652,
		33.999519, 38.231480, 49.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440781, 38.856274, 49.506065>,  <34.131325, 38.775398, 49.335896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440781, 38.856274, 49.506065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580074, 38.599319, 49.779144>,  <33.663651, 38.445148, 49.942993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580074, 38.599319, 49.779144>,  <33.440781, 38.856274, 49.506065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580074, 38.599319, 49.779144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421228, 0.543382, 0.726156,
		-0.837438, -0.540441, -0.081368,
		0.348231, -0.642386, 0.682698,
		33.684544, 38.406605, 49.983955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887371, 38.681885, 49.992962>,  <33.440781, 38.856274, 49.506065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887371, 38.681885, 49.992962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207809, 38.580669, 50.209927>,  <33.400074, 38.519939, 50.340107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207809, 38.580669, 50.209927>,  <32.887371, 38.681885, 49.992962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207809, 38.580669, 50.209927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357494, 0.524541, 0.772693,
		-0.480043, -0.812912, 0.329747,
		0.801097, -0.253043, 0.542414,
		33.448139, 38.504757, 50.372650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591389, 38.323799, 50.580971>,  <32.887371, 38.681885, 49.992962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591389, 38.323799, 50.580971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964172, 38.428066, 50.681774>,  <33.187843, 38.490627, 50.742256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964172, 38.428066, 50.681774>,  <32.591389, 38.323799, 50.580971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964172, 38.428066, 50.681774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329242, 0.317333, 0.889325,
		0.151848, -0.911785, 0.381564,
		0.931955, 0.260670, 0.252012,
		33.243759, 38.506268, 50.757378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671238, 38.182503, 51.422405>,  <32.591389, 38.323799, 50.580971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671238, 38.182503, 51.422405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962852, 38.430283, 51.305939>,  <33.137821, 38.578949, 51.236057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962852, 38.430283, 51.305939>,  <32.671238, 38.182503, 51.422405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962852, 38.430283, 51.305939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260272, 0.644328, 0.719096,
		0.633049, -0.448471, 0.630969,
		0.729045, 0.619447, -0.291167,
		33.181564, 38.616119, 51.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012119, 38.275669, 52.026199>,  <32.671238, 38.182503, 51.422405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012119, 38.275669, 52.026199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.136753, 38.570694, 51.786560>,  <33.211533, 38.747707, 51.642776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.136753, 38.570694, 51.786560>,  <33.012119, 38.275669, 52.026199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136753, 38.570694, 51.786560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348235, 0.675255, 0.650203,
		0.884109, 0.006035, 0.467242,
		0.311583, 0.737560, -0.599100,
		33.230228, 38.791962, 51.606831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420437, 38.729164, 52.403954>,  <33.012119, 38.275669, 52.026199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420437, 38.729164, 52.403954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299477, 38.963139, 52.102913>,  <33.226902, 39.103523, 51.922287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299477, 38.963139, 52.102913>,  <33.420437, 38.729164, 52.403954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299477, 38.963139, 52.102913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138415, 0.754250, 0.641832,
		0.943077, 0.298262, -0.147123,
		-0.302402, 0.584933, -0.752600,
		33.208755, 39.138618, 51.877132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742577, 39.454678, 52.537430>,  <33.420437, 38.729164, 52.403954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742577, 39.454678, 52.537430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.434380, 39.481075, 52.283821>,  <33.249462, 39.496914, 52.131657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.434380, 39.481075, 52.283821>,  <33.742577, 39.454678, 52.537430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434380, 39.481075, 52.283821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448871, 0.650049, 0.613149,
		0.452614, 0.757021, -0.471233,
		-0.770491, 0.065997, -0.634026,
		33.203232, 39.500874, 52.093613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624252, 40.111416, 52.490120>,  <33.742577, 39.454678, 52.537430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624252, 40.111416, 52.490120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274178, 39.940243, 52.399849>,  <33.064133, 39.837540, 52.345688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274178, 39.940243, 52.399849>,  <33.624252, 40.111416, 52.490120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274178, 39.940243, 52.399849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456552, 0.576242, 0.677868,
		-0.160037, 0.696292, -0.699690,
		-0.875185, -0.427929, -0.225674,
		33.011623, 39.811863, 52.332146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190449, 40.659050, 52.486179>,  <33.624252, 40.111416, 52.490120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190449, 40.659050, 52.486179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927155, 40.359665, 52.518501>,  <32.769180, 40.180035, 52.537895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927155, 40.359665, 52.518501>,  <33.190449, 40.659050, 52.486179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927155, 40.359665, 52.518501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525138, 0.533418, 0.663095,
		-0.539408, 0.394035, -0.744161,
		-0.658231, -0.748466, 0.080807,
		32.729687, 40.135124, 52.542744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544003, 40.986153, 52.302994>,  <33.190449, 40.659050, 52.486179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544003, 40.986153, 52.302994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.495602, 40.657253, 52.525440>,  <32.466560, 40.459911, 52.658909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.495602, 40.657253, 52.525440>,  <32.544003, 40.986153, 52.302994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495602, 40.657253, 52.525440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563561, 0.518090, 0.643414,
		-0.817164, -0.235550, -0.526078,
		-0.121000, -0.822252, 0.556112,
		32.459301, 40.410576, 52.692272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910940, 41.112644, 52.660923>,  <32.544003, 40.986153, 52.302994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910940, 41.112644, 52.660923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035275, 40.814297, 52.896572>,  <32.109875, 40.635288, 53.037960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035275, 40.814297, 52.896572>,  <31.910940, 41.112644, 52.660923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035275, 40.814297, 52.896572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560077, 0.357042, 0.747553,
		-0.767916, -0.562320, -0.306760,
		0.310837, -0.745867, 0.589121,
		32.128525, 40.590538, 53.073307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210802, 41.248264, 52.944462>,  <31.910940, 41.112644, 52.660923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210802, 41.248264, 52.944462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116117, 41.623539, 52.843452>,  <31.059307, 41.848705, 52.782848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116117, 41.623539, 52.843452>,  <31.210802, 41.248264, 52.944462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116117, 41.623539, 52.843452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361379, -0.326283, -0.873467,
		-0.901872, -0.115503, 0.416277,
		-0.236712, 0.938189, -0.252525,
		31.045103, 41.904995, 52.767696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599915, 41.172546, 52.529934>,  <31.210802, 41.248264, 52.944462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599915, 41.172546, 52.529934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817310, 41.490276, 52.421371>,  <30.947748, 41.680916, 52.356236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817310, 41.490276, 52.421371>,  <30.599915, 41.172546, 52.529934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817310, 41.490276, 52.421371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221532, -0.176132, -0.959115,
		-0.809654, 0.581396, 0.080243,
		0.543492, 0.794328, -0.271404,
		30.980358, 41.728573, 52.339951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194067, 41.501106, 52.027531>,  <30.599915, 41.172546, 52.529934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194067, 41.501106, 52.027531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570568, 41.617432, 51.958866>,  <30.796469, 41.687225, 51.917667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570568, 41.617432, 51.958866>,  <30.194067, 41.501106, 52.027531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570568, 41.617432, 51.958866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086198, -0.284599, -0.954763,
		-0.326512, 0.913472, -0.242813,
		0.941254, 0.290812, -0.171665,
		30.852945, 41.704674, 51.907368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115818, 41.875099, 51.318111>,  <30.194067, 41.501106, 52.027531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115818, 41.875099, 51.318111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.501873, 41.785419, 51.372143>,  <30.733505, 41.731609, 51.404560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.501873, 41.785419, 51.372143>,  <30.115818, 41.875099, 51.318111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501873, 41.785419, 51.372143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086016, -0.215719, -0.972660,
		0.247210, 0.950368, -0.188913,
		0.965137, -0.224202, 0.135074,
		30.791414, 41.718159, 51.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439415, 42.189705, 50.793396>,  <30.115818, 41.875099, 51.318111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439415, 42.189705, 50.793396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704437, 41.907173, 50.893093>,  <30.863451, 41.737656, 50.952911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704437, 41.907173, 50.893093>,  <30.439415, 42.189705, 50.793396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704437, 41.907173, 50.893093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044896, -0.294715, -0.954530,
		0.747665, 0.643621, -0.163554,
		0.662557, -0.706325, 0.249244,
		30.903204, 41.695274, 50.967865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071796, 42.302704, 50.386753>,  <30.439415, 42.189705, 50.793396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071796, 42.302704, 50.386753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079657, 41.916744, 50.491512>,  <31.084373, 41.685169, 50.554367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079657, 41.916744, 50.491512>,  <31.071796, 42.302704, 50.386753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079657, 41.916744, 50.491512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070651, -0.259951, -0.963034,
		0.997308, 0.037429, 0.063062,
		0.019652, -0.964896, 0.261896,
		31.085552, 41.627274, 50.570080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513647, 42.036072, 49.907936>,  <31.071796, 42.302704, 50.386753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513647, 42.036072, 49.907936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.312904, 41.719704, 50.047985>,  <31.192459, 41.529884, 50.132015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.312904, 41.719704, 50.047985>,  <31.513647, 42.036072, 49.907936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312904, 41.719704, 50.047985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024341, -0.391712, -0.919766,
		0.864609, -0.470112, 0.177331,
		-0.501855, -0.790922, 0.350120,
		31.162348, 41.482426, 50.153023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220425, 42.279648, 49.580769>,  <31.513647, 42.036072, 49.907936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220425, 42.279648, 49.580769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.104012, 42.524998, 49.287083>,  <32.034164, 42.672207, 49.110870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.104012, 42.524998, 49.287083>,  <32.220425, 42.279648, 49.580769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104012, 42.524998, 49.287083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230525, 0.699866, 0.676051,
		0.928524, 0.366009, -0.062287,
		-0.291034, 0.613371, -0.734217,
		32.016701, 42.709007, 49.066818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634239, 42.862705, 49.704269>,  <32.220425, 42.279648, 49.580769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634239, 42.862705, 49.704269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325649, 42.968613, 49.472847>,  <32.140495, 43.032158, 49.333992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325649, 42.968613, 49.472847>,  <32.634239, 42.862705, 49.704269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325649, 42.968613, 49.472847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163751, 0.796057, 0.582648,
		0.614832, 0.544236, -0.570779,
		-0.771471, 0.264765, -0.578560,
		32.094208, 43.048042, 49.299278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735672, 43.637474, 49.546783>,  <32.634239, 42.862705, 49.704269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735672, 43.637474, 49.546783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356167, 43.514553, 49.517357>,  <32.128464, 43.440800, 49.499699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356167, 43.514553, 49.517357>,  <32.735672, 43.637474, 49.546783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356167, 43.514553, 49.517357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271350, 0.673061, 0.688010,
		-0.161908, 0.672723, -0.721962,
		-0.948765, -0.307299, -0.073569,
		32.071537, 43.422363, 49.495285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420563, 44.173218, 49.344975>,  <32.735672, 43.637474, 49.546783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420563, 44.173218, 49.344975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131104, 43.949684, 49.506981>,  <31.957428, 43.815563, 49.604187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131104, 43.949684, 49.506981>,  <32.420563, 44.173218, 49.344975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131104, 43.949684, 49.506981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225554, 0.746107, 0.626458,
		-0.652273, 0.361981, -0.665965,
		-0.723647, -0.558833, 0.405019,
		31.914009, 43.782036, 49.628487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821741, 44.588821, 49.336960>,  <32.420563, 44.173218, 49.344975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821741, 44.588821, 49.336960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.739292, 44.323418, 49.624645>,  <31.689823, 44.164173, 49.797256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.739292, 44.323418, 49.624645>,  <31.821741, 44.588821, 49.336960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739292, 44.323418, 49.624645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337873, 0.738049, 0.584060,
		-0.918344, -0.122615, -0.376311,
		-0.206121, -0.663514, 0.719211,
		31.677456, 44.124363, 49.840408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169680, 44.839989, 49.569698>,  <31.821741, 44.588821, 49.336960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169680, 44.839989, 49.569698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.300690, 44.592659, 49.855469>,  <31.379295, 44.444263, 50.026932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.300690, 44.592659, 49.855469>,  <31.169680, 44.839989, 49.569698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300690, 44.592659, 49.855469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254601, 0.670407, 0.696945,
		-0.909893, -0.410161, 0.062149,
		0.327525, -0.618322, 0.714427,
		31.398947, 44.407162, 50.069798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737003, 44.981503, 50.089664>,  <31.169680, 44.839989, 49.569698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737003, 44.981503, 50.089664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.043228, 44.801056, 50.273144>,  <31.226963, 44.692787, 50.383232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.043228, 44.801056, 50.273144>,  <30.737003, 44.981503, 50.089664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043228, 44.801056, 50.273144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074634, 0.645890, 0.759774,
		-0.639019, -0.615888, 0.460799,
		0.765561, -0.451119, 0.458703,
		31.272896, 44.665722, 50.410755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551420, 44.991482, 50.844879>,  <30.737003, 44.981503, 50.089664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551420, 44.991482, 50.844879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943672, 44.913143, 50.843410>,  <31.179024, 44.866138, 50.842529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943672, 44.913143, 50.843410>,  <30.551420, 44.991482, 50.844879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943672, 44.913143, 50.843410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111575, 0.543056, 0.832251,
		-0.160997, -0.816538, 0.554387,
		0.980628, -0.195846, -0.003674,
		31.237860, 44.854389, 50.842308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776939, 44.670578, 51.598087>,  <30.551420, 44.991482, 50.844879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776939, 44.670578, 51.598087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094624, 44.827644, 51.412598>,  <31.285234, 44.921886, 51.301304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094624, 44.827644, 51.412598>,  <30.776939, 44.670578, 51.598087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094624, 44.827644, 51.412598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101953, 0.666223, 0.738750,
		0.599029, -0.634001, 0.489087,
		0.794210, 0.392669, -0.463726,
		31.332886, 44.945446, 51.273479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.952244, 36.509087, 38.346916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337151, 36.426762, 38.275715>,  <33.568092, 36.377365, 38.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337151, 36.426762, 38.275715>,  <32.952244, 36.509087, 38.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337151, 36.426762, 38.275715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259109, 0.493220, 0.830420,
		-0.083116, -0.845207, 0.527937,
		0.962265, -0.205814, -0.178006,
		33.625832, 36.365017, 38.222313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287090, 36.188862, 38.881824>,  <32.952244, 36.509087, 38.346916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287090, 36.188862, 38.881824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607174, 36.360577, 38.714314>,  <33.799225, 36.463608, 38.613808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607174, 36.360577, 38.714314>,  <33.287090, 36.188862, 38.881824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607174, 36.360577, 38.714314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288286, 0.336966, 0.896295,
		0.525882, -0.837953, 0.145886,
		0.800212, 0.429289, -0.418774,
		33.847237, 36.489365, 38.588680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873951, 36.078644, 39.375034>,  <33.287090, 36.188862, 38.881824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873951, 36.078644, 39.375034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990322, 36.383148, 39.143227>,  <34.060143, 36.565853, 39.004143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990322, 36.383148, 39.143227>,  <33.873951, 36.078644, 39.375034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990322, 36.383148, 39.143227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352080, 0.478026, 0.804693,
		0.889608, -0.438140, -0.128957,
		0.290923, 0.761265, -0.579517,
		34.077599, 36.611526, 38.969372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503666, 36.286068, 39.731140>,  <33.873951, 36.078644, 39.375034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503666, 36.286068, 39.731140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403755, 36.583431, 39.482960>,  <34.343807, 36.761848, 39.334053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403755, 36.583431, 39.482960>,  <34.503666, 36.286068, 39.731140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403755, 36.583431, 39.482960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228768, 0.667923, 0.708198,
		0.940892, 0.034952, -0.336899,
		-0.249775, 0.743410, -0.620447,
		34.328823, 36.806454, 39.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075092, 36.697838, 39.743591>,  <34.503666, 36.286068, 39.731140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075092, 36.697838, 39.743591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758034, 36.914932, 39.632492>,  <34.567799, 37.045189, 39.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758034, 36.914932, 39.632492>,  <35.075092, 36.697838, 39.743591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758034, 36.914932, 39.632492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265092, 0.717058, 0.644635,
		0.549029, 0.437340, -0.712250,
		-0.792649, 0.542736, -0.277750,
		34.520241, 37.077751, 39.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336548, 37.358162, 39.834988>,  <35.075092, 36.697838, 39.743591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336548, 37.358162, 39.834988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944344, 37.431290, 39.806190>,  <34.709023, 37.475166, 39.788910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944344, 37.431290, 39.806190>,  <35.336548, 37.358162, 39.834988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944344, 37.431290, 39.806190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051784, 0.593916, 0.802859,
		0.189537, 0.783481, -0.591805,
		-0.980507, 0.182818, -0.071997,
		34.650192, 37.486134, 39.784592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209972, 38.137218, 39.962780>,  <35.336548, 37.358162, 39.834988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209972, 38.137218, 39.962780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860168, 37.957077, 40.034794>,  <34.650288, 37.848991, 40.078003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860168, 37.957077, 40.034794>,  <35.209972, 38.137218, 39.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860168, 37.957077, 40.034794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195768, 0.667393, 0.718513,
		-0.443740, 0.593101, -0.671807,
		-0.874511, -0.450352, 0.180039,
		34.597816, 37.821972, 40.088806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726955, 38.709431, 39.988922>,  <35.209972, 38.137218, 39.962780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726955, 38.709431, 39.988922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575096, 38.385147, 40.167187>,  <34.483978, 38.190578, 40.274147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575096, 38.385147, 40.167187>,  <34.726955, 38.709431, 39.988922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575096, 38.385147, 40.167187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416523, 0.579936, 0.700131,
		-0.826059, 0.080176, -0.557852,
		-0.379652, -0.810707, 0.445666,
		34.461201, 38.141933, 40.300888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068916, 38.870693, 40.103706>,  <34.726955, 38.709431, 39.988922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068916, 38.870693, 40.103706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110649, 38.582539, 40.377979>,  <34.135689, 38.409645, 40.542542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110649, 38.582539, 40.377979>,  <34.068916, 38.870693, 40.103706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110649, 38.582539, 40.377979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177934, 0.664800, 0.725520,
		-0.978496, -0.197699, -0.058823,
		0.104329, -0.720386, 0.685682,
		34.141949, 38.366425, 40.583683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434971, 38.877686, 40.506496>,  <34.068916, 38.870693, 40.103706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434971, 38.877686, 40.506496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720284, 38.695919, 40.719940>,  <33.891472, 38.586861, 40.848007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720284, 38.695919, 40.719940>,  <33.434971, 38.877686, 40.506496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720284, 38.695919, 40.719940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277089, 0.516491, 0.810221,
		-0.643779, -0.725773, 0.242491,
		0.713282, -0.454412, 0.533610,
		33.934269, 38.559597, 40.880024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091846, 38.554012, 41.009232>,  <33.434971, 38.877686, 40.506496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091846, 38.554012, 41.009232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468204, 38.619381, 41.127903>,  <33.694019, 38.658604, 41.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468204, 38.619381, 41.127903>,  <33.091846, 38.554012, 41.009232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468204, 38.619381, 41.127903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333718, 0.297444, 0.894516,
		0.057938, -0.940649, 0.334399,
		0.940891, 0.163421, 0.296678,
		33.750473, 38.668407, 41.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017376, 38.410923, 41.764469>,  <33.091846, 38.554012, 41.009232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017376, 38.410923, 41.764469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377644, 38.582607, 41.737411>,  <33.593803, 38.685616, 41.721176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377644, 38.582607, 41.737411>,  <33.017376, 38.410923, 41.764469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377644, 38.582607, 41.737411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089111, 0.334828, 0.938056,
		0.425272, -0.838850, 0.339816,
		0.900668, 0.429210, -0.067642,
		33.647846, 38.711369, 41.717117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727367, 37.797985, 42.163307>,  <33.017376, 38.410923, 41.764469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727367, 37.797985, 42.163307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342045, 37.776070, 42.268402>,  <32.110851, 37.762920, 42.331459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342045, 37.776070, 42.268402>,  <32.727367, 37.797985, 42.163307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342045, 37.776070, 42.268402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174471, -0.616038, -0.768152,
		0.203946, -0.785808, 0.583876,
		-0.963310, -0.054793, 0.262739,
		32.053051, 37.759632, 42.347225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477337, 37.087315, 42.327484>,  <32.727367, 37.797985, 42.163307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477337, 37.087315, 42.327484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177174, 37.314732, 42.192638>,  <31.997074, 37.451180, 42.111732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177174, 37.314732, 42.192638>,  <32.477337, 37.087315, 42.327484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177174, 37.314732, 42.192638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259162, -0.722274, -0.641214,
		-0.608043, -0.393808, 0.689347,
		-0.750413, 0.568538, -0.337114,
		31.952051, 37.485294, 42.091503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859762, 36.592758, 42.120575>,  <32.477337, 37.087315, 42.327484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859762, 36.592758, 42.120575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733749, 36.922886, 41.933128>,  <31.658142, 37.120964, 41.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733749, 36.922886, 41.933128>,  <31.859762, 36.592758, 42.120575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733749, 36.922886, 41.933128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375450, -0.561849, -0.737131,
		-0.871661, -0.056278, 0.486867,
		-0.315030, 0.825323, -0.468613,
		31.639240, 37.170483, 41.792545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195347, 36.480572, 41.886738>,  <31.859762, 36.592758, 42.120575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195347, 36.480572, 41.886738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314390, 36.774921, 41.643456>,  <31.385817, 36.951530, 41.497486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314390, 36.774921, 41.643456>,  <31.195347, 36.480572, 41.886738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314390, 36.774921, 41.643456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345061, -0.511095, -0.787220,
		-0.890148, 0.444151, 0.101817,
		0.297606, 0.735876, -0.608209,
		31.403671, 36.995686, 41.460995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582516, 36.662380, 41.475208>,  <31.195347, 36.480572, 41.886738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582516, 36.662380, 41.475208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914103, 36.777443, 41.283344>,  <31.113054, 36.846481, 41.168224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914103, 36.777443, 41.283344>,  <30.582516, 36.662380, 41.475208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914103, 36.777443, 41.283344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304556, -0.487150, -0.818493,
		-0.469108, 0.824585, -0.316224,
		0.828965, 0.287653, -0.479658,
		31.162792, 36.863739, 41.139446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367424, 36.652500, 40.704681>,  <30.582516, 36.662380, 41.475208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367424, 36.652500, 40.704681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764896, 36.697338, 40.702293>,  <31.003380, 36.724239, 40.700859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764896, 36.697338, 40.702293>,  <30.367424, 36.652500, 40.704681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764896, 36.697338, 40.702293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045938, -0.454627, -0.889496,
		-0.102419, 0.883601, -0.456903,
		0.993680, 0.112091, -0.005972,
		31.063000, 36.730965, 40.700500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481684, 36.883686, 40.116150>,  <30.367424, 36.652500, 40.704681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481684, 36.883686, 40.116150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838959, 36.741722, 40.226612>,  <31.053324, 36.656544, 40.292889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838959, 36.741722, 40.226612>,  <30.481684, 36.883686, 40.116150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838959, 36.741722, 40.226612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181468, -0.277408, -0.943459,
		0.411446, 0.892797, -0.183373,
		0.893186, -0.354906, 0.276153,
		31.106915, 36.635250, 40.309460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918268, 36.979889, 39.530361>,  <30.481684, 36.883686, 40.116150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918268, 36.979889, 39.530361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108471, 36.707302, 39.752892>,  <31.222593, 36.543751, 39.886410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108471, 36.707302, 39.752892>,  <30.918268, 36.979889, 39.530361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108471, 36.707302, 39.752892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203417, -0.530080, -0.823187,
		0.855871, 0.504596, -0.113435,
		0.475507, -0.681467, 0.556323,
		31.251123, 36.502861, 39.919788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706242, 37.027672, 39.373154>,  <30.918268, 36.979889, 39.530361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706242, 37.027672, 39.373154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602285, 36.659969, 39.491421>,  <31.539911, 36.439346, 39.562382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602285, 36.659969, 39.491421>,  <31.706242, 37.027672, 39.373154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602285, 36.659969, 39.491421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502514, -0.390214, -0.771500,
		0.824582, -0.051929, 0.563354,
		-0.259892, -0.919259, 0.295669,
		31.524319, 36.384193, 39.580120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271564, 36.575687, 39.283188>,  <31.706242, 37.027672, 39.373154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271564, 36.575687, 39.283188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965380, 36.318329, 39.287495>,  <31.781670, 36.163914, 39.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965380, 36.318329, 39.287495>,  <32.271564, 36.575687, 39.283188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965380, 36.318329, 39.287495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469173, -0.569475, -0.674963,
		0.440397, -0.511606, 0.737773,
		-0.765459, -0.643395, 0.010764,
		31.735743, 36.125309, 39.290722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588120, 36.040409, 39.025978>,  <32.271564, 36.575687, 39.283188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588120, 36.040409, 39.025978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212341, 35.905045, 39.047592>,  <31.986874, 35.823826, 39.060562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212341, 35.905045, 39.047592>,  <32.588120, 36.040409, 39.025978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212341, 35.905045, 39.047592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190348, -0.646397, -0.738876,
		0.284976, -0.683848, 0.671670,
		-0.939445, -0.338413, 0.054038,
		31.930508, 35.803520, 39.063805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681610, 35.360973, 39.035603>,  <32.588120, 36.040409, 39.025978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681610, 35.360973, 39.035603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323879, 35.455544, 38.883663>,  <32.109241, 35.512287, 38.792500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323879, 35.455544, 38.883663>,  <32.681610, 35.360973, 39.035603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323879, 35.455544, 38.883663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235337, -0.473474, -0.848787,
		-0.380524, -0.848484, 0.367800,
		-0.894326, 0.236427, -0.379847,
		32.055580, 35.526474, 38.769711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440971, 34.860970, 38.741863>,  <32.681610, 35.360973, 39.035603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440971, 34.860970, 38.741863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245350, 35.149555, 38.545773>,  <32.127979, 35.322708, 38.428120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245350, 35.149555, 38.545773>,  <32.440971, 34.860970, 38.741863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245350, 35.149555, 38.545773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345243, -0.356016, -0.868366,
		-0.801023, -0.593920, -0.074972,
		-0.489049, 0.721465, -0.490224,
		32.098637, 35.365993, 38.398705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226749, 34.468147, 39.292561>,  <32.440971, 34.860970, 38.741863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226749, 34.468147, 39.292561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250504, 34.309547, 39.659008>,  <32.264755, 34.214390, 39.878876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250504, 34.309547, 39.659008>,  <32.226749, 34.468147, 39.292561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250504, 34.309547, 39.659008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417183, -0.823888, -0.383623,
		0.906880, 0.404968, 0.116484,
		0.059385, -0.396495, 0.916114,
		32.268318, 34.190598, 39.933842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883259, 34.159657, 39.385052>,  <32.226749, 34.468147, 39.292561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883259, 34.159657, 39.385052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636467, 33.959866, 39.628319>,  <32.488392, 33.839993, 39.774277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636467, 33.959866, 39.628319>,  <32.883259, 34.159657, 39.385052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636467, 33.959866, 39.628319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436389, -0.860225, -0.263775,
		0.654909, 0.102654, 0.748703,
		-0.616976, -0.499475, 0.608166,
		32.451374, 33.810024, 39.810768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412605, 33.853725, 39.640545>,  <32.883259, 34.159657, 39.385052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412605, 33.853725, 39.640545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056946, 33.675232, 39.599976>,  <32.843548, 33.568138, 39.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056946, 33.675232, 39.599976>,  <33.412605, 33.853725, 39.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056946, 33.675232, 39.599976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447832, -0.802940, -0.393362,
		0.094097, -0.395177, 0.913773,
		-0.889153, -0.446231, -0.101419,
		32.790199, 33.541363, 39.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643684, 33.118656, 39.506371>,  <33.412605, 33.853725, 39.640545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643684, 33.118656, 39.506371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975491, 33.044071, 39.716949>,  <34.174572, 32.999321, 39.843296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975491, 33.044071, 39.716949>,  <33.643684, 33.118656, 39.506371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975491, 33.044071, 39.716949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457011, 0.315189, 0.831743,
		-0.321017, -0.930531, 0.176238,
		0.829511, -0.186460, 0.526444,
		34.224342, 32.988132, 39.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381657, 32.853813, 40.186657>,  <33.643684, 33.118656, 39.506371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381657, 32.853813, 40.186657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750038, 32.988235, 40.265564>,  <33.971066, 33.068890, 40.312908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750038, 32.988235, 40.265564>,  <33.381657, 32.853813, 40.186657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750038, 32.988235, 40.265564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335929, 0.428145, 0.838954,
		0.197476, -0.838904, 0.507191,
		0.920954, 0.336053, 0.197264,
		34.026325, 33.089050, 40.324741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392330, 32.903538, 40.892506>,  <33.381657, 32.853813, 40.186657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392330, 32.903538, 40.892506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714630, 33.127281, 40.814648>,  <33.908009, 33.261528, 40.767933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714630, 33.127281, 40.814648>,  <33.392330, 32.903538, 40.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714630, 33.127281, 40.814648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159530, 0.521483, 0.838216,
		0.570367, -0.644341, 0.509419,
		0.805750, 0.559358, -0.194644,
		33.956356, 33.295090, 40.756256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924129, 32.789036, 41.423126>,  <33.392330, 32.903538, 40.892506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924129, 32.789036, 41.423126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014721, 33.151142, 41.279350>,  <34.069077, 33.368404, 41.193085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014721, 33.151142, 41.279350>,  <33.924129, 32.789036, 41.423126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014721, 33.151142, 41.279350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251954, 0.410920, 0.876164,
		0.940864, -0.107871, 0.321151,
		0.226480, 0.905267, -0.359442,
		34.082664, 33.422722, 41.171516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364201, 33.175224, 41.955502>,  <33.924129, 32.789036, 41.423126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364201, 33.175224, 41.955502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166256, 33.452232, 41.745537>,  <34.047489, 33.618439, 41.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166256, 33.452232, 41.745537>,  <34.364201, 33.175224, 41.955502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166256, 33.452232, 41.745537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153183, 0.525074, 0.837157,
		0.855366, 0.494681, -0.153754,
		-0.494858, 0.692523, -0.524907,
		34.017799, 33.659988, 41.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604950, 33.798080, 42.287449>,  <34.364201, 33.175224, 41.955502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604950, 33.798080, 42.287449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305542, 33.930748, 42.057770>,  <34.125896, 34.010349, 41.919960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305542, 33.930748, 42.057770>,  <34.604950, 33.798080, 42.287449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305542, 33.930748, 42.057770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242664, 0.668849, 0.702677,
		0.617111, 0.665308, -0.420165,
		-0.748524, 0.331671, -0.574201,
		34.080986, 34.030251, 41.885509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659042, 34.560501, 42.381573>,  <34.604950, 33.798080, 42.287449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659042, 34.560501, 42.381573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289536, 34.454151, 42.271324>,  <34.067833, 34.390339, 42.205177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289536, 34.454151, 42.271324>,  <34.659042, 34.560501, 42.381573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289536, 34.454151, 42.271324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361633, 0.368828, 0.856263,
		-0.126007, 0.890659, -0.436862,
		-0.923766, -0.265879, -0.275617,
		34.012405, 34.374386, 42.188641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201275, 35.235767, 42.356129>,  <34.659042, 34.560501, 42.381573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201275, 35.235767, 42.356129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975506, 34.909588, 42.407455>,  <33.840046, 34.713879, 42.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975506, 34.909588, 42.407455>,  <34.201275, 35.235767, 42.356129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975506, 34.909588, 42.407455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221667, 0.299451, 0.928004,
		-0.795167, 0.495344, -0.349776,
		-0.564423, -0.815452, 0.128312,
		33.806179, 34.664951, 42.445950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571102, 35.523159, 42.666046>,  <34.201275, 35.235767, 42.356129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571102, 35.523159, 42.666046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 35.130154, 42.739006>,  <33.595039, 34.894352, 42.782780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 35.130154, 42.739006>,  <33.571102, 35.523159, 42.666046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586063, 35.130154, 42.739006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142202, 0.175434, 0.974167,
		-0.989131, -0.062375, -0.133154,
		0.037404, -0.982513, 0.182397,
		33.597286, 34.835400, 42.793724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864712, 35.457951, 43.019142>,  <33.571102, 35.523159, 42.666046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864712, 35.457951, 43.019142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098328, 35.143112, 43.098518>,  <33.238499, 34.954208, 43.146145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098328, 35.143112, 43.098518>,  <32.864712, 35.457951, 43.019142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098328, 35.143112, 43.098518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185579, 0.108524, 0.976618,
		-0.790227, -0.607210, -0.082686,
		0.584039, -0.787095, 0.198444,
		33.273540, 34.906982, 43.158051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470524, 35.015530, 43.481110>,  <32.864712, 35.457951, 43.019142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470524, 35.015530, 43.481110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854496, 34.918011, 43.536396>,  <33.084877, 34.859501, 43.569569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854496, 34.918011, 43.536396>,  <32.470524, 35.015530, 43.481110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854496, 34.918011, 43.536396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074973, 0.251810, 0.964868,
		-0.270037, -0.936565, 0.223441,
		0.959927, -0.243798, 0.138215,
		33.142475, 34.844872, 43.577862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367985, 34.815262, 44.126358>,  <32.470524, 35.015530, 43.481110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367985, 34.815262, 44.126358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767117, 34.822796, 44.101116>,  <33.006596, 34.827316, 44.085972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767117, 34.822796, 44.101116>,  <32.367985, 34.815262, 44.126358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767117, 34.822796, 44.101116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058705, 0.179694, 0.981969,
		0.029835, -0.983542, 0.178198,
		0.997829, 0.018836, -0.063100,
		33.066467, 34.828445, 44.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560127, 34.460140, 44.701073>,  <32.367985, 34.815262, 44.126358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560127, 34.460140, 44.701073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876408, 34.687599, 44.610359>,  <33.066177, 34.824074, 44.555931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876408, 34.687599, 44.610359>,  <32.560127, 34.460140, 44.701073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876408, 34.687599, 44.610359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111894, 0.229956, 0.966747,
		0.601888, -0.789785, 0.118198,
		0.790702, 0.568648, -0.226780,
		33.113617, 34.858192, 44.542324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090237, 34.276539, 45.112545>,  <32.560127, 34.460140, 44.701073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090237, 34.276539, 45.112545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194027, 34.647228, 45.003834>,  <33.256302, 34.869640, 44.938606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194027, 34.647228, 45.003834>,  <33.090237, 34.276539, 45.112545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194027, 34.647228, 45.003834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061240, 0.265064, 0.962284,
		0.963807, -0.266331, 0.012025,
		0.259473, 0.926719, -0.271781,
		33.271870, 34.925243, 44.922298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701893, 34.423035, 45.571899>,  <33.090237, 34.276539, 45.112545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701893, 34.423035, 45.571899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554504, 34.762497, 45.420101>,  <33.466072, 34.966175, 45.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554504, 34.762497, 45.420101>,  <33.701893, 34.423035, 45.571899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554504, 34.762497, 45.420101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184599, 0.466878, 0.864840,
		0.911128, 0.248613, -0.328691,
		-0.368469, 0.848656, -0.379492,
		33.443962, 35.017094, 45.306255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210506, 34.925514, 45.746597>,  <33.701893, 34.423035, 45.571899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210506, 34.925514, 45.746597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893631, 35.154686, 45.662506>,  <33.703506, 35.292191, 45.612053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893631, 35.154686, 45.662506>,  <34.210506, 34.925514, 45.746597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893631, 35.154686, 45.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130632, 0.495681, 0.858624,
		0.596136, 0.652727, -0.467514,
		-0.792185, 0.572929, -0.210226,
		33.655975, 35.326565, 45.599438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406090, 35.719860, 45.653248>,  <34.210506, 34.925514, 45.746597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406090, 35.719860, 45.653248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028744, 35.668865, 45.775761>,  <33.802334, 35.638268, 45.849266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028744, 35.668865, 45.775761>,  <34.406090, 35.719860, 45.653248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028744, 35.668865, 45.775761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161441, 0.630117, 0.759532,
		-0.289821, 0.765964, -0.573850,
		-0.943367, -0.127485, 0.306279,
		33.745735, 35.630619, 45.867645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299072, 36.226761, 46.102516>,  <34.406090, 35.719860, 45.653248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299072, 36.226761, 46.102516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957310, 36.031723, 46.174343>,  <33.752254, 35.914700, 46.217438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957310, 36.031723, 46.174343>,  <34.299072, 36.226761, 46.102516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957310, 36.031723, 46.174343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082256, 0.468136, 0.879820,
		-0.513059, 0.736951, -0.440085,
		-0.854403, -0.487598, 0.179563,
		33.700989, 35.885445, 46.228210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825798, 36.743538, 46.446663>,  <34.299072, 36.226761, 46.102516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825798, 36.743538, 46.446663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677490, 36.383869, 46.539642>,  <33.588505, 36.168068, 46.595428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677490, 36.383869, 46.539642>,  <33.825798, 36.743538, 46.446663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677490, 36.383869, 46.539642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032484, 0.237576, 0.970826,
		-0.928158, 0.367500, -0.058876,
		-0.370766, -0.899167, 0.232446,
		33.566261, 36.114120, 46.609375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245075, 36.809814, 46.919037>,  <33.825798, 36.743538, 46.446663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245075, 36.809814, 46.919037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398907, 36.445545, 46.979408>,  <33.491203, 36.226986, 47.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398907, 36.445545, 46.979408>,  <33.245075, 36.809814, 46.919037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398907, 36.445545, 46.979408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128332, 0.214661, 0.968221,
		-0.914129, -0.352986, 0.199422,
		0.384577, -0.910671, 0.150928,
		33.514278, 36.172344, 47.024685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960640, 36.581516, 47.503712>,  <33.245075, 36.809814, 46.919037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960640, 36.581516, 47.503712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285355, 36.349022, 47.481182>,  <33.480183, 36.209526, 47.467667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285355, 36.349022, 47.481182>,  <32.960640, 36.581516, 47.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285355, 36.349022, 47.481182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186925, 0.167264, 0.968030,
		-0.553235, -0.796357, 0.244430,
		0.811782, -0.581238, -0.056322,
		33.528889, 36.174652, 47.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906528, 36.178112, 48.102249>,  <32.960640, 36.581516, 47.503712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906528, 36.178112, 48.102249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291992, 36.128517, 48.007595>,  <33.523270, 36.098763, 47.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291992, 36.128517, 48.007595>,  <32.906528, 36.178112, 48.102249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291992, 36.128517, 48.007595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263479, 0.294826, 0.918508,
		-0.044114, -0.947473, 0.316778,
		0.963656, -0.123984, -0.236633,
		33.581089, 36.091324, 47.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251610, 35.794319, 48.623360>,  <32.906528, 36.178112, 48.102249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251610, 35.794319, 48.623360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 35.959518, 48.457104>,  <33.770237, 36.058636, 48.357349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 35.959518, 48.457104>,  <33.251610, 35.794319, 48.623360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575752, 35.959518, 48.457104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222934, 0.438694, 0.870545,
		0.541872, -0.798111, 0.263427,
		0.810355, 0.412997, -0.415642,
		33.818859, 36.083416, 48.332413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665409, 35.725540, 49.120403>,  <33.251610, 35.794319, 48.623360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665409, 35.725540, 49.120403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815693, 36.019264, 48.894257>,  <33.905861, 36.195499, 48.758568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815693, 36.019264, 48.894257>,  <33.665409, 35.725540, 49.120403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815693, 36.019264, 48.894257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154816, 0.551753, 0.819512,
		0.913715, -0.395425, 0.093615,
		0.375708, 0.734308, -0.565363,
		33.928406, 36.239555, 48.724648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385605, 35.937901, 49.410236>,  <33.665409, 35.725540, 49.120403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385605, 35.937901, 49.410236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286179, 36.255363, 49.188129>,  <34.226524, 36.445839, 49.054863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286179, 36.255363, 49.188129>,  <34.385605, 35.937901, 49.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286179, 36.255363, 49.188129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234863, 0.605540, 0.760369,
		0.939710, 0.058590, -0.336917,
		-0.248566, 0.793655, -0.555271,
		34.211609, 36.493462, 49.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948521, 36.543045, 49.460964>,  <34.385605, 35.937901, 49.410236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948521, 36.543045, 49.460964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611019, 36.733635, 49.362133>,  <34.408520, 36.847988, 49.302834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611019, 36.733635, 49.362133>,  <34.948521, 36.543045, 49.460964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611019, 36.733635, 49.362133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058782, 0.539609, 0.839861,
		0.533501, 0.694113, -0.483305,
		-0.843754, 0.476476, -0.247081,
		34.357891, 36.876579, 49.288010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435196, 37.099869, 49.149853>,  <34.948521, 36.543045, 49.460964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435196, 37.099869, 49.149853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808601, 37.240974, 49.175468>,  <36.032646, 37.325638, 49.190838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808601, 37.240974, 49.175468>,  <35.435196, 37.099869, 49.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808601, 37.240974, 49.175468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260828, -0.545649, -0.796389,
		-0.245998, 0.760146, -0.601384,
		0.933517, 0.352768, 0.064039,
		36.088657, 37.346806, 49.194679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586975, 37.228699, 48.403015>,  <35.435196, 37.099869, 49.149853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586975, 37.228699, 48.403015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920620, 37.187500, 48.619774>,  <36.120808, 37.162781, 48.749828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920620, 37.187500, 48.619774>,  <35.586975, 37.228699, 48.403015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920620, 37.187500, 48.619774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443059, -0.460097, -0.769421,
		0.328576, 0.881874, -0.338136,
		0.834108, -0.102999, 0.541899,
		36.170853, 37.156601, 48.782345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056946, 37.337284, 47.995117>,  <35.586975, 37.228699, 48.403015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056946, 37.337284, 47.995117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255379, 37.138214, 48.279713>,  <36.374439, 37.018772, 48.450470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255379, 37.138214, 48.279713>,  <36.056946, 37.337284, 47.995117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255379, 37.138214, 48.279713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474488, -0.530870, -0.702167,
		0.727158, 0.685930, -0.027218,
		0.496087, -0.497671, 0.711492,
		36.404205, 36.988914, 48.493160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780445, 37.260750, 47.710201>,  <36.056946, 37.337284, 47.995117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780445, 37.260750, 47.710201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699177, 36.958714, 47.959541>,  <36.650417, 36.777493, 48.109146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699177, 36.958714, 47.959541>,  <36.780445, 37.260750, 47.710201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699177, 36.958714, 47.959541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312663, -0.653326, -0.689497,
		0.927881, 0.054812, 0.368825,
		-0.203171, -0.755090, 0.623347,
		36.638226, 36.732185, 48.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291199, 36.715424, 47.568913>,  <36.780445, 37.260750, 47.710201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291199, 36.715424, 47.568913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999195, 36.501980, 47.739719>,  <36.823994, 36.373913, 47.842205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999195, 36.501980, 47.739719>,  <37.291199, 36.715424, 47.568913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999195, 36.501980, 47.739719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028467, -0.648012, -0.761098,
		0.682844, -0.543453, 0.488244,
		-0.730009, -0.533610, 0.427021,
		36.780193, 36.341896, 47.867825>
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
