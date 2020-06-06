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
	<24.614859, 35.151756, 34.836185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522038, 34.885544, 35.119938>,  <24.466345, 34.725819, 35.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522038, 34.885544, 35.119938>,  <24.614859, 35.151756, 34.836185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522038, 34.885544, 35.119938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970839, -0.203601, 0.126563,
		0.060199, 0.718065, 0.693367,
		-0.232051, -0.665529, 0.709382,
		24.452423, 34.685886, 35.332752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935513, 35.291412, 35.509827>,  <24.614859, 35.151756, 34.836185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935513, 35.291412, 35.509827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876904, 34.913975, 35.391060>,  <24.841738, 34.687511, 35.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876904, 34.913975, 35.391060>,  <24.935513, 35.291412, 35.509827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876904, 34.913975, 35.391060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984158, -0.169343, 0.052504,
		-0.099823, -0.284519, 0.953459,
		-0.146523, -0.943595, -0.296916,
		24.832947, 34.630898, 35.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533943, 35.637730, 35.704788>,  <24.935513, 35.291412, 35.509827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533943, 35.637730, 35.704788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851864, 35.395039, 35.709915>,  <26.042616, 35.249424, 35.712994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851864, 35.395039, 35.709915>,  <25.533943, 35.637730, 35.704788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851864, 35.395039, 35.709915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343334, -0.466979, -0.814894,
		0.500410, 0.643278, -0.579468,
		0.794803, -0.606732, 0.012821,
		26.090305, 35.213020, 35.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775782, 35.759087, 35.003891>,  <25.533943, 35.637730, 35.704788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775782, 35.759087, 35.003891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949249, 35.422195, 35.132004>,  <26.053329, 35.220062, 35.208874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949249, 35.422195, 35.132004>,  <25.775782, 35.759087, 35.003891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949249, 35.422195, 35.132004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078773, -0.389524, -0.917642,
		0.897622, 0.372723, -0.235270,
		0.433669, -0.842228, 0.320284,
		26.079350, 35.169525, 35.228088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282801, 35.589394, 34.455612>,  <25.775782, 35.759087, 35.003891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282801, 35.589394, 34.455612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208576, 35.252811, 34.658600>,  <26.164042, 35.050861, 34.780392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208576, 35.252811, 34.658600>,  <26.282801, 35.589394, 34.455612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208576, 35.252811, 34.658600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116891, -0.531673, -0.838845,
		0.975655, -0.096339, 0.197016,
		-0.185562, -0.841453, 0.507469,
		26.152908, 35.000374, 34.810841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823065, 35.056576, 34.275013>,  <26.282801, 35.589394, 34.455612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823065, 35.056576, 34.275013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487514, 34.851353, 34.347748>,  <26.286184, 34.728218, 34.391388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487514, 34.851353, 34.347748>,  <26.823065, 35.056576, 34.275013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487514, 34.851353, 34.347748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237126, -0.645139, -0.726338,
		0.489961, -0.566188, 0.662849,
		-0.838874, -0.513056, 0.181835,
		26.235853, 34.697437, 34.402298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019180, 34.323238, 34.167747>,  <26.823065, 35.056576, 34.275013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019180, 34.323238, 34.167747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629789, 34.365414, 34.086533>,  <26.396154, 34.390717, 34.037804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629789, 34.365414, 34.086533>,  <27.019180, 34.323238, 34.167747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629789, 34.365414, 34.086533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082628, -0.665542, -0.741772,
		-0.213340, -0.738875, 0.639178,
		-0.973477, 0.105436, -0.203038,
		26.337746, 34.397045, 34.025620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492443, 33.710857, 34.096329>,  <27.019180, 34.323238, 34.167747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492443, 33.710857, 34.096329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429169, 34.020527, 33.851173>,  <26.391205, 34.206329, 33.704082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429169, 34.020527, 33.851173>,  <26.492443, 33.710857, 34.096329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429169, 34.020527, 33.851173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061036, -0.611848, -0.788617,
		-0.985521, -0.162155, 0.049532,
		-0.158184, 0.774176, -0.612886,
		26.381714, 34.252781, 33.667309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092831, 33.393131, 33.451088>,  <26.492443, 33.710857, 34.096329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092831, 33.393131, 33.451088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204916, 33.758602, 33.333324>,  <26.272167, 33.977886, 33.262669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204916, 33.758602, 33.333324>,  <26.092831, 33.393131, 33.451088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204916, 33.758602, 33.333324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138926, -0.342062, -0.929351,
		-0.949831, 0.219517, -0.222785,
		0.280214, 0.913677, -0.294405,
		26.288980, 34.032703, 33.245003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627291, 33.680222, 32.852913>,  <26.092831, 33.393131, 33.451088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627291, 33.680222, 32.852913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977999, 33.872532, 32.848438>,  <26.188423, 33.987919, 32.845753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977999, 33.872532, 32.848438>,  <25.627291, 33.680222, 32.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977999, 33.872532, 32.848438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062202, -0.136444, -0.988693,
		-0.476868, 0.866162, -0.149535,
		0.876771, 0.480777, -0.011189,
		26.241030, 34.016766, 32.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709707, 33.982853, 32.164501>,  <25.627291, 33.680222, 32.852913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709707, 33.982853, 32.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085890, 33.985409, 32.300442>,  <26.311600, 33.986942, 32.382008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085890, 33.985409, 32.300442>,  <25.709707, 33.982853, 32.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085890, 33.985409, 32.300442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322495, -0.332754, -0.886156,
		0.107424, 0.942992, -0.315002,
		0.940456, 0.006392, 0.339855,
		26.368027, 33.987328, 32.402397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135792, 34.373962, 31.771486>,  <25.709707, 33.982853, 32.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135792, 34.373962, 31.771486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359062, 34.081505, 31.928389>,  <26.493025, 33.906029, 32.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359062, 34.081505, 31.928389>,  <26.135792, 34.373962, 31.771486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359062, 34.081505, 31.928389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154170, -0.373128, -0.914881,
		0.815275, 0.571137, -0.095550,
		0.558175, -0.731148, 0.392254,
		26.526514, 33.862160, 32.046066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877836, 34.257938, 31.387939>,  <26.135792, 34.373962, 31.771486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877836, 34.257938, 31.387939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714148, 33.929638, 31.547392>,  <26.615934, 33.732658, 31.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714148, 33.929638, 31.547392>,  <26.877836, 34.257938, 31.387939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714148, 33.929638, 31.547392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074016, -0.465307, -0.882050,
		0.909429, -0.331447, 0.251161,
		-0.409220, -0.820751, 0.398631,
		26.591381, 33.683414, 31.666981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379408, 33.590515, 31.699282>,  <26.877836, 34.257938, 31.387939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379408, 33.590515, 31.699282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024893, 33.487335, 31.545420>,  <26.812183, 33.425426, 31.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024893, 33.487335, 31.545420>,  <27.379408, 33.590515, 31.699282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024893, 33.487335, 31.545420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458709, -0.374321, -0.805897,
		0.063894, -0.890700, 0.450078,
		-0.886286, -0.257946, -0.384655,
		26.759007, 33.409950, 31.430023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902809, 33.455490, 32.194340>,  <27.379408, 33.590515, 31.699282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902809, 33.455490, 32.194340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769651, 33.130096, 32.385094>,  <27.689756, 32.934860, 32.499546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769651, 33.130096, 32.385094>,  <27.902809, 33.455490, 32.194340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769651, 33.130096, 32.385094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171803, 0.444939, 0.878927,
		-0.927180, 0.374522, -0.008359,
		-0.332897, -0.813488, 0.476883,
		27.669783, 32.886051, 32.528160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254864, 33.375004, 32.629501>,  <27.902809, 33.455490, 32.194340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254864, 33.375004, 32.629501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119949, 33.657139, 32.380104>,  <27.039001, 33.826420, 32.230465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119949, 33.657139, 32.380104>,  <27.254864, 33.375004, 32.629501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119949, 33.657139, 32.380104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261657, 0.565966, 0.781804,
		0.904308, 0.426833, -0.006338,
		-0.337287, 0.705334, -0.623492,
		27.018763, 33.868740, 32.193058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578556, 34.113792, 32.786278>,  <27.254864, 33.375004, 32.629501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578556, 34.113792, 32.786278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196798, 34.100262, 32.667625>,  <26.967743, 34.092144, 32.596436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196798, 34.100262, 32.667625>,  <27.578556, 34.113792, 32.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196798, 34.100262, 32.667625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271690, 0.510285, 0.815962,
		0.123762, 0.859340, -0.496204,
		-0.954394, -0.033829, -0.296628,
		26.910480, 34.090115, 32.578636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293156, 34.816059, 32.739048>,  <27.578556, 34.113792, 32.786278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293156, 34.816059, 32.739048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972832, 34.578133, 32.767052>,  <26.780638, 34.435379, 32.783855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972832, 34.578133, 32.767052>,  <27.293156, 34.816059, 32.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972832, 34.578133, 32.767052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332715, 0.539019, 0.773795,
		-0.498000, 0.596369, -0.629555,
		-0.800810, -0.594813, 0.070011,
		26.732590, 34.399689, 32.788055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784473, 35.257809, 33.012741>,  <27.293156, 34.816059, 32.739048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784473, 35.257809, 33.012741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616579, 34.896740, 33.050690>,  <26.515842, 34.680099, 33.073460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616579, 34.896740, 33.050690>,  <26.784473, 35.257809, 33.012741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616579, 34.896740, 33.050690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457123, 0.300540, 0.837087,
		-0.784131, 0.307985, -0.538781,
		-0.419735, -0.902674, 0.094876,
		26.490658, 34.625938, 33.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022152, 35.267418, 32.997490>,  <26.784473, 35.257809, 33.012741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022152, 35.267418, 32.997490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138765, 34.953270, 33.215923>,  <26.208733, 34.764782, 33.346985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138765, 34.953270, 33.215923>,  <26.022152, 35.267418, 32.997490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138765, 34.953270, 33.215923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396651, 0.420238, 0.816130,
		-0.870447, -0.454533, -0.189004,
		0.291531, -0.785366, 0.546085,
		26.226225, 34.717659, 33.379749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442320, 34.742561, 33.120281>,  <26.022152, 35.267418, 32.997490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442320, 34.742561, 33.120281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688097, 34.526989, 33.350765>,  <25.835564, 34.397648, 33.489056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688097, 34.526989, 33.350765>,  <25.442320, 34.742561, 33.120281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688097, 34.526989, 33.350765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501212, 0.297386, 0.812618,
		-0.609299, -0.788110, -0.087391,
		0.614443, -0.538929, 0.576207,
		25.872431, 34.365311, 33.523628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059387, 34.474201, 33.735985>,  <25.442320, 34.742561, 33.120281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059387, 34.474201, 33.735985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435272, 34.421188, 33.862080>,  <25.660803, 34.389381, 33.937737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435272, 34.421188, 33.862080>,  <25.059387, 34.474201, 33.735985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435272, 34.421188, 33.862080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289446, 0.182629, 0.939610,
		-0.182103, -0.974208, 0.133257,
		0.939712, -0.132535, 0.315238,
		25.717186, 34.381428, 33.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979952, 34.150612, 34.422993>,  <25.059387, 34.474201, 33.735985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979952, 34.150612, 34.422993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361050, 34.271137, 34.407551>,  <25.589708, 34.343452, 34.398285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361050, 34.271137, 34.407551>,  <24.979952, 34.150612, 34.422993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361050, 34.271137, 34.407551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049127, 0.278245, 0.959253,
		0.299789, -0.912022, 0.279898,
		0.952740, 0.301324, -0.038610,
		25.646872, 34.361530, 34.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215366, 33.949177, 35.041409>,  <24.979952, 34.150612, 34.422993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215366, 33.949177, 35.041409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512108, 34.185154, 34.913898>,  <25.690153, 34.326740, 34.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512108, 34.185154, 34.913898>,  <25.215366, 33.949177, 35.041409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512108, 34.185154, 34.913898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244330, 0.204895, 0.947798,
		0.624463, -0.781015, 0.007862,
		0.741856, 0.589944, -0.318774,
		25.734665, 34.362137, 34.818268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805698, 33.905540, 35.593029>,  <25.215366, 33.949177, 35.041409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805698, 33.905540, 35.593029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910107, 34.199566, 35.342731>,  <25.972752, 34.375980, 35.192554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910107, 34.199566, 35.342731>,  <25.805698, 33.905540, 35.593029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910107, 34.199566, 35.342731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610491, 0.376429, 0.696851,
		0.747777, -0.563901, -0.350494,
		0.261019, 0.735062, -0.625742,
		25.988413, 34.420086, 35.155010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611954, 34.007168, 35.488464>,  <25.805698, 33.905540, 35.593029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611954, 34.007168, 35.488464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429237, 34.356373, 35.420116>,  <26.319609, 34.565895, 35.379108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429237, 34.356373, 35.420116>,  <26.611954, 34.007168, 35.488464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429237, 34.356373, 35.420116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552994, 0.429124, 0.714178,
		0.696808, 0.231741, -0.678790,
		-0.456790, 0.873011, -0.170865,
		26.292200, 34.618275, 35.368858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142378, 34.455414, 35.580227>,  <26.611954, 34.007168, 35.488464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142378, 34.455414, 35.580227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819237, 34.679646, 35.653027>,  <26.625353, 34.814186, 35.696709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819237, 34.679646, 35.653027>,  <27.142378, 34.455414, 35.580227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819237, 34.679646, 35.653027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518439, 0.528994, 0.671852,
		0.280349, 0.637115, -0.717976,
		-0.807852, 0.560580, 0.182002,
		26.576881, 34.847820, 35.707626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281464, 35.178585, 35.313759>,  <27.142378, 34.455414, 35.580227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281464, 35.178585, 35.313759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053465, 35.098526, 35.632519>,  <26.916666, 35.050491, 35.823776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053465, 35.098526, 35.632519>,  <27.281464, 35.178585, 35.313759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053465, 35.098526, 35.632519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554855, 0.621569, 0.552981,
		-0.606005, 0.757360, -0.243238,
		-0.569995, -0.200148, 0.796898,
		26.882467, 35.038483, 35.871590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552353, 35.456623, 35.836418>,  <27.281464, 35.178585, 35.313759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552353, 35.456623, 35.836418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252062, 35.314075, 36.058914>,  <27.071888, 35.228546, 36.192413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252062, 35.314075, 36.058914>,  <27.552353, 35.456623, 35.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252062, 35.314075, 36.058914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424532, 0.384867, 0.819542,
		-0.506141, 0.851397, -0.137639,
		-0.750728, -0.356372, 0.556243,
		27.026844, 35.207165, 36.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656944, 35.888069, 36.315948>,  <27.552353, 35.456623, 35.836418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656944, 35.888069, 36.315948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433065, 35.589787, 36.460537>,  <27.298738, 35.410816, 36.547291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433065, 35.589787, 36.460537>,  <27.656944, 35.888069, 36.315948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433065, 35.589787, 36.460537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306095, 0.219315, 0.926395,
		-0.770093, 0.629146, 0.105507,
		-0.559698, -0.745705, 0.361471,
		27.265156, 35.366074, 36.568977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439165, 36.094730, 36.947613>,  <27.656944, 35.888069, 36.315948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439165, 36.094730, 36.947613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332129, 35.710526, 36.978088>,  <27.267906, 35.480003, 36.996372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332129, 35.710526, 36.978088>,  <27.439165, 36.094730, 36.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332129, 35.710526, 36.978088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036629, 0.068875, 0.996953,
		-0.962836, 0.269566, 0.016753,
		-0.267590, -0.960516, 0.076189,
		27.251852, 35.422371, 37.000946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944901, 36.673645, 36.757988>,  <27.439165, 36.094730, 36.947613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944901, 36.673645, 36.757988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144899, 36.799316, 37.080799>,  <28.264898, 36.874718, 37.274487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144899, 36.799316, 37.080799>,  <27.944901, 36.673645, 36.757988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144899, 36.799316, 37.080799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789066, -0.218762, 0.574037,
		0.356897, -0.923815, 0.138527,
		0.499999, 0.314179, 0.807027,
		28.294899, 36.893570, 37.322906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134075, 36.087437, 37.206451>,  <27.944901, 36.673645, 36.757988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134075, 36.087437, 37.206451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086872, 36.432037, 37.403992>,  <28.058550, 36.638798, 37.522514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086872, 36.432037, 37.403992>,  <28.134075, 36.087437, 37.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086872, 36.432037, 37.403992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714228, -0.419151, 0.560527,
		0.689893, -0.286572, 0.664774,
		-0.118010, 0.861504, 0.493847,
		28.051470, 36.690487, 37.552147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058937, 35.895718, 37.953964>,  <28.134075, 36.087437, 37.206451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058937, 35.895718, 37.953964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912468, 36.267010, 37.927731>,  <27.824587, 36.489784, 37.911991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912468, 36.267010, 37.927731>,  <28.058937, 35.895718, 37.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912468, 36.267010, 37.927731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808647, -0.282538, 0.516006,
		0.460443, 0.241984, 0.854070,
		-0.366173, 0.928233, -0.065587,
		27.802616, 36.545479, 37.908054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258099, 35.171097, 37.837040>,  <28.058937, 35.895718, 37.953964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258099, 35.171097, 37.837040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949913, 35.407673, 37.741894>,  <27.765001, 35.549618, 37.684807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949913, 35.407673, 37.741894>,  <28.258099, 35.171097, 37.837040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949913, 35.407673, 37.741894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634351, -0.748239, 0.194259,
		-0.063088, 0.300561, 0.951674,
		-0.770466, 0.591440, -0.237866,
		27.718773, 35.585106, 37.670532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695522, 35.220478, 38.411865>,  <28.258099, 35.171097, 37.837040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695522, 35.220478, 38.411865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555334, 35.281116, 38.042175>,  <27.471222, 35.317497, 37.820362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555334, 35.281116, 38.042175>,  <27.695522, 35.220478, 38.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555334, 35.281116, 38.042175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578646, -0.810989, 0.086406,
		-0.736437, 0.565082, 0.371945,
		-0.350470, 0.151592, -0.924225,
		27.450193, 35.326595, 37.764908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583853, 35.924095, 38.531097>,  <27.695522, 35.220478, 38.411865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583853, 35.924095, 38.531097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474768, 36.242649, 38.315174>,  <27.409317, 36.433781, 38.185619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474768, 36.242649, 38.315174>,  <27.583853, 35.924095, 38.531097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474768, 36.242649, 38.315174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914811, -0.040914, 0.401804,
		0.297906, 0.603401, 0.739702,
		-0.272713, 0.796387, -0.539810,
		27.392954, 36.481564, 38.153233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215679, 36.428085, 39.007957>,  <27.583853, 35.924095, 38.531097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215679, 36.428085, 39.007957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096207, 36.541031, 38.643307>,  <27.024523, 36.608799, 38.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096207, 36.541031, 38.643307>,  <27.215679, 36.428085, 39.007957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096207, 36.541031, 38.643307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949396, 0.009326, 0.313944,
		0.097149, 0.959261, 0.265292,
		-0.298680, 0.282367, -0.911625,
		27.006603, 36.625740, 38.369820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766171, 37.042526, 39.137676>,  <27.215679, 36.428085, 39.007957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766171, 37.042526, 39.137676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693260, 36.847626, 38.796066>,  <26.649513, 36.730686, 38.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693260, 36.847626, 38.796066>,  <26.766171, 37.042526, 39.137676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693260, 36.847626, 38.796066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928342, -0.200903, 0.312760,
		-0.323969, 0.849837, -0.415717,
		-0.182276, -0.487252, -0.854026,
		26.638577, 36.701450, 38.539860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052313, 37.206329, 38.893032>,  <26.766171, 37.042526, 39.137676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052313, 37.206329, 38.893032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140232, 36.850723, 38.732361>,  <26.192984, 36.637360, 38.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140232, 36.850723, 38.732361>,  <26.052313, 37.206329, 38.893032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140232, 36.850723, 38.732361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954016, -0.281906, 0.101889,
		-0.203816, 0.360812, -0.910095,
		0.219798, -0.889013, -0.401678,
		26.206171, 36.584019, 38.611858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600201, 37.175377, 38.304806>,  <26.052313, 37.206329, 38.893032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600201, 37.175377, 38.304806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681097, 36.860466, 38.537800>,  <25.729635, 36.671520, 38.677597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681097, 36.860466, 38.537800>,  <25.600201, 37.175377, 38.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681097, 36.860466, 38.537800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967139, -0.066977, 0.245267,
		-0.154080, -0.612950, -0.774952,
		0.202241, -0.787278, 0.582489,
		25.741770, 36.624283, 38.712547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171488, 36.521526, 38.137672>,  <25.600201, 37.175377, 38.304806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171488, 36.521526, 38.137672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281042, 36.581825, 38.517624>,  <25.346775, 36.618004, 38.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281042, 36.581825, 38.517624>,  <25.171488, 36.521526, 38.137672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281042, 36.581825, 38.517624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923118, -0.235946, 0.303615,
		0.269889, -0.960002, 0.074538,
		0.273884, 0.150750, 0.949875,
		25.363207, 36.627048, 38.802586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688908, 36.025223, 37.957249>,  <25.171488, 36.521526, 38.137672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688908, 36.025223, 37.957249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864340, 36.363953, 38.077606>,  <25.969599, 36.567188, 38.149822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864340, 36.363953, 38.077606>,  <25.688908, 36.025223, 37.957249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864340, 36.363953, 38.077606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837854, -0.264199, -0.477702,
		-0.325031, 0.461620, -0.825386,
		0.438583, 0.846821, 0.300897,
		25.995914, 36.618000, 38.167877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326637, 36.185722, 37.480270>,  <25.688908, 36.025223, 37.957249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326637, 36.185722, 37.480270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412386, 36.433575, 37.782291>,  <26.463835, 36.582287, 37.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412386, 36.433575, 37.782291>,  <26.326637, 36.185722, 37.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412386, 36.433575, 37.782291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942240, 0.072480, -0.327002,
		-0.257346, 0.781539, -0.568304,
		0.214374, 0.619632, 0.755050,
		26.476698, 36.619465, 38.008808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639664, 36.903084, 37.208511>,  <26.326637, 36.185722, 37.480270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639664, 36.903084, 37.208511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752750, 36.838005, 37.586632>,  <26.820602, 36.798958, 37.813503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752750, 36.838005, 37.586632>,  <26.639664, 36.903084, 37.208511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752750, 36.838005, 37.586632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953423, 0.155692, -0.258350,
		-0.105145, 0.974315, 0.199134,
		0.282718, -0.162695, 0.945305,
		26.837566, 36.789196, 37.870224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095234, 37.442513, 37.353355>,  <26.639664, 36.903084, 37.208511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095234, 37.442513, 37.353355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177357, 37.147980, 37.611244>,  <27.226631, 36.971260, 37.765976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177357, 37.147980, 37.611244>,  <27.095234, 37.442513, 37.353355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177357, 37.147980, 37.611244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978335, 0.172330, -0.114728,
		-0.026628, 0.654310, 0.755757,
		0.205307, -0.736329, 0.644723,
		27.238949, 36.927082, 37.804661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438717, 37.806335, 37.831734>,  <27.095234, 37.442513, 37.353355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438717, 37.806335, 37.831734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537212, 37.418686, 37.836826>,  <27.596310, 37.186096, 37.839882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537212, 37.418686, 37.836826>,  <27.438717, 37.806335, 37.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537212, 37.418686, 37.836826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968772, 0.245713, -0.033260,
		0.029106, 0.020522, 0.999366,
		0.246239, -0.969126, 0.012730,
		27.611084, 37.127949, 37.840645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024054, 37.785679, 38.203835>,  <27.438717, 37.806335, 37.831734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024054, 37.785679, 38.203835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000063, 37.454090, 37.981407>,  <27.985668, 37.255138, 37.847950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000063, 37.454090, 37.981407>,  <28.024054, 37.785679, 38.203835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000063, 37.454090, 37.981407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998125, -0.056651, -0.023200,
		-0.012270, -0.556417, 0.830813,
		-0.059975, -0.828970, -0.556069,
		27.982071, 37.205399, 37.814587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564009, 37.415554, 38.521782>,  <28.024054, 37.785679, 38.203835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564009, 37.415554, 38.521782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499071, 37.313122, 38.140614>,  <28.460108, 37.251663, 37.911911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499071, 37.313122, 38.140614>,  <28.564009, 37.415554, 38.521782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499071, 37.313122, 38.140614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954479, 0.204148, -0.217471,
		0.250228, -0.944852, 0.211282,
		-0.162345, -0.256082, -0.952925,
		28.450367, 37.236298, 37.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176598, 37.245705, 38.411758>,  <28.564009, 37.415554, 38.521782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176598, 37.245705, 38.411758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025061, 37.344975, 38.055134>,  <28.934139, 37.404537, 37.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025061, 37.344975, 38.055134>,  <29.176598, 37.245705, 38.411758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025061, 37.344975, 38.055134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923682, 0.161100, -0.347647,
		0.057355, -0.955226, -0.290264,
		-0.378843, 0.248173, -0.891565,
		28.911407, 37.419426, 37.787663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537090, 36.752029, 38.006454>,  <29.176598, 37.245705, 38.411758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537090, 36.752029, 38.006454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410194, 37.105301, 37.868271>,  <29.334057, 37.317265, 37.785358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410194, 37.105301, 37.868271>,  <29.537090, 36.752029, 38.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410194, 37.105301, 37.868271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940341, 0.245722, -0.235327,
		-0.122949, -0.399509, -0.908447,
		-0.317241, 0.883184, -0.345464,
		29.315022, 37.370255, 37.764633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761616, 36.929298, 37.398659>,  <29.537090, 36.752029, 38.006454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761616, 36.929298, 37.398659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721569, 37.283192, 37.580742>,  <29.697542, 37.495529, 37.689991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721569, 37.283192, 37.580742>,  <29.761616, 36.929298, 37.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721569, 37.283192, 37.580742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950709, 0.220009, -0.218513,
		-0.293477, 0.410896, -0.863154,
		-0.100116, 0.884737, 0.455211,
		29.691534, 37.548615, 37.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519848, 36.898190, 37.394810>,  <29.761616, 36.929298, 37.398659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519848, 36.898190, 37.394810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673656, 37.267239, 37.382786>,  <30.765942, 37.488670, 37.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673656, 37.267239, 37.382786>,  <30.519848, 36.898190, 37.394810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673656, 37.267239, 37.382786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861720, -0.370433, -0.346724,
		-0.331031, 0.107422, -0.937486,
		0.384521, 0.922627, -0.030057,
		30.789013, 37.544025, 37.373768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776846, 37.157505, 36.685616>,  <30.519848, 36.898190, 37.394810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776846, 37.157505, 36.685616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990822, 37.289654, 36.996662>,  <31.119207, 37.368942, 37.183292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990822, 37.289654, 36.996662>,  <30.776846, 37.157505, 36.685616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990822, 37.289654, 36.996662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802472, -0.486633, -0.345294,
		0.264342, 0.808731, -0.525431,
		0.534942, 0.330368, 0.777621,
		31.151304, 37.388763, 37.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944901, 37.706715, 36.271400>,  <30.776846, 37.157505, 36.685616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944901, 37.706715, 36.271400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982439, 37.619370, 36.659939>,  <31.004963, 37.566963, 36.893063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982439, 37.619370, 36.659939>,  <30.944901, 37.706715, 36.271400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982439, 37.619370, 36.659939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982366, -0.178782, 0.054721,
		0.161710, -0.959351, -0.231290,
		0.093848, -0.218363, 0.971345,
		31.010593, 37.553860, 36.951344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274317, 38.400127, 36.259514>,  <30.944901, 37.706715, 36.271400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274317, 38.400127, 36.259514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631649, 38.508327, 36.403061>,  <31.846048, 38.573246, 36.489189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631649, 38.508327, 36.403061>,  <31.274317, 38.400127, 36.259514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631649, 38.508327, 36.403061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407295, 0.149868, 0.900917,
		0.189915, -0.950984, 0.244055,
		0.893333, 0.270500, 0.358868,
		31.899649, 38.589478, 36.510723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422493, 37.880581, 36.806232>,  <31.274317, 38.400127, 36.259514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422493, 37.880581, 36.806232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643717, 38.208260, 36.866947>,  <31.776451, 38.404869, 36.903374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643717, 38.208260, 36.866947>,  <31.422493, 37.880581, 36.806232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643717, 38.208260, 36.866947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435269, 0.128765, 0.891045,
		0.710400, -0.558865, 0.427787,
		0.553058, 0.819201, 0.151782,
		31.809633, 38.454021, 36.912483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681414, 37.810959, 37.412437>,  <31.422493, 37.880581, 36.806232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681414, 37.810959, 37.412437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683592, 38.208260, 37.366100>,  <31.684898, 38.446640, 37.338299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683592, 38.208260, 37.366100>,  <31.681414, 37.810959, 37.412437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683592, 38.208260, 37.366100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328992, 0.111173, 0.937766,
		0.944317, 0.033003, 0.327378,
		0.005447, 0.993253, -0.115841,
		31.685226, 38.506237, 37.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766571, 38.157806, 38.066463>,  <31.681414, 37.810959, 37.412437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766571, 38.157806, 38.066463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606766, 38.447727, 37.841946>,  <31.510883, 38.621681, 37.707237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606766, 38.447727, 37.841946>,  <31.766571, 38.157806, 38.066463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606766, 38.447727, 37.841946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506598, 0.335738, 0.794127,
		0.764034, 0.601613, 0.233053,
		-0.399512, 0.724805, -0.561291,
		31.486912, 38.665169, 37.673557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078844, 38.488747, 38.137619>,  <31.766571, 38.157806, 38.066463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078844, 38.488747, 38.137619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231085, 38.812729, 38.316113>,  <31.322430, 39.007118, 38.423206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231085, 38.812729, 38.316113>,  <31.078844, 38.488747, 38.137619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231085, 38.812729, 38.316113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362098, 0.313483, -0.877846,
		-0.850898, 0.495688, -0.173970,
		0.380601, 0.809952, 0.446229,
		31.345264, 39.055714, 38.449982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773663, 39.190933, 37.849468>,  <31.078844, 38.488747, 38.137619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773663, 39.190933, 37.849468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150051, 39.161541, 37.981636>,  <31.375883, 39.143906, 38.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150051, 39.161541, 37.981636>,  <30.773663, 39.190933, 37.849468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150051, 39.161541, 37.981636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338489, 0.199993, -0.919472,
		0.001477, 0.977038, 0.213059,
		0.940969, -0.073476, 0.330421,
		31.432343, 39.139500, 38.080761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184963, 39.601456, 37.462433>,  <30.773663, 39.190933, 37.849468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184963, 39.601456, 37.462433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446741, 39.321190, 37.576111>,  <31.603807, 39.153030, 37.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446741, 39.321190, 37.576111>,  <31.184963, 39.601456, 37.462433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446741, 39.321190, 37.576111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420328, 0.024702, -0.907036,
		0.628509, 0.713061, 0.310676,
		0.654447, -0.700666, 0.284194,
		31.643076, 39.110989, 37.661369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781883, 39.736500, 37.100285>,  <31.184963, 39.601456, 37.462433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781883, 39.736500, 37.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837122, 39.353622, 37.202034>,  <31.870266, 39.123894, 37.263084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837122, 39.353622, 37.202034>,  <31.781883, 39.736500, 37.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837122, 39.353622, 37.202034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449508, -0.168283, -0.877281,
		0.882537, 0.235493, 0.407028,
		0.138098, -0.957196, 0.254372,
		31.878551, 39.066463, 37.278347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561638, 39.509838, 37.034218>,  <31.781883, 39.736500, 37.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561638, 39.509838, 37.034218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338394, 39.181004, 36.989155>,  <32.204449, 38.983704, 36.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338394, 39.181004, 36.989155>,  <32.561638, 39.509838, 37.034218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338394, 39.181004, 36.989155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534325, -0.252194, -0.806781,
		0.634831, -0.510467, 0.580012,
		-0.558110, -0.822084, -0.112655,
		32.170959, 38.934380, 36.955357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048588, 38.962048, 36.972103>,  <32.561638, 39.509838, 37.034218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048588, 38.962048, 36.972103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688812, 38.852764, 36.835651>,  <32.472946, 38.787193, 36.753780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688812, 38.852764, 36.835651>,  <33.048588, 38.962048, 36.972103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688812, 38.852764, 36.835651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401769, -0.209636, -0.891423,
		0.172030, -0.938835, 0.298321,
		-0.899437, -0.273208, -0.341131,
		32.418980, 38.770802, 36.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120689, 38.266048, 36.557983>,  <33.048588, 38.962048, 36.972103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120689, 38.266048, 36.557983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805954, 38.483131, 36.440441>,  <32.617111, 38.613380, 36.369915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805954, 38.483131, 36.440441>,  <33.120689, 38.266048, 36.557983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805954, 38.483131, 36.440441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289807, -0.095461, -0.952313,
		-0.544878, -0.834480, -0.082167,
		-0.786842, 0.542706, -0.293853,
		32.569901, 38.645943, 36.352283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594589, 37.940075, 36.133308>,  <33.120689, 38.266048, 36.557983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594589, 37.940075, 36.133308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618313, 38.331394, 36.053902>,  <32.632549, 38.566185, 36.006260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618313, 38.331394, 36.053902>,  <32.594589, 37.940075, 36.133308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618313, 38.331394, 36.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313756, -0.207056, -0.926652,
		-0.947649, -0.007325, -0.319229,
		0.059311, 0.978302, -0.198515,
		32.636105, 38.624886, 35.994347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148945, 37.941170, 35.599724>,  <32.594589, 37.940075, 36.133308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148945, 37.941170, 35.599724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428322, 38.225697, 35.631229>,  <32.595947, 38.396412, 35.650135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428322, 38.225697, 35.631229>,  <32.148945, 37.941170, 35.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428322, 38.225697, 35.631229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290848, -0.181562, -0.939384,
		-0.653899, 0.679016, -0.333696,
		0.698443, 0.711317, 0.078767,
		32.637856, 38.439091, 35.654861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239056, 38.221329, 34.861603>,  <32.148945, 37.941170, 35.599724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239056, 38.221329, 34.861603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579220, 38.323017, 35.045849>,  <32.783318, 38.384029, 35.156395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579220, 38.323017, 35.045849>,  <32.239056, 38.221329, 34.861603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579220, 38.323017, 35.045849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508986, -0.175973, -0.842595,
		-0.133150, 0.951002, -0.279046,
		0.850414, 0.254222, 0.460616,
		32.834343, 38.399284, 35.184032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511318, 38.509911, 34.438427>,  <32.239056, 38.221329, 34.861603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511318, 38.509911, 34.438427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818638, 38.421238, 34.678619>,  <33.003029, 38.368034, 34.822735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818638, 38.421238, 34.678619>,  <32.511318, 38.509911, 34.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818638, 38.421238, 34.678619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577983, -0.162842, -0.799636,
		0.275050, 0.961425, 0.003018,
		0.768299, -0.221684, 0.600477,
		33.049126, 38.354733, 34.858761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084038, 38.973911, 34.250107>,  <32.511318, 38.509911, 34.438427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084038, 38.973911, 34.250107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207577, 38.646858, 34.444466>,  <33.281700, 38.450626, 34.561081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207577, 38.646858, 34.444466>,  <33.084038, 38.973911, 34.250107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207577, 38.646858, 34.444466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744020, -0.110560, -0.658946,
		0.592494, 0.565031, 0.574187,
		0.308844, -0.817628, 0.485901,
		33.300228, 38.401569, 34.590237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768997, 38.862293, 34.003021>,  <33.084038, 38.973911, 34.250107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768997, 38.862293, 34.003021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793316, 38.521057, 34.210304>,  <33.807907, 38.316315, 34.334675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793316, 38.521057, 34.210304>,  <33.768997, 38.862293, 34.003021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793316, 38.521057, 34.210304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701966, -0.332551, -0.629804,
		0.709611, 0.402053, 0.578624,
		0.060793, -0.853090, 0.518209,
		33.811554, 38.265129, 34.365768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435253, 38.765205, 34.183556>,  <33.768997, 38.862293, 34.003021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435253, 38.765205, 34.183556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257111, 38.407169, 34.174805>,  <34.150227, 38.192348, 34.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257111, 38.407169, 34.174805>,  <34.435253, 38.765205, 34.183556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257111, 38.407169, 34.174805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642067, -0.302245, -0.704556,
		0.624027, -0.327823, 0.709311,
		-0.445355, -0.895087, -0.021875,
		34.123505, 38.138645, 34.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975117, 38.295483, 34.286243>,  <34.435253, 38.765205, 34.183556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975117, 38.295483, 34.286243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685894, 38.100243, 34.090714>,  <34.512360, 37.983097, 33.973396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685894, 38.100243, 34.090714>,  <34.975117, 38.295483, 34.286243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685894, 38.100243, 34.090714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674910, -0.348292, -0.650530,
		0.147269, -0.800282, 0.581257,
		-0.723055, -0.488099, -0.488826,
		34.468979, 37.953812, 33.944065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383873, 37.774338, 34.154957>,  <34.975117, 38.295483, 34.286243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383873, 37.774338, 34.154957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 37.784756, 33.917046>,  <34.869652, 37.791008, 33.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 37.784756, 33.917046>,  <35.383873, 37.774338, 34.154957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062485, 37.784756, 33.917046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586632, -0.135685, -0.798406,
		-0.101494, -0.990410, 0.093741,
		-0.803469, 0.026042, -0.594777,
		34.821445, 37.792572, 33.738613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516823, 37.259548, 33.583755>,  <35.383873, 37.774338, 34.154957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516823, 37.259548, 33.583755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203609, 37.460705, 33.437351>,  <35.015682, 37.581398, 33.349506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203609, 37.460705, 33.437351>,  <35.516823, 37.259548, 33.583755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203609, 37.460705, 33.437351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517098, 0.199319, -0.832395,
		-0.345649, -0.841056, -0.416115,
		-0.783030, 0.502889, -0.366014,
		34.968700, 37.611572, 33.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405079, 37.049061, 32.872410>,  <35.516823, 37.259548, 33.583755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405079, 37.049061, 32.872410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242134, 37.413818, 32.892418>,  <35.144367, 37.632675, 32.904423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242134, 37.413818, 32.892418>,  <35.405079, 37.049061, 32.872410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242134, 37.413818, 32.892418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540048, 0.284690, -0.792023,
		-0.736484, -0.295624, -0.608439,
		-0.407357, 0.911898, 0.050019,
		35.119926, 37.687389, 32.907425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253895, 37.209904, 32.206905>,  <35.405079, 37.049061, 32.872410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253895, 37.209904, 32.206905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287415, 37.559036, 32.399216>,  <35.307526, 37.768517, 32.514603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287415, 37.559036, 32.399216>,  <35.253895, 37.209904, 32.206905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287415, 37.559036, 32.399216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572908, 0.352557, -0.739919,
		-0.815324, 0.337446, -0.470507,
		0.083802, 0.872831, 0.480774,
		35.312553, 37.820885, 32.543449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241608, 37.687515, 31.739328>,  <35.253895, 37.209904, 32.206905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241608, 37.687515, 31.739328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384296, 37.920830, 32.031223>,  <35.469910, 38.060818, 32.206360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384296, 37.920830, 32.031223>,  <35.241608, 37.687515, 31.739328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384296, 37.920830, 32.031223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699704, 0.350753, -0.622404,
		-0.619000, 0.732629, -0.283008,
		0.356725, 0.583290, 0.729740,
		35.491314, 38.095818, 32.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090126, 38.403526, 31.562027>,  <35.241608, 37.687515, 31.739328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090126, 38.403526, 31.562027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405468, 38.398571, 31.808065>,  <35.594673, 38.395599, 31.955688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405468, 38.398571, 31.808065>,  <35.090126, 38.403526, 31.562027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405468, 38.398571, 31.808065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534741, 0.508184, -0.675131,
		-0.304220, 0.861159, 0.407253,
		0.788354, -0.012387, 0.615097,
		35.641975, 38.394855, 31.992594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305138, 39.116882, 31.538429>,  <35.090126, 38.403526, 31.562027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305138, 39.116882, 31.538429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613342, 38.931301, 31.713272>,  <35.798264, 38.819954, 31.818178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613342, 38.931301, 31.713272>,  <35.305138, 39.116882, 31.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613342, 38.931301, 31.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630706, 0.654211, -0.417395,
		-0.092311, 0.597294, 0.796692,
		0.770512, -0.463948, 0.437108,
		35.844498, 38.792118, 31.844404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744717, 39.770336, 31.742012>,  <35.305138, 39.116882, 31.538429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744717, 39.770336, 31.742012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961823, 39.434902, 31.760725>,  <36.092087, 39.233643, 31.771954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961823, 39.434902, 31.760725>,  <35.744717, 39.770336, 31.742012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961823, 39.434902, 31.760725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764477, 0.470199, -0.441007,
		0.347822, 0.275128, 0.896284,
		0.542765, -0.838581, 0.046783,
		36.124653, 39.183327, 31.774759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309444, 39.993523, 32.108353>,  <35.744717, 39.770336, 31.742012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309444, 39.993523, 32.108353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400002, 39.672203, 31.888008>,  <36.454334, 39.479412, 31.755800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400002, 39.672203, 31.888008>,  <36.309444, 39.993523, 32.108353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400002, 39.672203, 31.888008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704268, 0.525681, -0.477144,
		0.672870, -0.279936, 0.684749,
		0.226390, -0.803303, -0.550865,
		36.467918, 39.431213, 31.722748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013973, 39.909328, 32.222378>,  <36.309444, 39.993523, 32.108353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013973, 39.909328, 32.222378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917843, 39.713226, 31.887262>,  <36.860165, 39.595566, 31.686192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917843, 39.713226, 31.887262>,  <37.013973, 39.909328, 32.222378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917843, 39.713226, 31.887262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744072, 0.461233, -0.483344,
		0.623378, -0.739538, 0.253937,
		-0.240327, -0.490253, -0.837791,
		36.845745, 39.566151, 31.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633774, 39.525810, 31.988037>,  <37.013973, 39.909328, 32.222378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633774, 39.525810, 31.988037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393559, 39.552780, 31.669336>,  <37.249432, 39.568962, 31.478117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393559, 39.552780, 31.669336>,  <37.633774, 39.525810, 31.988037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393559, 39.552780, 31.669336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774472, 0.296881, -0.558619,
		0.198874, -0.952531, -0.230508,
		-0.600535, 0.067427, -0.796750,
		37.213398, 39.573009, 31.430311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048973, 39.262115, 31.465906>,  <37.633774, 39.525810, 31.988037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048973, 39.262115, 31.465906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749897, 39.445423, 31.273680>,  <37.570450, 39.555408, 31.158344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749897, 39.445423, 31.273680>,  <38.048973, 39.262115, 31.465906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749897, 39.445423, 31.273680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620872, 0.225769, -0.750697,
		-0.235524, -0.859662, -0.453332,
		-0.747694, 0.458268, -0.480566,
		37.525589, 39.582905, 31.129511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309658, 39.256149, 30.733225>,  <38.048973, 39.262115, 31.465906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309658, 39.256149, 30.733225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017998, 39.529892, 30.732706>,  <37.843002, 39.694138, 30.732395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017998, 39.529892, 30.732706>,  <38.309658, 39.256149, 30.733225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017998, 39.529892, 30.732706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464346, 0.493344, -0.735524,
		-0.502720, -0.536907, -0.677498,
		-0.729147, 0.684356, -0.001297,
		37.799255, 39.735199, 30.732317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284241, 39.423424, 30.087387>,  <38.309658, 39.256149, 30.733225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284241, 39.423424, 30.087387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102394, 39.715347, 30.291624>,  <37.993286, 39.890503, 30.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102394, 39.715347, 30.291624>,  <38.284241, 39.423424, 30.087387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102394, 39.715347, 30.291624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372362, 0.676482, -0.635389,
		-0.809119, -0.098732, -0.579291,
		-0.454613, 0.729811, 0.510590,
		37.966011, 39.934292, 30.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810287, 39.716591, 29.711014>,  <38.284241, 39.423424, 30.087387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810287, 39.716591, 29.711014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925488, 39.990280, 29.979013>,  <37.994606, 40.154491, 30.139812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925488, 39.990280, 29.979013>,  <37.810287, 39.716591, 29.711014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925488, 39.990280, 29.979013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324852, 0.588355, -0.740480,
		-0.900849, 0.430907, -0.052826,
		0.287997, 0.684221, 0.670000,
		38.011887, 40.195545, 30.180014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555145, 40.387440, 29.360697>,  <37.810287, 39.716591, 29.711014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555145, 40.387440, 29.360697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829460, 40.489304, 29.633415>,  <37.994049, 40.550423, 29.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829460, 40.489304, 29.633415>,  <37.555145, 40.387440, 29.360697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829460, 40.489304, 29.633415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422336, 0.623686, -0.657760,
		-0.592734, 0.739029, 0.320162,
		0.685784, 0.254660, 0.681798,
		38.035194, 40.565701, 29.837955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603893, 41.161247, 29.328051>,  <37.555145, 40.387440, 29.360697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603893, 41.161247, 29.328051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949848, 41.036652, 29.485504>,  <38.157421, 40.961895, 29.579975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949848, 41.036652, 29.485504>,  <37.603893, 41.161247, 29.328051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949848, 41.036652, 29.485504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496249, 0.648591, -0.577120,
		-0.075542, 0.694484, 0.715532,
		0.864888, -0.311485, 0.393633,
		38.209316, 40.943207, 29.603594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028580, 41.742001, 29.333986>,  <37.603893, 41.161247, 29.328051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028580, 41.742001, 29.333986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287262, 41.441792, 29.388359>,  <38.442471, 41.261665, 29.420982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287262, 41.441792, 29.388359>,  <38.028580, 41.742001, 29.333986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287262, 41.441792, 29.388359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670378, 0.474295, -0.570646,
		0.363814, 0.460167, 0.809867,
		0.646709, -0.750527, 0.135931,
		38.481274, 41.216633, 29.429138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588913, 42.085690, 29.394455>,  <38.028580, 41.742001, 29.333986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588913, 42.085690, 29.394455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729988, 41.721703, 29.307211>,  <38.814632, 41.503311, 29.254864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729988, 41.721703, 29.307211>,  <38.588913, 42.085690, 29.394455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729988, 41.721703, 29.307211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683515, 0.409720, -0.604101,
		0.639076, 0.063977, 0.766478,
		0.352690, -0.909965, -0.218112,
		38.835796, 41.448711, 29.241777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323910, 42.063797, 29.472015>,  <38.588913, 42.085690, 29.394455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323910, 42.063797, 29.472015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244522, 41.763123, 29.220434>,  <39.196888, 41.582718, 29.069487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244522, 41.763123, 29.220434>,  <39.323910, 42.063797, 29.472015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244522, 41.763123, 29.220434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697208, 0.342736, -0.629629,
		0.688847, -0.563473, 0.456058,
		-0.198471, -0.751685, -0.628951,
		39.184982, 41.537617, 29.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854862, 41.670399, 29.447237>,  <39.323910, 42.063797, 29.472015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854862, 41.670399, 29.447237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678818, 41.593494, 29.096390>,  <39.573193, 41.547352, 28.885881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678818, 41.593494, 29.096390>,  <39.854862, 41.670399, 29.447237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678818, 41.593494, 29.096390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814944, 0.324645, -0.480075,
		0.377052, -0.926089, 0.013802,
		-0.440112, -0.192261, -0.877119,
		39.546783, 41.535816, 28.833254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363422, 41.264309, 29.144043>,  <39.854862, 41.670399, 29.447237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363422, 41.264309, 29.144043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116787, 41.411308, 28.865543>,  <39.968803, 41.499508, 28.698444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116787, 41.411308, 28.865543>,  <40.363422, 41.264309, 29.144043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116787, 41.411308, 28.865543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787180, 0.302082, -0.537675,
		0.012730, -0.879598, -0.475547,
		-0.616593, 0.367496, -0.696247,
		39.931808, 41.521557, 28.656670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589455, 40.900368, 28.468397>,  <40.363422, 41.264309, 29.144043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589455, 40.900368, 28.468397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411755, 41.251633, 28.397438>,  <40.305134, 41.462391, 28.354862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411755, 41.251633, 28.397438>,  <40.589455, 40.900368, 28.468397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411755, 41.251633, 28.397438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779799, 0.281539, -0.559151,
		-0.441080, -0.386739, -0.809865,
		-0.444254, 0.878162, -0.177397,
		40.278477, 41.515079, 28.344219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624359, 40.980469, 27.705154>,  <40.589455, 40.900368, 28.468397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624359, 40.980469, 27.705154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559807, 41.340950, 27.866047>,  <40.521076, 41.557240, 27.962582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559807, 41.340950, 27.866047>,  <40.624359, 40.980469, 27.705154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559807, 41.340950, 27.866047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786259, 0.363734, -0.499495,
		-0.596451, 0.235648, -0.767279,
		-0.161380, 0.901204, 0.402229,
		40.511395, 41.611313, 27.986715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597763, 41.484470, 27.203163>,  <40.624359, 40.980469, 27.705154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597763, 41.484470, 27.203163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694901, 41.685818, 27.534861>,  <40.753181, 41.806625, 27.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694901, 41.685818, 27.534861>,  <40.597763, 41.484470, 27.203163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694901, 41.685818, 27.534861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740267, 0.456291, -0.493765,
		-0.626923, 0.733770, -0.261821,
		0.242843, 0.503370, 0.829244,
		40.767754, 41.836830, 27.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703636, 42.179482, 26.969971>,  <40.597763, 41.484470, 27.203163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703636, 42.179482, 26.969971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899048, 42.159100, 27.318394>,  <41.016296, 42.146870, 27.527447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899048, 42.159100, 27.318394>,  <40.703636, 42.179482, 26.969971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899048, 42.159100, 27.318394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795270, 0.436742, -0.420478,
		-0.359002, 0.898143, 0.253884,
		0.488531, -0.050954, 0.871057,
		41.045609, 42.143814, 27.579710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906055, 42.880997, 27.082640>,  <40.703636, 42.179482, 26.969971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906055, 42.880997, 27.082640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140751, 42.642841, 27.302181>,  <41.281570, 42.499947, 27.433907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140751, 42.642841, 27.302181>,  <40.906055, 42.880997, 27.082640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140751, 42.642841, 27.302181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799069, 0.535548, -0.273272,
		-0.131234, 0.598912, 0.789988,
		0.586743, -0.595392, 0.548854,
		41.316772, 42.464222, 27.466837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239536, 43.320580, 27.417599>,  <40.906055, 42.880997, 27.082640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239536, 43.320580, 27.417599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466213, 42.994984, 27.468639>,  <41.602219, 42.799625, 27.499264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466213, 42.994984, 27.468639>,  <41.239536, 43.320580, 27.417599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466213, 42.994984, 27.468639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817068, 0.535257, -0.214245,
		0.106092, 0.225673, 0.968409,
		0.566697, -0.813985, 0.127604,
		41.636223, 42.750790, 27.506920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841084, 43.486214, 27.776260>,  <41.239536, 43.320580, 27.417599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841084, 43.486214, 27.776260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913368, 43.159122, 27.557661>,  <41.956741, 42.962868, 27.426502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913368, 43.159122, 27.557661>,  <41.841084, 43.486214, 27.776260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913368, 43.159122, 27.557661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829432, 0.425323, -0.362138,
		0.528569, -0.387838, 0.755114,
		0.180716, -0.817730, -0.546498,
		41.967583, 42.913803, 27.393711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602634, 43.490746, 27.831234>,  <41.841084, 43.486214, 27.776260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602634, 43.490746, 27.831234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497536, 43.266880, 27.516848>,  <42.434475, 43.132561, 27.328215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497536, 43.266880, 27.516848>,  <42.602634, 43.490746, 27.831234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497536, 43.266880, 27.516848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770649, 0.368421, -0.519967,
		0.580572, -0.742325, 0.334501,
		-0.262747, -0.559661, -0.785967,
		42.418713, 43.098984, 27.281057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162613, 42.920353, 27.759708>,  <42.602634, 43.490746, 27.831234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162613, 42.920353, 27.759708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966675, 43.033562, 27.429871>,  <42.849113, 43.101486, 27.231968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966675, 43.033562, 27.429871>,  <43.162613, 42.920353, 27.759708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966675, 43.033562, 27.429871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870418, 0.105304, -0.480919,
		-0.049275, -0.953316, -0.297927,
		-0.489841, 0.283018, -0.824595,
		42.819721, 43.118465, 27.182491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613251, 42.782772, 27.209394>,  <43.162613, 42.920353, 27.759708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613251, 42.782772, 27.209394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350399, 42.990726, 26.991072>,  <43.192688, 43.115498, 26.860077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350399, 42.990726, 26.991072>,  <43.613251, 42.782772, 27.209394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350399, 42.990726, 26.991072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732989, 0.271820, -0.623571,
		-0.175823, -0.809836, -0.559689,
		-0.657125, 0.519885, -0.545809,
		43.153263, 43.146690, 26.827330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794815, 42.613056, 26.521038>,  <43.613251, 42.782772, 27.209394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794815, 42.613056, 26.521038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583839, 42.951298, 26.488144>,  <43.457253, 43.154243, 26.468409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583839, 42.951298, 26.488144>,  <43.794815, 42.613056, 26.521038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583839, 42.951298, 26.488144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742109, 0.411430, -0.529150,
		-0.413617, -0.340122, -0.844534,
		-0.527442, 0.845602, -0.082233,
		43.425606, 43.204979, 26.463474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865788, 42.768101, 25.826378>,  <43.794815, 42.613056, 26.521038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865788, 42.768101, 25.826378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742989, 43.114719, 25.983782>,  <43.669308, 43.322689, 26.078224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742989, 43.114719, 25.983782>,  <43.865788, 42.768101, 25.826378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742989, 43.114719, 25.983782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667943, 0.490719, -0.559506,
		-0.677940, 0.091074, -0.729454,
		-0.307001, 0.866545, 0.393510,
		43.650887, 43.374683, 26.101835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623749, 43.153423, 25.237732>,  <43.865788, 42.768101, 25.826378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623749, 43.153423, 25.237732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717918, 43.405754, 25.533470>,  <43.774422, 43.557152, 25.710913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717918, 43.405754, 25.533470>,  <43.623749, 43.153423, 25.237732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717918, 43.405754, 25.533470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624828, 0.484441, -0.612296,
		-0.744422, 0.606115, -0.280107,
		0.235427, 0.630826, 0.739346,
		43.788548, 43.595001, 25.755274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387920, 43.830791, 24.984819>,  <43.623749, 43.153423, 25.237732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387920, 43.830791, 24.984819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668457, 43.881252, 25.265448>,  <43.836781, 43.911530, 25.433825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668457, 43.881252, 25.265448>,  <43.387920, 43.830791, 24.984819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668457, 43.881252, 25.265448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513779, 0.592777, -0.620200,
		-0.494116, 0.795425, 0.350924,
		0.701342, 0.126153, 0.701573,
		43.878860, 43.919098, 25.475920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654896, 44.524769, 24.929920>,  <43.387920, 43.830791, 24.984819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654896, 44.524769, 24.929920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952900, 44.311611, 25.090414>,  <44.131702, 44.183716, 25.186710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952900, 44.311611, 25.090414>,  <43.654896, 44.524769, 24.929920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952900, 44.311611, 25.090414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641451, 0.407280, -0.650126,
		0.183031, 0.741722, 0.645251,
		0.745010, -0.532890, 0.401233,
		44.176403, 44.151745, 25.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205765, 44.966469, 25.059185>,  <43.654896, 44.524769, 24.929920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205765, 44.966469, 25.059185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268749, 44.585941, 24.953203>,  <44.306541, 44.357624, 24.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268749, 44.585941, 24.953203>,  <44.205765, 44.966469, 25.059185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268749, 44.585941, 24.953203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722768, 0.293846, -0.625509,
		0.672913, -0.093003, 0.733852,
		0.157465, -0.951318, -0.264952,
		44.315990, 44.300545, 24.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848259, 44.803516, 25.286312>,  <44.205765, 44.966469, 25.059185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848259, 44.803516, 25.286312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660019, 44.733349, 24.940418>,  <44.547073, 44.691246, 24.732882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660019, 44.733349, 24.940418>,  <44.848259, 44.803516, 25.286312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660019, 44.733349, 24.940418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657060, 0.584434, -0.476141,
		0.588901, -0.792254, -0.159778,
		-0.470605, -0.175416, -0.864732,
		44.518837, 44.680721, 24.680998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359619, 44.821167, 24.779615>,  <44.848259, 44.803516, 25.286312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359619, 44.821167, 24.779615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011372, 44.852875, 24.585405>,  <44.802422, 44.871899, 24.468880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011372, 44.852875, 24.585405>,  <45.359619, 44.821167, 24.779615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011372, 44.852875, 24.585405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402291, 0.682777, -0.609899,
		0.283160, -0.726314, -0.626330,
		-0.870622, 0.079268, -0.485525,
		44.750187, 44.876656, 24.439747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536427, 45.462795, 25.210737>,  <45.359619, 44.821167, 24.779615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536427, 45.462795, 25.210737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836456, 45.662090, 25.384703>,  <46.016476, 45.781666, 25.489082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836456, 45.662090, 25.384703>,  <45.536427, 45.462795, 25.210737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836456, 45.662090, 25.384703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459940, -0.865525, 0.198300,
		0.475228, 0.051294, -0.878366,
		0.750076, 0.498233, 0.434914,
		46.061478, 45.811562, 25.515177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010311, 44.899803, 25.447840>,  <45.536427, 45.462795, 25.210737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010311, 44.899803, 25.447840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244144, 44.736588, 25.728344>,  <46.384445, 44.638657, 25.896646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244144, 44.736588, 25.728344>,  <46.010311, 44.899803, 25.447840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244144, 44.736588, 25.728344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563815, 0.417214, 0.712772,
		-0.583414, -0.812057, 0.013839,
		0.584586, -0.408039, 0.701259,
		46.419521, 44.614178, 25.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678448, 44.282543, 25.805191>,  <46.010311, 44.899803, 25.447840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678448, 44.282543, 25.805191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906906, 44.558533, 25.983061>,  <46.043980, 44.724125, 26.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906906, 44.558533, 25.983061>,  <45.678448, 44.282543, 25.805191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906906, 44.558533, 25.983061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767197, 0.256057, 0.588084,
		0.291901, -0.677032, 0.675590,
		0.571141, 0.689973, 0.444674,
		46.078251, 44.765526, 26.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725086, 44.775993, 26.511684>,  <45.678448, 44.282543, 25.805191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725086, 44.775993, 26.511684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902378, 45.105476, 26.653139>,  <46.008755, 45.303165, 26.738012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902378, 45.105476, 26.653139>,  <45.725086, 44.775993, 26.511684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902378, 45.105476, 26.653139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535473, -0.073092, 0.841384,
		0.718900, -0.562288, 0.408675,
		0.443230, 0.823705, 0.353636,
		46.035347, 45.352589, 26.759230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132198, 44.699852, 27.139084>,  <45.725086, 44.775993, 26.511684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132198, 44.699852, 27.139084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946445, 45.054028, 27.131573>,  <45.834995, 45.266533, 27.127066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946445, 45.054028, 27.131573>,  <46.132198, 44.699852, 27.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946445, 45.054028, 27.131573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558273, -0.276204, 0.782331,
		0.687517, 0.373786, 0.622579,
		-0.464383, 0.885435, -0.018780,
		45.807129, 45.319656, 27.125938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012852, 44.953693, 27.846693>,  <46.132198, 44.699852, 27.139084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012852, 44.953693, 27.846693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732800, 45.138699, 27.629108>,  <45.564766, 45.249702, 27.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732800, 45.138699, 27.629108>,  <46.012852, 44.953693, 27.846693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732800, 45.138699, 27.629108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699573, -0.291928, 0.652208,
		0.142858, 0.837173, 0.527951,
		-0.700135, 0.462513, -0.543960,
		45.522758, 45.277454, 27.465921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757957, 45.498383, 28.188108>,  <46.012852, 44.953693, 27.846693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757957, 45.498383, 28.188108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470837, 45.345989, 27.955004>,  <45.298565, 45.254555, 27.815140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470837, 45.345989, 27.955004>,  <45.757957, 45.498383, 28.188108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470837, 45.345989, 27.955004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490760, -0.316869, 0.811633,
		-0.493877, 0.868589, 0.040479,
		-0.717802, -0.380982, -0.582763,
		45.255497, 45.231693, 27.780174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187004, 45.689507, 28.508253>,  <45.757957, 45.498383, 28.188108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187004, 45.689507, 28.508253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116310, 45.356533, 28.298180>,  <45.073895, 45.156750, 28.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116310, 45.356533, 28.298180>,  <45.187004, 45.689507, 28.508253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116310, 45.356533, 28.298180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472288, -0.396420, 0.787271,
		-0.863545, 0.387176, -0.323087,
		-0.176734, -0.832434, -0.525185,
		45.063290, 45.106804, 28.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332748, 45.547569, 28.424368>,  <45.187004, 45.689507, 28.508253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332748, 45.547569, 28.424368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549934, 45.214371, 28.381826>,  <44.680248, 45.014454, 28.356302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549934, 45.214371, 28.381826>,  <44.332748, 45.547569, 28.424368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549934, 45.214371, 28.381826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578947, -0.463059, 0.671116,
		-0.608282, -0.302821, -0.733684,
		0.542967, -0.832992, -0.106353,
		44.712826, 44.964474, 28.349920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806641, 44.973961, 28.368320>,  <44.332748, 45.547569, 28.424368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806641, 44.973961, 28.368320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149624, 44.796360, 28.472343>,  <44.355415, 44.689800, 28.534758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149624, 44.796360, 28.472343>,  <43.806641, 44.973961, 28.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149624, 44.796360, 28.472343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460239, -0.435777, 0.773485,
		-0.230099, -0.782920, -0.578006,
		0.857458, -0.443999, 0.260059,
		44.406860, 44.663158, 28.550362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746422, 44.261566, 28.334078>,  <43.806641, 44.973961, 28.368320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746422, 44.261566, 28.334078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046741, 44.308891, 28.594017>,  <44.226933, 44.337288, 28.749981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046741, 44.308891, 28.594017>,  <43.746422, 44.261566, 28.334078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046741, 44.308891, 28.594017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425145, -0.666390, 0.612516,
		0.505523, -0.736156, -0.450024,
		0.750799, 0.118315, 0.649848,
		44.271980, 44.344387, 28.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789539, 43.670597, 28.701044>,  <43.746422, 44.261566, 28.334078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789539, 43.670597, 28.701044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010525, 43.907394, 28.935762>,  <44.143116, 44.049473, 29.076593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010525, 43.907394, 28.935762>,  <43.789539, 43.670597, 28.701044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010525, 43.907394, 28.935762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456994, -0.373625, 0.807193,
		0.697095, -0.714105, 0.064125,
		0.552462, 0.591995, 0.586794,
		44.176262, 44.084991, 29.111801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145309, 43.236900, 29.303164>,  <43.789539, 43.670597, 28.701044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145309, 43.236900, 29.303164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131142, 43.617210, 29.426302>,  <44.122639, 43.845398, 29.500185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131142, 43.617210, 29.426302>,  <44.145309, 43.236900, 29.303164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131142, 43.617210, 29.426302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494142, -0.284410, 0.821544,
		0.868660, -0.123018, 0.479893,
		-0.035421, 0.950778, 0.307844,
		44.120514, 43.902443, 29.518656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306049, 43.193489, 30.022686>,  <44.145309, 43.236900, 29.303164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306049, 43.193489, 30.022686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136646, 43.551037, 29.963850>,  <44.035004, 43.765564, 29.928549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136646, 43.551037, 29.963850>,  <44.306049, 43.193489, 30.022686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136646, 43.551037, 29.963850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559719, -0.130529, 0.818338,
		0.712288, 0.428905, 0.555596,
		-0.423511, 0.893869, -0.147092,
		44.009594, 43.819199, 29.919722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359104, 43.529552, 30.645857>,  <44.306049, 43.193489, 30.022686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359104, 43.529552, 30.645857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063595, 43.724312, 30.459463>,  <43.886292, 43.841167, 30.347626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063595, 43.724312, 30.459463>,  <44.359104, 43.529552, 30.645857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063595, 43.724312, 30.459463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613636, -0.200051, 0.763826,
		0.278688, 0.850239, 0.446573,
		-0.738772, 0.486902, -0.465986,
		43.841965, 43.870384, 30.319668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012749, 44.047421, 31.047781>,  <44.359104, 43.529552, 30.645857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012749, 44.047421, 31.047781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733395, 43.965939, 30.773333>,  <43.565781, 43.917049, 30.608664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733395, 43.965939, 30.773333>,  <44.012749, 44.047421, 31.047781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733395, 43.965939, 30.773333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603965, -0.346650, 0.717677,
		-0.384037, 0.915608, 0.119065,
		-0.698385, -0.203703, -0.686122,
		43.523880, 43.904827, 30.567495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503460, 44.080875, 31.427919>,  <44.012749, 44.047421, 31.047781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503460, 44.080875, 31.427919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330982, 43.944695, 31.093695>,  <43.227493, 43.862988, 30.893160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330982, 43.944695, 31.093695>,  <43.503460, 44.080875, 31.427919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330982, 43.944695, 31.093695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720244, -0.427898, 0.546033,
		-0.543432, 0.837256, -0.060698,
		-0.431197, -0.340449, -0.835562,
		43.201622, 43.842560, 30.843025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836395, 44.230145, 31.445419>,  <43.503460, 44.080875, 31.427919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836395, 44.230145, 31.445419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837334, 43.917324, 31.196138>,  <42.837898, 43.729630, 31.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837334, 43.917324, 31.196138>,  <42.836395, 44.230145, 31.445419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837334, 43.917324, 31.196138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779541, -0.391775, 0.488700,
		-0.626347, 0.484666, -0.610565,
		0.002348, -0.782056, -0.623204,
		42.838039, 43.682709, 31.009176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148949, 44.165215, 31.258480>,  <42.836395, 44.230145, 31.445419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148949, 44.165215, 31.258480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303036, 43.808720, 31.162725>,  <42.395489, 43.594822, 31.105272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303036, 43.808720, 31.162725>,  <42.148949, 44.165215, 31.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303036, 43.808720, 31.162725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785761, -0.452805, 0.421364,
		-0.483932, 0.025788, -0.874726,
		0.385213, -0.891237, -0.239390,
		42.418598, 43.541348, 31.090908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624191, 43.748371, 30.931822>,  <42.148949, 44.165215, 31.258480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624191, 43.748371, 30.931822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894917, 43.490593, 31.074152>,  <42.057354, 43.335926, 31.159550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894917, 43.490593, 31.074152>,  <41.624191, 43.748371, 30.931822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894917, 43.490593, 31.074152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733553, -0.549833, 0.399480,
		-0.061797, -0.531392, -0.844869,
		0.676817, -0.644443, 0.355826,
		42.097961, 43.297260, 31.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303200, 43.085258, 30.761654>,  <41.624191, 43.748371, 30.931822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303200, 43.085258, 30.761654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580044, 43.008816, 31.040066>,  <41.746151, 42.962948, 31.207113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580044, 43.008816, 31.040066>,  <41.303200, 43.085258, 30.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580044, 43.008816, 31.040066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688158, -0.465646, 0.556429,
		0.217764, -0.864090, -0.453793,
		0.692111, -0.191111, 0.696031,
		41.787678, 42.951481, 31.248875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348633, 42.293774, 30.868793>,  <41.303200, 43.085258, 30.761654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348633, 42.293774, 30.868793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497807, 42.466125, 31.197491>,  <41.587311, 42.569538, 31.394709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497807, 42.466125, 31.197491>,  <41.348633, 42.293774, 30.868793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497807, 42.466125, 31.197491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654999, -0.505026, 0.562073,
		0.657188, -0.747857, 0.093885,
		0.372936, 0.430882, 0.821742,
		41.609688, 42.595390, 31.444014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435261, 41.771957, 31.307184>,  <41.348633, 42.293774, 30.868793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435261, 41.771957, 31.307184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425640, 42.090626, 31.548756>,  <41.419868, 42.281826, 31.693699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425640, 42.090626, 31.548756>,  <41.435261, 41.771957, 31.307184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425640, 42.090626, 31.548756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591354, -0.498421, 0.633937,
		0.806053, -0.341887, 0.483106,
		-0.024055, 0.796674, 0.603930,
		41.418423, 42.329628, 31.729935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474010, 41.505230, 32.001732>,  <41.435261, 41.771957, 31.307184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474010, 41.505230, 32.001732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354534, 41.881729, 32.064770>,  <41.282848, 42.107628, 32.102592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354534, 41.881729, 32.064770>,  <41.474010, 41.505230, 32.001732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354534, 41.881729, 32.064770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597306, -0.313164, 0.738345,
		0.744320, 0.126402, 0.655752,
		-0.298686, 0.941250, 0.157593,
		41.264927, 42.164104, 32.112049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437603, 41.544888, 32.725735>,  <41.474010, 41.505230, 32.001732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437603, 41.544888, 32.725735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219746, 41.868393, 32.636948>,  <41.089031, 42.062496, 32.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219746, 41.868393, 32.636948>,  <41.437603, 41.544888, 32.725735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219746, 41.868393, 32.636948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623505, -0.213463, 0.752113,
		0.560901, 0.548027, 0.620529,
		-0.544639, 0.808764, -0.221966,
		41.056355, 42.111023, 32.570358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224304, 41.919857, 33.380428>,  <41.437603, 41.544888, 32.725735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224304, 41.919857, 33.380428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961857, 42.016018, 33.094292>,  <40.804386, 42.073715, 32.922611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961857, 42.016018, 33.094292>,  <41.224304, 41.919857, 33.380428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961857, 42.016018, 33.094292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747863, -0.334019, 0.573700,
		-0.101016, 0.911392, 0.398949,
		-0.656122, 0.240407, -0.715338,
		40.765018, 42.088139, 32.879692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841099, 42.466141, 33.690826>,  <41.224304, 41.919857, 33.380428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841099, 42.466141, 33.690826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615952, 42.301785, 33.403954>,  <40.480862, 42.203171, 33.231831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615952, 42.301785, 33.403954>,  <40.841099, 42.466141, 33.690826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615952, 42.301785, 33.403954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776290, -0.035134, 0.629395,
		-0.283810, 0.911007, -0.299195,
		-0.562872, -0.410891, -0.717178,
		40.447090, 42.178516, 33.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244686, 42.864452, 33.698185>,  <40.841099, 42.466141, 33.690826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244686, 42.864452, 33.698185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164291, 42.517868, 33.515385>,  <40.116055, 42.309917, 33.405704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164291, 42.517868, 33.515385>,  <40.244686, 42.864452, 33.698185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164291, 42.517868, 33.515385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856099, -0.071386, 0.511858,
		-0.476130, 0.494111, -0.727430,
		-0.200986, -0.866463, -0.456997,
		40.103996, 42.257931, 33.378284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486530, 42.869324, 33.651657>,  <40.244686, 42.864452, 33.698185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486530, 42.869324, 33.651657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610886, 42.497784, 33.571072>,  <39.685501, 42.274860, 33.522720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610886, 42.497784, 33.571072>,  <39.486530, 42.869324, 33.651657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610886, 42.497784, 33.571072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796128, -0.370280, 0.478615,
		-0.519160, 0.011596, -0.854599,
		0.310891, -0.928848, -0.201466,
		39.704151, 42.219128, 33.510632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962067, 42.471451, 33.294098>,  <39.486530, 42.869324, 33.651657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962067, 42.471451, 33.294098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188435, 42.211338, 33.496830>,  <39.324253, 42.055271, 33.618469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188435, 42.211338, 33.496830>,  <38.962067, 42.471451, 33.294098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188435, 42.211338, 33.496830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809633, -0.322259, 0.490554,
		-0.155666, -0.687959, -0.708859,
		0.565917, -0.650278, 0.506829,
		39.358212, 42.016254, 33.648880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550701, 41.945484, 33.418701>,  <38.962067, 42.471451, 33.294098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550701, 41.945484, 33.418701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849815, 41.873707, 33.674393>,  <39.029282, 41.830639, 33.827808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849815, 41.873707, 33.674393>,  <38.550701, 41.945484, 33.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849815, 41.873707, 33.674393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655783, -0.350103, 0.668862,
		0.103772, -0.919362, -0.379480,
		0.747783, -0.179447, 0.639233,
		39.074150, 41.819874, 33.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179089, 41.432106, 33.616196>,  <38.550701, 41.945484, 33.418701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179089, 41.432106, 33.616196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488430, 41.496429, 33.861492>,  <38.674034, 41.535023, 34.008671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488430, 41.496429, 33.861492>,  <38.179089, 41.432106, 33.616196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488430, 41.496429, 33.861492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473572, -0.496561, 0.727431,
		0.421485, -0.852976, -0.307866,
		0.773356, 0.160805, 0.613240,
		38.720436, 41.544670, 34.045464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398258, 40.797771, 33.844959>,  <38.179089, 41.432106, 33.616196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398258, 40.797771, 33.844959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466610, 41.089447, 34.110012>,  <38.507622, 41.264454, 34.269043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466610, 41.089447, 34.110012>,  <38.398258, 40.797771, 33.844959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466610, 41.089447, 34.110012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703472, -0.380591, 0.600232,
		0.689875, -0.568710, 0.447930,
		0.170880, 0.729191, 0.662631,
		38.517876, 41.308205, 34.308800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581768, 40.408821, 34.473003>,  <38.398258, 40.797771, 33.844959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581768, 40.408821, 34.473003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453407, 40.780029, 34.548691>,  <38.376392, 41.002754, 34.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453407, 40.780029, 34.548691>,  <38.581768, 40.408821, 34.473003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453407, 40.780029, 34.548691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780264, -0.372281, 0.502587,
		0.536852, 0.013641, 0.843566,
		-0.320900, 0.928020, 0.189216,
		38.357136, 41.058434, 34.605457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177242, 40.315769, 35.009846>,  <38.581768, 40.408821, 34.473003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177242, 40.315769, 35.009846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066685, 40.694660, 34.944901>,  <38.000351, 40.921997, 34.905933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066685, 40.694660, 34.944901>,  <38.177242, 40.315769, 35.009846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066685, 40.694660, 34.944901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839710, -0.155855, 0.520189,
		0.467436, 0.280109, 0.838476,
		-0.276390, 0.947232, -0.162359,
		37.983768, 40.978828, 34.896194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971519, 40.673710, 35.676826>,  <38.177242, 40.315769, 35.009846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971519, 40.673710, 35.676826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793282, 40.879997, 35.384121>,  <37.686337, 41.003769, 35.208496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793282, 40.879997, 35.384121>,  <37.971519, 40.673710, 35.676826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793282, 40.879997, 35.384121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894203, -0.217202, 0.391440,
		0.042931, 0.828771, 0.557939,
		-0.445599, 0.515715, -0.731764,
		37.659603, 41.034710, 35.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434914, 41.127220, 35.957600>,  <37.971519, 40.673710, 35.676826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434914, 41.127220, 35.957600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335957, 41.036404, 35.580826>,  <37.276581, 40.981915, 35.354759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335957, 41.036404, 35.580826>,  <37.434914, 41.127220, 35.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335957, 41.036404, 35.580826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916197, -0.261483, 0.303661,
		-0.315245, 0.938125, -0.143327,
		-0.247394, -0.227043, -0.941938,
		37.261738, 40.968292, 35.298244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678356, 41.369316, 35.820530>,  <37.434914, 41.127220, 35.957600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678356, 41.369316, 35.820530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757160, 41.113766, 35.523067>,  <36.804443, 40.960434, 35.344589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757160, 41.113766, 35.523067>,  <36.678356, 41.369316, 35.820530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757160, 41.113766, 35.523067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955330, -0.295538, 0.000816,
		-0.220299, 0.710273, -0.668566,
		0.197007, -0.638881, -0.743653,
		36.816261, 40.922100, 35.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107922, 41.359650, 35.517262>,  <36.678356, 41.369316, 35.820530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107922, 41.359650, 35.517262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263699, 41.011684, 35.396214>,  <36.357162, 40.802906, 35.323586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263699, 41.011684, 35.396214>,  <36.107922, 41.359650, 35.517262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263699, 41.011684, 35.396214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896111, -0.433802, 0.093815,
		-0.212890, 0.234648, -0.948482,
		0.389440, -0.869917, -0.302623,
		36.380531, 40.750710, 35.305428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691704, 41.072529, 34.967270>,  <36.107922, 41.359650, 35.517262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691704, 41.072529, 34.967270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877300, 40.770348, 35.152313>,  <35.988659, 40.589039, 35.263340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877300, 40.770348, 35.152313>,  <35.691704, 41.072529, 34.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877300, 40.770348, 35.152313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867212, -0.493906, 0.063249,
		0.180702, -0.430524, -0.884305,
		0.463994, -0.755451, 0.462606,
		36.016499, 40.543713, 35.291096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295967, 40.450802, 34.808910>,  <35.691704, 41.072529, 34.967270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295967, 40.450802, 34.808910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523045, 40.347935, 35.121727>,  <35.659290, 40.286213, 35.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523045, 40.347935, 35.121727>,  <35.295967, 40.450802, 34.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523045, 40.347935, 35.121727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774312, -0.489417, 0.401139,
		0.279582, -0.833267, -0.476970,
		0.567693, -0.257172, 0.782041,
		35.693352, 40.270782, 35.356339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994106, 39.848289, 35.045208>,  <35.295967, 40.450802, 34.808910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994106, 39.848289, 35.045208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222610, 39.915894, 35.366482>,  <35.359711, 39.956455, 35.559246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222610, 39.915894, 35.366482>,  <34.994106, 39.848289, 35.045208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222610, 39.915894, 35.366482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739156, -0.319472, 0.592947,
		0.356811, -0.932401, -0.057572,
		0.571257, 0.169015, 0.803181,
		35.393990, 39.966599, 35.607437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064865, 39.307232, 35.341110>,  <34.994106, 39.848289, 35.045208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064865, 39.307232, 35.341110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134075, 39.548946, 35.652210>,  <35.175602, 39.693977, 35.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134075, 39.548946, 35.652210>,  <35.064865, 39.307232, 35.341110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134075, 39.548946, 35.652210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640107, -0.531156, 0.555100,
		0.748548, -0.593892, 0.294905,
		0.173029, 0.604289, 0.777750,
		35.185986, 39.730232, 35.885536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157467, 38.938084, 36.008221>,  <35.064865, 39.307232, 35.341110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157467, 38.938084, 36.008221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038021, 39.300446, 36.128338>,  <34.966354, 39.517860, 36.200409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038021, 39.300446, 36.128338>,  <35.157467, 38.938084, 36.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038021, 39.300446, 36.128338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668506, -0.423103, 0.611624,
		0.681124, -0.018105, 0.731944,
		-0.298614, 0.905901, 0.300288,
		34.948437, 39.572216, 36.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192776, 38.855820, 36.706959>,  <35.157467, 38.938084, 36.008221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192776, 38.855820, 36.706959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951054, 39.174400, 36.698154>,  <34.806019, 39.365547, 36.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951054, 39.174400, 36.698154>,  <35.192776, 38.855820, 36.706959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951054, 39.174400, 36.698154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515318, -0.369632, 0.773188,
		0.607668, 0.478584, 0.633795,
		-0.604307, 0.796448, -0.022009,
		34.769760, 39.413334, 36.691551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934589, 38.821774, 36.572308>,  <35.192776, 38.855820, 36.706959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934589, 38.821774, 36.572308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199940, 38.540833, 36.675560>,  <36.359150, 38.372269, 36.737511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199940, 38.540833, 36.675560>,  <35.934589, 38.821774, 36.572308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199940, 38.540833, 36.675560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741667, 0.571359, -0.351395,
		0.099316, 0.424556, 0.899938,
		0.663374, -0.702354, 0.258134,
		36.398952, 38.330128, 36.752998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554298, 39.130802, 36.796864>,  <35.934589, 38.821774, 36.572308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554298, 39.130802, 36.796864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716724, 38.775024, 36.712952>,  <36.814178, 38.561558, 36.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716724, 38.775024, 36.712952>,  <36.554298, 39.130802, 36.796864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716724, 38.775024, 36.712952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833400, 0.454605, -0.314291,
		0.374911, -0.047210, 0.925858,
		0.406062, -0.889441, -0.209781,
		36.838543, 38.508190, 36.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162266, 39.170757, 37.137264>,  <36.554298, 39.130802, 36.796864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162266, 39.170757, 37.137264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206451, 38.878101, 36.868195>,  <37.232964, 38.702507, 36.706753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206451, 38.878101, 36.868195>,  <37.162266, 39.170757, 37.137264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206451, 38.878101, 36.868195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838805, 0.431670, -0.331764,
		0.533108, -0.527597, 0.661390,
		0.110464, -0.731644, -0.672678,
		37.239590, 38.658607, 36.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832302, 39.055805, 37.283661>,  <37.162266, 39.170757, 37.137264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832302, 39.055805, 37.283661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745766, 38.903702, 36.923973>,  <37.693844, 38.812439, 36.708160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745766, 38.903702, 36.923973>,  <37.832302, 39.055805, 37.283661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745766, 38.903702, 36.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952841, 0.118525, -0.279367,
		0.212812, -0.917254, 0.336685,
		-0.216345, -0.380260, -0.899221,
		37.680862, 38.789623, 36.654205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334099, 38.539959, 37.177330>,  <37.832302, 39.055805, 37.283661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334099, 38.539959, 37.177330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186398, 38.651001, 36.822571>,  <38.097775, 38.717628, 36.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186398, 38.651001, 36.822571>,  <38.334099, 38.539959, 37.177330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186398, 38.651001, 36.822571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926812, 0.180182, -0.329477,
		0.068336, -0.943646, -0.323825,
		-0.369256, 0.277610, -0.886895,
		38.075619, 38.734283, 36.556503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696457, 38.228695, 36.694370>,  <38.334099, 38.539959, 37.177330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696457, 38.228695, 36.694370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539227, 38.535900, 36.492123>,  <38.444889, 38.720222, 36.370773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539227, 38.535900, 36.492123>,  <38.696457, 38.228695, 36.694370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539227, 38.535900, 36.492123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881824, 0.159058, -0.443946,
		-0.260534, -0.620367, -0.739775,
		-0.393076, 0.768014, -0.505615,
		38.421303, 38.766304, 36.340439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912201, 38.161499, 35.957443>,  <38.696457, 38.228695, 36.694370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912201, 38.161499, 35.957443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807362, 38.542206, 36.021236>,  <38.744457, 38.770630, 36.059513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807362, 38.542206, 36.021236>,  <38.912201, 38.161499, 35.957443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807362, 38.542206, 36.021236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894000, 0.301702, -0.331271,
		-0.363411, 0.055754, -0.929959,
		-0.262101, 0.951770, 0.159487,
		38.728733, 38.827736, 36.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988213, 38.462009, 35.309582>,  <38.912201, 38.161499, 35.957443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988213, 38.462009, 35.309582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984180, 38.767216, 35.568100>,  <38.981762, 38.950340, 35.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984180, 38.767216, 35.568100>,  <38.988213, 38.462009, 35.309582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984180, 38.767216, 35.568100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681341, 0.478313, -0.554068,
		-0.731897, 0.434764, -0.524697,
		-0.010080, 0.763018, 0.646298,
		38.981155, 38.996120, 35.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861282, 39.103333, 34.944347>,  <38.988213, 38.462009, 35.309582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861282, 39.103333, 34.944347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042526, 39.214577, 35.283134>,  <39.151272, 39.281322, 35.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042526, 39.214577, 35.283134>,  <38.861282, 39.103333, 34.944347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042526, 39.214577, 35.283134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565266, 0.645030, -0.514209,
		-0.689325, 0.711751, 0.135060,
		0.453107, 0.278112, 0.846964,
		39.178459, 39.298012, 35.537224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076458, 39.801403, 34.835384>,  <38.861282, 39.103333, 34.944347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076458, 39.801403, 34.835384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309364, 39.684471, 35.138836>,  <39.449108, 39.614311, 35.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309364, 39.684471, 35.138836>,  <39.076458, 39.801403, 34.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309364, 39.684471, 35.138836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733821, 0.590648, -0.335621,
		-0.349969, 0.752116, 0.558430,
		0.582261, -0.292331, 0.758627,
		39.484043, 39.596771, 35.366425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463734, 40.445320, 35.046913>,  <39.076458, 39.801403, 34.835384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463734, 40.445320, 35.046913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658005, 40.146980, 35.229263>,  <39.774567, 39.967976, 35.338673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658005, 40.146980, 35.229263>,  <39.463734, 40.445320, 35.046913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658005, 40.146980, 35.229263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858858, 0.504241, -0.090020,
		-0.162728, 0.435251, 0.885481,
		0.485677, -0.745853, 0.455873,
		39.803707, 39.923225, 35.366024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967297, 40.742836, 35.467346>,  <39.463734, 40.445320, 35.046913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967297, 40.742836, 35.467346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118664, 40.373127, 35.447292>,  <40.209484, 40.151302, 35.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118664, 40.373127, 35.447292>,  <39.967297, 40.742836, 35.467346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118664, 40.373127, 35.447292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907822, 0.381163, -0.174854,
		0.180721, 0.020658, 0.983317,
		0.378417, -0.924277, -0.050131,
		40.232189, 40.095844, 35.432255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630379, 40.720543, 35.798103>,  <39.967297, 40.742836, 35.467346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630379, 40.720543, 35.798103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652481, 40.416565, 35.539047>,  <40.665741, 40.234180, 35.383614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652481, 40.416565, 35.539047>,  <40.630379, 40.720543, 35.798103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652481, 40.416565, 35.539047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870525, 0.354338, -0.341513,
		0.489012, -0.544914, 0.681128,
		0.055255, -0.759943, -0.647637,
		40.669056, 40.188583, 35.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311363, 40.649830, 35.738777>,  <40.630379, 40.720543, 35.798103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311363, 40.649830, 35.738777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227806, 40.423672, 35.419605>,  <41.177670, 40.287975, 35.228104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227806, 40.423672, 35.419605>,  <41.311363, 40.649830, 35.738777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227806, 40.423672, 35.419605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871263, 0.262966, -0.414428,
		0.444144, -0.781777, 0.437677,
		-0.208896, -0.565397, -0.797928,
		41.165138, 40.254051, 35.180225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894699, 40.150028, 35.629124>,  <41.311363, 40.649830, 35.738777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894699, 40.150028, 35.629124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702209, 40.176941, 35.279518>,  <41.586716, 40.193089, 35.069756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702209, 40.176941, 35.279518>,  <41.894699, 40.150028, 35.629124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702209, 40.176941, 35.279518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863198, 0.210026, -0.459107,
		0.152676, -0.975378, -0.159145,
		-0.481227, 0.067279, -0.874010,
		41.557842, 40.197124, 35.017315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280277, 39.795181, 35.170620>,  <41.894699, 40.150028, 35.629124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280277, 39.795181, 35.170620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048653, 40.017612, 34.932137>,  <41.909679, 40.151070, 34.789047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048653, 40.017612, 34.932137>,  <42.280277, 39.795181, 35.170620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048653, 40.017612, 34.932137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785275, 0.183837, -0.591226,
		-0.219164, -0.810543, -0.543127,
		-0.579060, 0.556079, -0.596209,
		41.874935, 40.184437, 34.753273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494152, 39.648998, 34.497742>,  <42.280277, 39.795181, 35.170620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494152, 39.648998, 34.497742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301517, 39.993610, 34.433430>,  <42.185936, 40.200378, 34.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301517, 39.993610, 34.433430>,  <42.494152, 39.648998, 34.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301517, 39.993610, 34.433430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763562, 0.322410, -0.559486,
		-0.430176, -0.392202, -0.813097,
		-0.481582, 0.861527, -0.160778,
		42.157043, 40.252068, 34.385197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472229, 39.772480, 33.821209>,  <42.494152, 39.648998, 34.497742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472229, 39.772480, 33.821209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399124, 40.138538, 33.964931>,  <42.355263, 40.358173, 34.051163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399124, 40.138538, 33.964931>,  <42.472229, 39.772480, 33.821209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399124, 40.138538, 33.964931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551585, 0.397968, -0.733059,
		-0.813850, 0.064212, -0.577516,
		-0.182762, 0.915149, 0.359305,
		42.344296, 40.413082, 34.072723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381920, 40.217148, 33.240623>,  <42.472229, 39.772480, 33.821209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381920, 40.217148, 33.240623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468994, 40.469727, 33.538319>,  <42.521240, 40.621273, 33.716938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468994, 40.469727, 33.538319>,  <42.381920, 40.217148, 33.240623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468994, 40.469727, 33.538319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487971, 0.589974, -0.643285,
		-0.845280, 0.503201, -0.179698,
		0.217684, 0.631443, 0.744240,
		42.534298, 40.659161, 33.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253487, 40.807076, 32.921700>,  <42.381920, 40.217148, 33.240623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253487, 40.807076, 32.921700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473034, 40.892315, 33.245014>,  <42.604763, 40.943459, 33.439003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473034, 40.892315, 33.245014>,  <42.253487, 40.807076, 32.921700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473034, 40.892315, 33.245014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595776, 0.578535, -0.557089,
		-0.586341, 0.787327, 0.190578,
		0.548867, 0.213102, 0.808290,
		42.637695, 40.956245, 33.487499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438267, 41.425613, 32.769131>,  <42.253487, 40.807076, 32.921700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438267, 41.425613, 32.769131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719921, 41.299984, 33.023861>,  <42.888912, 41.224606, 33.176701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719921, 41.299984, 33.023861>,  <42.438267, 41.425613, 32.769131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719921, 41.299984, 33.023861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705712, 0.408734, -0.578712,
		-0.078533, 0.856908, 0.509452,
		0.704133, -0.314078, 0.636829,
		42.931160, 41.205761, 33.214909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887691, 42.013016, 32.776634>,  <42.438267, 41.425613, 32.769131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887691, 42.013016, 32.776634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059528, 41.671909, 32.895454>,  <43.162632, 41.467247, 32.966747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059528, 41.671909, 32.895454>,  <42.887691, 42.013016, 32.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059528, 41.671909, 32.895454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762773, 0.166605, -0.624835,
		0.483348, 0.495008, 0.722040,
		0.429594, -0.852766, 0.297051,
		43.188408, 41.416080, 32.984570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653915, 42.193512, 32.793015>,  <42.887691, 42.013016, 32.776634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653915, 42.193512, 32.793015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626568, 41.795650, 32.762032>,  <43.610161, 41.556934, 32.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626568, 41.795650, 32.762032>,  <43.653915, 42.193512, 32.793015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626568, 41.795650, 32.762032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622470, 0.018145, -0.782433,
		0.779652, -0.101705, 0.617899,
		-0.068365, -0.994649, -0.077455,
		43.606060, 41.497257, 32.738796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390030, 41.983620, 32.906448>,  <43.653915, 42.193512, 32.793015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390030, 41.983620, 32.906448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163940, 41.719379, 32.708809>,  <44.028286, 41.560837, 32.590225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163940, 41.719379, 32.708809>,  <44.390030, 41.983620, 32.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163940, 41.719379, 32.708809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555631, 0.137849, -0.819921,
		0.609752, -0.737972, 0.289136,
		-0.565222, -0.660602, -0.494094,
		43.994373, 41.521198, 32.560581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813217, 41.856419, 32.296349>,  <44.390030, 41.983620, 32.906448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813217, 41.856419, 32.296349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489769, 41.634945, 32.216770>,  <44.295700, 41.502060, 32.169025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489769, 41.634945, 32.216770>,  <44.813217, 41.856419, 32.296349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489769, 41.634945, 32.216770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352513, -0.185234, -0.917291,
		0.471035, -0.811866, 0.344963,
		-0.808616, -0.553681, -0.198941,
		44.247185, 41.468842, 32.157089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934956, 41.057739, 32.084885>,  <44.813217, 41.856419, 32.296349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934956, 41.057739, 32.084885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615402, 41.251873, 31.942768>,  <44.423672, 41.368355, 31.857498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615402, 41.251873, 31.942768>,  <44.934956, 41.057739, 32.084885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615402, 41.251873, 31.942768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394290, -0.023514, -0.918685,
		-0.454225, -0.874011, -0.172579,
		-0.798883, 0.485336, -0.355295,
		44.375736, 41.397472, 31.836180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751457, 40.605389, 31.617443>,  <44.934956, 41.057739, 32.084885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751457, 40.605389, 31.617443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574570, 40.956394, 31.543240>,  <44.468437, 41.166996, 31.498718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574570, 40.956394, 31.543240>,  <44.751457, 40.605389, 31.617443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574570, 40.956394, 31.543240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282655, -0.059942, -0.957347,
		-0.851206, -0.475788, -0.221527,
		-0.442215, 0.877515, -0.185507,
		44.441906, 41.219650, 31.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509296, 40.488575, 31.065197>,  <44.751457, 40.605389, 31.617443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509296, 40.488575, 31.065197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500671, 40.888470, 31.068476>,  <44.495495, 41.128407, 31.070442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500671, 40.888470, 31.068476>,  <44.509296, 40.488575, 31.065197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500671, 40.888470, 31.068476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284371, 0.013992, -0.958612,
		-0.958472, -0.018338, -0.284597,
		-0.021561, 0.999734, 0.008196,
		44.494202, 41.188389, 31.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219517, 40.586090, 30.491491>,  <44.509296, 40.488575, 31.065197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219517, 40.586090, 30.491491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396534, 40.931286, 30.588987>,  <44.502743, 41.138401, 30.647486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396534, 40.931286, 30.588987>,  <44.219517, 40.586090, 30.491491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396534, 40.931286, 30.588987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309829, 0.107922, -0.944647,
		-0.841523, 0.493565, -0.219618,
		0.442544, 0.862987, 0.243740,
		44.529297, 41.190182, 30.662109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994179, 41.172569, 30.000999>,  <44.219517, 40.586090, 30.491491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994179, 41.172569, 30.000999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352997, 41.281647, 30.140108>,  <44.568287, 41.347095, 30.223574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352997, 41.281647, 30.140108>,  <43.994179, 41.172569, 30.000999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352997, 41.281647, 30.140108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304397, 0.189253, -0.933555,
		-0.320395, 0.943302, 0.086760,
		0.897045, 0.272697, 0.347774,
		44.622108, 41.363457, 30.244440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129917, 41.689205, 29.548855>,  <43.994179, 41.172569, 30.000999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129917, 41.689205, 29.548855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466930, 41.573902, 29.730862>,  <44.669140, 41.504719, 29.840065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466930, 41.573902, 29.730862>,  <44.129917, 41.689205, 29.548855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466930, 41.573902, 29.730862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433204, -0.139394, -0.890451,
		0.320106, 0.947353, 0.007430,
		0.842536, -0.288258, 0.455018,
		44.719692, 41.487427, 29.867367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605888, 42.187206, 29.371294>,  <44.129917, 41.689205, 29.548855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605888, 42.187206, 29.371294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815506, 41.862457, 29.474249>,  <44.941277, 41.667610, 29.536022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815506, 41.862457, 29.474249>,  <44.605888, 42.187206, 29.371294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815506, 41.862457, 29.474249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416586, -0.019250, -0.908893,
		0.742858, 0.583520, 0.328126,
		0.524041, -0.811871, 0.257386,
		44.972717, 41.618896, 29.551464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394260, 42.353523, 29.297691>,  <44.605888, 42.187206, 29.371294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394260, 42.353523, 29.297691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348549, 41.956627, 29.278067>,  <45.321121, 41.718491, 29.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348549, 41.956627, 29.278067>,  <45.394260, 42.353523, 29.297691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348549, 41.956627, 29.278067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458063, -0.008807, -0.888876,
		0.881543, -0.124054, 0.455513,
		-0.114280, -0.992236, -0.049061,
		45.314266, 41.658955, 29.263348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040947, 42.223751, 29.063599>,  <45.394260, 42.353523, 29.297691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040947, 42.223751, 29.063599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819920, 41.897102, 28.996906>,  <45.687302, 41.701115, 28.956890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819920, 41.897102, 28.996906>,  <46.040947, 42.223751, 29.063599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819920, 41.897102, 28.996906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437904, -0.114242, -0.891733,
		0.709159, -0.565758, 0.420728,
		-0.552570, -0.816619, -0.166732,
		45.654148, 41.652115, 28.946886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489647, 41.776012, 28.623642>,  <46.040947, 42.223751, 29.063599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489647, 41.776012, 28.623642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127865, 41.617825, 28.559689>,  <45.910797, 41.522911, 28.521317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127865, 41.617825, 28.559689>,  <46.489647, 41.776012, 28.623642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127865, 41.617825, 28.559689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183710, -0.022857, -0.982715,
		0.384980, -0.918194, 0.093325,
		-0.904456, -0.395470, -0.159882,
		45.856529, 41.499184, 28.511724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590946, 41.261150, 28.162951>,  <46.489647, 41.776012, 28.623642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590946, 41.261150, 28.162951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203384, 41.332787, 28.094662>,  <45.970848, 41.375767, 28.053688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203384, 41.332787, 28.094662>,  <46.590946, 41.261150, 28.162951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203384, 41.332787, 28.094662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115182, -0.284195, -0.951823,
		-0.218979, -0.941892, 0.254731,
		-0.968907, 0.179089, -0.170721,
		45.912712, 41.386513, 28.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374668, 40.814236, 27.601749>,  <46.590946, 41.261150, 28.162951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374668, 40.814236, 27.601749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129223, 41.129433, 27.621895>,  <45.981956, 41.318550, 27.633982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129223, 41.129433, 27.621895>,  <46.374668, 40.814236, 27.601749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129223, 41.129433, 27.621895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100540, 0.141236, -0.984857,
		-0.783177, -0.599262, -0.165890,
		-0.613617, 0.787996, 0.050363,
		45.945137, 41.365833, 27.637003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835087, 40.750370, 27.060259>,  <46.374668, 40.814236, 27.601749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835087, 40.750370, 27.060259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866783, 41.140213, 27.144028>,  <45.885799, 41.374119, 27.194290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866783, 41.140213, 27.144028>,  <45.835087, 40.750370, 27.060259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866783, 41.140213, 27.144028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131066, 0.198075, -0.971385,
		-0.988202, 0.104422, -0.112042,
		0.079241, 0.974609, 0.209424,
		45.890556, 41.432594, 27.206856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443150, 40.717480, 26.556421>,  <45.835087, 40.750370, 27.060259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443150, 40.717480, 26.556421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579639, 40.393383, 26.365810>,  <45.661533, 40.198925, 26.251444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579639, 40.393383, 26.365810>,  <45.443150, 40.717480, 26.556421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579639, 40.393383, 26.365810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358763, -0.580837, 0.730697,
		-0.868823, -0.078373, -0.488881,
		0.341227, -0.810238, -0.476527,
		45.682007, 40.150311, 26.222853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884346, 40.139412, 26.559273>,  <45.443150, 40.717480, 26.556421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884346, 40.139412, 26.559273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245132, 39.968391, 26.535088>,  <45.461605, 39.865780, 26.520576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245132, 39.968391, 26.535088>,  <44.884346, 40.139412, 26.559273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245132, 39.968391, 26.535088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283627, -0.692191, 0.663647,
		-0.325593, -0.581439, -0.745599,
		0.901967, -0.427550, -0.060461,
		45.515724, 39.840126, 26.516949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680092, 39.523178, 26.662901>,  <44.884346, 40.139412, 26.559273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680092, 39.523178, 26.662901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075363, 39.479801, 26.706264>,  <45.312527, 39.453777, 26.732283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075363, 39.479801, 26.706264>,  <44.680092, 39.523178, 26.662901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075363, 39.479801, 26.706264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150646, -0.554716, 0.818289,
		-0.028598, -0.824943, -0.564492,
		0.988174, -0.108439, 0.108411,
		45.371815, 39.447269, 26.738787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798737, 38.781960, 26.772846>,  <44.680092, 39.523178, 26.662901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798737, 38.781960, 26.772846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112598, 38.983559, 26.917236>,  <45.300915, 39.104519, 27.003870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112598, 38.983559, 26.917236>,  <44.798737, 38.781960, 26.772846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112598, 38.983559, 26.917236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143283, -0.419075, 0.896574,
		0.603151, -0.755221, -0.256613,
		0.784652, 0.504002, 0.360976,
		45.347996, 39.134758, 27.025530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140491, 38.224056, 27.245829>,  <44.798737, 38.781960, 26.772846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140491, 38.224056, 27.245829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275974, 38.585915, 27.349285>,  <45.357262, 38.803028, 27.411360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275974, 38.585915, 27.349285>,  <45.140491, 38.224056, 27.245829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275974, 38.585915, 27.349285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082275, -0.245362, 0.965934,
		0.937289, -0.348445, -0.008675,
		0.338704, 0.904645, 0.258643,
		45.377586, 38.857307, 27.426878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701187, 38.066246, 27.617098>,  <45.140491, 38.224056, 27.245829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701187, 38.066246, 27.617098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565601, 38.421722, 27.740604>,  <45.484249, 38.635006, 27.814709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565601, 38.421722, 27.740604>,  <45.701187, 38.066246, 27.617098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565601, 38.421722, 27.740604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063407, -0.305869, 0.949960,
		0.938661, 0.341578, 0.047329,
		-0.338962, 0.888689, 0.308766,
		45.463913, 38.688328, 27.833235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845699, 38.106697, 28.337978>,  <45.701187, 38.066246, 27.617098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845699, 38.106697, 28.337978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621387, 38.437149, 28.315950>,  <45.486801, 38.635422, 28.302732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621387, 38.437149, 28.315950>,  <45.845699, 38.106697, 28.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621387, 38.437149, 28.315950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188275, -0.062464, 0.980128,
		0.806278, 0.560000, 0.190569,
		-0.560775, 0.826134, -0.055071,
		45.453156, 38.684990, 28.299429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975731, 38.559929, 28.933079>,  <45.845699, 38.106697, 28.337978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975731, 38.559929, 28.933079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609325, 38.636021, 28.791809>,  <45.389481, 38.681675, 28.707047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609325, 38.636021, 28.791809>,  <45.975731, 38.559929, 28.933079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609325, 38.636021, 28.791809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365632, -0.033739, 0.930148,
		0.165023, 0.981160, 0.100458,
		-0.916013, 0.190226, -0.353176,
		45.334522, 38.693089, 28.685856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627705, 39.227581, 29.407360>,  <45.975731, 38.559929, 28.933079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627705, 39.227581, 29.407360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332924, 39.023685, 29.229792>,  <45.156055, 38.901348, 29.123251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332924, 39.023685, 29.229792>,  <45.627705, 39.227581, 29.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332924, 39.023685, 29.229792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452422, -0.115969, 0.884232,
		-0.502208, 0.852477, -0.145153,
		-0.736954, -0.509739, -0.443920,
		45.111839, 38.870766, 29.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039673, 39.416031, 29.714294>,  <45.627705, 39.227581, 29.407360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039673, 39.416031, 29.714294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908585, 39.079311, 29.542725>,  <44.829933, 38.877281, 29.439783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908585, 39.079311, 29.542725>,  <45.039673, 39.416031, 29.714294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908585, 39.079311, 29.542725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686507, -0.099729, 0.720251,
		-0.649082, 0.530501, -0.545217,
		-0.327720, -0.841797, -0.428925,
		44.810268, 38.826771, 29.414047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300568, 39.485279, 29.797789>,  <45.039673, 39.416031, 29.714294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300568, 39.485279, 29.797789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364109, 39.097237, 29.724405>,  <44.402233, 38.864410, 29.680376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364109, 39.097237, 29.724405>,  <44.300568, 39.485279, 29.797789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364109, 39.097237, 29.724405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659537, -0.242546, 0.711465,
		-0.734694, 0.007975, -0.678352,
		0.158857, -0.970107, -0.183457,
		44.411766, 38.806206, 29.669369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622433, 39.156368, 29.876379>,  <44.300568, 39.485279, 29.797789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622433, 39.156368, 29.876379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895695, 38.867176, 29.917570>,  <44.059650, 38.693661, 29.942284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895695, 38.867176, 29.917570>,  <43.622433, 39.156368, 29.876379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895695, 38.867176, 29.917570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474664, -0.332440, 0.814971,
		-0.554972, -0.605630, -0.570279,
		0.683154, -0.722978, 0.102976,
		44.100639, 38.650284, 29.948463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231728, 38.512115, 29.899963>,  <43.622433, 39.156368, 29.876379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231728, 38.512115, 29.899963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578369, 38.460056, 30.092653>,  <43.786354, 38.428822, 30.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578369, 38.460056, 30.092653>,  <43.231728, 38.512115, 29.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578369, 38.460056, 30.092653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498414, -0.179089, 0.848240,
		-0.024125, -0.975186, -0.220067,
		0.866603, -0.130148, 0.481726,
		43.838348, 38.421013, 30.237171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083363, 37.972553, 30.275797>,  <43.231728, 38.512115, 29.899963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083363, 37.972553, 30.275797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435459, 38.066921, 30.440483>,  <43.646717, 38.123543, 30.539295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435459, 38.066921, 30.440483>,  <43.083363, 37.972553, 30.275797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435459, 38.066921, 30.440483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361720, -0.227967, 0.903986,
		0.307129, -0.944654, -0.115328,
		0.880245, 0.235924, 0.411715,
		43.699532, 38.137699, 30.563997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369053, 37.410934, 30.620131>,  <43.083363, 37.972553, 30.275797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369053, 37.410934, 30.620131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547127, 37.719837, 30.801432>,  <43.653969, 37.905178, 30.910212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547127, 37.719837, 30.801432>,  <43.369053, 37.410934, 30.620131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547127, 37.719837, 30.801432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474891, -0.225510, 0.850661,
		0.759140, -0.593942, 0.266344,
		0.445180, 0.772255, 0.453251,
		43.680679, 37.951515, 30.937407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514065, 37.228050, 31.297468>,  <43.369053, 37.410934, 30.620131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514065, 37.228050, 31.297468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558346, 37.620804, 31.358990>,  <43.584915, 37.856457, 31.395903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558346, 37.620804, 31.358990>,  <43.514065, 37.228050, 31.297468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558346, 37.620804, 31.358990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567576, -0.064579, 0.820784,
		0.815845, -0.178154, 0.550144,
		0.110698, 0.981881, 0.153802,
		43.591557, 37.915367, 31.405130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895958, 37.274712, 31.973383>,  <43.514065, 37.228050, 31.297468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895958, 37.274712, 31.973383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693024, 37.611214, 31.898664>,  <43.571262, 37.813114, 31.853834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693024, 37.611214, 31.898664>,  <43.895958, 37.274712, 31.973383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693024, 37.611214, 31.898664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413827, -0.047706, 0.909105,
		0.755879, 0.538527, 0.372338,
		-0.507340, 0.841257, -0.186797,
		43.540821, 37.863590, 31.842625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007618, 37.770977, 32.465534>,  <43.895958, 37.274712, 31.973383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007618, 37.770977, 32.465534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645550, 37.838982, 32.309711>,  <43.428307, 37.879784, 32.216217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645550, 37.838982, 32.309711>,  <44.007618, 37.770977, 32.465534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645550, 37.838982, 32.309711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396240, -0.005881, 0.918128,
		0.153800, 0.985425, 0.072688,
		-0.905174, 0.170010, -0.389560,
		43.373997, 37.889984, 32.192844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667686, 38.220047, 32.993706>,  <44.007618, 37.770977, 32.465534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667686, 38.220047, 32.993706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355232, 38.118988, 32.765324>,  <43.167759, 38.058353, 32.628292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355232, 38.118988, 32.765324>,  <43.667686, 38.220047, 32.993706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355232, 38.118988, 32.765324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584050, -0.027581, 0.811249,
		-0.220709, 0.967165, -0.126015,
		-0.781136, -0.252649, -0.570960,
		43.120892, 38.043194, 32.594036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165386, 38.779827, 33.077446>,  <43.667686, 38.220047, 32.993706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165386, 38.779827, 33.077446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985344, 38.442947, 32.958717>,  <42.877319, 38.240818, 32.887478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985344, 38.442947, 32.958717>,  <43.165386, 38.779827, 33.077446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985344, 38.442947, 32.958717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586866, 0.028453, 0.809184,
		-0.673051, 0.538412, -0.507065,
		-0.450102, -0.842201, -0.296826,
		42.850315, 38.190289, 32.869671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487251, 38.964825, 33.169514>,  <43.165386, 38.779827, 33.077446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487251, 38.964825, 33.169514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453659, 38.566982, 33.145138>,  <42.433502, 38.328278, 33.130512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453659, 38.566982, 33.145138>,  <42.487251, 38.964825, 33.169514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453659, 38.566982, 33.145138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721736, 0.018549, 0.691919,
		-0.687054, 0.102095, -0.719398,
		-0.083985, -0.994602, -0.060942,
		42.428463, 38.268600, 33.126854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810421, 38.793381, 33.168468>,  <42.487251, 38.964825, 33.169514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810421, 38.793381, 33.168468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976234, 38.447971, 33.283352>,  <42.075722, 38.240726, 33.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976234, 38.447971, 33.283352>,  <41.810421, 38.793381, 33.168468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976234, 38.447971, 33.283352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725125, -0.122722, 0.677593,
		-0.549871, -0.489147, -0.677035,
		0.414530, -0.863524, 0.287211,
		42.100594, 38.188915, 33.369514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223900, 38.360691, 33.277073>,  <41.810421, 38.793381, 33.168468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223900, 38.360691, 33.277073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512756, 38.158085, 33.465519>,  <41.686069, 38.036522, 33.578587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512756, 38.158085, 33.465519>,  <41.223900, 38.360691, 33.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512756, 38.158085, 33.465519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621772, -0.176807, 0.762980,
		-0.303170, -0.843905, -0.442620,
		0.722141, -0.506521, 0.471114,
		41.729401, 38.006130, 33.606853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914059, 37.666412, 33.475151>,  <41.223900, 38.360691, 33.277073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914059, 37.666412, 33.475151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234203, 37.750710, 33.699654>,  <41.426289, 37.801289, 33.834354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234203, 37.750710, 33.699654>,  <40.914059, 37.666412, 33.475151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234203, 37.750710, 33.699654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456750, -0.392063, 0.798540,
		0.388335, -0.895475, -0.217535,
		0.800360, 0.210741, 0.561260,
		41.474312, 37.813931, 33.868031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188725, 37.125160, 33.820736>,  <40.914059, 37.666412, 33.475151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188725, 37.125160, 33.820736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364231, 37.393620, 34.059750>,  <41.469536, 37.554695, 34.203159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364231, 37.393620, 34.059750>,  <41.188725, 37.125160, 33.820736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364231, 37.393620, 34.059750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134878, -0.608239, 0.782211,
		0.888421, -0.423803, -0.176353,
		0.438767, 0.671146, 0.597533,
		41.495861, 37.594963, 34.239010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521389, 36.724930, 34.268421>,  <41.188725, 37.125160, 33.820736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521389, 36.724930, 34.268421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502766, 37.073689, 34.463406>,  <41.491592, 37.282944, 34.580399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502766, 37.073689, 34.463406>,  <41.521389, 36.724930, 34.268421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502766, 37.073689, 34.463406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137503, -0.488943, 0.861410,
		0.989406, -0.026923, 0.142653,
		-0.046557, 0.871900, 0.487465,
		41.488800, 37.335258, 34.609646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834023, 36.595219, 34.911270>,  <41.521389, 36.724930, 34.268421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834023, 36.595219, 34.911270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624882, 36.924183, 35.000954>,  <41.499397, 37.121563, 35.054764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624882, 36.924183, 35.000954>,  <41.834023, 36.595219, 34.911270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624882, 36.924183, 35.000954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253682, -0.401229, 0.880148,
		0.813800, 0.403309, 0.418414,
		-0.522852, 0.822409, 0.224208,
		41.468025, 37.170906, 35.068214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963654, 36.813633, 35.659950>,  <41.834023, 36.595219, 34.911270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963654, 36.813633, 35.659950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603321, 36.962734, 35.570900>,  <41.387123, 37.052197, 35.517471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603321, 36.962734, 35.570900>,  <41.963654, 36.813633, 35.659950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603321, 36.962734, 35.570900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299987, -0.163692, 0.939794,
		0.313869, 0.913379, 0.259279,
		-0.900830, 0.372752, -0.222624,
		41.333073, 37.074558, 35.504112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787891, 37.250980, 36.219830>,  <41.963654, 36.813633, 35.659950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787891, 37.250980, 36.219830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435070, 37.187561, 36.042362>,  <41.223377, 37.149509, 35.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435070, 37.187561, 36.042362>,  <41.787891, 37.250980, 36.219830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435070, 37.187561, 36.042362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417822, -0.171941, 0.892111,
		-0.217730, 0.972264, 0.085415,
		-0.882054, -0.158551, -0.443670,
		41.170452, 37.139996, 35.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301582, 37.590710, 36.673401>,  <41.787891, 37.250980, 36.219830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301582, 37.590710, 36.673401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062359, 37.347115, 36.464993>,  <40.918823, 37.200958, 36.339947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062359, 37.347115, 36.464993>,  <41.301582, 37.590710, 36.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062359, 37.347115, 36.464993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493829, -0.232016, 0.838034,
		-0.631237, 0.758488, -0.161976,
		-0.598057, -0.608987, -0.521021,
		40.882942, 37.164417, 36.308685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567062, 37.720745, 36.885284>,  <41.301582, 37.590710, 36.673401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567062, 37.720745, 36.885284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521797, 37.367531, 36.703098>,  <40.494637, 37.155602, 36.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521797, 37.367531, 36.703098>,  <40.567062, 37.720745, 36.885284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521797, 37.367531, 36.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559285, -0.322272, 0.763767,
		-0.821214, 0.341167, -0.457397,
		-0.113167, -0.883032, -0.455464,
		40.487846, 37.102623, 36.566460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903404, 37.518806, 36.922466>,  <40.567062, 37.720745, 36.885284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903404, 37.518806, 36.922466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103428, 37.176670, 36.868294>,  <40.223442, 36.971390, 36.835793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103428, 37.176670, 36.868294>,  <39.903404, 37.518806, 36.922466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103428, 37.176670, 36.868294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420368, -0.376472, 0.825566,
		-0.757124, -0.355899, -0.547814,
		0.500055, -0.855339, -0.135427,
		40.253445, 36.920067, 36.827667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368107, 36.995415, 36.919697>,  <39.903404, 37.518806, 36.922466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368107, 36.995415, 36.919697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706421, 36.799725, 37.004837>,  <39.909409, 36.682312, 37.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706421, 36.799725, 37.004837>,  <39.368107, 36.995415, 36.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706421, 36.799725, 37.004837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432702, -0.395626, 0.810092,
		-0.312108, -0.777265, -0.546303,
		0.845788, -0.489222, 0.212846,
		39.960159, 36.652958, 37.068691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168674, 36.402485, 36.936920>,  <39.368107, 36.995415, 36.919697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168674, 36.402485, 36.936920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521629, 36.363937, 37.121136>,  <39.733402, 36.340809, 37.231667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521629, 36.363937, 37.121136>,  <39.168674, 36.402485, 36.936920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521629, 36.363937, 37.121136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384684, -0.711369, 0.588194,
		0.270932, -0.696180, -0.664777,
		0.882391, -0.096369, 0.460542,
		39.786346, 36.335026, 37.259296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272728, 35.707310, 37.025921>,  <39.168674, 36.402485, 36.936920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272728, 35.707310, 37.025921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502605, 35.890915, 37.296932>,  <39.640530, 36.001076, 37.459538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502605, 35.890915, 37.296932>,  <39.272728, 35.707310, 37.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502605, 35.890915, 37.296932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367822, -0.594685, 0.714882,
		0.731052, -0.660045, -0.172926,
		0.574691, 0.459010, 0.677525,
		39.675014, 36.028618, 37.500191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696312, 35.181610, 37.418503>,  <39.272728, 35.707310, 37.025921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696312, 35.181610, 37.418503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697708, 35.485992, 37.678020>,  <39.698547, 35.668621, 37.833733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697708, 35.485992, 37.678020>,  <39.696312, 35.181610, 37.418503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697708, 35.485992, 37.678020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140925, -0.641948, 0.753686,
		0.990014, -0.094061, 0.104998,
		0.003489, 0.760957, 0.648793,
		39.698753, 35.714279, 37.872658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087410, 34.973640, 37.948292>,  <39.696312, 35.181610, 37.418503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087410, 34.973640, 37.948292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857777, 35.260113, 38.107044>,  <39.719997, 35.431995, 38.202297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857777, 35.260113, 38.107044>,  <40.087410, 34.973640, 37.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857777, 35.260113, 38.107044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223475, -0.603362, 0.765515,
		0.787710, 0.350776, 0.506428,
		-0.574083, 0.716178, 0.396885,
		39.685551, 35.474968, 38.226109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311127, 34.968864, 38.679901>,  <40.087410, 34.973640, 37.948292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311127, 34.968864, 38.679901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960262, 35.158993, 38.652596>,  <39.749744, 35.273067, 38.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960262, 35.158993, 38.652596>,  <40.311127, 34.968864, 38.679901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960262, 35.158993, 38.652596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375548, -0.590451, 0.714375,
		0.299248, 0.652259, 0.696426,
		-0.877163, 0.475317, -0.068264,
		39.697113, 35.301586, 38.632118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101326, 35.220181, 39.374485>,  <40.311127, 34.968864, 38.679901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101326, 35.220181, 39.374485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759361, 35.203831, 39.167622>,  <39.554184, 35.194019, 39.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759361, 35.203831, 39.167622>,  <40.101326, 35.220181, 39.374485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759361, 35.203831, 39.167622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455797, -0.416888, 0.786418,
		-0.247743, 0.908039, 0.337772,
		-0.854911, -0.040874, -0.517162,
		39.502888, 35.191570, 39.012474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548321, 35.445244, 39.759632>,  <40.101326, 35.220181, 39.374485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548321, 35.445244, 39.759632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438736, 35.173088, 39.487743>,  <39.372986, 35.009796, 39.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438736, 35.173088, 39.487743>,  <39.548321, 35.445244, 39.759632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438736, 35.173088, 39.487743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420214, -0.551044, 0.720950,
		-0.865081, 0.483140, -0.134944,
		-0.273960, -0.680386, -0.679721,
		39.356548, 34.968971, 39.283829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247181, 35.485725, 40.049637>,  <39.548321, 35.445244, 39.759632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247181, 35.485725, 40.049637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370121, 35.865608, 40.025692>,  <40.443886, 36.093540, 40.011326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370121, 35.865608, 40.025692>,  <40.247181, 35.485725, 40.049637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370121, 35.865608, 40.025692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746732, 0.279703, 0.603455,
		0.589852, -0.140770, 0.795147,
		0.307353, 0.949710, -0.059866,
		40.462326, 36.150520, 40.007732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916618, 35.732365, 40.675484>,  <40.247181, 35.485725, 40.049637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916618, 35.732365, 40.675484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000679, 36.068211, 40.475128>,  <40.051113, 36.269718, 40.354916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000679, 36.068211, 40.475128>,  <39.916618, 35.732365, 40.675484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000679, 36.068211, 40.475128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699935, 0.486903, 0.522510,
		0.682590, 0.240787, 0.689994,
		0.210147, 0.839611, -0.500891,
		40.063725, 36.320095, 40.324860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212261, 36.195518, 41.196472>,  <39.916618, 35.732365, 40.675484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212261, 36.195518, 41.196472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079899, 36.414345, 40.888908>,  <40.000481, 36.545639, 40.704369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079899, 36.414345, 40.888908>,  <40.212261, 36.195518, 41.196472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079899, 36.414345, 40.888908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631176, 0.477418, 0.611302,
		0.701514, 0.687598, 0.187316,
		-0.330902, 0.547066, -0.768910,
		39.980629, 36.578465, 40.658234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212204, 36.881020, 41.450817>,  <40.212261, 36.195518, 41.196472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212204, 36.881020, 41.450817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939987, 36.894897, 41.158062>,  <39.776657, 36.903225, 40.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939987, 36.894897, 41.158062>,  <40.212204, 36.881020, 41.450817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939987, 36.894897, 41.158062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641262, 0.455028, 0.617845,
		0.354464, 0.889801, -0.287418,
		-0.680542, 0.034694, -0.731887,
		39.735825, 36.905304, 40.938496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879242, 37.556137, 41.459278>,  <40.212204, 36.881020, 41.450817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879242, 37.556137, 41.459278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627369, 37.349442, 41.227249>,  <39.476246, 37.225426, 41.088032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627369, 37.349442, 41.227249>,  <39.879242, 37.556137, 41.459278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627369, 37.349442, 41.227249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773552, 0.485821, 0.406935,
		0.071531, 0.704953, -0.705637,
		-0.629684, -0.516738, -0.580069,
		39.438465, 37.194420, 41.053230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549755, 38.026619, 40.970325>,  <39.879242, 37.556137, 41.459278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549755, 38.026619, 40.970325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329395, 37.706646, 41.065506>,  <39.197178, 37.514664, 41.122612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329395, 37.706646, 41.065506>,  <39.549755, 38.026619, 40.970325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329395, 37.706646, 41.065506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772960, 0.596570, 0.215957,
		-0.314702, -0.064952, -0.946966,
		-0.550904, -0.799929, 0.237947,
		39.164124, 37.466667, 41.136890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867252, 38.200523, 40.793716>,  <39.549755, 38.026619, 40.970325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867252, 38.200523, 40.793716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791870, 37.862072, 40.993134>,  <38.746639, 37.659000, 41.112785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791870, 37.862072, 40.993134>,  <38.867252, 38.200523, 40.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791870, 37.862072, 40.993134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910236, 0.341082, 0.234803,
		-0.368718, -0.409541, -0.834459,
		-0.188458, -0.846131, 0.498543,
		38.735332, 37.608231, 41.142696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271244, 38.020054, 40.582172>,  <38.867252, 38.200523, 40.793716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271244, 38.020054, 40.582172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321564, 37.836250, 40.933861>,  <38.351757, 37.725967, 41.144875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321564, 37.836250, 40.933861>,  <38.271244, 38.020054, 40.582172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321564, 37.836250, 40.933861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919780, 0.278060, 0.276924,
		-0.371724, -0.843526, -0.387667,
		0.125798, -0.459507, 0.879220,
		38.359303, 37.698399, 41.197628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663055, 37.491123, 40.735924>,  <38.271244, 38.020054, 40.582172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663055, 37.491123, 40.735924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813507, 37.671741, 41.059559>,  <37.903778, 37.780113, 41.253742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813507, 37.671741, 41.059559>,  <37.663055, 37.491123, 40.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813507, 37.671741, 41.059559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908428, 0.007780, 0.417970,
		0.182439, -0.892213, 0.413125,
		0.376132, 0.451549, 0.809092,
		37.926346, 37.807205, 41.302288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338638, 37.251259, 41.333187>,  <37.663055, 37.491123, 40.735924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338638, 37.251259, 41.333187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483978, 37.601517, 41.460453>,  <37.571182, 37.811672, 41.536812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483978, 37.601517, 41.460453>,  <37.338638, 37.251259, 41.333187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483978, 37.601517, 41.460453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844888, 0.165789, 0.508604,
		0.392607, -0.453614, 0.800059,
		0.363351, 0.875642, 0.318164,
		37.592983, 37.864208, 41.555901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255516, 37.298672, 42.104839>,  <37.338638, 37.251259, 41.333187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255516, 37.298672, 42.104839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274422, 37.662617, 41.939957>,  <37.285767, 37.880985, 41.841026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274422, 37.662617, 41.939957>,  <37.255516, 37.298672, 42.104839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274422, 37.662617, 41.939957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824622, 0.268427, 0.497941,
		0.563705, 0.316378, 0.762982,
		0.047267, 0.909864, -0.412206,
		37.288601, 37.935577, 41.816296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264404, 37.941948, 42.687267>,  <37.255516, 37.298672, 42.104839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264404, 37.941948, 42.687267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081776, 38.051075, 42.348537>,  <36.972198, 38.116550, 42.145302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081776, 38.051075, 42.348537>,  <37.264404, 37.941948, 42.687267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081776, 38.051075, 42.348537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866464, 0.079689, 0.492838,
		0.201938, 0.958760, 0.200003,
		-0.456576, 0.272818, -0.846823,
		36.944801, 38.132919, 42.094490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565826, 37.939217, 42.803425>,  <37.264404, 37.941948, 42.687267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565826, 37.939217, 42.803425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513721, 38.157272, 42.472160>,  <36.482460, 38.288105, 42.273399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513721, 38.157272, 42.472160>,  <36.565826, 37.939217, 42.803425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513721, 38.157272, 42.472160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923251, 0.237807, 0.301753,
		0.361441, 0.803909, 0.472325,
		-0.130260, 0.545141, -0.828163,
		36.474644, 38.320816, 42.223713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270447, 38.582054, 43.001427>,  <36.565826, 37.939217, 42.803425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270447, 38.582054, 43.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177582, 38.528309, 42.616085>,  <36.121861, 38.496059, 42.384880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177582, 38.528309, 42.616085>,  <36.270447, 38.582054, 43.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177582, 38.528309, 42.616085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956442, 0.211733, 0.200968,
		0.176969, 0.968047, -0.177672,
		-0.232165, -0.134368, -0.963351,
		36.107933, 38.487999, 42.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724194, 39.135345, 42.904171>,  <36.270447, 38.582054, 43.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724194, 39.135345, 42.904171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694183, 38.904953, 42.578568>,  <35.676178, 38.766716, 42.383205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694183, 38.904953, 42.578568>,  <35.724194, 39.135345, 42.904171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694183, 38.904953, 42.578568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996015, 0.082768, 0.033233,
		0.048232, 0.813259, -0.579899,
		-0.075024, -0.575985, -0.814010,
		35.671677, 38.732159, 42.334366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349678, 39.546558, 42.456142>,  <35.724194, 39.135345, 42.904171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349678, 39.546558, 42.456142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331886, 39.171898, 42.317177>,  <35.321213, 38.947102, 42.233795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331886, 39.171898, 42.317177>,  <35.349678, 39.546558, 42.456142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331886, 39.171898, 42.317177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986335, 0.096397, -0.133610,
		0.158636, 0.336726, -0.928143,
		-0.044480, -0.936655, -0.347417,
		35.318542, 38.890900, 42.212952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997540, 39.535435, 41.802040>,  <35.349678, 39.546558, 42.456142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997540, 39.535435, 41.802040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948994, 39.178612, 41.976170>,  <34.919868, 38.964520, 42.080647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948994, 39.178612, 41.976170>,  <34.997540, 39.535435, 41.802040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948994, 39.178612, 41.976170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986452, 0.157159, 0.047042,
		-0.110379, -0.423715, -0.899045,
		-0.121361, -0.892057, 0.435322,
		34.912586, 38.910995, 42.106766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410198, 39.343483, 41.467495>,  <34.997540, 39.535435, 41.802040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410198, 39.343483, 41.467495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446175, 39.104191, 41.785999>,  <34.467758, 38.960613, 41.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446175, 39.104191, 41.785999>,  <34.410198, 39.343483, 41.467495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446175, 39.104191, 41.785999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982497, 0.077660, 0.169321,
		-0.163130, -0.797551, -0.580777,
		0.089939, -0.598232, 0.796259,
		34.473156, 38.924721, 42.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897804, 38.800323, 41.368450>,  <34.410198, 39.343483, 41.467495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897804, 38.800323, 41.368450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972267, 38.835911, 41.759846>,  <34.016945, 38.857262, 41.994682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972267, 38.835911, 41.759846>,  <33.897804, 38.800323, 41.368450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972267, 38.835911, 41.759846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965282, 0.202297, 0.165248,
		-0.183243, -0.975275, 0.123537,
		0.186153, 0.088968, 0.978485,
		34.028114, 38.862602, 42.053391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664551, 38.303234, 41.940773>,  <33.897804, 38.800323, 41.368450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664551, 38.303234, 41.940773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683075, 38.679203, 42.076069>,  <33.694187, 38.904785, 42.157246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683075, 38.679203, 42.076069>,  <33.664551, 38.303234, 41.940773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683075, 38.679203, 42.076069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998398, 0.032523, 0.046306,
		0.032523, -0.339842, 0.939920,
		-0.046306, -0.939920, -0.338240,
		33.696968, 38.961178, 42.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349648, 38.392014, 42.663189>,  <33.664551, 38.303234, 41.940773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349648, 38.392014, 42.663189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331383, 38.712666, 42.424759>,  <33.320423, 38.905056, 42.281700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331383, 38.712666, 42.424759>,  <33.349648, 38.392014, 42.663189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331383, 38.712666, 42.424759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989136, 0.047181, 0.139228,
		0.139733, 0.595955, 0.790767,
		-0.045665, 0.801631, -0.596073,
		33.317684, 38.953156, 42.245937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893913, 38.862034, 42.951908>,  <33.349648, 38.392014, 42.663189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893913, 38.862034, 42.951908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905869, 38.946075, 42.561020>,  <32.913040, 38.996502, 42.326488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905869, 38.946075, 42.561020>,  <32.893913, 38.862034, 42.951908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905869, 38.946075, 42.561020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996090, 0.087579, -0.011637,
		0.083139, 0.973748, 0.211901,
		0.029890, 0.210105, -0.977222,
		32.914837, 39.009106, 42.267853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345604, 39.077366, 43.438080>,  <32.893913, 38.862034, 42.951908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345604, 39.077366, 43.438080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691753, 38.980476, 43.613564>,  <32.899441, 38.922340, 43.718853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691753, 38.980476, 43.613564>,  <32.345604, 39.077366, 43.438080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691753, 38.980476, 43.613564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460207, 0.037614, -0.887014,
		0.198358, 0.969490, 0.144025,
		0.865369, -0.242228, 0.438705,
		32.951363, 38.907806, 43.745174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916157, 39.589798, 43.331810>,  <32.345604, 39.077366, 43.438080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916157, 39.589798, 43.331810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066063, 39.222893, 43.385731>,  <33.156006, 39.002750, 43.418083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066063, 39.222893, 43.385731>,  <32.916157, 39.589798, 43.331810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066063, 39.222893, 43.385731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578802, 0.117896, -0.806901,
		0.724249, 0.380427, 0.575099,
		0.374769, -0.917265, 0.134805,
		33.178493, 38.947712, 43.426174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588043, 39.810253, 43.130581>,  <32.916157, 39.589798, 43.331810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588043, 39.810253, 43.130581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576969, 39.410522, 43.120872>,  <33.570324, 39.170685, 43.115047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576969, 39.410522, 43.120872>,  <33.588043, 39.810253, 43.130581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576969, 39.410522, 43.120872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651467, 0.000376, -0.758677,
		0.758172, -0.036813, 0.651015,
		-0.027684, -0.999322, -0.024267,
		33.568665, 39.110725, 43.113594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320518, 39.631836, 43.095940>,  <33.588043, 39.810253, 43.130581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320518, 39.631836, 43.095940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100914, 39.316925, 42.983665>,  <33.969151, 39.127979, 42.916302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100914, 39.316925, 42.983665>,  <34.320518, 39.631836, 43.095940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100914, 39.316925, 42.983665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663697, -0.206514, -0.718928,
		0.508029, -0.580990, 0.635890,
		-0.549010, -0.787275, -0.280687,
		33.936211, 39.080742, 42.899460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489429, 38.971317, 43.252117>,  <34.320518, 39.631836, 43.095940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489429, 38.971317, 43.252117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308617, 38.937340, 42.896938>,  <34.200127, 38.916954, 42.683830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308617, 38.937340, 42.896938>,  <34.489429, 38.971317, 43.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308617, 38.937340, 42.896938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783146, -0.514340, -0.349479,
		-0.427021, -0.853369, 0.299022,
		-0.452034, -0.084943, -0.887947,
		34.173008, 38.911858, 42.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480198, 38.201363, 43.114292>,  <34.489429, 38.971317, 43.252117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480198, 38.201363, 43.114292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497269, 38.409302, 42.773014>,  <34.507511, 38.534065, 42.568249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497269, 38.409302, 42.773014>,  <34.480198, 38.201363, 43.114292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497269, 38.409302, 42.773014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892114, -0.404286, -0.201707,
		-0.449790, -0.752539, -0.481014,
		0.042675, 0.519845, -0.853194,
		34.510071, 38.565254, 42.517056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850441, 37.758942, 42.631065>,  <34.480198, 38.201363, 43.114292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850441, 37.758942, 42.631065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861973, 38.136948, 42.500763>,  <34.868893, 38.363750, 42.422581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861973, 38.136948, 42.500763>,  <34.850441, 37.758942, 42.631065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861973, 38.136948, 42.500763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892643, -0.171003, -0.417069,
		-0.449842, -0.278757, -0.848491,
		0.028834, 0.945015, -0.325755,
		34.870625, 38.420452, 42.403038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045788, 37.613121, 41.990330>,  <34.850441, 37.758942, 42.631065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045788, 37.613121, 41.990330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142307, 37.998215, 42.039185>,  <35.200218, 38.229271, 42.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142307, 37.998215, 42.039185>,  <35.045788, 37.613121, 41.990330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142307, 37.998215, 42.039185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836989, -0.142759, -0.528270,
		-0.491147, 0.229698, -0.840246,
		0.241295, 0.962735, 0.122139,
		35.214695, 38.287037, 42.075825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418118, 37.890434, 41.399071>,  <35.045788, 37.613121, 41.990330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418118, 37.890434, 41.399071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508366, 38.162598, 41.677967>,  <35.562515, 38.325897, 41.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508366, 38.162598, 41.677967>,  <35.418118, 37.890434, 41.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508366, 38.162598, 41.677967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956892, -0.020405, -0.289726,
		-0.182905, 0.732549, -0.655682,
		0.225618, 0.680409, 0.697238,
		35.576050, 38.366722, 41.887138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824039, 38.478672, 41.065434>,  <35.418118, 37.890434, 41.399071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824039, 38.478672, 41.065434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920033, 38.466022, 41.453537>,  <35.977627, 38.458431, 41.686401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920033, 38.466022, 41.453537>,  <35.824039, 38.478672, 41.065434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920033, 38.466022, 41.453537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964174, 0.124141, -0.234432,
		-0.113035, 0.991760, 0.060285,
		0.239984, -0.031626, 0.970262,
		35.992027, 38.456535, 41.744614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309418, 38.974907, 41.167004>,  <35.824039, 38.478672, 41.065434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309418, 38.974907, 41.167004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375206, 38.714813, 41.463692>,  <36.414680, 38.558758, 41.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375206, 38.714813, 41.463692>,  <36.309418, 38.974907, 41.167004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375206, 38.714813, 41.463692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983565, 0.164902, -0.073535,
		-0.074495, 0.741620, 0.666671,
		0.164470, -0.650236, 0.741716,
		36.424545, 38.519741, 41.686207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703110, 39.207039, 41.811829>,  <36.309418, 38.974907, 41.167004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703110, 39.207039, 41.811829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776806, 38.820068, 41.742382>,  <36.821022, 38.587887, 41.700714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776806, 38.820068, 41.742382>,  <36.703110, 39.207039, 41.811829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776806, 38.820068, 41.742382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982250, 0.174896, 0.067794,
		-0.035222, -0.183023, 0.982477,
		0.184239, -0.967427, -0.173614,
		36.832077, 38.529839, 41.690296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480694, 39.144920, 41.896778>,  <36.703110, 39.207039, 41.811829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480694, 39.144920, 41.896778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411266, 38.751896, 41.870102>,  <37.369610, 38.516083, 41.854095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411266, 38.751896, 41.870102>,  <37.480694, 39.144920, 41.896778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411266, 38.751896, 41.870102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984326, -0.170933, -0.043408,
		0.031252, -0.073176, 0.996829,
		-0.173568, -0.982561, -0.066687,
		37.359196, 38.457127, 41.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110039, 38.867847, 42.168602>,  <37.480694, 39.144920, 41.896778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110039, 38.867847, 42.168602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945812, 38.561272, 41.971016>,  <37.847275, 38.377327, 41.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945812, 38.561272, 41.971016>,  <38.110039, 38.867847, 42.168602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945812, 38.561272, 41.971016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911574, -0.357817, -0.202484,
		-0.021556, -0.533418, 0.845577,
		-0.410571, -0.766441, -0.493963,
		37.822639, 38.331341, 41.822826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414116, 38.348110, 42.375137>,  <38.110039, 38.867847, 42.168602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414116, 38.348110, 42.375137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259335, 38.175804, 42.049019>,  <38.166466, 38.072422, 41.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259335, 38.175804, 42.049019>,  <38.414116, 38.348110, 42.375137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259335, 38.175804, 42.049019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895902, -0.384888, -0.221856,
		-0.218230, -0.816273, 0.534859,
		-0.386956, -0.430766, -0.815295,
		38.143250, 38.046574, 41.804432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443760, 37.614918, 42.348583>,  <38.414116, 38.348110, 42.375137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443760, 37.614918, 42.348583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461323, 37.734684, 41.967339>,  <38.471859, 37.806541, 41.738590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461323, 37.734684, 41.967339>,  <38.443760, 37.614918, 42.348583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461323, 37.734684, 41.967339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708932, -0.681539, -0.181442,
		-0.703909, -0.667725, -0.242189,
		0.043908, 0.299414, -0.953112,
		38.474495, 37.824509, 41.681404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446209, 36.906807, 42.351349>,  <38.443760, 37.614918, 42.348583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446209, 36.906807, 42.351349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427357, 37.138699, 42.025970>,  <38.416046, 37.277832, 41.830742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427357, 37.138699, 42.025970>,  <38.446209, 36.906807, 42.351349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427357, 37.138699, 42.025970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852045, -0.401695, -0.335648,
		-0.521342, -0.708913, -0.475020,
		-0.047132, 0.579727, -0.813447,
		38.413216, 37.312618, 41.781937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554462, 36.484535, 41.783463>,  <38.446209, 36.906807, 42.351349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554462, 36.484535, 41.783463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592541, 36.824287, 41.575813>,  <38.615387, 37.028141, 41.451225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592541, 36.824287, 41.575813>,  <38.554462, 36.484535, 41.783463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592541, 36.824287, 41.575813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769964, -0.393359, -0.502419,
		-0.630947, -0.351878, -0.691439,
		0.095194, 0.849383, -0.519122,
		38.621098, 37.079102, 41.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633942, 36.254639, 41.136646>,  <38.554462, 36.484535, 41.783463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633942, 36.254639, 41.136646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748165, 36.637707, 41.122066>,  <38.816700, 36.867546, 41.113319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748165, 36.637707, 41.122066>,  <38.633942, 36.254639, 41.136646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748165, 36.637707, 41.122066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784342, -0.255392, -0.565317,
		-0.550695, 0.132840, -0.824068,
		0.285557, 0.957669, -0.036451,
		38.833832, 36.925007, 41.111130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602047, 36.485130, 40.438648>,  <38.633942, 36.254639, 41.136646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602047, 36.485130, 40.438648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873024, 36.686108, 40.653542>,  <39.035610, 36.806694, 40.782478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873024, 36.686108, 40.653542>,  <38.602047, 36.485130, 40.438648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873024, 36.686108, 40.653542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714013, -0.273608, -0.644457,
		-0.176813, 0.820174, -0.544106,
		0.677438, 0.502448, 0.537237,
		39.076256, 36.836842, 40.814713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930252, 36.898380, 39.946354>,  <38.602047, 36.485130, 40.438648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930252, 36.898380, 39.946354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184727, 36.891636, 40.254894>,  <39.337410, 36.887589, 40.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184727, 36.891636, 40.254894>,  <38.930252, 36.898380, 39.946354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184727, 36.891636, 40.254894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770747, -0.031267, -0.636374,
		0.034850, 0.999369, -0.006893,
		0.636188, -0.016865, 0.771350,
		39.375584, 36.886578, 40.486298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494167, 37.249893, 39.621887>,  <38.930252, 36.898380, 39.946354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494167, 37.249893, 39.621887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637466, 37.045681, 39.934559>,  <39.723446, 36.923153, 40.122162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637466, 37.045681, 39.934559>,  <39.494167, 37.249893, 39.621887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637466, 37.045681, 39.934559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808822, -0.248483, -0.532975,
		0.466333, 0.823175, 0.323909,
		0.358246, -0.510529, 0.781678,
		39.744942, 36.892521, 40.169064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117916, 37.395695, 39.550995>,  <39.494167, 37.249893, 39.621887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117916, 37.395695, 39.550995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125355, 37.084785, 39.802547>,  <40.129818, 36.898239, 39.953480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125355, 37.084785, 39.802547>,  <40.117916, 37.395695, 39.550995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125355, 37.084785, 39.802547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817189, -0.350591, -0.457480,
		0.576070, 0.522425, 0.628662,
		0.018596, -0.777276, 0.628885,
		40.130932, 36.851604, 39.991215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793419, 37.436119, 40.111168>,  <40.117916, 37.395695, 39.550995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793419, 37.436119, 40.111168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684830, 37.055103, 40.056076>,  <40.619678, 36.826492, 40.023022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684830, 37.055103, 40.056076>,  <40.793419, 37.436119, 40.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684830, 37.055103, 40.056076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892421, -0.195540, -0.406631,
		0.360400, -0.233304, 0.903151,
		-0.271471, -0.952541, -0.137733,
		40.603390, 36.769341, 40.014755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222851, 37.076550, 40.475304>,  <40.793419, 37.436119, 40.111168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222851, 37.076550, 40.475304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084415, 36.835239, 40.187893>,  <41.001354, 36.690453, 40.015446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084415, 36.835239, 40.187893>,  <41.222851, 37.076550, 40.475304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084415, 36.835239, 40.187893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938127, -0.212805, -0.273189,
		0.011900, -0.768621, 0.639594,
		-0.346087, -0.603271, -0.718532,
		40.980591, 36.654259, 39.972332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681229, 36.405994, 40.437206>,  <41.222851, 37.076550, 40.475304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681229, 36.405994, 40.437206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547634, 36.530872, 40.081455>,  <41.467476, 36.605797, 39.868004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547634, 36.530872, 40.081455>,  <41.681229, 36.405994, 40.437206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547634, 36.530872, 40.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899854, -0.175243, -0.399440,
		-0.280558, -0.933717, -0.222397,
		-0.333990, 0.312191, -0.889375,
		41.447437, 36.624531, 39.814644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096710, 36.055004, 39.924057>,  <41.681229, 36.405994, 40.437206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096710, 36.055004, 39.924057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956974, 36.381889, 39.740700>,  <41.873135, 36.578022, 39.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956974, 36.381889, 39.740700>,  <42.096710, 36.055004, 39.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956974, 36.381889, 39.740700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883287, 0.123959, -0.452148,
		-0.312678, -0.562848, -0.765137,
		-0.349337, 0.817212, -0.458397,
		41.852173, 36.627052, 39.603180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285313, 36.043770, 39.211910>,  <42.096710, 36.055004, 39.924057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285313, 36.043770, 39.211910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239243, 36.414692, 39.354374>,  <42.211601, 36.637245, 39.439854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239243, 36.414692, 39.354374>,  <42.285313, 36.043770, 39.211910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239243, 36.414692, 39.354374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903008, 0.247133, -0.351429,
		-0.413899, 0.281138, -0.865823,
		-0.115174, 0.927301, 0.356158,
		42.204689, 36.692883, 39.461220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647511, 36.523155, 38.774189>,  <42.285313, 36.043770, 39.211910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647511, 36.523155, 38.774189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624340, 36.730850, 39.115253>,  <42.610439, 36.855469, 39.319893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624340, 36.730850, 39.115253>,  <42.647511, 36.523155, 38.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624340, 36.730850, 39.115253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996876, 0.076026, 0.021426,
		-0.053699, 0.851239, -0.522023,
		-0.057926, 0.519242, 0.852662,
		42.606964, 36.886623, 39.371052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913960, 37.276249, 38.866409>,  <42.647511, 36.523155, 38.774189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913960, 37.276249, 38.866409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961445, 37.084900, 39.214447>,  <42.989937, 36.970089, 39.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961445, 37.084900, 39.214447>,  <42.913960, 37.276249, 38.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961445, 37.084900, 39.214447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992672, 0.077120, -0.093032,
		-0.022598, 0.874763, 0.484024,
		0.118709, -0.478374, 0.870096,
		42.997059, 36.941387, 39.475475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562336, 37.016411, 38.218864>,  <42.913960, 37.276249, 38.866409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562336, 37.016411, 38.218864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906986, 36.866882, 38.081543>,  <43.113777, 36.777164, 37.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906986, 36.866882, 38.081543>,  <42.562336, 37.016411, 38.218864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906986, 36.866882, 38.081543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504999, -0.563851, -0.653490,
		0.050714, 0.736433, -0.674607,
		0.861629, -0.373817, -0.343302,
		43.165474, 36.754738, 37.978554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799236, 37.408096, 37.577587>,  <42.562336, 37.016411, 38.218864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799236, 37.408096, 37.577587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117912, 37.444298, 37.338558>,  <43.309116, 37.466019, 37.195141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117912, 37.444298, 37.338558>,  <42.799236, 37.408096, 37.577587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117912, 37.444298, 37.338558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213851, -0.882552, -0.418771,
		-0.565293, 0.461422, -0.683764,
		0.796688, 0.090504, -0.597576,
		43.356918, 37.471451, 37.159286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592033, 37.036015, 36.917225>,  <42.799236, 37.408096, 37.577587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592033, 37.036015, 36.917225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990311, 37.069984, 36.932076>,  <43.229279, 37.090366, 36.940987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990311, 37.069984, 36.932076>,  <42.592033, 37.036015, 36.917225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990311, 37.069984, 36.932076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088817, -0.759616, -0.644279,
		-0.026514, 0.644803, -0.763889,
		0.995695, 0.084929, 0.037129,
		43.289021, 37.095463, 36.943214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703785, 36.541725, 36.544422>,  <42.592033, 37.036015, 36.917225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703785, 36.541725, 36.544422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052315, 36.737953, 36.549019>,  <43.261433, 36.855690, 36.551777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052315, 36.737953, 36.549019>,  <42.703785, 36.541725, 36.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052315, 36.737953, 36.549019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379239, -0.658351, -0.650194,
		-0.311404, 0.570887, -0.759681,
		0.871324, 0.490574, 0.011489,
		43.313713, 36.885124, 36.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960999, 36.441341, 35.945694>,  <42.703785, 36.541725, 36.544422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960999, 36.441341, 35.945694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298218, 36.556332, 36.127518>,  <43.500549, 36.625324, 36.236610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298218, 36.556332, 36.127518>,  <42.960999, 36.441341, 35.945694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298218, 36.556332, 36.127518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401522, -0.898717, -0.176315,
		0.357832, 0.331157, -0.873093,
		0.843052, 0.287475, 0.454557,
		43.551132, 36.642574, 36.263885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493847, 36.219769, 35.609825>,  <42.960999, 36.441341, 35.945694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493847, 36.219769, 35.609825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702332, 36.325363, 35.934456>,  <43.827423, 36.388721, 36.129234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702332, 36.325363, 35.934456>,  <43.493847, 36.219769, 35.609825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702332, 36.325363, 35.934456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647109, -0.742241, -0.174151,
		0.556408, 0.615946, -0.557693,
		0.521210, 0.263989, 0.811573,
		43.858696, 36.404560, 36.177929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230457, 36.381519, 35.412533>,  <43.493847, 36.219769, 35.609825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230457, 36.381519, 35.412533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221737, 36.244690, 35.788300>,  <44.216503, 36.162590, 36.013760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221737, 36.244690, 35.788300>,  <44.230457, 36.381519, 35.412533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221737, 36.244690, 35.788300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742482, -0.634791, -0.213919,
		0.669511, 0.692837, 0.267827,
		-0.021803, -0.342077, 0.939419,
		44.215195, 36.142067, 36.070126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876320, 36.320446, 35.558750>,  <44.230457, 36.381519, 35.412533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876320, 36.320446, 35.558750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688221, 36.048843, 35.784252>,  <44.575363, 35.885880, 35.919552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688221, 36.048843, 35.784252>,  <44.876320, 36.320446, 35.558750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688221, 36.048843, 35.784252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835695, -0.547939, 0.037116,
		0.283698, 0.488577, 0.825111,
		-0.470244, -0.679011, 0.563751,
		44.547146, 35.845139, 35.953377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245800, 36.170990, 36.219063>,  <44.876320, 36.320446, 35.558750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245800, 36.170990, 36.219063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031345, 35.851879, 36.108715>,  <44.902672, 35.660412, 36.042507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031345, 35.851879, 36.108715>,  <45.245800, 36.170990, 36.219063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031345, 35.851879, 36.108715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833437, -0.552135, -0.023045,
		-0.133932, -0.242275, 0.960919,
		-0.536140, -0.797778, -0.275869,
		44.870502, 35.612545, 36.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526028, 35.532627, 36.587742>,  <45.245800, 36.170990, 36.219063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526028, 35.532627, 36.587742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330658, 35.416386, 36.258625>,  <45.213436, 35.346642, 36.061153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330658, 35.416386, 36.258625>,  <45.526028, 35.532627, 36.587742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330658, 35.416386, 36.258625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709530, -0.681135, -0.180616,
		-0.507947, -0.672015, 0.538874,
		-0.488422, -0.290604, -0.822796,
		45.184132, 35.329205, 36.011787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080864, 35.506439, 36.040314>,  <45.526028, 35.532627, 36.587742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080864, 35.506439, 36.040314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474987, 35.452930, 36.082790>,  <46.711460, 35.420826, 36.108276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474987, 35.452930, 36.082790>,  <46.080864, 35.506439, 36.040314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474987, 35.452930, 36.082790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083024, -0.168224, -0.982246,
		0.149258, 0.976630, -0.154646,
		0.985307, -0.133769, 0.106192,
		46.770580, 35.412800, 36.114647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291908, 35.933090, 35.458935>,  <46.080864, 35.506439, 36.040314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291908, 35.933090, 35.458935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561695, 35.663280, 35.579010>,  <46.723568, 35.501392, 35.651054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561695, 35.663280, 35.579010>,  <46.291908, 35.933090, 35.458935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561695, 35.663280, 35.579010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330942, -0.087249, -0.939609,
		0.659982, 0.733077, 0.164383,
		0.674464, -0.674526, 0.300189,
		46.764034, 35.460922, 35.669067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.067612, 36.095825, 35.522987>,  <46.291908, 35.933090, 35.458935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.067612, 36.095825, 35.522987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054443, 35.702259, 35.452763>,  <47.046543, 35.466118, 35.410625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054443, 35.702259, 35.452763>,  <47.067612, 36.095825, 35.522987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054443, 35.702259, 35.452763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395278, 0.148522, -0.906475,
		0.917971, -0.099240, 0.384032,
		-0.032921, -0.983917, -0.175566,
		47.044567, 35.407085, 35.400093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691383, 35.850567, 35.391525>,  <47.067612, 36.095825, 35.522987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691383, 35.850567, 35.391525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443604, 35.606289, 35.194206>,  <47.294937, 35.459724, 35.075817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443604, 35.606289, 35.194206>,  <47.691383, 35.850567, 35.391525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.443604, 35.606289, 35.194206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443816, 0.245890, -0.861722,
		0.647544, -0.752723, 0.118720,
		-0.619446, -0.610693, -0.493295,
		47.257771, 35.423080, 35.046219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724304, 35.220123, 34.924210>,  <47.691383, 35.850567, 35.391525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724304, 35.220123, 34.924210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418694, 35.094200, 34.698940>,  <47.235329, 35.018646, 34.563778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418694, 35.094200, 34.698940>,  <47.724304, 35.220123, 34.924210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418694, 35.094200, 34.698940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439822, -0.892761, -0.097647,
		-0.472037, -0.322300, 0.820551,
		-0.764028, -0.314803, -0.563170,
		47.189484, 34.999760, 34.529987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.335571, 37.236088, 28.505697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200623, 37.603405, 28.588560>,  <39.119656, 37.823795, 28.638277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200623, 37.603405, 28.588560>,  <39.335571, 37.236088, 28.505697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200623, 37.603405, 28.588560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637152, -0.384737, 0.667843,
		0.692978, 0.093321, 0.714893,
		-0.337370, 0.918296, 0.207155,
		39.099411, 37.878895, 28.650707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406048, 37.272972, 29.233257>,  <39.335571, 37.236088, 28.505697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406048, 37.272972, 29.233257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164715, 37.575626, 29.132465>,  <39.019917, 37.757217, 29.071989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164715, 37.575626, 29.132465>,  <39.406048, 37.272972, 29.233257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164715, 37.575626, 29.132465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623534, -0.250572, 0.740553,
		0.497189, 0.603917, 0.622966,
		-0.603331, 0.756635, -0.251982,
		38.983715, 37.802616, 29.056871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386238, 37.805164, 29.793896>,  <39.406048, 37.272972, 29.233257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386238, 37.805164, 29.793896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048248, 37.834473, 29.581991>,  <38.845455, 37.852058, 29.454849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048248, 37.834473, 29.581991>,  <39.386238, 37.805164, 29.793896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048248, 37.834473, 29.581991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530751, -0.236599, 0.813833,
		-0.065712, 0.968841, 0.238808,
		-0.844977, 0.073268, -0.529760,
		38.794754, 37.856453, 29.423063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869656, 38.148205, 30.263008>,  <39.386238, 37.805164, 29.793896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869656, 38.148205, 30.263008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663784, 37.959496, 29.976641>,  <38.540260, 37.846272, 29.804821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663784, 37.959496, 29.976641>,  <38.869656, 38.148205, 30.263008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663784, 37.959496, 29.976641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717239, -0.220585, 0.660992,
		-0.469757, 0.853683, -0.224841,
		-0.514681, -0.471771, -0.715916,
		38.509380, 37.817963, 29.761866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138931, 38.365105, 30.368431>,  <38.869656, 38.148205, 30.263008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138931, 38.365105, 30.368431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136280, 38.019184, 30.167606>,  <38.134689, 37.811630, 30.047112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136280, 38.019184, 30.167606>,  <38.138931, 38.365105, 30.368431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136280, 38.019184, 30.167606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747408, -0.329268, 0.577030,
		-0.664332, 0.379068, -0.644182,
		-0.006625, -0.864806, -0.502062,
		38.134293, 37.759743, 30.016987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385021, 38.102730, 30.546713>,  <38.138931, 38.365105, 30.368431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385021, 38.102730, 30.546713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573730, 37.778812, 30.407194>,  <37.686954, 37.584461, 30.323483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573730, 37.778812, 30.407194>,  <37.385021, 38.102730, 30.546713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573730, 37.778812, 30.407194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617862, -0.585842, 0.524439,
		-0.629031, -0.031904, -0.776725,
		0.471769, -0.809797, -0.348801,
		37.715263, 37.535873, 30.302555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886932, 37.676144, 30.386818>,  <37.385021, 38.102730, 30.546713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886932, 37.676144, 30.386818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203526, 37.433582, 30.417372>,  <37.393482, 37.288044, 30.435703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203526, 37.433582, 30.417372>,  <36.886932, 37.676144, 30.386818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203526, 37.433582, 30.417372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541350, -0.637519, 0.548187,
		-0.283725, -0.475230, -0.832860,
		0.791480, -0.606404, 0.076386,
		37.440968, 37.251659, 30.440287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744831, 36.834248, 30.170198>,  <36.886932, 37.676144, 30.386818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744831, 36.834248, 30.170198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056549, 36.892666, 30.413958>,  <37.243580, 36.927715, 30.560213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056549, 36.892666, 30.413958>,  <36.744831, 36.834248, 30.170198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056549, 36.892666, 30.413958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401359, -0.630509, 0.664356,
		0.481255, -0.762319, -0.432739,
		0.779297, 0.146041, 0.609399,
		37.290337, 36.936478, 30.596777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813919, 36.245621, 30.648127>,  <36.744831, 36.834248, 30.170198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813919, 36.245621, 30.648127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055168, 36.480267, 30.864323>,  <37.199917, 36.621052, 30.994040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055168, 36.480267, 30.864323>,  <36.813919, 36.245621, 30.648127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055168, 36.480267, 30.864323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372693, -0.391845, 0.841165,
		0.705225, -0.708762, -0.017705,
		0.603123, 0.586612, 0.540489,
		37.236107, 36.656250, 31.026470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107853, 35.806641, 31.083271>,  <36.813919, 36.245621, 30.648127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107853, 35.806641, 31.083271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169697, 36.158375, 31.263433>,  <37.206802, 36.369415, 31.371531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169697, 36.158375, 31.263433>,  <37.107853, 35.806641, 31.083271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169697, 36.158375, 31.263433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259725, -0.403679, 0.877261,
		0.953225, -0.252619, 0.165970,
		0.154614, 0.879333, 0.450408,
		37.216080, 36.422176, 31.398556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561012, 35.706451, 31.685640>,  <37.107853, 35.806641, 31.083271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561012, 35.706451, 31.685640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361366, 36.049900, 31.732382>,  <37.241577, 36.255970, 31.760427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361366, 36.049900, 31.732382>,  <37.561012, 35.706451, 31.685640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361366, 36.049900, 31.732382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100520, -0.191314, 0.976368,
		0.860683, 0.475578, 0.181797,
		-0.499119, 0.858618, 0.116856,
		37.211632, 36.307484, 31.767439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909935, 36.206921, 32.011448>,  <37.561012, 35.706451, 31.685640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909935, 36.206921, 32.011448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560726, 36.383827, 32.093647>,  <37.351200, 36.489971, 32.142967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560726, 36.383827, 32.093647>,  <37.909935, 36.206921, 32.011448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560726, 36.383827, 32.093647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180895, -0.097637, 0.978644,
		0.452889, 0.891551, 0.005235,
		-0.873022, 0.442270, 0.205496,
		37.298820, 36.516510, 32.155296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022186, 36.784176, 32.598881>,  <37.909935, 36.206921, 32.011448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022186, 36.784176, 32.598881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639580, 36.667835, 32.590027>,  <37.410015, 36.598030, 32.584713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639580, 36.667835, 32.590027>,  <38.022186, 36.784176, 32.598881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639580, 36.667835, 32.590027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113733, 0.302001, 0.946499,
		-0.268604, 0.907856, -0.321947,
		-0.956513, -0.290849, -0.022135,
		37.352627, 36.580582, 32.583385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674625, 37.243877, 32.984241>,  <38.022186, 36.784176, 32.598881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674625, 37.243877, 32.984241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460289, 36.906269, 32.975193>,  <37.331688, 36.703705, 32.969765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460289, 36.906269, 32.975193>,  <37.674625, 37.243877, 32.984241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460289, 36.906269, 32.975193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049996, -0.058461, 0.997037,
		-0.842838, 0.533122, 0.073523,
		-0.535841, -0.844016, -0.022619,
		37.299538, 36.653065, 32.968407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123161, 37.327705, 33.500175>,  <37.674625, 37.243877, 32.984241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123161, 37.327705, 33.500175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149891, 36.934978, 33.429096>,  <37.165928, 36.699345, 33.386448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149891, 36.934978, 33.429096>,  <37.123161, 37.327705, 33.500175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149891, 36.934978, 33.429096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017699, -0.176905, 0.984069,
		-0.997608, -0.068901, 0.005556,
		0.066821, -0.981813, -0.177702,
		37.169937, 36.640434, 33.375786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587364, 37.080193, 33.856361>,  <37.123161, 37.327705, 33.500175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587364, 37.080193, 33.856361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782307, 36.737263, 33.790047>,  <36.899273, 36.531506, 33.750259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782307, 36.737263, 33.790047>,  <36.587364, 37.080193, 33.856361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782307, 36.737263, 33.790047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091531, -0.238967, 0.966704,
		-0.868391, -0.455957, -0.194934,
		0.487359, -0.857320, -0.165782,
		36.928513, 36.480068, 33.740311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135525, 36.572227, 34.106220>,  <36.587364, 37.080193, 33.856361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135525, 36.572227, 34.106220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501331, 36.412243, 34.130524>,  <36.720814, 36.316254, 34.145107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501331, 36.412243, 34.130524>,  <36.135525, 36.572227, 34.106220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501331, 36.412243, 34.130524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050669, 0.035764, 0.998075,
		-0.401363, -0.915834, 0.012441,
		0.914516, -0.399960, 0.060759,
		36.775688, 36.292255, 34.148750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033321, 35.886692, 34.573990>,  <36.135525, 36.572227, 34.106220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033321, 35.886692, 34.573990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423847, 35.972481, 34.562588>,  <36.658161, 36.023952, 34.555748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423847, 35.972481, 34.562588>,  <36.033321, 35.886692, 34.573990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423847, 35.972481, 34.562588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061106, -0.146951, 0.987254,
		0.207548, -0.965613, -0.156576,
		0.976315, 0.214470, -0.028505,
		36.716743, 36.036823, 34.554035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440529, 35.305088, 34.936192>,  <36.033321, 35.886692, 34.573990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440529, 35.305088, 34.936192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676308, 35.628094, 34.944839>,  <36.817776, 35.821899, 34.950027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676308, 35.628094, 34.944839>,  <36.440529, 35.305088, 34.936192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676308, 35.628094, 34.944839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252191, -0.209379, 0.944754,
		0.767431, -0.551432, -0.327067,
		0.589448, 0.807516, 0.021618,
		36.853142, 35.870350, 34.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105232, 35.060886, 35.100258>,  <36.440529, 35.305088, 34.936192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105232, 35.060886, 35.100258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066128, 35.439716, 35.222561>,  <37.042664, 35.667015, 35.295944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066128, 35.439716, 35.222561>,  <37.105232, 35.060886, 35.100258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066128, 35.439716, 35.222561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174557, -0.286147, 0.942151,
		0.979781, 0.145481, -0.137344,
		-0.097765, 0.947077, 0.305756,
		37.036797, 35.723839, 35.314289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535793, 35.086674, 35.609116>,  <37.105232, 35.060886, 35.100258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535793, 35.086674, 35.609116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317688, 35.414013, 35.681774>,  <37.186825, 35.610416, 35.725368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317688, 35.414013, 35.681774>,  <37.535793, 35.086674, 35.609116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317688, 35.414013, 35.681774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086627, -0.270548, 0.958801,
		0.833775, 0.507066, 0.218412,
		-0.545266, 0.818344, 0.181651,
		37.154110, 35.659515, 35.736271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782230, 34.471615, 35.987514>,  <37.535793, 35.086674, 35.609116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782230, 34.471615, 35.987514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072006, 34.383778, 36.248886>,  <38.245872, 34.331074, 36.405708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072006, 34.383778, 36.248886>,  <37.782230, 34.471615, 35.987514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072006, 34.383778, 36.248886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688996, 0.260628, -0.676282,
		-0.021793, 0.940134, 0.340109,
		0.724438, -0.219595, 0.653428,
		38.289337, 34.317898, 36.444916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257420, 34.956978, 35.959091>,  <37.782230, 34.471615, 35.987514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257420, 34.956978, 35.959091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471672, 34.661274, 36.122353>,  <38.600224, 34.483852, 36.220310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471672, 34.661274, 36.122353>,  <38.257420, 34.956978, 35.959091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471672, 34.661274, 36.122353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775989, 0.240246, -0.583201,
		0.333082, 0.629102, 0.702344,
		0.535629, -0.739264, 0.408154,
		38.632362, 34.439495, 36.244801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924271, 35.262215, 36.090721>,  <38.257420, 34.956978, 35.959091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924271, 35.262215, 36.090721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952450, 34.864048, 36.064842>,  <38.969357, 34.625149, 36.049316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952450, 34.864048, 36.064842>,  <38.924271, 35.262215, 36.090721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952450, 34.864048, 36.064842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733978, 0.095646, -0.672404,
		0.675510, -0.000121, 0.737351,
		0.070444, -0.995415, -0.064699,
		38.973583, 34.565422, 36.045433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621151, 35.174149, 36.024334>,  <38.924271, 35.262215, 36.090721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621151, 35.174149, 36.024334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469566, 34.833038, 35.880581>,  <39.378616, 34.628372, 35.794331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469566, 34.833038, 35.880581>,  <39.621151, 35.174149, 36.024334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469566, 34.833038, 35.880581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640766, 0.038387, -0.766776,
		0.667686, -0.520859, 0.531885,
		-0.378964, -0.852779, -0.359379,
		39.355877, 34.577206, 35.772766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209526, 34.730930, 35.668049>,  <39.621151, 35.174149, 36.024334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209526, 34.730930, 35.668049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864979, 34.617912, 35.499187>,  <39.658249, 34.550102, 35.397869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864979, 34.617912, 35.499187>,  <40.209526, 34.730930, 35.668049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864979, 34.617912, 35.499187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430826, 0.033962, -0.901796,
		0.269134, -0.958653, 0.092473,
		-0.861369, -0.282543, -0.422152,
		39.606567, 34.533150, 35.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417362, 34.187279, 35.148056>,  <40.209526, 34.730930, 35.668049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417362, 34.187279, 35.148056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054962, 34.320572, 35.043655>,  <39.837524, 34.400547, 34.981014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054962, 34.320572, 35.043655>,  <40.417362, 34.187279, 35.148056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054962, 34.320572, 35.043655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271951, -0.014263, -0.962205,
		-0.324362, -0.942736, -0.077701,
		-0.905998, 0.333234, -0.261005,
		39.783161, 34.420544, 34.965355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340290, 33.859039, 34.540382>,  <40.417362, 34.187279, 35.148056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340290, 33.859039, 34.540382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026482, 34.106796, 34.528534>,  <39.838196, 34.255451, 34.521423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026482, 34.106796, 34.528534>,  <40.340290, 33.859039, 34.540382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026482, 34.106796, 34.528534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117071, 0.101034, -0.987971,
		-0.608953, -0.778550, -0.151777,
		-0.784520, 0.619396, -0.029621,
		39.791126, 34.292614, 34.519650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693077, 33.561665, 34.101215>,  <40.340290, 33.859039, 34.540382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693077, 33.561665, 34.101215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694977, 33.961594, 34.108608>,  <39.696117, 34.201550, 34.113045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694977, 33.961594, 34.108608>,  <39.693077, 33.561665, 34.101215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694977, 33.961594, 34.108608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129873, 0.017707, -0.991372,
		-0.991519, 0.007109, -0.129765,
		0.004750, 0.999818, 0.018480,
		39.696404, 34.261539, 34.114151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153381, 33.868366, 33.613926>,  <39.693077, 33.561665, 34.101215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153381, 33.868366, 33.613926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422928, 34.154026, 33.689697>,  <39.584656, 34.325424, 33.735161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422928, 34.154026, 33.689697>,  <39.153381, 33.868366, 33.613926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422928, 34.154026, 33.689697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110727, 0.155878, -0.981551,
		-0.730506, 0.682413, 0.025966,
		0.673870, 0.714154, 0.189431,
		39.625088, 34.368271, 33.746525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955956, 34.386730, 33.057487>,  <39.153381, 33.868366, 33.613926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955956, 34.386730, 33.057487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.313320, 34.485790, 33.207413>,  <39.527737, 34.545227, 33.297367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.313320, 34.485790, 33.207413>,  <38.955956, 34.386730, 33.057487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313320, 34.485790, 33.207413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345526, 0.154417, -0.925617,
		-0.287109, 0.956464, 0.052388,
		0.893409, 0.247652, 0.374818,
		39.581345, 34.560085, 33.319859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124268, 34.915688, 32.672859>,  <38.955956, 34.386730, 33.057487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124268, 34.915688, 32.672859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476959, 34.782017, 32.806049>,  <39.688576, 34.701813, 32.885963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476959, 34.782017, 32.806049>,  <39.124268, 34.915688, 32.672859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476959, 34.782017, 32.806049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, 0.175455, -0.897185,
		0.241398, 0.926035, 0.290150,
		0.881733, -0.334178, 0.332975,
		39.741478, 34.681763, 32.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582462, 35.408733, 32.411949>,  <39.124268, 34.915688, 32.672859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582462, 35.408733, 32.411949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772141, 35.062103, 32.474152>,  <39.885948, 34.854126, 32.511475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772141, 35.062103, 32.474152>,  <39.582462, 35.408733, 32.411949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772141, 35.062103, 32.474152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474702, 0.102903, -0.874110,
		0.741480, 0.488323, 0.460162,
		0.474200, -0.866575, 0.155508,
		39.914402, 34.802132, 32.520805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320267, 35.464573, 32.332245>,  <39.582462, 35.408733, 32.411949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320267, 35.464573, 32.332245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.253746, 35.073395, 32.281693>,  <40.213833, 34.838688, 32.251362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.253746, 35.073395, 32.281693>,  <40.320267, 35.464573, 32.332245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253746, 35.073395, 32.281693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541726, 0.016482, -0.840393,
		0.823939, -0.208227, 0.527036,
		-0.166306, -0.977942, -0.126382,
		40.203854, 34.780014, 32.243778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944260, 35.274006, 31.921995>,  <40.320267, 35.464573, 32.332245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944260, 35.274006, 31.921995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672417, 34.981361, 31.900526>,  <40.509312, 34.805775, 31.887644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672417, 34.981361, 31.900526>,  <40.944260, 35.274006, 31.921995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672417, 34.981361, 31.900526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188800, -0.103741, -0.976521,
		0.708862, -0.673786, 0.208631,
		-0.679610, -0.731608, -0.053672,
		40.468533, 34.761879, 31.884424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312347, 34.636932, 31.606514>,  <40.944260, 35.274006, 31.921995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312347, 34.636932, 31.606514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.917377, 34.600273, 31.554977>,  <40.680397, 34.578278, 31.524055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.917377, 34.600273, 31.554977>,  <41.312347, 34.636932, 31.606514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917377, 34.600273, 31.554977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135309, -0.068219, -0.988452,
		0.081800, -0.993452, 0.079762,
		-0.987421, -0.091648, -0.128843,
		40.621151, 34.572781, 31.516325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310436, 34.085068, 31.138861>,  <41.312347, 34.636932, 31.606514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310436, 34.085068, 31.138861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973251, 34.299324, 31.118813>,  <40.770943, 34.427876, 31.106785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973251, 34.299324, 31.118813>,  <41.310436, 34.085068, 31.138861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973251, 34.299324, 31.118813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013046, -0.113487, -0.993454,
		-0.537819, -0.836788, 0.102653,
		-0.842960, 0.535637, -0.050119,
		40.720364, 34.460014, 31.103777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940693, 33.798481, 30.537777>,  <41.310436, 34.085068, 31.138861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940693, 33.798481, 30.537777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735889, 34.138149, 30.589563>,  <40.613007, 34.341949, 30.620636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735889, 34.138149, 30.589563>,  <40.940693, 33.798481, 30.537777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735889, 34.138149, 30.589563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122675, 0.221462, -0.967422,
		-0.850178, -0.479442, -0.217561,
		-0.512004, 0.849170, 0.129467,
		40.582287, 34.392899, 30.628403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378353, 33.849102, 29.944759>,  <40.940693, 33.798481, 30.537777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378353, 33.849102, 29.944759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475071, 34.209450, 30.088963>,  <40.533100, 34.425659, 30.175486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475071, 34.209450, 30.088963>,  <40.378353, 33.849102, 29.944759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475071, 34.209450, 30.088963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046680, 0.360304, -0.931666,
		-0.969204, 0.242102, 0.045068,
		0.241796, 0.900871, 0.360509,
		40.547611, 34.479710, 30.197115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817474, 34.331501, 29.667488>,  <40.378353, 33.849102, 29.944759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817474, 34.331501, 29.667488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136032, 34.553802, 29.762901>,  <40.327168, 34.687183, 29.820148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136032, 34.553802, 29.762901>,  <39.817474, 34.331501, 29.667488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136032, 34.553802, 29.762901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102918, 0.513197, -0.852078,
		-0.595961, 0.654038, 0.465903,
		0.796391, 0.555755, 0.238533,
		40.374950, 34.720528, 29.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.643211, 35.158661, 29.586611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040630, 35.121250, 29.560925>,  <40.279079, 35.098804, 29.545513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040630, 35.121250, 29.560925>,  <39.643211, 35.158661, 29.586611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040630, 35.121250, 29.560925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005792, 0.607121, -0.794588,
		0.113302, 0.789086, 0.603743,
		0.993544, -0.093526, -0.064218,
		40.338692, 35.093193, 29.541658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871422, 35.874516, 29.582584>,  <39.643211, 35.158661, 29.586611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871422, 35.874516, 29.582584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172741, 35.645126, 29.453794>,  <40.353535, 35.507492, 29.376520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172741, 35.645126, 29.453794>,  <39.871422, 35.874516, 29.582584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172741, 35.645126, 29.453794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180602, 0.651123, -0.737171,
		0.632391, 0.497164, 0.594062,
		0.753302, -0.573470, -0.321975,
		40.398731, 35.473087, 29.357203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424438, 36.419159, 29.418631>,  <39.871422, 35.874516, 29.582584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424438, 36.419159, 29.418631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.562626, 36.092075, 29.234453>,  <40.645538, 35.895824, 29.123947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.562626, 36.092075, 29.234453>,  <40.424438, 36.419159, 29.418631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562626, 36.092075, 29.234453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206335, 0.544834, -0.812762,
		0.915466, 0.185778, 0.356944,
		0.345468, -0.817706, -0.460444,
		40.666267, 35.846764, 29.096319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025177, 36.638718, 29.177258>,  <40.424438, 36.419159, 29.418631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025177, 36.638718, 29.177258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.933342, 36.321358, 28.951763>,  <40.878239, 36.130939, 28.816465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.933342, 36.321358, 28.951763>,  <41.025177, 36.638718, 29.177258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933342, 36.321358, 28.951763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273214, 0.503383, -0.819731,
		0.934153, -0.342224, 0.101197,
		-0.229591, -0.793403, -0.563738,
		40.864464, 36.083336, 28.782642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682194, 36.447784, 28.849323>,  <41.025177, 36.638718, 29.177258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682194, 36.447784, 28.849323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376854, 36.303223, 28.635153>,  <41.193649, 36.216484, 28.506651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376854, 36.303223, 28.635153>,  <41.682194, 36.447784, 28.849323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376854, 36.303223, 28.635153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359998, 0.450215, -0.817134,
		0.536378, -0.816511, -0.213563,
		-0.763348, -0.361410, -0.535427,
		41.147850, 36.194801, 28.474525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011303, 36.168476, 28.256798>,  <41.682194, 36.447784, 28.849323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011303, 36.168476, 28.256798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627384, 36.231197, 28.163677>,  <41.397034, 36.268829, 28.107805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627384, 36.231197, 28.163677>,  <42.011303, 36.168476, 28.256798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627384, 36.231197, 28.163677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280627, 0.518779, -0.807538,
		-0.005854, -0.840405, -0.541928,
		-0.959799, 0.156806, -0.232803,
		41.339443, 36.278240, 28.093836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954643, 36.088665, 27.505840>,  <42.011303, 36.168476, 28.256798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954643, 36.088665, 27.505840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605507, 36.261765, 27.596067>,  <41.396027, 36.365623, 27.650204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605507, 36.261765, 27.596067>,  <41.954643, 36.088665, 27.505840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605507, 36.261765, 27.596067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037578, 0.520450, -0.853065,
		-0.486559, -0.736112, -0.470531,
		-0.872839, 0.432748, 0.225568,
		41.343655, 36.391590, 27.663738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422466, 35.985455, 26.898264>,  <41.954643, 36.088665, 27.505840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422466, 35.985455, 26.898264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315910, 36.302551, 27.117569>,  <41.251976, 36.492809, 27.249153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315910, 36.302551, 27.117569>,  <41.422466, 35.985455, 26.898264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315910, 36.302551, 27.117569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065378, 0.552648, -0.830847,
		-0.961644, -0.257177, -0.095394,
		-0.266394, 0.792742, 0.548264,
		41.235992, 36.540375, 27.282049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854805, 36.239182, 26.577438>,  <41.422466, 35.985455, 26.898264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854805, 36.239182, 26.577438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043121, 36.533184, 26.772629>,  <41.156113, 36.709587, 26.889744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043121, 36.533184, 26.772629>,  <40.854805, 36.239182, 26.577438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043121, 36.533184, 26.772629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148819, 0.479022, -0.865096,
		-0.869603, 0.479899, 0.116135,
		0.470790, 0.735007, 0.487977,
		41.184357, 36.753685, 26.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719391, 36.698593, 26.083248>,  <40.854805, 36.239182, 26.577438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719391, 36.698593, 26.083248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964909, 36.925800, 26.302561>,  <41.112221, 37.062122, 26.434147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964909, 36.925800, 26.302561>,  <40.719391, 36.698593, 26.083248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964909, 36.925800, 26.302561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148560, 0.598984, -0.786859,
		-0.775359, 0.564425, 0.283271,
		0.613798, 0.568016, 0.548279,
		41.149048, 37.096207, 26.467045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550110, 37.446426, 25.936998>,  <40.719391, 36.698593, 26.083248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550110, 37.446426, 25.936998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920231, 37.425293, 26.087208>,  <41.142303, 37.412613, 26.177334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920231, 37.425293, 26.087208>,  <40.550110, 37.446426, 25.936998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920231, 37.425293, 26.087208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342907, 0.539434, -0.769043,
		-0.161938, 0.840369, 0.517258,
		0.925306, -0.052834, 0.375523,
		41.197823, 37.409443, 26.199865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751808, 38.034813, 25.735312>,  <40.550110, 37.446426, 25.936998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751808, 38.034813, 25.735312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087265, 37.842278, 25.837280>,  <41.288540, 37.726757, 25.898462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087265, 37.842278, 25.837280>,  <40.751808, 38.034813, 25.735312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087265, 37.842278, 25.837280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497713, 0.487104, -0.717643,
		0.221256, 0.728727, 0.648076,
		0.838646, -0.481339, 0.254922,
		41.338860, 37.697876, 25.913757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370289, 38.550175, 25.863966>,  <40.751808, 38.034813, 25.735312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370289, 38.550175, 25.863966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545338, 38.203712, 25.767416>,  <41.650368, 37.995834, 25.709486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545338, 38.203712, 25.767416>,  <41.370289, 38.550175, 25.863966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545338, 38.203712, 25.767416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626297, 0.486243, -0.609361,
		0.645168, 0.115496, 0.755260,
		0.437619, -0.866157, -0.241374,
		41.676624, 37.943867, 25.695004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041992, 38.771259, 25.865208>,  <41.370289, 38.550175, 25.863966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041992, 38.771259, 25.865208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.033077, 38.418163, 25.677471>,  <42.027729, 38.206306, 25.564829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.033077, 38.418163, 25.677471>,  <42.041992, 38.771259, 25.865208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033077, 38.418163, 25.677471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789663, 0.272368, -0.549770,
		0.613135, -0.382873, 0.690995,
		-0.022287, -0.882737, -0.469339,
		42.026390, 38.153343, 25.536669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665623, 38.459763, 25.902933>,  <42.041992, 38.771259, 25.865208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665623, 38.459763, 25.902933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.508446, 38.280872, 25.581541>,  <42.414139, 38.173538, 25.388706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.508446, 38.280872, 25.581541>,  <42.665623, 38.459763, 25.902933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508446, 38.280872, 25.581541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764266, 0.327063, -0.555813,
		0.511363, -0.832478, 0.213281,
		-0.392945, -0.447225, -0.803482,
		42.390564, 38.146706, 25.340496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134769, 38.100410, 25.532694>,  <42.665623, 38.459763, 25.902933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134769, 38.100410, 25.532694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844341, 38.153198, 25.262760>,  <42.670082, 38.184872, 25.100800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844341, 38.153198, 25.262760>,  <43.134769, 38.100410, 25.532694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844341, 38.153198, 25.262760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675939, 0.317089, -0.665253,
		0.126188, -0.939169, -0.319435,
		-0.726074, 0.131972, -0.674833,
		42.626518, 38.192791, 25.060310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487587, 37.959999, 24.905428>,  <43.134769, 38.100410, 25.532694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487587, 37.959999, 24.905428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.159821, 38.132008, 24.753826>,  <42.963161, 38.235214, 24.662865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.159821, 38.132008, 24.753826>,  <43.487587, 37.959999, 24.905428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159821, 38.132008, 24.753826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559652, 0.457263, -0.691159,
		-0.123907, -0.778455, -0.615349,
		-0.819412, 0.430021, -0.379006,
		42.913998, 38.261013, 24.640125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627583, 37.942509, 24.177532>,  <43.487587, 37.959999, 24.905428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627583, 37.942509, 24.177532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359661, 38.223606, 24.273460>,  <43.198906, 38.392265, 24.331018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359661, 38.223606, 24.273460>,  <43.627583, 37.942509, 24.177532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359661, 38.223606, 24.273460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496315, 0.663936, -0.559339,
		-0.552297, -0.255621, -0.793490,
		-0.669805, 0.702742, 0.239822,
		43.158718, 38.434429, 24.345407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640739, 38.257317, 23.551027>,  <43.627583, 37.942509, 24.177532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640739, 38.257317, 23.551027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.459793, 38.511848, 23.800974>,  <43.351227, 38.664566, 23.950941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.459793, 38.511848, 23.800974>,  <43.640739, 38.257317, 23.551027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459793, 38.511848, 23.800974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558736, 0.748313, -0.357550,
		-0.695113, 0.187393, -0.694047,
		-0.452362, 0.636327, 0.624865,
		43.324085, 38.702747, 23.988434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338055, 38.818897, 23.146654>,  <43.640739, 38.257317, 23.551027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338055, 38.818897, 23.146654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379387, 38.964813, 23.516788>,  <43.404186, 39.052364, 23.738869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379387, 38.964813, 23.516788>,  <43.338055, 38.818897, 23.146654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379387, 38.964813, 23.516788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316948, 0.869745, -0.378269,
		-0.942797, 0.332372, -0.025744,
		0.103335, 0.364791, 0.925338,
		43.410389, 39.074249, 23.794390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060528, 39.478092, 23.099598>,  <43.338055, 38.818897, 23.146654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060528, 39.478092, 23.099598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314030, 39.478310, 23.409012>,  <43.466129, 39.478439, 23.594660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314030, 39.478310, 23.409012>,  <43.060528, 39.478092, 23.099598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314030, 39.478310, 23.409012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436170, 0.825616, -0.357931,
		-0.638834, 0.564232, 0.523003,
		0.633756, 0.000540, 0.773533,
		43.504158, 39.478470, 23.641071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141712, 40.149914, 23.358976>,  <43.060528, 39.478092, 23.099598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141712, 40.149914, 23.358976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.459225, 39.964458, 23.516434>,  <43.649731, 39.853184, 23.610909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.459225, 39.964458, 23.516434>,  <43.141712, 40.149914, 23.358976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459225, 39.964458, 23.516434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597950, 0.713250, -0.365692,
		-0.111216, 0.525657, 0.843395,
		0.793780, -0.463637, 0.393642,
		43.697357, 39.825367, 23.634527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557777, 40.603970, 23.877188>,  <43.141712, 40.149914, 23.358976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557777, 40.603970, 23.877188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797234, 40.324093, 23.721209>,  <43.940907, 40.156166, 23.627621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797234, 40.324093, 23.721209>,  <43.557777, 40.603970, 23.877188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797234, 40.324093, 23.721209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623340, 0.712664, -0.321802,
		0.503063, -0.050424, 0.862777,
		0.598644, -0.699691, -0.389946,
		43.976826, 40.114185, 23.604225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267971, 40.843681, 23.949238>,  <43.557777, 40.603970, 23.877188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267971, 40.843681, 23.949238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275242, 40.589699, 23.640305>,  <44.279602, 40.437309, 23.454945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275242, 40.589699, 23.640305>,  <44.267971, 40.843681, 23.949238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275242, 40.589699, 23.640305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707197, 0.554215, -0.438996,
		0.706783, -0.538215, 0.459111,
		0.018173, -0.634957, -0.772334,
		44.280693, 40.399212, 23.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251747, 41.288689, 23.414856>,  <44.267971, 40.843681, 23.949238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251747, 41.288689, 23.414856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.949276, 41.550404, 23.418953>,  <43.767792, 41.707432, 23.421412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.949276, 41.550404, 23.418953>,  <44.251747, 41.288689, 23.414856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949276, 41.550404, 23.418953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408003, -0.483661, 0.774342,
		0.511595, 0.581361, 0.632685,
		-0.756178, 0.654287, 0.010241,
		43.722424, 41.746689, 23.422026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342323, 41.716122, 24.064030>,  <44.251747, 41.288689, 23.414856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342323, 41.716122, 24.064030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960064, 41.763992, 23.956394>,  <43.730709, 41.792717, 23.891813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960064, 41.763992, 23.956394>,  <44.342323, 41.716122, 24.064030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960064, 41.763992, 23.956394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287106, -0.175139, 0.941752,
		0.065582, 0.977243, 0.201733,
		-0.955651, 0.119681, -0.269087,
		43.673370, 41.799896, 23.875668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059158, 42.212132, 24.518763>,  <44.342323, 41.716122, 24.064030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059158, 42.212132, 24.518763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.762791, 41.992123, 24.364614>,  <43.584969, 41.860119, 24.272125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.762791, 41.992123, 24.364614>,  <44.059158, 42.212132, 24.518763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762791, 41.992123, 24.364614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340240, -0.187314, 0.921494,
		-0.579027, 0.813873, -0.048355,
		-0.740921, -0.550022, -0.385372,
		43.540516, 41.827118, 24.249002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563393, 42.384033, 24.961857>,  <44.059158, 42.212132, 24.518763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563393, 42.384033, 24.961857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.428997, 42.044155, 24.799314>,  <43.348362, 41.840229, 24.701788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.428997, 42.044155, 24.799314>,  <43.563393, 42.384033, 24.961857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428997, 42.044155, 24.799314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545230, -0.176336, 0.819530,
		-0.768009, 0.496908, -0.404035,
		-0.335985, -0.849699, -0.406357,
		43.328201, 41.789246, 24.677408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000439, 42.407356, 25.265760>,  <43.563393, 42.384033, 24.961857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000439, 42.407356, 25.265760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.031033, 42.031914, 25.131199>,  <43.049389, 41.806648, 25.050463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.031033, 42.031914, 25.131199>,  <43.000439, 42.407356, 25.265760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031033, 42.031914, 25.131199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449754, -0.333594, 0.828514,
		-0.889871, 0.087931, -0.447657,
		0.076484, -0.938607, -0.336403,
		43.053978, 41.750332, 25.030277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337227, 42.131866, 25.240213>,  <43.000439, 42.407356, 25.265760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337227, 42.131866, 25.240213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.576008, 41.813301, 25.278936>,  <42.719276, 41.622162, 25.302170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.576008, 41.813301, 25.278936>,  <42.337227, 42.131866, 25.240213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576008, 41.813301, 25.278936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607750, -0.370140, 0.702592,
		-0.523721, -0.478251, -0.704977,
		0.596955, -0.796412, 0.096808,
		42.755096, 41.574379, 25.307980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896889, 41.642433, 25.286638>,  <42.337227, 42.131866, 25.240213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896889, 41.642433, 25.286638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.210876, 41.432388, 25.418142>,  <42.399269, 41.306362, 25.497044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.210876, 41.432388, 25.418142>,  <41.896889, 41.642433, 25.286638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210876, 41.432388, 25.418142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604106, -0.531072, 0.594154,
		-0.137402, -0.664998, -0.734097,
		0.784970, -0.525110, 0.328759,
		42.446369, 41.274857, 25.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625622, 41.061993, 25.386660>,  <41.896889, 41.642433, 25.286638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625622, 41.061993, 25.386660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952816, 41.061783, 25.616753>,  <42.149132, 41.061657, 25.754808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952816, 41.061783, 25.616753>,  <41.625622, 41.061993, 25.386660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952816, 41.061783, 25.616753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461550, -0.597422, 0.655789,
		0.343315, -0.801927, -0.488926,
		0.817990, -0.000521, 0.575233,
		42.198212, 41.061626, 25.789322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748360, 40.387756, 25.434351>,  <41.625622, 41.061993, 25.386660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748360, 40.387756, 25.434351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964680, 40.534786, 25.736984>,  <42.094471, 40.623005, 25.918564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964680, 40.534786, 25.736984>,  <41.748360, 40.387756, 25.434351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964680, 40.534786, 25.736984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194279, -0.820558, 0.537531,
		0.818406, -0.437687, -0.372347,
		0.540803, 0.367579, 0.756583,
		42.126919, 40.645061, 25.963959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106873, 39.704369, 25.742014>,  <41.748360, 40.387756, 25.434351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106873, 39.704369, 25.742014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073723, 40.017551, 25.988626>,  <42.053833, 40.205460, 26.136593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073723, 40.017551, 25.988626>,  <42.106873, 39.704369, 25.742014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073723, 40.017551, 25.988626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375988, -0.597502, 0.708255,
		0.922911, -0.173113, 0.343899,
		-0.082872, 0.782959, 0.616529,
		42.048862, 40.252438, 26.173586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215656, 39.345047, 26.373966>,  <42.106873, 39.704369, 25.742014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215656, 39.345047, 26.373966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025055, 39.686115, 26.459665>,  <41.910694, 39.890755, 26.511086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025055, 39.686115, 26.459665>,  <42.215656, 39.345047, 26.373966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025055, 39.686115, 26.459665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482746, -0.457425, 0.746806,
		0.734781, 0.252426, 0.629586,
		-0.476502, 0.852668, 0.214249,
		41.882103, 39.941917, 26.523939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325512, 39.433437, 27.062101>,  <42.215656, 39.345047, 26.373966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325512, 39.433437, 27.062101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002571, 39.651703, 26.972275>,  <41.808807, 39.782661, 26.918379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002571, 39.651703, 26.972275>,  <42.325512, 39.433437, 27.062101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002571, 39.651703, 26.972275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505012, -0.442134, 0.741269,
		0.305195, 0.711876, 0.632525,
		-0.807353, 0.545665, -0.224569,
		41.760365, 39.815403, 26.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009598, 39.463802, 27.651964>,  <42.325512, 39.433437, 27.062101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009598, 39.463802, 27.651964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701424, 39.568104, 27.419262>,  <41.516521, 39.630684, 27.279640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701424, 39.568104, 27.419262>,  <42.009598, 39.463802, 27.651964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701424, 39.568104, 27.419262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627388, -0.472160, 0.619232,
		-0.113212, 0.842063, 0.527363,
		-0.770433, 0.260757, -0.581755,
		41.470295, 39.646332, 27.244736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531971, 39.557228, 28.156467>,  <42.009598, 39.463802, 27.651964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531971, 39.557228, 28.156467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344364, 39.530361, 27.804214>,  <41.231800, 39.514240, 27.592863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344364, 39.530361, 27.804214>,  <41.531971, 39.557228, 28.156467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344364, 39.530361, 27.804214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722848, -0.543718, 0.426452,
		-0.507456, 0.836576, 0.206465,
		-0.469019, -0.067163, -0.880631,
		41.203659, 39.510212, 27.540026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871891, 39.848686, 28.218266>,  <41.531971, 39.557228, 28.156467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871891, 39.848686, 28.218266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820873, 39.595978, 27.912430>,  <40.790264, 39.444351, 27.728928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820873, 39.595978, 27.912430>,  <40.871891, 39.848686, 28.218266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820873, 39.595978, 27.912430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703257, -0.485994, 0.518883,
		-0.699402, 0.603882, -0.382313,
		-0.127542, -0.631772, -0.764590,
		40.782612, 39.406445, 27.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145828, 39.882729, 28.002665>,  <40.871891, 39.848686, 28.218266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145828, 39.882729, 28.002665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285770, 39.534912, 27.863235>,  <40.369736, 39.326221, 27.779579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285770, 39.534912, 27.863235>,  <40.145828, 39.882729, 28.002665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285770, 39.534912, 27.863235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790251, -0.473753, 0.388667,
		-0.503099, 0.139485, -0.852898,
		0.349850, -0.869541, -0.348573,
		40.390724, 39.274048, 27.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566750, 39.536575, 27.685381>,  <40.145828, 39.882729, 28.002665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566750, 39.536575, 27.685381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842171, 39.255833, 27.758362>,  <40.007423, 39.087387, 27.802151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842171, 39.255833, 27.758362>,  <39.566750, 39.536575, 27.685381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842171, 39.255833, 27.758362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679423, -0.536382, 0.500679,
		-0.253541, -0.468707, -0.846186,
		0.688551, -0.701861, 0.182455,
		40.048737, 39.045273, 27.813099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463589, 38.925392, 27.295113>,  <39.566750, 39.536575, 27.685381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463589, 38.925392, 27.295113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664707, 38.803421, 27.618647>,  <39.785378, 38.730236, 27.812767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664707, 38.803421, 27.618647>,  <39.463589, 38.925392, 27.295113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664707, 38.803421, 27.618647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771724, -0.579881, 0.261113,
		0.389406, -0.755484, -0.526884,
		0.502797, -0.304930, 0.808834,
		39.815548, 38.711941, 27.861298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316437, 38.210365, 27.374760>,  <39.463589, 38.925392, 27.295113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316437, 38.210365, 27.374760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474976, 38.288025, 27.733694>,  <39.570099, 38.334621, 27.949055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474976, 38.288025, 27.733694>,  <39.316437, 38.210365, 27.374760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474976, 38.288025, 27.733694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759736, -0.479400, 0.439292,
		0.515472, -0.855851, -0.042506,
		0.396346, 0.194149, 0.897339,
		39.593880, 38.346268, 28.002895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194134, 37.598202, 27.793545>,  <39.316437, 38.210365, 27.374760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194134, 37.598202, 27.793545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267086, 37.870804, 28.077032>,  <39.310860, 38.034367, 28.247126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267086, 37.870804, 28.077032>,  <39.194134, 37.598202, 27.793545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267086, 37.870804, 28.077032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826279, -0.284447, 0.486161,
		0.532916, -0.674267, 0.511238,
		0.182382, 0.681508, 0.708720,
		39.321800, 38.075256, 28.289648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.133926, 33.509800, 32.337494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143208, 33.907215, 32.293056>,  <40.148777, 34.145664, 32.266392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143208, 33.907215, 32.293056>,  <40.133926, 33.509800, 32.337494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143208, 33.907215, 32.293056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200690, 0.113493, 0.973059,
		0.979380, -0.000283, 0.202027,
		0.023204, 0.993539, -0.111096,
		40.150169, 34.205276, 32.259727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583683, 33.745140, 32.829117>,  <40.133926, 33.509800, 32.337494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583683, 33.745140, 32.829117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369007, 34.069065, 32.734314>,  <40.240204, 34.263420, 32.677433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369007, 34.069065, 32.734314>,  <40.583683, 33.745140, 32.829117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369007, 34.069065, 32.734314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147611, 0.186444, 0.971313,
		0.830770, 0.556275, 0.019476,
		-0.536686, 0.809813, -0.237005,
		40.208000, 34.312008, 32.663212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848999, 34.232670, 33.253727>,  <40.583683, 33.745140, 32.829117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848999, 34.232670, 33.253727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493614, 34.371944, 33.134132>,  <40.280384, 34.455509, 33.062378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493614, 34.371944, 33.134132>,  <40.848999, 34.232670, 33.253727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493614, 34.371944, 33.134132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295069, 0.065590, 0.953222,
		0.351513, 0.935127, 0.044466,
		-0.888467, 0.348190, -0.298983,
		40.227074, 34.476402, 33.044437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830563, 34.866184, 33.745762>,  <40.848999, 34.232670, 33.253727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830563, 34.866184, 33.745762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463078, 34.788189, 33.608391>,  <40.242584, 34.741394, 33.525967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463078, 34.788189, 33.608391>,  <40.830563, 34.866184, 33.745762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463078, 34.788189, 33.608391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336619, -0.068127, 0.939173,
		-0.206521, 0.978437, -0.003046,
		-0.918715, -0.194984, -0.343431,
		40.187462, 34.729694, 33.505363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278759, 35.460056, 33.939987>,  <40.830563, 34.866184, 33.745762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278759, 35.460056, 33.939987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097340, 35.108452, 33.881161>,  <39.988487, 34.897488, 33.845867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097340, 35.108452, 33.881161>,  <40.278759, 35.460056, 33.939987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097340, 35.108452, 33.881161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358644, 0.028950, 0.933025,
		-0.815886, 0.475915, -0.328383,
		-0.453547, -0.879015, -0.147064,
		39.961277, 34.844746, 33.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593941, 35.632805, 34.199417>,  <40.278759, 35.460056, 33.939987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593941, 35.632805, 34.199417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646946, 35.237110, 34.174591>,  <39.678749, 34.999695, 34.159695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646946, 35.237110, 34.174591>,  <39.593941, 35.632805, 34.199417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646946, 35.237110, 34.174591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501410, -0.120918, 0.856718,
		-0.855001, -0.082407, -0.512037,
		0.132514, -0.989236, -0.062065,
		39.686699, 34.940338, 34.155972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009762, 35.292038, 34.546810>,  <39.593941, 35.632805, 34.199417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009762, 35.292038, 34.546810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.247627, 34.970753, 34.532787>,  <39.390347, 34.777981, 34.524372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.247627, 34.970753, 34.532787>,  <39.009762, 35.292038, 34.546810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247627, 34.970753, 34.532787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470997, -0.383383, 0.794468,
		-0.651564, -0.455931, -0.606294,
		0.594665, -0.803209, -0.035056,
		39.426025, 34.729790, 34.522270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552170, 34.785839, 34.504219>,  <39.009762, 35.292038, 34.546810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552170, 34.785839, 34.504219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891438, 34.643005, 34.660732>,  <39.094997, 34.557304, 34.754639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891438, 34.643005, 34.660732>,  <38.552170, 34.785839, 34.504219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891438, 34.643005, 34.660732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492492, -0.259500, 0.830730,
		-0.195102, -0.897302, -0.395961,
		0.848167, -0.357084, 0.391285,
		39.145889, 34.535877, 34.778118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555378, 34.113995, 34.859398>,  <38.552170, 34.785839, 34.504219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555378, 34.113995, 34.859398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890659, 34.249168, 35.030613>,  <39.091827, 34.330273, 35.133343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890659, 34.249168, 35.030613>,  <38.555378, 34.113995, 34.859398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890659, 34.249168, 35.030613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277151, -0.412005, 0.868009,
		0.469684, -0.846198, -0.251685,
		0.838203, 0.337936, 0.428037,
		39.142120, 34.350548, 35.159023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794903, 33.504406, 35.291000>,  <38.555378, 34.113995, 34.859398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794903, 33.504406, 35.291000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959896, 33.840157, 35.432594>,  <39.058891, 34.041607, 35.517551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959896, 33.840157, 35.432594>,  <38.794903, 33.504406, 35.291000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959896, 33.840157, 35.432594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190701, -0.300408, 0.934552,
		0.890779, -0.452995, 0.036155,
		0.412487, 0.839375, 0.353984,
		39.083641, 34.091969, 35.538788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908089, 33.281513, 35.955959>,  <38.794903, 33.504406, 35.291000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908089, 33.281513, 35.955959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979897, 33.673592, 35.989391>,  <39.022984, 33.908840, 36.009449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979897, 33.673592, 35.989391>,  <38.908089, 33.281513, 35.955959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979897, 33.673592, 35.989391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502101, 0.018237, 0.864617,
		0.845970, -0.197184, 0.495432,
		0.179524, 0.980197, 0.083578,
		39.033752, 33.967651, 36.014465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164688, 33.326942, 36.614067>,  <38.908089, 33.281513, 35.955959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164688, 33.326942, 36.614067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011513, 33.681458, 36.509869>,  <38.919609, 33.894165, 36.447350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011513, 33.681458, 36.509869>,  <39.164688, 33.326942, 36.614067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011513, 33.681458, 36.509869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523805, 0.023953, 0.851502,
		0.760914, 0.462517, 0.455069,
		-0.382934, 0.886287, -0.260495,
		38.896633, 33.947342, 36.431721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278225, 33.866638, 37.086319>,  <39.164688, 33.326942, 36.614067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278225, 33.866638, 37.086319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935555, 33.972977, 36.909489>,  <38.729954, 34.036781, 36.803391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935555, 33.972977, 36.909489>,  <39.278225, 33.866638, 37.086319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935555, 33.972977, 36.909489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420202, 0.137464, 0.896958,
		0.299225, 0.954163, -0.006052,
		-0.856676, 0.265849, -0.442074,
		38.678551, 34.052731, 36.776867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051079, 34.381218, 37.552422>,  <39.278225, 33.866638, 37.086319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051079, 34.381218, 37.552422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749275, 34.260300, 37.319412>,  <38.568195, 34.187748, 37.179607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749275, 34.260300, 37.319412>,  <39.051079, 34.381218, 37.552422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749275, 34.260300, 37.319412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622288, 0.047521, 0.781345,
		-0.208514, 0.952029, -0.223970,
		-0.754506, -0.302295, -0.582528,
		38.522923, 34.169613, 37.144653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891460, 34.544037, 38.306160>,  <39.051079, 34.381218, 37.552422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891460, 34.544037, 38.306160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910362, 34.750099, 38.648476>,  <38.921703, 34.873737, 38.853867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910362, 34.750099, 38.648476>,  <38.891460, 34.544037, 38.306160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910362, 34.750099, 38.648476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410040, 0.771233, -0.486896,
		-0.910843, 0.373917, -0.174791,
		0.047254, 0.515157, 0.855792,
		38.924538, 34.904648, 38.905212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537151, 35.214481, 38.207581>,  <38.891460, 34.544037, 38.306160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537151, 35.214481, 38.207581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.825268, 35.231754, 38.484509>,  <38.998138, 35.242119, 38.650665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.825268, 35.231754, 38.484509>,  <38.537151, 35.214481, 38.207581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825268, 35.231754, 38.484509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450763, 0.729469, -0.514478,
		-0.527245, 0.682649, 0.505967,
		0.720295, 0.043185, 0.692322,
		39.041355, 35.244709, 38.692204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566067, 35.927219, 38.538509>,  <38.537151, 35.214481, 38.207581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566067, 35.927219, 38.538509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906929, 35.719299, 38.562614>,  <39.111446, 35.594547, 38.577076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906929, 35.719299, 38.562614>,  <38.566067, 35.927219, 38.538509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906929, 35.719299, 38.562614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478917, 0.728315, -0.490098,
		0.210868, 0.446500, 0.869582,
		0.852158, -0.519803, 0.060258,
		39.162575, 35.563358, 38.580692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000656, 36.434265, 38.796719>,  <38.566067, 35.927219, 38.538509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000656, 36.434265, 38.796719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217262, 36.140507, 38.633053>,  <39.347225, 35.964252, 38.534851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217262, 36.140507, 38.633053>,  <39.000656, 36.434265, 38.796719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217262, 36.140507, 38.633053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497190, 0.672231, -0.548550,
		0.677910, 0.093614, 0.729160,
		0.541516, -0.734399, -0.409169,
		39.379719, 35.920189, 38.510303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720379, 36.707878, 38.711899>,  <39.000656, 36.434265, 38.796719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720379, 36.707878, 38.711899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719429, 36.403393, 38.452503>,  <39.718857, 36.220699, 38.296864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719429, 36.403393, 38.452503>,  <39.720379, 36.707878, 38.711899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719429, 36.403393, 38.452503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597453, 0.518947, -0.611346,
		0.801900, -0.388898, 0.453558,
		-0.002378, -0.761218, -0.648492,
		39.718716, 36.175026, 38.257957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428093, 36.635849, 38.375832>,  <39.720379, 36.707878, 38.711899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428093, 36.635849, 38.375832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212399, 36.427292, 38.111294>,  <40.082981, 36.302158, 37.952572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212399, 36.427292, 38.111294>,  <40.428093, 36.635849, 38.375832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212399, 36.427292, 38.111294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618711, 0.287495, -0.731125,
		0.571336, -0.803429, 0.167562,
		-0.539234, -0.521390, -0.661347,
		40.050629, 36.270874, 37.912891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934647, 36.266514, 37.925892>,  <40.428093, 36.635849, 38.375832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934647, 36.266514, 37.925892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585457, 36.280537, 37.731289>,  <40.375942, 36.288948, 37.614529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585457, 36.280537, 37.731289>,  <40.934647, 36.266514, 37.925892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585457, 36.280537, 37.731289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474685, 0.290528, -0.830824,
		0.112219, -0.956225, -0.270263,
		-0.872972, 0.035056, -0.486508,
		40.323566, 36.291054, 37.585335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062962, 35.938473, 37.237396>,  <40.934647, 36.266514, 37.925892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062962, 35.938473, 37.237396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729389, 36.155663, 37.197926>,  <40.529247, 36.285976, 37.174244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729389, 36.155663, 37.197926>,  <41.062962, 35.938473, 37.237396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729389, 36.155663, 37.197926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267445, 0.241222, -0.932891,
		-0.482735, -0.804356, -0.346379,
		-0.833930, 0.542976, -0.098675,
		40.479210, 36.318554, 37.168324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777592, 35.750294, 36.638527>,  <41.062962, 35.938473, 37.237396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777592, 35.750294, 36.638527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.630775, 36.115551, 36.709473>,  <40.542686, 36.334705, 36.752041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.630775, 36.115551, 36.709473>,  <40.777592, 35.750294, 36.638527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630775, 36.115551, 36.709473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325492, 0.304695, -0.895107,
		-0.871400, -0.270808, -0.409054,
		-0.367038, 0.913140, 0.177365,
		40.520664, 36.389492, 36.762684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454010, 35.875900, 36.050747>,  <40.777592, 35.750294, 36.638527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454010, 35.875900, 36.050747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510155, 36.235924, 36.215763>,  <40.543842, 36.451939, 36.314774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510155, 36.235924, 36.215763>,  <40.454010, 35.875900, 36.050747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510155, 36.235924, 36.215763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266323, 0.366984, -0.891288,
		-0.953610, 0.234967, -0.188199,
		0.140358, 0.900063, 0.412536,
		40.552261, 36.505943, 36.339523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290863, 36.270981, 35.464809>,  <40.454010, 35.875900, 36.050747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290863, 36.270981, 35.464809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430153, 36.548721, 35.716717>,  <40.513725, 36.715366, 35.867863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430153, 36.548721, 35.716717>,  <40.290863, 36.270981, 35.464809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430153, 36.548721, 35.716717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240007, 0.583389, -0.775921,
		-0.906166, 0.421344, 0.036500,
		0.348223, 0.694353, 0.629773,
		40.534618, 36.757027, 35.905647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982941, 36.920944, 35.404202>,  <40.290863, 36.270981, 35.464809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982941, 36.920944, 35.404202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.346737, 36.991299, 35.554878>,  <40.565014, 37.033512, 35.645287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.346737, 36.991299, 35.554878>,  <39.982941, 36.920944, 35.404202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346737, 36.991299, 35.554878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180455, 0.649265, -0.738844,
		-0.374527, 0.739945, 0.558758,
		0.909486, 0.175887, 0.376694,
		40.619583, 37.044064, 35.667885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153923, 37.566147, 35.206173>,  <39.982941, 36.920944, 35.404202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153923, 37.566147, 35.206173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516907, 37.430698, 35.305656>,  <40.734695, 37.349430, 35.365349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516907, 37.430698, 35.305656>,  <40.153923, 37.566147, 35.206173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516907, 37.430698, 35.305656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410704, 0.590166, -0.695001,
		0.088561, 0.732830, 0.674623,
		0.907457, -0.338621, 0.248711,
		40.789143, 37.329113, 35.380268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599907, 38.216545, 35.073708>,  <40.153923, 37.566147, 35.206173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599907, 38.216545, 35.073708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848049, 37.902821, 35.072666>,  <40.996937, 37.714584, 35.072041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848049, 37.902821, 35.072666>,  <40.599907, 38.216545, 35.073708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848049, 37.902821, 35.072666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489027, 0.389388, -0.780532,
		0.613194, 0.482940, 0.625111,
		0.620360, -0.784313, -0.002599,
		41.034157, 37.667526, 35.071888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578915, 38.851322, 35.297722>,  <40.599907, 38.216545, 35.073708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578915, 38.851322, 35.297722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465698, 39.234016, 35.324688>,  <40.397766, 39.463634, 35.340866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465698, 39.234016, 35.324688>,  <40.578915, 38.851322, 35.297722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465698, 39.234016, 35.324688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843091, -0.281703, 0.458083,
		0.457255, 0.072820, 0.886349,
		-0.283045, 0.956734, 0.067416,
		40.380783, 39.521038, 35.344913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441345, 38.965786, 35.972809>,  <40.578915, 38.851322, 35.297722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441345, 38.965786, 35.972809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233292, 39.233574, 35.760670>,  <40.108459, 39.394245, 35.633385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233292, 39.233574, 35.760670>,  <40.441345, 38.965786, 35.972809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233292, 39.233574, 35.760670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835540, -0.270166, 0.478418,
		0.177002, 0.691973, 0.699888,
		-0.520138, 0.669465, -0.530351,
		40.077251, 39.434414, 35.601562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123146, 39.329353, 36.460712>,  <40.441345, 38.965786, 35.972809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123146, 39.329353, 36.460712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918182, 39.413918, 36.127789>,  <39.795204, 39.464657, 35.928036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918182, 39.413918, 36.127789>,  <40.123146, 39.329353, 36.460712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918182, 39.413918, 36.127789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851501, -0.250658, 0.460561,
		-0.111257, 0.944709, 0.308458,
		-0.512413, 0.211412, -0.832309,
		39.764458, 39.477341, 35.878098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617107, 39.757545, 36.730385>,  <40.123146, 39.329353, 36.460712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617107, 39.757545, 36.730385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502129, 39.612640, 36.375725>,  <39.433140, 39.525700, 36.162930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502129, 39.612640, 36.375725>,  <39.617107, 39.757545, 36.730385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502129, 39.612640, 36.375725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838058, -0.353053, 0.415947,
		-0.463714, 0.862625, -0.202109,
		-0.287451, -0.362260, -0.886645,
		39.415894, 39.503963, 36.109730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906414, 39.972256, 36.589916>,  <39.617107, 39.757545, 36.730385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906414, 39.972256, 36.589916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930691, 39.678658, 36.319340>,  <38.945255, 39.502499, 36.156994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930691, 39.678658, 36.319340>,  <38.906414, 39.972256, 36.589916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930691, 39.678658, 36.319340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945382, -0.259711, 0.196988,
		-0.320266, 0.627536, -0.709668,
		0.060691, -0.733995, -0.676437,
		38.948898, 39.458458, 36.116409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245613, 40.028458, 36.221062>,  <38.906414, 39.972256, 36.589916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245613, 40.028458, 36.221062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407055, 39.665684, 36.172771>,  <38.503922, 39.448021, 36.143799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407055, 39.665684, 36.172771>,  <38.245613, 40.028458, 36.221062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407055, 39.665684, 36.172771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911783, -0.409638, 0.029123,
		-0.075865, 0.098318, -0.992259,
		0.403604, -0.906934, -0.120722,
		38.528137, 39.393604, 36.136555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875633, 39.743389, 35.663383>,  <38.245613, 40.028458, 36.221062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875633, 39.743389, 35.663383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031857, 39.451439, 35.887791>,  <38.125587, 39.276268, 36.022434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031857, 39.451439, 35.887791>,  <37.875633, 39.743389, 35.663383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031857, 39.451439, 35.887791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864754, -0.499866, -0.048321,
		0.315704, -0.466273, -0.826390,
		0.390553, -0.729879, 0.561021,
		38.149021, 39.232475, 36.056099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507645, 39.100384, 35.401432>,  <37.875633, 39.743389, 35.663383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507645, 39.100384, 35.401432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684681, 38.966835, 35.734333>,  <37.790901, 38.886703, 35.934074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684681, 38.966835, 35.734333>,  <37.507645, 39.100384, 35.401432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684681, 38.966835, 35.734333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812705, -0.541589, 0.214924,
		0.378981, -0.771498, -0.511042,
		0.442588, -0.333875, 0.832252,
		37.817459, 38.866673, 35.984009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457157, 38.349327, 35.425076>,  <37.507645, 39.100384, 35.401432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457157, 38.349327, 35.425076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545238, 38.449905, 35.802071>,  <37.598087, 38.510250, 36.028267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545238, 38.449905, 35.802071>,  <37.457157, 38.349327, 35.425076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545238, 38.449905, 35.802071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792331, -0.517466, 0.323174,
		0.568966, -0.817927, 0.085279,
		0.220204, 0.251444, 0.942489,
		37.611301, 38.525337, 36.084816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436237, 37.735081, 35.818077>,  <37.457157, 38.349327, 35.425076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436237, 37.735081, 35.818077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386368, 38.017372, 36.097050>,  <37.356445, 38.186745, 36.264431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386368, 38.017372, 36.097050>,  <37.436237, 37.735081, 35.818077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386368, 38.017372, 36.097050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764027, -0.516747, 0.386311,
		0.633024, -0.484690, 0.603620,
		-0.124678, 0.705726, 0.697429,
		37.348965, 38.229092, 36.306278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302383, 37.332268, 36.321243>,  <37.436237, 37.735081, 35.818077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302383, 37.332268, 36.321243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170521, 37.693714, 36.430649>,  <37.091404, 37.910580, 36.496292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170521, 37.693714, 36.430649>,  <37.302383, 37.332268, 36.321243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170521, 37.693714, 36.430649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823299, -0.416940, 0.385150,
		0.462065, -0.098215, 0.881391,
		-0.329660, 0.903612, 0.273513,
		37.071625, 37.964798, 36.512703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239792, 37.331898, 36.995193>,  <37.302383, 37.332268, 36.321243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239792, 37.331898, 36.995193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993011, 37.625191, 36.880829>,  <36.844944, 37.801167, 36.812210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993011, 37.625191, 36.880829>,  <37.239792, 37.331898, 36.995193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993011, 37.625191, 36.880829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701493, -0.347653, 0.622130,
		0.356771, 0.584383, 0.728842,
		-0.616947, 0.733235, -0.285908,
		36.807926, 37.845161, 36.795055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.817337, 40.790287, 34.073254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544144, 40.916367, 33.809681>,  <43.380230, 40.992016, 33.651539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544144, 40.916367, 33.809681>,  <43.817337, 40.790287, 34.073254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544144, 40.916367, 33.809681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724702, -0.179586, 0.665248,
		0.091353, 0.931878, 0.351081,
		-0.682980, 0.315202, -0.658929,
		43.339249, 41.010925, 33.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436260, 41.184998, 34.514019>,  <43.817337, 40.790287, 34.073254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436260, 41.184998, 34.514019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199749, 41.105724, 34.201324>,  <43.057842, 41.058159, 34.013710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199749, 41.105724, 34.201324>,  <43.436260, 41.184998, 34.514019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199749, 41.105724, 34.201324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764717, -0.170053, 0.621522,
		-0.256113, 0.965300, -0.051008,
		-0.591281, -0.198186, -0.781734,
		43.022366, 41.046268, 33.966805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792561, 41.561352, 34.673073>,  <43.436260, 41.184998, 34.514019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792561, 41.561352, 34.673073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730991, 41.261890, 34.415134>,  <42.694050, 41.082214, 34.260372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730991, 41.261890, 34.415134>,  <42.792561, 41.561352, 34.673073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730991, 41.261890, 34.415134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893144, -0.173712, 0.414870,
		-0.422611, 0.639803, -0.641913,
		-0.153927, -0.748649, -0.644849,
		42.684814, 41.037296, 34.221680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091148, 41.552654, 34.623302>,  <42.792561, 41.561352, 34.673073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091148, 41.552654, 34.623302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181004, 41.202381, 34.452324>,  <42.234917, 40.992218, 34.349735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181004, 41.202381, 34.452324>,  <42.091148, 41.552654, 34.623302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181004, 41.202381, 34.452324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778680, -0.425035, 0.461521,
		-0.585827, 0.229167, -0.777360,
		0.224640, -0.875687, -0.427445,
		42.248394, 40.939674, 34.324089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404972, 41.282753, 34.390041>,  <42.091148, 41.552654, 34.623302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404972, 41.282753, 34.390041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650150, 40.966705, 34.389023>,  <41.797256, 40.777077, 34.388412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650150, 40.966705, 34.389023>,  <41.404972, 41.282753, 34.390041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650150, 40.966705, 34.389023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721687, -0.561163, 0.405295,
		-0.321661, -0.246587, -0.914182,
		0.612946, -0.790121, -0.002546,
		41.834034, 40.729668, 34.388260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136253, 40.880318, 33.941929>,  <41.404972, 41.282753, 34.390041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136253, 40.880318, 33.941929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356388, 40.648972, 34.182800>,  <41.488468, 40.510162, 34.327324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356388, 40.648972, 34.182800>,  <41.136253, 40.880318, 33.941929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356388, 40.648972, 34.182800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823791, -0.493614, 0.278773,
		0.136011, -0.649488, -0.748108,
		0.550336, -0.578368, 0.602179,
		41.521488, 40.475460, 34.363453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864643, 40.255085, 33.885818>,  <41.136253, 40.880318, 33.941929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864643, 40.255085, 33.885818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078861, 40.243664, 34.223427>,  <41.207394, 40.236813, 34.425991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078861, 40.243664, 34.223427>,  <40.864643, 40.255085, 33.885818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078861, 40.243664, 34.223427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640201, -0.665518, 0.383704,
		0.550758, -0.745836, -0.374692,
		0.535544, -0.028550, 0.844024,
		41.239525, 40.235100, 34.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759518, 39.573517, 34.155888>,  <40.864643, 40.255085, 33.885818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759518, 39.573517, 34.155888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905811, 39.773941, 34.469620>,  <40.993587, 39.894196, 34.657860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905811, 39.773941, 34.469620>,  <40.759518, 39.573517, 34.155888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905811, 39.773941, 34.469620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670338, -0.442804, 0.595459,
		0.645668, -0.743545, 0.173936,
		0.365730, 0.501065, 0.784331,
		41.015530, 39.924259, 34.704918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004803, 39.140884, 34.661377>,  <40.759518, 39.573517, 34.155888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004803, 39.140884, 34.661377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875858, 39.463871, 34.858994>,  <40.798492, 39.657665, 34.977566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875858, 39.463871, 34.858994>,  <41.004803, 39.140884, 34.661377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875858, 39.463871, 34.858994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683292, -0.559679, 0.468904,
		0.655131, -0.186422, 0.732154,
		-0.322358, 0.807469, 0.494044,
		40.779152, 39.706112, 35.007206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279774, 38.526993, 35.065758>,  <41.004803, 39.140884, 34.661377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279774, 38.526993, 35.065758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359615, 38.153122, 34.948090>,  <41.407520, 37.928799, 34.877487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359615, 38.153122, 34.948090>,  <41.279774, 38.526993, 35.065758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359615, 38.153122, 34.948090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296257, 0.343729, -0.891113,
		0.934018, 0.090720, 0.345514,
		0.199605, -0.934677, -0.294173,
		41.419498, 37.872719, 34.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990620, 38.553146, 34.948376>,  <41.279774, 38.526993, 35.065758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990620, 38.553146, 34.948376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827965, 38.259411, 34.730976>,  <41.730373, 38.083168, 34.600536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827965, 38.259411, 34.730976>,  <41.990620, 38.553146, 34.948376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827965, 38.259411, 34.730976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717594, 0.111460, -0.687484,
		0.565426, -0.669568, 0.481635,
		-0.406635, -0.734340, -0.543501,
		41.705975, 38.039108, 34.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420795, 38.135525, 34.651031>,  <41.990620, 38.553146, 34.948376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420795, 38.135525, 34.651031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121151, 38.017632, 34.413727>,  <41.941364, 37.946896, 34.271343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121151, 38.017632, 34.413727>,  <42.420795, 38.135525, 34.651031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121151, 38.017632, 34.413727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631363, -0.046551, -0.774089,
		0.200534, -0.954444, 0.220957,
		-0.749111, -0.294736, -0.593265,
		41.896420, 37.929211, 34.235748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709648, 37.585220, 34.289101>,  <42.420795, 38.135525, 34.651031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709648, 37.585220, 34.289101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400749, 37.699043, 34.061890>,  <42.215408, 37.767338, 33.925564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400749, 37.699043, 34.061890>,  <42.709648, 37.585220, 34.289101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400749, 37.699043, 34.061890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580416, -0.047591, -0.812928,
		-0.258361, -0.957476, -0.128412,
		-0.772248, 0.284561, -0.568030,
		42.169075, 37.784412, 33.891479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821625, 37.186039, 33.712646>,  <42.709648, 37.585220, 34.289101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821625, 37.186039, 33.712646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550919, 37.456722, 33.596672>,  <42.388496, 37.619133, 33.527088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550919, 37.456722, 33.596672>,  <42.821625, 37.186039, 33.712646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550919, 37.456722, 33.596672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373802, -0.023432, -0.927212,
		-0.634242, -0.735882, -0.237096,
		-0.676764, 0.676704, -0.289936,
		42.347889, 37.659733, 33.509693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517094, 36.966469, 33.080421>,  <42.821625, 37.186039, 33.712646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517094, 36.966469, 33.080421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470749, 37.363377, 33.098167>,  <42.442944, 37.601521, 33.108814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470749, 37.363377, 33.098167>,  <42.517094, 36.966469, 33.080421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470749, 37.363377, 33.098167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406147, 0.088093, -0.909552,
		-0.906433, -0.087362, -0.413215,
		-0.115862, 0.992274, 0.044369,
		42.435989, 37.661060, 33.111477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178867, 37.170586, 32.447323>,  <42.517094, 36.966469, 33.080421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178867, 37.170586, 32.447323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379524, 37.484966, 32.591900>,  <42.499920, 37.673595, 32.678646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379524, 37.484966, 32.591900>,  <42.178867, 37.170586, 32.447323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379524, 37.484966, 32.591900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383624, 0.172375, -0.907260,
		-0.775361, 0.593779, -0.215037,
		0.501645, 0.785948, 0.361440,
		42.530018, 37.720749, 32.700333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116276, 37.642494, 31.865932>,  <42.178867, 37.170586, 32.447323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116276, 37.642494, 31.865932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408482, 37.797939, 32.090549>,  <42.583805, 37.891205, 32.225319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408482, 37.797939, 32.090549>,  <42.116276, 37.642494, 31.865932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408482, 37.797939, 32.090549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471917, 0.307079, -0.826436,
		-0.493599, 0.868726, 0.040934,
		0.730516, 0.388610, 0.561541,
		42.627636, 37.914524, 32.259010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284657, 38.330753, 31.609430>,  <42.116276, 37.642494, 31.865932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284657, 38.330753, 31.609430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607006, 38.181175, 31.793049>,  <42.800415, 38.091427, 31.903221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607006, 38.181175, 31.793049>,  <42.284657, 38.330753, 31.609430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607006, 38.181175, 31.793049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571323, 0.287624, -0.768676,
		0.155413, 0.881722, 0.445435,
		0.805876, -0.373950, 0.459048,
		42.848770, 38.068989, 31.930763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867733, 38.983536, 31.623470>,  <42.284657, 38.330753, 31.609430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867733, 38.983536, 31.623470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060703, 38.638550, 31.684700>,  <43.176483, 38.431561, 31.721437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060703, 38.638550, 31.684700>,  <42.867733, 38.983536, 31.623470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060703, 38.638550, 31.684700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699581, 0.274201, -0.659849,
		0.527121, 0.425412, 0.735641,
		0.482421, -0.862461, 0.153073,
		43.205429, 38.379810, 31.730621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511036, 39.184738, 31.417553>,  <42.867733, 38.983536, 31.623470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511036, 39.184738, 31.417553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549606, 38.786674, 31.425203>,  <43.572750, 38.547836, 31.429794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549606, 38.786674, 31.425203>,  <43.511036, 39.184738, 31.417553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549606, 38.786674, 31.425203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659687, 0.049508, -0.749908,
		0.745329, 0.084929, 0.661266,
		0.096427, -0.995156, 0.019126,
		43.578533, 38.488129, 31.430941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149632, 39.032066, 31.420193>,  <43.511036, 39.184738, 31.417553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149632, 39.032066, 31.420193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012058, 38.681698, 31.284857>,  <43.929516, 38.471478, 31.203655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012058, 38.681698, 31.284857>,  <44.149632, 39.032066, 31.420193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012058, 38.681698, 31.284857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574245, 0.088882, -0.813844,
		0.742936, -0.474195, 0.472424,
		-0.343931, -0.875922, -0.338338,
		43.908878, 38.418922, 31.183355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713894, 38.620819, 31.234753>,  <44.149632, 39.032066, 31.420193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713894, 38.620819, 31.234753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410191, 38.470558, 31.022181>,  <44.227970, 38.380402, 30.894638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410191, 38.470558, 31.022181>,  <44.713894, 38.620819, 31.234753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410191, 38.470558, 31.022181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536998, 0.099686, -0.837673,
		0.367648, -0.921385, 0.126036,
		-0.759255, -0.375649, -0.531431,
		44.182415, 38.357864, 30.862751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884285, 37.967617, 30.842600>,  <44.713894, 38.620819, 31.234753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884285, 37.967617, 30.842600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579102, 38.133518, 30.644255>,  <44.395992, 38.233059, 30.525248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579102, 38.133518, 30.644255>,  <44.884285, 37.967617, 30.842600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579102, 38.133518, 30.644255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500508, -0.106468, -0.859160,
		-0.409135, -0.903683, -0.126358,
		-0.762955, 0.414756, -0.495861,
		44.350216, 38.257946, 30.495497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.111092, 41.051018, 27.719757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227650, 41.202076, 28.071320>,  <39.297585, 41.292709, 28.282257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227650, 41.202076, 28.071320>,  <39.111092, 41.051018, 27.719757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227650, 41.202076, 28.071320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692548, -0.550526, 0.466152,
		0.659900, -0.744518, 0.101117,
		0.291391, 0.377642, 0.878907,
		39.315067, 41.315369, 28.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976486, 40.542397, 28.186087>,  <39.111092, 41.051018, 27.719757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976486, 40.542397, 28.186087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030949, 40.845276, 28.441620>,  <39.063629, 41.027004, 28.594940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030949, 40.845276, 28.441620>,  <38.976486, 40.542397, 28.186087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030949, 40.845276, 28.441620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679560, -0.397831, 0.616383,
		0.720874, -0.518054, 0.460393,
		0.136161, 0.757199, 0.638834,
		39.071796, 41.072437, 28.633270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110210, 40.273956, 28.757301>,  <38.976486, 40.542397, 28.186087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110210, 40.273956, 28.757301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023426, 40.636002, 28.903561>,  <38.971355, 40.853230, 28.991316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023426, 40.636002, 28.903561>,  <39.110210, 40.273956, 28.757301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023426, 40.636002, 28.903561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456784, -0.425162, 0.781400,
		0.862716, 0.002507, 0.505683,
		-0.216957, 0.905114, 0.365649,
		38.958340, 40.907536, 29.013256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295765, 40.187794, 29.485001>,  <39.110210, 40.273956, 28.757301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295765, 40.187794, 29.485001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045815, 40.499985, 29.477083>,  <38.895844, 40.687298, 29.472332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045815, 40.499985, 29.477083>,  <39.295765, 40.187794, 29.485001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045815, 40.499985, 29.477083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457233, -0.345292, 0.819580,
		0.632825, 0.521186, 0.572623,
		-0.624876, 0.780473, -0.019794,
		38.858353, 40.734127, 29.471146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345123, 40.581699, 30.140686>,  <39.295765, 40.187794, 29.485001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345123, 40.581699, 30.140686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000526, 40.689121, 29.968309>,  <38.793770, 40.753574, 29.864883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000526, 40.689121, 29.968309>,  <39.345123, 40.581699, 30.140686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000526, 40.689121, 29.968309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496811, -0.270379, 0.824666,
		0.104954, 0.924538, 0.366351,
		-0.861489, 0.268559, -0.430943,
		38.742081, 40.769688, 29.839025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909412, 40.872490, 30.735062>,  <39.345123, 40.581699, 30.140686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909412, 40.872490, 30.735062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627106, 40.817024, 30.457165>,  <38.457722, 40.783745, 30.290426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627106, 40.817024, 30.457165>,  <38.909412, 40.872490, 30.735062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627106, 40.817024, 30.457165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594016, -0.418569, 0.686982,
		-0.386059, 0.897536, 0.213042,
		-0.705764, -0.138665, -0.694744,
		38.415375, 40.775425, 30.248741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330181, 41.119572, 31.105768>,  <38.909412, 40.872490, 30.735062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330181, 41.119572, 31.105768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223961, 40.865993, 30.815226>,  <38.160229, 40.713844, 30.640900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223961, 40.865993, 30.815226>,  <38.330181, 41.119572, 31.105768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223961, 40.865993, 30.815226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779533, -0.302125, 0.548679,
		-0.567284, 0.711921, -0.413953,
		-0.265550, -0.633947, -0.726357,
		38.144295, 40.675808, 30.597319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635708, 41.019104, 31.070950>,  <38.330181, 41.119572, 31.105768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635708, 41.019104, 31.070950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680519, 40.679039, 30.865162>,  <37.707405, 40.475002, 30.741690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680519, 40.679039, 30.865162>,  <37.635708, 41.019104, 31.070950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680519, 40.679039, 30.865162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677384, -0.444135, 0.586426,
		-0.727049, 0.282799, -0.625639,
		0.112028, -0.850158, -0.514472,
		37.714127, 40.423992, 30.710821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972694, 40.742245, 30.906103>,  <37.635708, 41.019104, 31.070950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972694, 40.742245, 30.906103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223362, 40.436909, 30.843376>,  <37.373764, 40.253708, 30.805740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223362, 40.436909, 30.843376>,  <36.972694, 40.742245, 30.906103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223362, 40.436909, 30.843376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692987, -0.637915, 0.335906,
		-0.356450, -0.101828, -0.928749,
		0.626668, -0.763345, -0.156820,
		37.411362, 40.207905, 30.796329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644585, 40.251511, 30.456451>,  <36.972694, 40.742245, 30.906103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644585, 40.251511, 30.456451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927036, 40.046249, 30.651617>,  <37.096508, 39.923092, 30.768717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927036, 40.046249, 30.651617>,  <36.644585, 40.251511, 30.456451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927036, 40.046249, 30.651617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701655, -0.599753, 0.384678,
		0.095227, -0.613977, -0.783559,
		0.706124, -0.513156, 0.487912,
		37.138874, 39.892303, 30.797991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465443, 39.563515, 30.316183>,  <36.644585, 40.251511, 30.456451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465443, 39.563515, 30.316183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667843, 39.579929, 30.660807>,  <36.789284, 39.589779, 30.867580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667843, 39.579929, 30.660807>,  <36.465443, 39.563515, 30.316183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667843, 39.579929, 30.660807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670143, -0.610147, 0.422644,
		0.543023, -0.791224, -0.281230,
		0.505998, 0.041040, 0.861558,
		36.819641, 39.592243, 30.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592651, 38.953629, 30.531103>,  <36.465443, 39.563515, 30.316183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592651, 38.953629, 30.531103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670616, 39.142826, 30.874798>,  <36.717396, 39.256344, 31.081015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670616, 39.142826, 30.874798>,  <36.592651, 38.953629, 30.531103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670616, 39.142826, 30.874798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540172, -0.679446, 0.496555,
		0.818672, -0.560920, 0.123066,
		0.194911, 0.472993, 0.859237,
		36.729088, 39.284725, 31.132568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695992, 38.396973, 30.925018>,  <36.592651, 38.953629, 30.531103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695992, 38.396973, 30.925018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626587, 38.704041, 31.171782>,  <36.584946, 38.888283, 31.319839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626587, 38.704041, 31.171782>,  <36.695992, 38.396973, 30.925018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626587, 38.704041, 31.171782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557725, -0.592874, 0.580898,
		0.811688, -0.243274, 0.531019,
		-0.173509, 0.767671, 0.616909,
		36.574535, 38.934341, 31.356853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715916, 38.039219, 31.559278>,  <36.695992, 38.396973, 30.925018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715916, 38.039219, 31.559278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.534908, 38.388401, 31.632128>,  <36.426304, 38.597912, 31.675837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.534908, 38.388401, 31.632128>,  <36.715916, 38.039219, 31.559278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534908, 38.388401, 31.632128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644537, -0.461317, 0.609720,
		0.616276, 0.158526, 0.771410,
		-0.452521, 0.872958, 0.182123,
		36.399151, 38.650288, 31.686764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382374, 37.642101, 31.700508>,  <36.715916, 38.039219, 31.559278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382374, 37.642101, 31.700508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373043, 37.246185, 31.644268>,  <37.367443, 37.008636, 31.610523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373043, 37.246185, 31.644268>,  <37.382374, 37.642101, 31.700508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373043, 37.246185, 31.644268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456435, 0.114583, -0.882348,
		0.889451, -0.084757, 0.449103,
		-0.023325, -0.989791, -0.140602,
		37.366047, 36.949249, 31.602087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087337, 37.412334, 31.619856>,  <37.382374, 37.642101, 31.700508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087337, 37.412334, 31.619856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831570, 37.165981, 31.435753>,  <37.678108, 37.018169, 31.325291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831570, 37.165981, 31.435753>,  <38.087337, 37.412334, 31.619856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831570, 37.165981, 31.435753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509835, 0.108446, -0.853409,
		0.575512, -0.780339, 0.244656,
		-0.639417, -0.615882, -0.460256,
		37.639744, 36.981216, 31.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477207, 36.967010, 31.332861>,  <38.087337, 37.412334, 31.619856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477207, 36.967010, 31.332861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131191, 36.960274, 31.132292>,  <37.923584, 36.956230, 31.011950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131191, 36.960274, 31.132292>,  <38.477207, 36.967010, 31.332861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131191, 36.960274, 31.132292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483552, 0.238434, -0.842215,
		0.133739, -0.971013, -0.198111,
		-0.865038, -0.016840, -0.501423,
		37.871681, 36.955219, 30.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552521, 36.616024, 30.655804>,  <38.477207, 36.967010, 31.332861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552521, 36.616024, 30.655804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211224, 36.807945, 30.574060>,  <38.006443, 36.923096, 30.525015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211224, 36.807945, 30.574060>,  <38.552521, 36.616024, 30.655804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211224, 36.807945, 30.574060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410156, 0.375379, -0.831181,
		-0.322090, -0.793020, -0.517084,
		-0.853246, 0.479801, -0.204356,
		37.955250, 36.951885, 30.512754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440441, 36.495232, 29.879898>,  <38.552521, 36.616024, 30.655804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440441, 36.495232, 29.879898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230667, 36.807606, 30.015612>,  <38.104805, 36.995029, 30.097040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230667, 36.807606, 30.015612>,  <38.440441, 36.495232, 29.879898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230667, 36.807606, 30.015612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323564, 0.551371, -0.768958,
		-0.787577, -0.293486, -0.541838,
		-0.524432, 0.780933, 0.339285,
		38.073338, 37.041885, 30.117397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072853, 36.707405, 29.325302>,  <38.440441, 36.495232, 29.879898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072853, 36.707405, 29.325302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112160, 37.032509, 29.555006>,  <38.135742, 37.227570, 29.692827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112160, 37.032509, 29.555006>,  <38.072853, 36.707405, 29.325302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112160, 37.032509, 29.555006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360229, 0.508869, -0.781849,
		-0.927674, 0.283691, -0.242776,
		0.098262, 0.812756, 0.574258,
		38.141640, 37.276337, 29.727283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881004, 37.239807, 28.778191>,  <38.072853, 36.707405, 29.325302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881004, 37.239807, 28.778191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045383, 37.437523, 29.084602>,  <38.144009, 37.556152, 29.268450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045383, 37.437523, 29.084602>,  <37.881004, 37.239807, 28.778191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045383, 37.437523, 29.084602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462025, 0.611437, -0.642400,
		-0.785911, 0.617916, 0.022892,
		0.410946, 0.494292, 0.766028,
		38.168667, 37.585812, 29.314411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773426, 37.969048, 28.666134>,  <37.881004, 37.239807, 28.778191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773426, 37.969048, 28.666134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084820, 37.929897, 28.914129>,  <38.271656, 37.906406, 29.062927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084820, 37.929897, 28.914129>,  <37.773426, 37.969048, 28.666134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084820, 37.929897, 28.914129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532514, 0.625873, -0.569835,
		-0.332259, 0.773759, 0.539352,
		0.778481, -0.097880, 0.619989,
		38.318363, 37.900532, 29.100126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061413, 38.638145, 28.741203>,  <37.773426, 37.969048, 28.666134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061413, 38.638145, 28.741203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348400, 38.376560, 28.837175>,  <38.520592, 38.219608, 28.894758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348400, 38.376560, 28.837175>,  <38.061413, 38.638145, 28.741203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348400, 38.376560, 28.837175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658778, 0.525074, -0.538803,
		0.226375, 0.544638, 0.807542,
		0.717472, -0.653963, 0.239932,
		38.563641, 38.180370, 28.909155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635059, 39.050888, 28.899693>,  <38.061413, 38.638145, 28.741203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635059, 39.050888, 28.899693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786922, 38.688980, 28.822491>,  <38.878040, 38.471836, 28.776171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786922, 38.688980, 28.822491>,  <38.635059, 39.050888, 28.899693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786922, 38.688980, 28.822491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798545, 0.425836, -0.425428,
		0.467102, 0.007396, 0.884172,
		0.379659, -0.904770, -0.193003,
		38.900822, 38.417549, 28.764589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381618, 39.092125, 29.038734>,  <38.635059, 39.050888, 28.899693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381618, 39.092125, 29.038734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377171, 38.775280, 28.794624>,  <39.374504, 38.585175, 28.648159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377171, 38.775280, 28.794624>,  <39.381618, 39.092125, 29.038734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377171, 38.775280, 28.794624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879215, 0.282964, -0.383291,
		0.476295, -0.540822, 0.693292,
		-0.011116, -0.792113, -0.610274,
		39.373837, 38.537647, 28.611542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064812, 38.624371, 29.169365>,  <39.381618, 39.092125, 29.038734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064812, 38.624371, 29.169365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912445, 38.553959, 28.806284>,  <39.821026, 38.511711, 28.588436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912445, 38.553959, 28.806284>,  <40.064812, 38.624371, 29.169365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912445, 38.553959, 28.806284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849677, 0.320505, -0.418718,
		0.364630, -0.930747, 0.027484,
		-0.380912, -0.176030, -0.907700,
		39.798172, 38.501148, 28.533974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611572, 38.409054, 28.843540>,  <40.064812, 38.624371, 29.169365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611572, 38.409054, 28.843540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366695, 38.498486, 28.540163>,  <40.219769, 38.552143, 28.358137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366695, 38.498486, 28.540163>,  <40.611572, 38.409054, 28.843540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366695, 38.498486, 28.540163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787636, 0.256943, -0.560008,
		0.069671, -0.940209, -0.333395,
		-0.612189, 0.223578, -0.758445,
		40.183041, 38.565559, 28.312630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985401, 38.294209, 28.120934>,  <40.611572, 38.409054, 28.843540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985401, 38.294209, 28.120934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658443, 38.491104, 28.001225>,  <40.462269, 38.609241, 27.929399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658443, 38.491104, 28.001225>,  <40.985401, 38.294209, 28.120934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658443, 38.491104, 28.001225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494118, 0.332001, -0.803506,
		-0.296156, -0.804660, -0.514600,
		-0.817397, 0.492237, -0.299273,
		40.413223, 38.638775, 27.911442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760780, 37.543892, 27.940435>,  <40.985401, 38.294209, 28.120934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760780, 37.543892, 27.940435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933308, 37.246529, 27.735960>,  <41.036823, 37.068111, 27.613276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933308, 37.246529, 27.735960>,  <40.760780, 37.543892, 27.940435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933308, 37.246529, 27.735960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221628, -0.636544, 0.738710,
		-0.874554, -0.205327, -0.439313,
		0.431319, -0.743406, -0.511186,
		41.062702, 37.023506, 27.582603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229691, 37.013287, 27.916023>,  <40.760780, 37.543892, 27.940435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229691, 37.013287, 27.916023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576767, 36.827656, 27.844755>,  <40.785011, 36.716278, 27.801994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576767, 36.827656, 27.844755>,  <40.229691, 37.013287, 27.916023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576767, 36.827656, 27.844755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188011, -0.638160, 0.746595,
		-0.460176, -0.614317, -0.640978,
		0.867692, -0.464076, -0.178168,
		40.837074, 36.688435, 27.791304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030746, 36.339096, 27.865702>,  <40.229691, 37.013287, 27.916023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030746, 36.339096, 27.865702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424969, 36.361961, 27.929472>,  <40.661503, 36.375679, 27.967733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424969, 36.361961, 27.929472>,  <40.030746, 36.339096, 27.865702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424969, 36.361961, 27.929472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059085, -0.766142, 0.639950,
		0.158722, -0.640124, -0.751697,
		0.985554, 0.057160, 0.159425,
		40.720634, 36.379108, 27.977299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257931, 35.651001, 27.710272>,  <40.030746, 36.339096, 27.865702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257931, 35.651001, 27.710272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521954, 35.827282, 27.953619>,  <40.680367, 35.933052, 28.099627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521954, 35.827282, 27.953619>,  <40.257931, 35.651001, 27.710272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521954, 35.827282, 27.953619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182638, -0.691401, 0.699005,
		0.728678, -0.572493, -0.375873,
		0.660055, 0.440701, 0.608367,
		40.719971, 35.959492, 28.136129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570858, 35.053425, 27.982607>,  <40.257931, 35.651001, 27.710272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570858, 35.053425, 27.982607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650623, 35.363186, 28.222786>,  <40.698483, 35.549042, 28.366894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650623, 35.363186, 28.222786>,  <40.570858, 35.053425, 27.982607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650623, 35.363186, 28.222786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, -0.560399, 0.797258,
		0.953888, -0.293691, 0.061988,
		0.199410, 0.774402, 0.600448,
		40.710445, 35.595505, 28.402920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088017, 34.785915, 28.491695>,  <40.570858, 35.053425, 27.982607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088017, 34.785915, 28.491695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953873, 35.112453, 28.679785>,  <40.873386, 35.308376, 28.792639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953873, 35.112453, 28.679785>,  <41.088017, 34.785915, 28.491695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953873, 35.112453, 28.679785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065089, -0.518011, 0.852894,
		0.939838, 0.255422, 0.226856,
		-0.335362, 0.816348, 0.470222,
		40.853264, 35.357357, 28.820850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522751, 34.807781, 29.044405>,  <41.088017, 34.785915, 28.491695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522751, 34.807781, 29.044405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186615, 35.013802, 29.112003>,  <40.984936, 35.137413, 29.152561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186615, 35.013802, 29.112003>,  <41.522751, 34.807781, 29.044405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186615, 35.013802, 29.112003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126539, -0.489539, 0.862751,
		0.527087, 0.703618, 0.476552,
		-0.840338, 0.515047, 0.168994,
		40.934513, 35.168316, 29.162701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578178, 35.113087, 29.771112>,  <41.522751, 34.807781, 29.044405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578178, 35.113087, 29.771112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.188648, 35.107655, 29.680357>,  <40.954929, 35.104393, 29.625904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.188648, 35.107655, 29.680357>,  <41.578178, 35.113087, 29.771112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188648, 35.107655, 29.680357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213826, -0.283747, 0.934755,
		-0.077077, 0.958803, 0.273415,
		-0.973826, -0.013585, -0.226888,
		40.896500, 35.103580, 29.612291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277191, 35.523697, 30.351355>,  <41.578178, 35.113087, 29.771112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277191, 35.523697, 30.351355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993011, 35.295219, 30.186913>,  <40.822506, 35.158134, 30.088247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993011, 35.295219, 30.186913>,  <41.277191, 35.523697, 30.351355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993011, 35.295219, 30.186913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221403, -0.373089, 0.900992,
		-0.668019, 0.731124, 0.138595,
		-0.710445, -0.571194, -0.411103,
		40.779877, 35.123859, 30.063581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665878, 35.641048, 30.734898>,  <41.277191, 35.523697, 30.351355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665878, 35.641048, 30.734898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.607422, 35.295059, 30.542871>,  <40.572350, 35.087467, 30.427656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.607422, 35.295059, 30.542871>,  <40.665878, 35.641048, 30.734898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607422, 35.295059, 30.542871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199990, -0.449424, 0.870645,
		-0.968838, 0.223243, -0.107308,
		-0.146138, -0.864974, -0.480065,
		40.563580, 35.035568, 30.398851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993252, 35.501289, 30.818501>,  <40.665878, 35.641048, 30.734898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993252, 35.501289, 30.818501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184601, 35.155285, 30.757959>,  <40.299412, 34.947681, 30.721636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184601, 35.155285, 30.757959>,  <39.993252, 35.501289, 30.818501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184601, 35.155285, 30.757959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176704, -0.263645, 0.948297,
		-0.860193, -0.426898, -0.278973,
		0.478376, -0.865014, -0.151351,
		40.328114, 34.895782, 30.712553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561516, 35.149368, 31.077648>,  <39.993252, 35.501289, 30.818501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561516, 35.149368, 31.077648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891716, 34.923676, 31.083282>,  <40.089836, 34.788261, 31.086664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891716, 34.923676, 31.083282>,  <39.561516, 35.149368, 31.077648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891716, 34.923676, 31.083282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307438, -0.428586, 0.849586,
		-0.473328, -0.705659, -0.527263,
		0.825496, -0.564233, 0.014085,
		40.139366, 34.754406, 31.087509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374031, 34.520775, 31.394936>,  <39.561516, 35.149368, 31.077648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374031, 34.520775, 31.394936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773418, 34.524288, 31.416782>,  <40.013050, 34.526398, 31.429890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773418, 34.524288, 31.416782>,  <39.374031, 34.520775, 31.394936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773418, 34.524288, 31.416782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050372, -0.263671, 0.963296,
		0.022861, -0.964572, -0.262825,
		0.998469, 0.008783, 0.054616,
		40.072960, 34.526924, 31.433167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562157, 33.874496, 31.530540>,  <39.374031, 34.520775, 31.394936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562157, 33.874496, 31.530540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838665, 34.134838, 31.656099>,  <40.004570, 34.291042, 31.731434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838665, 34.134838, 31.656099>,  <39.562157, 33.874496, 31.530540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838665, 34.134838, 31.656099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161987, -0.283766, 0.945112,
		0.704207, -0.704174, -0.090729,
		0.691269, 0.650858, 0.313897,
		40.046047, 34.330097, 31.750269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.878036, 37.560093, 30.124193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.655251, 37.889183, 30.078743>,  <44.521580, 38.086639, 30.051472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.655251, 37.889183, 30.078743>,  <44.878036, 37.560093, 30.124193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655251, 37.889183, 30.078743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338743, 0.100112, -0.935538,
		-0.758317, -0.559551, -0.334452,
		-0.556964, 0.822727, -0.113627,
		44.488163, 38.136002, 30.044655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698597, 37.489681, 29.548725>,  <44.878036, 37.560093, 30.124193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698597, 37.489681, 29.548725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.625050, 37.880699, 29.589916>,  <44.580921, 38.115311, 29.614632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.625050, 37.880699, 29.589916>,  <44.698597, 37.489681, 29.548725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625050, 37.880699, 29.589916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422495, 0.173191, -0.889665,
		-0.887519, -0.120073, -0.444851,
		-0.183869, 0.977542, 0.102980,
		44.569889, 38.173962, 29.620810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402691, 37.713161, 28.987318>,  <44.698597, 37.489681, 29.548725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402691, 37.713161, 28.987318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.526703, 38.078110, 29.094248>,  <44.601109, 38.297077, 29.158405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.526703, 38.078110, 29.094248>,  <44.402691, 37.713161, 28.987318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526703, 38.078110, 29.094248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345919, 0.153653, -0.925598,
		-0.885563, 0.379435, -0.267970,
		0.310030, 0.912370, 0.267323,
		44.619713, 38.351822, 29.174444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195927, 38.169083, 28.467548>,  <44.402691, 37.713161, 28.987318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195927, 38.169083, 28.467548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.450756, 38.407204, 28.663404>,  <44.603653, 38.550076, 28.780918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.450756, 38.407204, 28.663404>,  <44.195927, 38.169083, 28.467548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450756, 38.407204, 28.663404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382486, 0.307356, -0.871342,
		-0.669206, 0.742392, -0.031885,
		0.637077, 0.595303, 0.489639,
		44.641880, 38.585796, 28.810297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144524, 38.912979, 28.254194>,  <44.195927, 38.169083, 28.467548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144524, 38.912979, 28.254194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515511, 38.879536, 28.399971>,  <44.738102, 38.859470, 28.487438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515511, 38.879536, 28.399971>,  <44.144524, 38.912979, 28.254194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515511, 38.879536, 28.399971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367195, 0.387587, -0.845544,
		-0.070555, 0.918033, 0.390175,
		0.927464, -0.083613, 0.364443,
		44.793751, 38.854450, 28.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567097, 39.599785, 28.215054>,  <44.144524, 38.912979, 28.254194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567097, 39.599785, 28.215054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.847290, 39.314404, 28.222029>,  <45.015408, 39.143173, 28.226213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.847290, 39.314404, 28.222029>,  <44.567097, 39.599785, 28.215054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847290, 39.314404, 28.222029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424496, 0.396889, -0.813807,
		0.573691, 0.577464, 0.580874,
		0.700487, -0.713453, 0.017439,
		45.057434, 39.100368, 28.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141430, 39.931561, 28.012636>,  <44.567097, 39.599785, 28.215054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141430, 39.931561, 28.012636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244480, 39.548550, 27.960840>,  <45.306309, 39.318741, 27.929762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244480, 39.548550, 27.960840>,  <45.141430, 39.931561, 28.012636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244480, 39.548550, 27.960840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513833, 0.249260, -0.820881,
		0.818294, 0.144942, 0.556226,
		0.257625, -0.957529, -0.129492,
		45.321766, 39.261292, 27.921993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917435, 39.966305, 27.931475>,  <45.141430, 39.931561, 28.012636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917435, 39.966305, 27.931475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.735600, 39.649399, 27.768669>,  <45.626499, 39.459255, 27.670986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.735600, 39.649399, 27.768669>,  <45.917435, 39.966305, 27.931475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735600, 39.649399, 27.768669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391980, 0.232383, -0.890141,
		0.799811, -0.564192, 0.204913,
		-0.454592, -0.792266, -0.407014,
		45.599220, 39.411720, 27.646564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337254, 39.811272, 27.446468>,  <45.917435, 39.966305, 27.931475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337254, 39.811272, 27.446468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.029446, 39.583588, 27.330650>,  <45.844761, 39.446976, 27.261160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.029446, 39.583588, 27.330650>,  <46.337254, 39.811272, 27.446468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029446, 39.583588, 27.330650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254128, 0.143016, -0.956538,
		0.585883, -0.809657, 0.034599,
		-0.769520, -0.569212, -0.289547,
		45.798588, 39.412823, 27.243786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645721, 39.412323, 26.959805>,  <46.337254, 39.811272, 27.446468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645721, 39.412323, 26.959805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.252014, 39.413818, 26.889153>,  <46.015789, 39.414715, 26.846762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.252014, 39.413818, 26.889153>,  <46.645721, 39.412323, 26.959805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252014, 39.413818, 26.889153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170892, 0.273702, -0.946511,
		0.044801, -0.961807, -0.270037,
		-0.984270, 0.003742, -0.176628,
		45.956734, 39.414940, 26.836164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528503, 39.087212, 26.296267>,  <46.645721, 39.412323, 26.959805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528503, 39.087212, 26.296267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.216480, 39.327003, 26.367970>,  <46.029266, 39.470879, 26.410992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.216480, 39.327003, 26.367970>,  <46.528503, 39.087212, 26.296267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216480, 39.327003, 26.367970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114398, 0.418296, -0.901078,
		-0.615164, -0.682383, -0.394874,
		-0.780055, 0.599484, 0.179257,
		45.982464, 39.506847, 26.421747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230648, 39.196133, 25.613068>,  <46.528503, 39.087212, 26.296267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230648, 39.196133, 25.613068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.042389, 39.485130, 25.815649>,  <45.929432, 39.658527, 25.937199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.042389, 39.485130, 25.815649>,  <46.230648, 39.196133, 25.613068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042389, 39.485130, 25.815649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037989, 0.590065, -0.806462,
		-0.881501, -0.360322, -0.305161,
		-0.470651, 0.722490, 0.506455,
		45.901192, 39.701878, 25.967585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060642, 39.435265, 24.920416>,  <46.230648, 39.196133, 25.613068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060642, 39.435265, 24.920416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.970955, 39.699406, 25.207094>,  <45.917145, 39.857891, 25.379101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.970955, 39.699406, 25.207094>,  <46.060642, 39.435265, 24.920416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970955, 39.699406, 25.207094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027263, 0.739385, -0.672731,
		-0.974158, -0.131298, -0.183786,
		-0.224216, 0.660357, 0.716698,
		45.903690, 39.897514, 25.422104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320007, 39.244804, 24.703545>,  <46.060642, 39.435265, 24.920416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320007, 39.244804, 24.703545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.584538, 39.075375, 24.951168>,  <45.743256, 38.973717, 25.099741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.584538, 39.075375, 24.951168>,  <45.320007, 39.244804, 24.703545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584538, 39.075375, 24.951168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715384, -0.108001, 0.690335,
		-0.225550, -0.899400, -0.374443,
		0.661327, -0.423576, 0.619057,
		45.782936, 38.948303, 25.136885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667385, 39.172832, 24.254818>,  <45.320007, 39.244804, 24.703545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667385, 39.172832, 24.254818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373463, 39.378780, 24.078197>,  <44.197109, 39.502350, 23.972225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373463, 39.378780, 24.078197>,  <44.667385, 39.172832, 24.254818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373463, 39.378780, 24.078197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676375, -0.507493, 0.533824,
		0.050767, 0.690910, 0.721156,
		-0.734806, 0.514872, -0.441550,
		44.153019, 39.533241, 23.945732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242199, 39.290585, 24.733692>,  <44.667385, 39.172832, 24.254818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242199, 39.290585, 24.733692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011292, 39.392704, 24.423445>,  <43.872746, 39.453976, 24.237297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011292, 39.392704, 24.423445>,  <44.242199, 39.290585, 24.733692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011292, 39.392704, 24.423445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771825, -0.480667, 0.416229,
		-0.266550, 0.838917, 0.474521,
		-0.577268, 0.255301, -0.775618,
		43.838112, 39.469296, 24.190760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580219, 39.607338, 24.966543>,  <44.242199, 39.290585, 24.733692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580219, 39.607338, 24.966543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.542423, 39.434666, 24.607718>,  <43.519745, 39.331062, 24.392422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.542423, 39.434666, 24.607718>,  <43.580219, 39.607338, 24.966543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542423, 39.434666, 24.607718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821217, -0.475562, 0.315346,
		-0.562738, 0.766483, -0.309565,
		-0.094490, -0.431677, -0.897066,
		43.514076, 39.305164, 24.338598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898319, 39.765812, 24.735857>,  <43.580219, 39.607338, 24.966543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898319, 39.765812, 24.735857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041130, 39.430584, 24.570848>,  <43.126816, 39.229446, 24.471844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041130, 39.430584, 24.570848>,  <42.898319, 39.765812, 24.735857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041130, 39.430584, 24.570848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838257, -0.482312, 0.254363,
		-0.412137, 0.254984, -0.874715,
		0.357027, -0.838068, -0.412520,
		43.148239, 39.179165, 24.447092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371407, 39.457775, 24.369244>,  <42.898319, 39.765812, 24.735857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371407, 39.457775, 24.369244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.602013, 39.132168, 24.397520>,  <42.740376, 38.936802, 24.414486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.602013, 39.132168, 24.397520>,  <42.371407, 39.457775, 24.369244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602013, 39.132168, 24.397520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783259, -0.525945, 0.331492,
		-0.232660, -0.246482, -0.940806,
		0.576519, -0.814020, 0.070693,
		42.774967, 38.887962, 24.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891884, 38.891796, 24.155704>,  <42.371407, 39.457775, 24.369244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891884, 38.891796, 24.155704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205074, 38.700142, 24.314390>,  <42.392986, 38.585148, 24.409601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205074, 38.700142, 24.314390>,  <41.891884, 38.891796, 24.155704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205074, 38.700142, 24.314390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613034, -0.702560, 0.361383,
		0.105565, -0.526153, -0.843812,
		0.782972, -0.479136, 0.396716,
		42.439964, 38.556400, 24.433405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674942, 38.127113, 24.130066>,  <41.891884, 38.891796, 24.155704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674942, 38.127113, 24.130066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.963081, 38.133362, 24.407440>,  <42.135963, 38.137112, 24.573866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.963081, 38.133362, 24.407440>,  <41.674942, 38.127113, 24.130066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963081, 38.133362, 24.407440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507161, -0.670146, 0.541934,
		0.473168, -0.742065, -0.474817,
		0.720347, 0.015617, 0.693438,
		42.179184, 38.138046, 24.615471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733246, 37.485069, 24.384249>,  <41.674942, 38.127113, 24.130066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733246, 37.485069, 24.384249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928375, 37.691517, 24.665857>,  <42.045452, 37.815384, 24.834824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928375, 37.691517, 24.665857>,  <41.733246, 37.485069, 24.384249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928375, 37.691517, 24.665857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346029, -0.626099, 0.698758,
		0.801429, -0.584486, -0.126837,
		0.487827, 0.516116, 0.704024,
		42.074722, 37.846352, 24.877064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932240, 36.962807, 24.878761>,  <41.733246, 37.485069, 24.384249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932240, 36.962807, 24.878761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.966946, 37.309547, 25.075148>,  <41.987770, 37.517590, 25.192980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.966946, 37.309547, 25.075148>,  <41.932240, 36.962807, 24.878761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966946, 37.309547, 25.075148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307141, -0.445541, 0.840926,
		0.947701, -0.223756, 0.227588,
		0.086762, 0.866849, 0.490965,
		41.992973, 37.569603, 25.222437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328365, 36.869225, 25.503807>,  <41.932240, 36.962807, 24.878761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328365, 36.869225, 25.503807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133945, 37.211021, 25.577122>,  <42.017292, 37.416100, 25.621111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133945, 37.211021, 25.577122>,  <42.328365, 36.869225, 25.503807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133945, 37.211021, 25.577122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234054, -0.329344, 0.914741,
		0.842007, 0.401710, 0.360075,
		-0.486049, 0.854495, 0.183288,
		41.988132, 37.467369, 25.632109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343197, 36.918163, 26.109953>,  <42.328365, 36.869225, 25.503807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343197, 36.918163, 26.109953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.046745, 37.182991, 26.065426>,  <41.868874, 37.341888, 26.038710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.046745, 37.182991, 26.065426>,  <42.343197, 36.918163, 26.109953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046745, 37.182991, 26.065426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442895, -0.357535, 0.822200,
		0.504555, 0.658657, 0.558207,
		-0.741127, 0.662072, -0.111320,
		41.824406, 37.381611, 26.032030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402840, 37.352432, 26.623148>,  <42.343197, 36.918163, 26.109953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402840, 37.352432, 26.623148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022377, 37.389221, 26.505272>,  <41.794098, 37.411293, 26.434546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022377, 37.389221, 26.505272>,  <42.402840, 37.352432, 26.623148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022377, 37.389221, 26.505272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300840, -0.490275, 0.818001,
		-0.069249, 0.866702, 0.493996,
		-0.951157, 0.091968, -0.294689,
		41.737030, 37.416813, 26.416864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046413, 37.657173, 27.211790>,  <42.402840, 37.352432, 26.623148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046413, 37.657173, 27.211790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.766766, 37.480778, 26.986662>,  <41.598976, 37.374939, 26.851585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.766766, 37.480778, 26.986662>,  <42.046413, 37.657173, 27.211790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766766, 37.480778, 26.986662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434255, -0.363465, 0.824206,
		-0.568032, 0.820622, 0.062602,
		-0.699116, -0.440990, -0.562819,
		41.557030, 37.348480, 26.817816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455997, 37.852833, 27.531269>,  <42.046413, 37.657173, 27.211790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455997, 37.852833, 27.531269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388119, 37.497574, 27.360439>,  <41.347389, 37.284416, 27.257942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388119, 37.497574, 27.360439>,  <41.455997, 37.852833, 27.531269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388119, 37.497574, 27.360439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490429, -0.299779, 0.818298,
		-0.854799, 0.348316, -0.384701,
		-0.169701, -0.888149, -0.427075,
		41.337208, 37.231129, 27.232317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823074, 38.070503, 27.337852>,  <41.455997, 37.852833, 27.531269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823074, 38.070503, 27.337852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.691097, 38.432220, 27.446222>,  <40.611912, 38.649250, 27.511244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.691097, 38.432220, 27.446222>,  <40.823074, 38.070503, 27.337852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691097, 38.432220, 27.446222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628637, 0.424577, -0.651575,
		-0.704241, -0.044666, -0.708555,
		-0.329939, 0.904289, 0.270926,
		40.592117, 38.703506, 27.527500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612556, 38.507870, 26.738295>,  <40.823074, 38.070503, 27.337852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612556, 38.507870, 26.738295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.687775, 38.784260, 27.017490>,  <40.732906, 38.950096, 27.185007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.687775, 38.784260, 27.017490>,  <40.612556, 38.507870, 26.738295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687775, 38.784260, 27.017490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483360, 0.553539, -0.678202,
		-0.854987, 0.464911, -0.229902,
		0.188044, 0.690980, 0.697988,
		40.744186, 38.991554, 27.226887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615761, 39.091087, 26.394629>,  <40.612556, 38.507870, 26.738295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615761, 39.091087, 26.394629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796932, 39.201527, 26.733715>,  <40.905636, 39.267792, 26.937166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796932, 39.201527, 26.733715>,  <40.615761, 39.091087, 26.394629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796932, 39.201527, 26.733715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592887, 0.616840, -0.517681,
		-0.665837, 0.737073, 0.115691,
		0.452932, 0.276099, 0.847716,
		40.932812, 39.284355, 26.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522682, 39.837280, 26.444935>,  <40.615761, 39.091087, 26.394629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522682, 39.837280, 26.444935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835140, 39.770443, 26.685562>,  <41.022617, 39.730339, 26.829939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835140, 39.770443, 26.685562>,  <40.522682, 39.837280, 26.444935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835140, 39.770443, 26.685562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377423, 0.893918, -0.241789,
		-0.497352, 0.415919, 0.761349,
		0.781148, -0.167096, 0.601570,
		41.069485, 39.720314, 26.866034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691231, 40.430431, 26.499153>,  <40.522682, 39.837280, 26.444935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691231, 40.430431, 26.499153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.019089, 40.249039, 26.639172>,  <41.215805, 40.140202, 26.723183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.019089, 40.249039, 26.639172>,  <40.691231, 40.430431, 26.499153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019089, 40.249039, 26.639172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556670, 0.774772, -0.299744,
		-0.135277, 0.440544, 0.887480,
		0.819645, -0.453485, 0.350047,
		41.264984, 40.112991, 26.744186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189392, 41.017570, 26.678980>,  <40.691231, 40.430431, 26.499153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189392, 41.017570, 26.678980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433746, 40.701298, 26.662786>,  <41.580357, 40.511532, 26.653070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433746, 40.701298, 26.662786>,  <41.189392, 41.017570, 26.678980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433746, 40.701298, 26.662786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748548, 0.593472, -0.295748,
		0.257870, 0.150362, 0.954408,
		0.610884, -0.790684, -0.040486,
		41.617012, 40.464092, 26.650640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724335, 41.291828, 26.917107>,  <41.189392, 41.017570, 26.678980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724335, 41.291828, 26.917107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841503, 40.969612, 26.711075>,  <41.911804, 40.776283, 26.587456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841503, 40.969612, 26.711075>,  <41.724335, 41.291828, 26.917107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841503, 40.969612, 26.711075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820811, 0.488145, -0.296621,
		0.490372, -0.335895, 0.804182,
		0.292924, -0.805536, -0.515079,
		41.929379, 40.727951, 26.556551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288185, 41.638878, 27.491919>,  <41.724335, 41.291828, 26.917107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288185, 41.638878, 27.491919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099670, 41.991070, 27.512451>,  <41.986561, 42.202385, 27.524771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099670, 41.991070, 27.512451>,  <42.288185, 41.638878, 27.491919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099670, 41.991070, 27.512451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755488, -0.433046, 0.491640,
		0.455110, 0.192924, 0.869285,
		-0.471289, 0.880484, 0.051331,
		41.958282, 42.255215, 27.527851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062847, 41.724304, 28.244612>,  <42.288185, 41.638878, 27.491919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062847, 41.724304, 28.244612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846542, 41.971615, 28.016470>,  <41.716759, 42.120003, 27.879585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846542, 41.971615, 28.016470>,  <42.062847, 41.724304, 28.244612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846542, 41.971615, 28.016470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835694, -0.317605, 0.448044,
		0.095869, 0.718928, 0.688442,
		-0.540764, 0.618280, -0.570355,
		41.684315, 42.157101, 27.845364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605240, 42.140446, 28.759911>,  <42.062847, 41.724304, 28.244612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605240, 42.140446, 28.759911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440823, 42.153664, 28.395504>,  <41.342171, 42.161594, 28.176861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440823, 42.153664, 28.395504>,  <41.605240, 42.140446, 28.759911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440823, 42.153664, 28.395504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888814, -0.236637, 0.392444,
		-0.202612, 0.971036, 0.126639,
		-0.411045, 0.033045, -0.911016,
		41.317509, 42.163578, 28.122200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967590, 42.470871, 28.876328>,  <41.605240, 42.140446, 28.759911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967590, 42.470871, 28.876328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.901138, 42.291615, 28.524971>,  <40.861267, 42.184063, 28.314157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.901138, 42.291615, 28.524971>,  <40.967590, 42.470871, 28.876328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901138, 42.291615, 28.524971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910245, -0.272921, 0.311398,
		-0.379281, 0.851285, -0.362574,
		-0.166135, -0.448138, -0.878392,
		40.851299, 42.157173, 28.261454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289032, 42.767353, 28.636471>,  <40.967590, 42.470871, 28.876328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289032, 42.767353, 28.636471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360706, 42.424534, 28.443241>,  <40.403709, 42.218842, 28.327303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360706, 42.424534, 28.443241>,  <40.289032, 42.767353, 28.636471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360706, 42.424534, 28.443241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889181, -0.351208, 0.293274,
		-0.421010, 0.376989, -0.825003,
		0.179187, -0.857048, -0.483074,
		40.414463, 42.167419, 28.298319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693153, 42.615551, 28.043982>,  <40.289032, 42.767353, 28.636471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693153, 42.615551, 28.043982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871071, 42.268734, 28.133778>,  <39.977821, 42.060642, 28.187654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871071, 42.268734, 28.133778>,  <39.693153, 42.615551, 28.043982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871071, 42.268734, 28.133778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894507, -0.442624, 0.062780,
		0.044931, -0.228732, -0.972452,
		0.444790, -0.867044, 0.224490,
		40.004509, 42.008621, 28.201124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305344, 42.040073, 27.654224>,  <39.693153, 42.615551, 28.043982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305344, 42.040073, 27.654224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.492722, 41.886742, 27.972626>,  <39.605148, 41.794743, 28.163666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.492722, 41.886742, 27.972626>,  <39.305344, 42.040073, 27.654224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492722, 41.886742, 27.972626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871839, -0.346430, 0.346242,
		0.143034, -0.856180, -0.496484,
		0.468442, -0.383329, 0.796002,
		39.633255, 41.771744, 28.211426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.401875, 42.604687, 27.023375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.541512, 42.971077, 27.102486>,  <45.625294, 43.190910, 27.149952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.541512, 42.971077, 27.102486>,  <45.401875, 42.604687, 27.023375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541512, 42.971077, 27.102486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315665, -0.083775, 0.945165,
		0.882321, -0.392381, 0.259898,
		0.349092, 0.915980, 0.197777,
		45.646240, 43.245872, 27.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930332, 42.159138, 27.478523>,  <45.401875, 42.604687, 27.023375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930332, 42.159138, 27.478523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.240215, 41.915867, 27.547752>,  <45.426144, 41.769905, 27.589291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.240215, 41.915867, 27.547752>,  <44.930332, 42.159138, 27.478523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240215, 41.915867, 27.547752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345580, -0.178009, 0.921351,
		-0.529536, -0.773585, -0.348078,
		0.774704, -0.608177, 0.173073,
		45.472626, 41.733414, 27.599674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703007, 41.602943, 27.823397>,  <44.930332, 42.159138, 27.478523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703007, 41.602943, 27.823397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.088921, 41.523075, 27.891888>,  <45.320469, 41.475155, 27.932983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.088921, 41.523075, 27.891888>,  <44.703007, 41.602943, 27.823397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088921, 41.523075, 27.891888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210209, -0.193968, 0.958222,
		-0.158116, -0.960473, -0.229110,
		0.964786, -0.199671, 0.171230,
		45.378357, 41.463173, 27.943256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593643, 41.233799, 28.372412>,  <44.703007, 41.602943, 27.823397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593643, 41.233799, 28.372412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.989674, 41.280006, 28.404438>,  <45.227291, 41.307732, 28.423653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.989674, 41.280006, 28.404438>,  <44.593643, 41.233799, 28.372412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989674, 41.280006, 28.404438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059277, -0.173309, 0.983082,
		0.127437, -0.978070, -0.164742,
		0.990074, 0.115516, 0.080063,
		45.286697, 41.314663, 28.428457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944420, 40.585491, 28.715115>,  <44.593643, 41.233799, 28.372412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944420, 40.585491, 28.715115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.153393, 40.920704, 28.778065>,  <45.278774, 41.121834, 28.815836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.153393, 40.920704, 28.778065>,  <44.944420, 40.585491, 28.715115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153393, 40.920704, 28.778065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146665, -0.093500, 0.984758,
		0.839975, -0.537547, 0.074063,
		0.522429, 0.838034, 0.157377,
		45.310120, 41.172115, 28.825277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315914, 40.378273, 29.369097>,  <44.944420, 40.585491, 28.715115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315914, 40.378273, 29.369097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.323227, 40.775959, 29.326777>,  <45.327614, 41.014572, 29.301384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.323227, 40.775959, 29.326777>,  <45.315914, 40.378273, 29.369097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323227, 40.775959, 29.326777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222558, 0.107209, 0.969007,
		0.974748, 0.005831, 0.223232,
		0.018282, 0.994220, -0.105799,
		45.328712, 41.074226, 29.295036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740017, 40.650154, 29.932949>,  <45.315914, 40.378273, 29.369097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740017, 40.650154, 29.932949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.512894, 40.958054, 29.816273>,  <45.376617, 41.142792, 29.746267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.512894, 40.958054, 29.816273>,  <45.740017, 40.650154, 29.932949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512894, 40.958054, 29.816273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252112, 0.174703, 0.951797,
		0.783601, 0.613979, 0.094864,
		-0.567810, 0.769746, -0.291689,
		45.342552, 41.188976, 29.728765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900043, 41.101288, 30.381264>,  <45.740017, 40.650154, 29.932949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900043, 41.101288, 30.381264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.547279, 41.224079, 30.238153>,  <45.335621, 41.297752, 30.152287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.547279, 41.224079, 30.238153>,  <45.900043, 41.101288, 30.381264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547279, 41.224079, 30.238153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302571, 0.213406, 0.928929,
		0.361510, 0.927483, -0.095323,
		-0.881908, 0.306975, -0.357778,
		45.282707, 41.316174, 30.130819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722614, 41.622429, 30.747267>,  <45.900043, 41.101288, 30.381264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722614, 41.622429, 30.747267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.361778, 41.554115, 30.588736>,  <45.145279, 41.513126, 30.493618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.361778, 41.554115, 30.588736>,  <45.722614, 41.622429, 30.747267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361778, 41.554115, 30.588736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428150, 0.239003, 0.871530,
		-0.054122, 0.955882, -0.288723,
		-0.902085, -0.170786, -0.396326,
		45.091152, 41.502880, 30.469837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245773, 42.217342, 30.954599>,  <45.722614, 41.622429, 30.747267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245773, 42.217342, 30.954599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001652, 41.912571, 30.867887>,  <44.855179, 41.729710, 30.815861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001652, 41.912571, 30.867887>,  <45.245773, 42.217342, 30.954599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001652, 41.912571, 30.867887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496235, 0.154410, 0.854346,
		-0.617475, 0.628989, -0.472332,
		-0.610308, -0.761925, -0.216782,
		44.818558, 41.683994, 30.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555786, 42.504894, 31.126652>,  <45.245773, 42.217342, 30.954599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555786, 42.504894, 31.126652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530930, 42.105999, 31.110357>,  <44.516014, 41.866661, 31.100580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530930, 42.105999, 31.110357>,  <44.555786, 42.504894, 31.126652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530930, 42.105999, 31.110357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642636, 0.008749, 0.766122,
		-0.763647, 0.073787, -0.641403,
		-0.062141, -0.997236, -0.040737,
		44.512287, 41.806828, 31.098137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799831, 42.297379, 31.040272>,  <44.555786, 42.504894, 31.126652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799831, 42.297379, 31.040272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.005703, 41.988937, 31.190208>,  <44.129227, 41.803871, 31.280170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.005703, 41.988937, 31.190208>,  <43.799831, 42.297379, 31.040272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005703, 41.988937, 31.190208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583528, 0.005283, 0.812076,
		-0.628175, -0.636687, -0.447242,
		0.514675, -0.771104, 0.374844,
		44.160107, 41.757607, 31.302662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103024, 42.431099, 30.802111>,  <43.799831, 42.297379, 31.040272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103024, 42.431099, 30.802111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884975, 42.749649, 30.906904>,  <42.754147, 42.940781, 30.969780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884975, 42.749649, 30.906904>,  <43.103024, 42.431099, 30.802111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884975, 42.749649, 30.906904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600177, 0.588890, -0.541291,
		-0.585351, -0.137829, -0.798979,
		-0.545116, 0.796374, 0.261986,
		42.721439, 42.988560, 30.985500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862488, 42.714317, 30.156729>,  <43.103024, 42.431099, 30.802111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862488, 42.714317, 30.156729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.847290, 43.007320, 30.428608>,  <42.838173, 43.183121, 30.591736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.847290, 43.007320, 30.428608>,  <42.862488, 42.714317, 30.156729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847290, 43.007320, 30.428608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456345, 0.617837, -0.640334,
		-0.888992, 0.285851, -0.357747,
		-0.037990, 0.732508, 0.679698,
		42.835892, 43.227074, 30.632517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538429, 43.255222, 29.817566>,  <42.862488, 42.714317, 30.156729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538429, 43.255222, 29.817566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.734455, 43.431484, 30.118408>,  <42.852070, 43.537243, 30.298914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.734455, 43.431484, 30.118408>,  <42.538429, 43.255222, 29.817566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734455, 43.431484, 30.118408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482405, 0.581546, -0.655050,
		-0.726035, 0.683834, 0.072419,
		0.490060, 0.440653, 0.752107,
		42.881474, 43.563679, 30.344040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647694, 43.957077, 29.642242>,  <42.538429, 43.255222, 29.817566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647694, 43.957077, 29.642242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.923679, 43.933315, 29.930801>,  <43.089272, 43.919060, 30.103937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.923679, 43.933315, 29.930801>,  <42.647694, 43.957077, 29.642242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923679, 43.933315, 29.930801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564368, 0.668205, -0.484758,
		-0.453245, 0.741601, 0.494566,
		0.689969, -0.059403, 0.721397,
		43.130669, 43.915493, 30.147221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871376, 44.616188, 29.804604>,  <42.647694, 43.957077, 29.642242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871376, 44.616188, 29.804604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.156898, 44.357075, 29.911087>,  <43.328213, 44.201607, 29.974977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.156898, 44.357075, 29.911087>,  <42.871376, 44.616188, 29.804604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156898, 44.357075, 29.911087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675452, 0.536307, -0.506103,
		0.185075, 0.541068, 0.820361,
		0.713802, -0.647781, 0.266208,
		43.371040, 44.162739, 29.990950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405949, 44.969593, 29.678539>,  <42.871376, 44.616188, 29.804604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405949, 44.969593, 29.678539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.586632, 44.618042, 29.739912>,  <43.695042, 44.407112, 29.776735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.586632, 44.618042, 29.739912>,  <43.405949, 44.969593, 29.678539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586632, 44.618042, 29.739912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810534, 0.332392, -0.482234,
		0.372823, 0.342191, 0.862501,
		0.451705, -0.878875, 0.153434,
		43.722145, 44.354378, 29.785942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046844, 45.142784, 29.939804>,  <43.405949, 44.969593, 29.678539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046844, 45.142784, 29.939804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.073490, 44.760036, 29.826696>,  <44.089478, 44.530388, 29.758833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.073490, 44.760036, 29.826696>,  <44.046844, 45.142784, 29.939804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073490, 44.760036, 29.826696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795780, 0.221907, -0.563464,
		0.601912, -0.187489, 0.776241,
		0.066610, -0.956873, -0.282768,
		44.093472, 44.472973, 29.741865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684528, 44.963184, 29.897188>,  <44.046844, 45.142784, 29.939804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684528, 44.963184, 29.897188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530540, 44.691704, 29.647017>,  <44.438148, 44.528816, 29.496914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530540, 44.691704, 29.647017>,  <44.684528, 44.963184, 29.897188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530540, 44.691704, 29.647017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656036, 0.275417, -0.702683,
		0.649166, -0.680815, 0.339226,
		-0.384968, -0.678702, -0.625430,
		44.415051, 44.488094, 29.459387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309162, 44.626617, 29.528093>,  <44.684528, 44.963184, 29.897188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309162, 44.626617, 29.528093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.002815, 44.497810, 29.305473>,  <44.819008, 44.420525, 29.171902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.002815, 44.497810, 29.305473>,  <45.309162, 44.626617, 29.528093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002815, 44.497810, 29.305473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417117, 0.409908, -0.811165,
		0.489343, -0.853393, -0.179618,
		-0.765870, -0.322016, -0.556551,
		44.773056, 44.401207, 29.138508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600819, 44.287025, 28.970402>,  <45.309162, 44.626617, 29.528093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600819, 44.287025, 28.970402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.232250, 44.365604, 28.836302>,  <45.011108, 44.412754, 28.755842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.232250, 44.365604, 28.836302>,  <45.600819, 44.287025, 28.970402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232250, 44.365604, 28.836302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371952, 0.196310, -0.907256,
		-0.112418, -0.960661, -0.253954,
		-0.921419, 0.196451, -0.335251,
		44.955826, 44.424538, 28.735727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417519, 43.911865, 28.299101>,  <45.600819, 44.287025, 28.970402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417519, 43.911865, 28.299101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.190868, 44.241413, 28.304367>,  <45.054878, 44.439144, 28.307528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.190868, 44.241413, 28.304367>,  <45.417519, 43.911865, 28.299101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190868, 44.241413, 28.304367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365285, 0.265486, -0.892236,
		-0.738584, -0.500750, -0.451379,
		-0.566622, 0.823873, 0.013167,
		45.020882, 44.488575, 28.308317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086018, 43.926674, 27.574171>,  <45.417519, 43.911865, 28.299101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086018, 43.926674, 27.574171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.097424, 44.280800, 27.759817>,  <45.104267, 44.493275, 27.871204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.097424, 44.280800, 27.759817>,  <45.086018, 43.926674, 27.574171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097424, 44.280800, 27.759817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261134, 0.441583, -0.858378,
		-0.964881, 0.145677, -0.218592,
		0.028519, 0.885315, 0.464117,
		45.105980, 44.546394, 27.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162544, 44.253098, 26.981337>,  <45.086018, 43.926674, 27.574171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162544, 44.253098, 26.981337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.190815, 44.527843, 27.270672>,  <45.207779, 44.692692, 27.444273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.190815, 44.527843, 27.270672>,  <45.162544, 44.253098, 26.981337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190815, 44.527843, 27.270672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185352, 0.703481, -0.686119,
		-0.980127, 0.182566, -0.077590,
		0.070679, 0.686865, 0.723340,
		45.212017, 44.733902, 27.487673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549168, 44.115429, 26.552610>,  <45.162544, 44.253098, 26.981337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549168, 44.115429, 26.552610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362549, 44.066986, 26.202143>,  <44.250580, 44.037922, 25.991863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362549, 44.066986, 26.202143>,  <44.549168, 44.115429, 26.552610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362549, 44.066986, 26.202143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858266, -0.177470, 0.481544,
		-0.213812, 0.976646, -0.021144,
		-0.466545, -0.121106, -0.876167,
		44.222584, 44.030655, 25.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998196, 44.550808, 26.554934>,  <44.549168, 44.115429, 26.552610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998196, 44.550808, 26.554934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928024, 44.240555, 26.312407>,  <43.885921, 44.054405, 26.166889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928024, 44.240555, 26.312407>,  <43.998196, 44.550808, 26.554934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928024, 44.240555, 26.312407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772593, -0.273252, 0.573090,
		-0.610184, 0.568973, -0.551312,
		-0.175425, -0.775631, -0.606319,
		43.875397, 44.007866, 26.130510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279041, 44.507095, 26.571100>,  <43.998196, 44.550808, 26.554934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279041, 44.507095, 26.571100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.389622, 44.148563, 26.432442>,  <43.455971, 43.933445, 26.349247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.389622, 44.148563, 26.432442>,  <43.279041, 44.507095, 26.571100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389622, 44.148563, 26.432442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817752, -0.408876, 0.405094,
		-0.504834, 0.171482, -0.846012,
		0.276448, -0.896334, -0.346645,
		43.472557, 43.879662, 26.328449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710453, 44.248211, 26.327869>,  <43.279041, 44.507095, 26.571100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710453, 44.248211, 26.327869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949173, 43.930080, 26.370354>,  <43.092403, 43.739201, 26.395844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949173, 43.930080, 26.370354>,  <42.710453, 44.248211, 26.327869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949173, 43.930080, 26.370354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769339, -0.529585, 0.357290,
		-0.227917, -0.294941, -0.927935,
		0.596801, -0.795329, 0.106209,
		43.128212, 43.691483, 26.402216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329342, 43.782131, 25.978914>,  <42.710453, 44.248211, 26.327869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329342, 43.782131, 25.978914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.566856, 43.572369, 26.223017>,  <42.709366, 43.446510, 26.369478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.566856, 43.572369, 26.223017>,  <42.329342, 43.782131, 25.978914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566856, 43.572369, 26.223017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778685, -0.565533, 0.271701,
		0.202639, -0.636532, -0.744153,
		0.593790, -0.524404, 0.610258,
		42.744995, 43.415047, 26.406094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281639, 42.992367, 25.908701>,  <42.329342, 43.782131, 25.978914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281639, 42.992367, 25.908701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419712, 43.051605, 26.279411>,  <42.502556, 43.087151, 26.501839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419712, 43.051605, 26.279411>,  <42.281639, 42.992367, 25.908701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419712, 43.051605, 26.279411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697935, -0.619697, 0.358975,
		0.627486, -0.770741, -0.110542,
		0.345179, 0.148101, 0.926778,
		42.523266, 43.096035, 26.557446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124775, 42.340721, 26.227818>,  <42.281639, 42.992367, 25.908701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124775, 42.340721, 26.227818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212585, 42.550903, 26.556622>,  <42.265274, 42.677013, 26.753904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212585, 42.550903, 26.556622>,  <42.124775, 42.340721, 26.227818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212585, 42.550903, 26.556622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614167, -0.580222, 0.534922,
		0.758028, -0.622283, 0.195342,
		0.219531, 0.525458, 0.822010,
		42.278446, 42.708542, 26.803225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234966, 41.845963, 26.763214>,  <42.124775, 42.340721, 26.227818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234966, 41.845963, 26.763214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176857, 42.182201, 26.971941>,  <42.141991, 42.383945, 27.097178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176857, 42.182201, 26.971941>,  <42.234966, 41.845963, 26.763214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176857, 42.182201, 26.971941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723591, -0.449966, 0.523399,
		0.674768, -0.301545, 0.673617,
		-0.145276, 0.840596, 0.521818,
		42.133274, 42.434380, 27.128487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610527, 41.263409, 26.987328>,  <42.234966, 41.845963, 26.763214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610527, 41.263409, 26.987328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466045, 41.060249, 26.674517>,  <42.379356, 40.938354, 26.486830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466045, 41.060249, 26.674517>,  <42.610527, 41.263409, 26.987328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466045, 41.060249, 26.674517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704790, 0.400432, -0.585599,
		0.610574, -0.762688, 0.213323,
		-0.361208, -0.507899, -0.782028,
		42.357681, 40.907879, 26.439909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191944, 40.994534, 26.622107>,  <42.610527, 41.263409, 26.987328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191944, 40.994534, 26.622107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.902607, 40.978416, 26.346384>,  <42.729004, 40.968746, 26.180950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.902607, 40.978416, 26.346384>,  <43.191944, 40.994534, 26.622107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902607, 40.978416, 26.346384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642500, 0.326374, -0.693307,
		0.252909, -0.944381, -0.210193,
		-0.723348, -0.040295, -0.689308,
		42.685604, 40.966328, 26.139591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489567, 40.691467, 26.036545>,  <43.191944, 40.994534, 26.622107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489567, 40.691467, 26.036545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.161659, 40.865200, 25.887234>,  <42.964916, 40.969440, 25.797647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.161659, 40.865200, 25.887234>,  <43.489567, 40.691467, 26.036545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161659, 40.865200, 25.887234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527279, 0.318024, -0.787933,
		-0.223513, -0.842743, -0.489720,
		-0.819768, 0.434332, -0.373278,
		42.915730, 40.995499, 25.775249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553360, 40.594833, 25.324125>,  <43.489567, 40.691467, 26.036545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553360, 40.594833, 25.324125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.283726, 40.889614, 25.304054>,  <43.121944, 41.066483, 25.292011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.283726, 40.889614, 25.304054>,  <43.553360, 40.594833, 25.324125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283726, 40.889614, 25.304054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348124, 0.257044, -0.901520,
		-0.651476, -0.625168, -0.429819,
		-0.674084, 0.736949, -0.050178,
		43.081501, 41.110699, 25.289001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182995, 40.529491, 24.692015>,  <43.553360, 40.594833, 25.324125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182995, 40.529491, 24.692015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.132217, 40.915325, 24.784506>,  <43.101753, 41.146824, 24.840000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.132217, 40.915325, 24.784506>,  <43.182995, 40.529491, 24.692015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132217, 40.915325, 24.784506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276658, 0.258293, -0.925605,
		-0.952547, -0.053526, -0.299647,
		-0.126940, 0.964583, 0.231228,
		43.094135, 41.204700, 24.853874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817062, 40.759041, 24.113859>,  <43.182995, 40.529491, 24.692015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817062, 40.759041, 24.113859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961060, 41.087887, 24.290283>,  <43.047459, 41.285194, 24.396137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961060, 41.087887, 24.290283>,  <42.817062, 40.759041, 24.113859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961060, 41.087887, 24.290283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202845, 0.392476, -0.897115,
		-0.910635, 0.412426, -0.025471,
		0.359998, 0.822111, 0.441061,
		43.069057, 41.334518, 24.422602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580036, 41.197319, 23.682919>,  <42.817062, 40.759041, 24.113859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580036, 41.197319, 23.682919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885712, 41.387489, 23.857267>,  <43.069118, 41.501591, 23.961876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885712, 41.387489, 23.857267>,  <42.580036, 41.197319, 23.682919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885712, 41.387489, 23.857267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183997, 0.487007, -0.853797,
		-0.618189, 0.732662, 0.284690,
		0.764191, 0.475426, 0.435870,
		43.114967, 41.530117, 23.988028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419113, 41.898689, 23.608070>,  <42.580036, 41.197319, 23.682919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419113, 41.898689, 23.608070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.811558, 41.880447, 23.683258>,  <43.047024, 41.869503, 23.728371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.811558, 41.880447, 23.683258>,  <42.419113, 41.898689, 23.608070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811558, 41.880447, 23.683258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190014, 0.408832, -0.892609,
		-0.036142, 0.911469, 0.409777,
		0.981116, -0.045603, 0.187968,
		43.105892, 41.866768, 23.739649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732952, 42.545410, 23.434221>,  <42.419113, 41.898689, 23.608070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732952, 42.545410, 23.434221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.030281, 42.278446, 23.416145>,  <43.208679, 42.118267, 23.405300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.030281, 42.278446, 23.416145>,  <42.732952, 42.545410, 23.434221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030281, 42.278446, 23.416145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243652, 0.333040, -0.910889,
		0.622985, 0.666070, 0.410171,
		0.743319, -0.667409, -0.045189,
		43.253277, 42.078224, 23.402588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.022663, 36.233723, 36.126740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418598, 36.200954, 36.173241>,  <36.656158, 36.181293, 36.201141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418598, 36.200954, 36.173241>,  <36.022663, 36.233723, 36.126740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418598, 36.200954, 36.173241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132309, 0.230732, -0.963980,
		0.052149, 0.969563, 0.239226,
		0.989836, -0.081922, 0.116250,
		36.715549, 36.176376, 36.208115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444366, 36.820972, 35.831116>,  <36.022663, 36.233723, 36.126740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444366, 36.820972, 35.831116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664665, 36.487385, 35.817379>,  <36.796844, 36.287231, 35.809135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664665, 36.487385, 35.817379>,  <36.444366, 36.820972, 35.831116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664665, 36.487385, 35.817379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204155, 0.174487, -0.963263,
		0.809322, 0.523500, 0.266356,
		0.550744, -0.833968, -0.034341,
		36.829887, 36.237194, 35.807076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145187, 36.996971, 35.394520>,  <36.444366, 36.820972, 35.831116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145187, 36.996971, 35.394520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109512, 36.599228, 35.371525>,  <37.088108, 36.360584, 35.357727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109512, 36.599228, 35.371525>,  <37.145187, 36.996971, 35.394520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109512, 36.599228, 35.371525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406710, 0.016329, -0.913412,
		0.909194, -0.104844, 0.402957,
		-0.089186, -0.994355, -0.057487,
		37.082756, 36.300922, 35.354279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698822, 36.773540, 35.021393>,  <37.145187, 36.996971, 35.394520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698822, 36.773540, 35.021393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452160, 36.461143, 34.981827>,  <37.304161, 36.273705, 34.958088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452160, 36.461143, 34.981827>,  <37.698822, 36.773540, 35.021393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452160, 36.461143, 34.981827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053936, 0.083438, -0.995052,
		0.785381, -0.618943, -0.009329,
		-0.616659, -0.780992, -0.098914,
		37.267162, 36.226845, 34.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016827, 36.321026, 34.615036>,  <37.698822, 36.773540, 35.021393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016827, 36.321026, 34.615036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623837, 36.247383, 34.603455>,  <37.388042, 36.203197, 34.596504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623837, 36.247383, 34.603455>,  <38.016827, 36.321026, 34.615036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623837, 36.247383, 34.603455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016346, 0.069621, -0.997440,
		0.185656, -0.980436, -0.065392,
		-0.982479, -0.184112, -0.028952,
		37.329094, 36.192150, 34.594769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957516, 35.806728, 34.139122>,  <38.016827, 36.321026, 34.615036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957516, 35.806728, 34.139122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587780, 35.958832, 34.151821>,  <37.365940, 36.050095, 34.159439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587780, 35.958832, 34.151821>,  <37.957516, 35.806728, 34.139122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587780, 35.958832, 34.151821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071878, -0.091815, -0.993178,
		-0.374747, -0.920313, 0.112200,
		-0.924336, 0.380256, 0.031743,
		37.310478, 36.072906, 34.161343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643223, 35.451427, 33.652729>,  <37.957516, 35.806728, 34.139122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643223, 35.451427, 33.652729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400398, 35.768536, 33.674576>,  <37.254704, 35.958801, 33.687683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400398, 35.768536, 33.674576>,  <37.643223, 35.451427, 33.652729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400398, 35.768536, 33.674576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001278, 0.069708, -0.997567,
		-0.794651, -0.605518, -0.043331,
		-0.607065, 0.792773, 0.054620,
		37.218277, 36.006367, 33.690960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119297, 35.390766, 33.094833>,  <37.643223, 35.451427, 33.652729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119297, 35.390766, 33.094833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131062, 35.780567, 33.183815>,  <37.138123, 36.014446, 33.237206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131062, 35.780567, 33.183815>,  <37.119297, 35.390766, 33.094833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131062, 35.780567, 33.183815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309093, 0.220513, -0.925114,
		-0.950577, -0.041547, 0.307697,
		0.029415, 0.974499, 0.222456,
		37.139885, 36.072918, 33.250553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441959, 35.660114, 32.883579>,  <37.119297, 35.390766, 33.094833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441959, 35.660114, 32.883579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698235, 35.966618, 32.903065>,  <36.851997, 36.150520, 32.914757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698235, 35.966618, 32.903065>,  <36.441959, 35.660114, 32.883579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698235, 35.966618, 32.903065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235853, 0.256783, -0.937249,
		-0.730683, 0.588991, 0.345241,
		0.640684, 0.766258, 0.048711,
		36.890438, 36.196495, 32.917679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084370, 36.334431, 32.657402>,  <36.441959, 35.660114, 32.883579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084370, 36.334431, 32.657402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477875, 36.396580, 32.621479>,  <36.713978, 36.433868, 32.599926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477875, 36.396580, 32.621479>,  <36.084370, 36.334431, 32.657402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477875, 36.396580, 32.621479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142819, 0.374783, -0.916046,
		-0.108674, 0.914000, 0.390889,
		0.983765, 0.155377, -0.089808,
		36.773003, 36.443192, 32.594536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107971, 36.972198, 32.182209>,  <36.084370, 36.334431, 32.657402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107971, 36.972198, 32.182209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471630, 36.806492, 32.199337>,  <36.689827, 36.707066, 32.209614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471630, 36.806492, 32.199337>,  <36.107971, 36.972198, 32.182209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471630, 36.806492, 32.199337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090014, 0.095075, -0.991392,
		0.406634, 0.905174, 0.123727,
		0.909146, -0.414271, 0.042818,
		36.744373, 36.682209, 32.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580654, 37.471794, 32.075428>,  <36.107971, 36.972198, 32.182209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580654, 37.471794, 32.075428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783897, 37.138824, 31.986986>,  <36.905846, 36.939041, 31.933922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783897, 37.138824, 31.986986>,  <36.580654, 37.471794, 32.075428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783897, 37.138824, 31.986986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249393, 0.387914, -0.887314,
		0.824394, 0.395713, 0.404705,
		0.508112, -0.832427, -0.221105,
		36.936333, 36.889095, 31.920654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916039, 38.214035, 32.372715>,  <36.580654, 37.471794, 32.075428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916039, 38.214035, 32.372715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587700, 38.387104, 32.223579>,  <36.390697, 38.490944, 32.134098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587700, 38.387104, 32.223579>,  <36.916039, 38.214035, 32.372715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587700, 38.387104, 32.223579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534857, -0.353303, 0.767532,
		0.200365, 0.829440, 0.521425,
		-0.820842, 0.432674, -0.372842,
		36.341446, 38.516907, 32.111729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611645, 38.602352, 32.830711>,  <36.916039, 38.214035, 32.372715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611645, 38.602352, 32.830711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311783, 38.531734, 32.575573>,  <36.131866, 38.489365, 32.422489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311783, 38.531734, 32.575573>,  <36.611645, 38.602352, 32.830711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311783, 38.531734, 32.575573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591375, -0.253995, 0.765350,
		-0.297131, 0.950955, 0.086003,
		-0.749659, -0.176549, -0.637842,
		36.086884, 38.478771, 32.384220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036568, 38.839668, 33.222374>,  <36.611645, 38.602352, 32.830711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036568, 38.839668, 33.222374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877808, 38.610878, 32.935234>,  <35.782551, 38.473602, 32.762951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877808, 38.610878, 32.935234>,  <36.036568, 38.839668, 33.222374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877808, 38.610878, 32.935234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774617, -0.210816, 0.596259,
		-0.492381, 0.792717, -0.359389,
		-0.396900, -0.571976, -0.717854,
		35.758739, 38.439285, 32.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236893, 38.947285, 33.234180>,  <36.036568, 38.839668, 33.222374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236893, 38.947285, 33.234180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296032, 38.600018, 33.044685>,  <35.331516, 38.391659, 32.930988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296032, 38.600018, 33.044685>,  <35.236893, 38.947285, 33.234180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296032, 38.600018, 33.044685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849855, -0.356521, 0.388123,
		-0.505853, 0.345225, -0.790527,
		0.147849, -0.868166, -0.473738,
		35.340385, 38.339569, 32.902565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571423, 38.843754, 32.959843>,  <35.236893, 38.947285, 33.234180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571423, 38.843754, 32.959843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736618, 38.479546, 32.952011>,  <34.835735, 38.261021, 32.947311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736618, 38.479546, 32.952011>,  <34.571423, 38.843754, 32.959843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736618, 38.479546, 32.952011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856695, -0.395689, 0.330914,
		-0.309052, -0.119892, -0.943458,
		0.412990, -0.910525, -0.019578,
		34.860516, 38.206387, 32.946136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040066, 38.366638, 32.823265>,  <34.571423, 38.843754, 32.959843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040066, 38.366638, 32.823265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332718, 38.150970, 32.990120>,  <34.508308, 38.021568, 33.090233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332718, 38.150970, 32.990120>,  <34.040066, 38.366638, 32.823265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332718, 38.150970, 32.990120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667786, -0.443866, 0.597532,
		-0.137017, -0.715736, -0.684798,
		0.731634, -0.539170, 0.417142,
		34.552208, 37.989220, 33.115261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704689, 37.779343, 32.966663>,  <34.040066, 38.366638, 32.823265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704689, 37.779343, 32.966663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045116, 37.772991, 33.176590>,  <34.249371, 37.769180, 33.302547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045116, 37.772991, 33.176590>,  <33.704689, 37.779343, 32.966663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045116, 37.772991, 33.176590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518989, -0.176988, 0.836257,
		0.079606, -0.984085, -0.158870,
		0.851066, -0.015881, 0.524818,
		34.300438, 37.768227, 33.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623020, 37.108421, 33.447247>,  <33.704689, 37.779343, 32.966663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623020, 37.108421, 33.447247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887070, 37.366894, 33.600449>,  <34.045498, 37.521976, 33.692371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887070, 37.366894, 33.600449>,  <33.623020, 37.108421, 33.447247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887070, 37.366894, 33.600449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430446, -0.092458, 0.897868,
		0.615595, -0.757565, 0.217112,
		0.660120, 0.646178, 0.383008,
		34.085106, 37.560749, 33.715351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504051, 37.006638, 34.196411>,  <33.623020, 37.108421, 33.447247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504051, 37.006638, 34.196411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710178, 37.349281, 34.186077>,  <33.833855, 37.554867, 34.179878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710178, 37.349281, 34.186077>,  <33.504051, 37.006638, 34.196411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710178, 37.349281, 34.186077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439127, 0.289820, 0.850395,
		0.735942, -0.426883, 0.525510,
		0.515322, 0.856607, -0.025835,
		33.864777, 37.606262, 34.178326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863194, 37.067726, 34.815258>,  <33.504051, 37.006638, 34.196411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863194, 37.067726, 34.815258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824257, 37.438496, 34.670300>,  <33.800896, 37.660957, 34.583324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824257, 37.438496, 34.670300>,  <33.863194, 37.067726, 34.815258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824257, 37.438496, 34.670300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427615, 0.289850, 0.856231,
		0.898704, 0.238315, 0.368153,
		-0.097343, 0.926927, -0.362396,
		33.795055, 37.716572, 34.561581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733040, 37.419949, 35.332973>,  <33.863194, 37.067726, 34.815258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733040, 37.419949, 35.332973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645836, 37.717606, 35.080395>,  <33.593513, 37.896198, 34.928848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645836, 37.717606, 35.080395>,  <33.733040, 37.419949, 35.332973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645836, 37.717606, 35.080395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574034, 0.425483, 0.699606,
		0.789275, 0.514996, 0.334400,
		-0.218013, 0.744139, -0.631449,
		33.580433, 37.940845, 34.890961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943592, 38.026939, 35.720699>,  <33.733040, 37.419949, 35.332973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943592, 38.026939, 35.720699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684807, 38.152042, 35.442528>,  <33.529537, 38.227104, 35.275623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684807, 38.152042, 35.442528>,  <33.943592, 38.026939, 35.720699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684807, 38.152042, 35.442528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539044, 0.457475, 0.707212,
		0.539326, 0.832407, -0.127381,
		-0.646961, 0.312754, -0.695432,
		33.490719, 38.245869, 35.233898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897324, 38.676228, 35.888775>,  <33.943592, 38.026939, 35.720699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897324, 38.676228, 35.888775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580902, 38.614014, 35.652115>,  <33.391048, 38.576687, 35.510120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580902, 38.614014, 35.652115>,  <33.897324, 38.676228, 35.888775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580902, 38.614014, 35.652115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606971, 0.320215, 0.727357,
		0.076327, 0.934490, -0.347711,
		-0.791051, -0.155533, -0.591649,
		33.343586, 38.567352, 35.474621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655983, 39.251274, 35.731792>,  <33.897324, 38.676228, 35.888775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655983, 39.251274, 35.731792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355534, 38.987740, 35.715084>,  <33.175262, 38.829620, 35.705059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355534, 38.987740, 35.715084>,  <33.655983, 39.251274, 35.731792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355534, 38.987740, 35.715084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397679, 0.401066, 0.825226,
		-0.526935, 0.636460, -0.563256,
		-0.751126, -0.658836, -0.041771,
		33.130196, 38.790089, 35.702553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208897, 39.431305, 36.242744>,  <33.655983, 39.251274, 35.731792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208897, 39.431305, 36.242744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335114, 39.289848, 35.890526>,  <34.410843, 39.204975, 35.679195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335114, 39.289848, 35.890526>,  <34.208897, 39.431305, 36.242744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335114, 39.289848, 35.890526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134491, 0.935258, -0.327422,
		0.939332, -0.015109, 0.342678,
		0.315545, -0.353645, -0.880549,
		34.429775, 39.183754, 35.626362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641335, 39.942783, 36.489944>,  <34.208897, 39.431305, 36.242744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641335, 39.942783, 36.489944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926510, 39.781040, 36.719105>,  <34.097614, 39.683994, 36.856602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926510, 39.781040, 36.719105>,  <33.641335, 39.942783, 36.489944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926510, 39.781040, 36.719105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681223, 0.593126, -0.429112,
		-0.166285, 0.696202, 0.698321,
		0.712941, -0.404357, 0.572897,
		34.140392, 39.659733, 36.890972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077133, 40.522545, 36.753578>,  <33.641335, 39.942783, 36.489944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077133, 40.522545, 36.753578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288368, 40.184322, 36.722183>,  <34.415108, 39.981388, 36.703346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288368, 40.184322, 36.722183>,  <34.077133, 40.522545, 36.753578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288368, 40.184322, 36.722183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697375, 0.484557, -0.528085,
		0.484557, 0.224139, 0.845557,
		0.528085, -0.845557, -0.078486,
		34.446793, 39.930656, 36.698639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826092, 40.758255, 36.611591>,  <34.077133, 40.522545, 36.753578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826092, 40.758255, 36.611591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863708, 40.371292, 36.517540>,  <34.886280, 40.139114, 36.461109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863708, 40.371292, 36.517540>,  <34.826092, 40.758255, 36.611591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863708, 40.371292, 36.517540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851322, 0.200582, -0.484786,
		0.516146, -0.154577, 0.842436,
		0.094041, -0.967405, -0.235124,
		34.891922, 40.081070, 36.447002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536266, 40.586170, 36.807915>,  <34.826092, 40.758255, 36.611591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536266, 40.586170, 36.807915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419029, 40.322273, 36.531124>,  <35.348686, 40.163933, 36.365047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419029, 40.322273, 36.531124>,  <35.536266, 40.586170, 36.807915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419029, 40.322273, 36.531124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906110, 0.039258, -0.421216,
		0.305061, -0.750464, 0.586295,
		-0.293091, -0.659745, -0.691979,
		35.331100, 40.124352, 36.323532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132195, 40.209686, 36.626022>,  <35.536266, 40.586170, 36.807915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132195, 40.209686, 36.626022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897732, 40.140224, 36.309475>,  <35.757053, 40.098549, 36.119545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897732, 40.140224, 36.309475>,  <36.132195, 40.209686, 36.626022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897732, 40.140224, 36.309475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783622, 0.126607, -0.608201,
		0.205811, -0.976634, 0.061870,
		-0.586156, -0.173657, -0.791369,
		35.721886, 40.088127, 36.072063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486099, 39.668613, 36.177765>,  <36.132195, 40.209686, 36.626022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486099, 39.668613, 36.177765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243526, 39.874580, 35.935410>,  <36.097980, 39.998161, 35.789997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243526, 39.874580, 35.935410>,  <36.486099, 39.668613, 36.177765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243526, 39.874580, 35.935410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747629, 0.109825, -0.654972,
		-0.270714, -0.850177, -0.451567,
		-0.606436, 0.514915, -0.605886,
		36.061596, 40.029057, 35.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753834, 39.520912, 35.537495>,  <36.486099, 39.668613, 36.177765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753834, 39.520912, 35.537495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527855, 39.830105, 35.422024>,  <36.392269, 40.015621, 35.352741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527855, 39.830105, 35.422024>,  <36.753834, 39.520912, 35.537495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527855, 39.830105, 35.422024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791565, 0.408953, -0.454073,
		-0.232934, -0.485035, -0.842902,
		-0.564948, 0.772980, -0.288677,
		36.358372, 40.062000, 35.335419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978214, 39.712410, 34.815834>,  <36.753834, 39.520912, 35.537495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978214, 39.712410, 34.815834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783070, 40.033501, 34.953018>,  <36.665985, 40.226154, 35.035328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783070, 40.033501, 34.953018>,  <36.978214, 39.712410, 34.815834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783070, 40.033501, 34.953018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721843, 0.591906, -0.358594,
		-0.490854, 0.072622, -0.868210,
		-0.487857, 0.802729, 0.342961,
		36.636711, 40.274319, 35.055908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008408, 40.201485, 34.266190>,  <36.978214, 39.712410, 34.815834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008408, 40.201485, 34.266190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943138, 40.409760, 34.601395>,  <36.903976, 40.534725, 34.802517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943138, 40.409760, 34.601395>,  <37.008408, 40.201485, 34.266190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943138, 40.409760, 34.601395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769389, 0.598859, -0.222282,
		-0.617589, 0.608487, -0.498324,
		-0.163170, 0.520684, 0.838012,
		36.894188, 40.565964, 34.852798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858994, 40.991352, 34.125080>,  <37.008408, 40.201485, 34.266190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858994, 40.991352, 34.125080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974274, 40.986233, 34.508076>,  <37.043442, 40.983162, 34.737873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974274, 40.986233, 34.508076>,  <36.858994, 40.991352, 34.125080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974274, 40.986233, 34.508076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709374, 0.674512, -0.204505,
		-0.643219, 0.738153, 0.203470,
		0.288199, -0.012795, 0.957485,
		37.060734, 40.982395, 34.795322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275620, 41.592857, 34.077469>,  <36.858994, 40.991352, 34.125080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275620, 41.592857, 34.077469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376484, 41.427761, 34.427567>,  <37.437004, 41.328705, 34.637627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376484, 41.427761, 34.427567>,  <37.275620, 41.592857, 34.077469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376484, 41.427761, 34.427567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930437, 0.351943, -0.102096,
		-0.265898, 0.840108, 0.472775,
		0.252162, -0.412740, 0.875248,
		37.452133, 41.303940, 34.690140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528732, 42.078125, 34.458759>,  <37.275620, 41.592857, 34.077469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528732, 42.078125, 34.458759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677143, 41.748028, 34.629086>,  <37.766190, 41.549969, 34.731281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677143, 41.748028, 34.629086>,  <37.528732, 42.078125, 34.458759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677143, 41.748028, 34.629086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927413, 0.305909, -0.215230,
		0.047357, 0.474760, 0.878841,
		0.371028, -0.825241, 0.425812,
		37.788452, 41.500454, 34.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200577, 42.273663, 34.906158>,  <37.528732, 42.078125, 34.458759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200577, 42.273663, 34.906158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237366, 41.883659, 34.825264>,  <38.259441, 41.649658, 34.776730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237366, 41.883659, 34.825264>,  <38.200577, 42.273663, 34.906158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237366, 41.883659, 34.825264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952588, 0.145307, -0.267323,
		0.290029, -0.168058, 0.942146,
		0.091975, -0.975009, -0.202233,
		38.264957, 41.591156, 34.764595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866554, 42.004730, 35.330532>,  <38.200577, 42.273663, 34.906158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866554, 42.004730, 35.330532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760979, 41.828022, 34.987560>,  <38.697632, 41.721996, 34.781776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760979, 41.828022, 34.987560>,  <38.866554, 42.004730, 35.330532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760979, 41.828022, 34.987560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921336, 0.147597, -0.359661,
		0.285439, -0.884906, 0.368058,
		-0.263941, -0.441766, -0.857425,
		38.681797, 41.695492, 34.730331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494896, 41.772720, 35.021988>,  <38.866554, 42.004730, 35.330532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494896, 41.772720, 35.021988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.253353, 41.745388, 34.704323>,  <39.108429, 41.728989, 34.513725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.253353, 41.745388, 34.704323>,  <39.494896, 41.772720, 35.021988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253353, 41.745388, 34.704323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792923, 0.050311, -0.607242,
		0.081452, -0.996393, 0.023805,
		-0.603854, -0.068336, -0.794161,
		39.072197, 41.724888, 34.466076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828297, 41.210979, 34.657417>,  <39.494896, 41.772720, 35.021988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828297, 41.210979, 34.657417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591702, 41.385677, 34.386303>,  <39.449745, 41.490494, 34.223633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591702, 41.385677, 34.386303>,  <39.828297, 41.210979, 34.657417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591702, 41.385677, 34.386303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706863, -0.123550, -0.696476,
		-0.387921, -0.891062, -0.235638,
		-0.591491, 0.436742, -0.677787,
		39.414253, 41.516701, 34.182968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144501, 41.061707, 33.985580>,  <39.828297, 41.210979, 34.657417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144501, 41.061707, 33.985580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888344, 41.353142, 33.888374>,  <39.734650, 41.528004, 33.830051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888344, 41.353142, 33.888374>,  <40.144501, 41.061707, 33.985580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888344, 41.353142, 33.888374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524624, 0.183865, -0.831242,
		-0.560948, -0.659816, -0.499980,
		-0.640396, 0.728585, -0.243017,
		39.696224, 41.571716, 33.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974838, 40.911648, 33.302551>,  <40.144501, 41.061707, 33.985580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974838, 40.911648, 33.302551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896400, 41.297367, 33.373749>,  <39.849339, 41.528797, 33.416466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896400, 41.297367, 33.373749>,  <39.974838, 40.911648, 33.302551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896400, 41.297367, 33.373749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607046, 0.261929, -0.750259,
		-0.770093, -0.039072, -0.636734,
		-0.196093, 0.964296, 0.177991,
		39.837574, 41.586655, 33.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945683, 41.211704, 32.627804>,  <39.974838, 40.911648, 33.302551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945683, 41.211704, 32.627804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991684, 41.529278, 32.866615>,  <40.019287, 41.719822, 33.009903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991684, 41.529278, 32.866615>,  <39.945683, 41.211704, 32.627804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991684, 41.529278, 32.866615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651806, 0.393230, -0.648475,
		-0.749615, 0.463728, -0.472264,
		0.115007, 0.793931, 0.597032,
		40.026188, 41.767456, 33.045723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854954, 41.678516, 32.091934>,  <39.945683, 41.211704, 32.627804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854954, 41.678516, 32.091934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015747, 41.832066, 32.424454>,  <40.112221, 41.924194, 32.623966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015747, 41.832066, 32.424454>,  <39.854954, 41.678516, 32.091934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015747, 41.832066, 32.424454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640782, 0.530589, -0.554864,
		-0.654073, 0.755724, -0.032691,
		0.401979, 0.383870, 0.831298,
		40.136341, 41.947227, 32.673843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780853, 42.515236, 32.093864>,  <39.854954, 41.678516, 32.091934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780853, 42.515236, 32.093864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.090858, 42.368946, 32.300011>,  <40.276863, 42.281174, 32.423698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.090858, 42.368946, 32.300011>,  <39.780853, 42.515236, 32.093864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090858, 42.368946, 32.300011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615934, 0.619578, -0.486569,
		-0.141358, 0.694527, 0.705443,
		0.775012, -0.365726, 0.515365,
		40.323360, 42.259228, 32.454620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279507, 43.023125, 32.085110>,  <39.780853, 42.515236, 32.093864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279507, 43.023125, 32.085110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508011, 42.725338, 32.223343>,  <40.645111, 42.546665, 32.306282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508011, 42.725338, 32.223343>,  <40.279507, 43.023125, 32.085110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508011, 42.725338, 32.223343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800143, 0.411326, -0.436558,
		0.182857, 0.525902, 0.830656,
		0.571257, -0.744471, 0.345583,
		40.679390, 42.501995, 32.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808781, 43.315025, 32.188938>,  <40.279507, 43.023125, 32.085110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808781, 43.315025, 32.188938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919628, 42.931797, 32.159805>,  <40.986137, 42.701859, 32.142326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919628, 42.931797, 32.159805>,  <40.808781, 43.315025, 32.188938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919628, 42.931797, 32.159805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764419, 0.265759, -0.587397,
		0.582125, 0.107101, 0.806015,
		0.277117, -0.958072, -0.072835,
		41.002762, 42.644375, 32.137955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427505, 43.412342, 32.414146>,  <40.808781, 43.315025, 32.188938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427505, 43.412342, 32.414146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428772, 43.071445, 32.204891>,  <41.429531, 42.866909, 32.079338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428772, 43.071445, 32.204891>,  <41.427505, 43.412342, 32.414146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428772, 43.071445, 32.204891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811873, 0.307612, -0.496222,
		0.583825, -0.423152, 0.692885,
		0.003163, -0.852242, -0.523138,
		41.429722, 42.815773, 32.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074707, 43.137550, 32.502964>,  <41.427505, 43.412342, 32.414146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074707, 43.137550, 32.502964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.927853, 42.982094, 32.164932>,  <41.839741, 42.888821, 31.962112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.927853, 42.982094, 32.164932>,  <42.074707, 43.137550, 32.502964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927853, 42.982094, 32.164932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784187, 0.359300, -0.505919,
		0.500262, -0.848444, 0.172860,
		-0.367136, -0.388647, -0.845083,
		41.817711, 42.865501, 31.911407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570377, 42.591579, 32.227394>,  <42.074707, 43.137550, 32.502964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570377, 42.591579, 32.227394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350636, 42.712502, 31.915798>,  <42.218792, 42.785053, 31.728842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350636, 42.712502, 31.915798>,  <42.570377, 42.591579, 32.227394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350636, 42.712502, 31.915798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801475, 0.454293, -0.388915,
		0.236318, -0.837991, -0.491858,
		-0.549355, 0.302304, -0.778987,
		42.185829, 42.803192, 31.682102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968288, 42.448669, 31.609392>,  <42.570377, 42.591579, 32.227394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968288, 42.448669, 31.609392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.710148, 42.732937, 31.497335>,  <42.555264, 42.903496, 31.430101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.710148, 42.732937, 31.497335>,  <42.968288, 42.448669, 31.609392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710148, 42.732937, 31.497335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726438, 0.457529, -0.512791,
		-0.236250, -0.534435, -0.811520,
		-0.645348, 0.710666, -0.280142,
		42.516544, 42.946136, 31.413292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230396, 41.767052, 31.454403>,  <42.968288, 42.448669, 31.609392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230396, 41.767052, 31.454403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.603371, 41.642170, 31.527174>,  <43.827156, 41.567242, 31.570837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.603371, 41.642170, 31.527174>,  <43.230396, 41.767052, 31.454403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603371, 41.642170, 31.527174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326293, -0.511176, 0.795130,
		-0.155244, -0.800768, -0.578507,
		0.932433, -0.312202, 0.181928,
		43.883102, 41.548508, 31.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112907, 41.123226, 31.695965>,  <43.230396, 41.767052, 31.454403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112907, 41.123226, 31.695965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.468929, 41.222626, 31.848833>,  <43.682541, 41.282265, 31.940554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.468929, 41.222626, 31.848833>,  <43.112907, 41.123226, 31.695965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468929, 41.222626, 31.848833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204993, -0.530629, 0.822442,
		0.407165, -0.810360, -0.421348,
		0.890053, 0.248496, 0.382172,
		43.735947, 41.297176, 31.963484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426796, 40.535126, 31.994417>,  <43.112907, 41.123226, 31.695965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426796, 40.535126, 31.994417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.574879, 40.855076, 32.183369>,  <43.663727, 41.047047, 32.296741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.574879, 40.855076, 32.183369>,  <43.426796, 40.535126, 31.994417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574879, 40.855076, 32.183369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231270, -0.413139, 0.880812,
		0.899702, -0.435328, 0.032042,
		0.370204, 0.799878, 0.472380,
		43.685940, 41.095039, 32.325081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649353, 40.211475, 32.641586>,  <43.426796, 40.535126, 31.994417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649353, 40.211475, 32.641586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.640877, 40.609142, 32.683895>,  <43.635792, 40.847740, 32.709282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.640877, 40.609142, 32.683895>,  <43.649353, 40.211475, 32.641586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640877, 40.609142, 32.683895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352823, -0.106429, 0.929617,
		0.935450, -0.017621, 0.353020,
		-0.021191, 0.994164, 0.105776,
		43.634518, 40.907391, 32.715630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864399, 40.282757, 33.363476>,  <43.649353, 40.211475, 32.641586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864399, 40.282757, 33.363476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.675598, 40.625713, 33.281406>,  <43.562317, 40.831486, 33.232162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.675598, 40.625713, 33.281406>,  <43.864399, 40.282757, 33.363476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675598, 40.625713, 33.281406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643267, -0.175802, 0.745185,
		0.602843, 0.483713, 0.634509,
		-0.472004, 0.857389, -0.205176,
		43.533997, 40.882931, 33.219852>
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
