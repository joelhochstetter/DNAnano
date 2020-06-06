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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.502583, 32.462311, 23.157658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585533, 32.752167, 23.420532>,  <42.635303, 32.926079, 23.578257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585533, 32.752167, 23.420532>,  <42.502583, 32.462311, 23.157658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585533, 32.752167, 23.420532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840898, -0.211239, 0.498265,
		0.499886, -0.655956, 0.565541,
		0.207375, 0.724638, 0.657187,
		42.647747, 32.969559, 23.617689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400379, 32.198097, 23.920319>,  <42.502583, 32.462311, 23.157658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400379, 32.198097, 23.920319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361122, 32.593628, 23.875420>,  <42.337570, 32.830944, 23.848480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361122, 32.593628, 23.875420>,  <42.400379, 32.198097, 23.920319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361122, 32.593628, 23.875420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901188, -0.040456, 0.431536,
		0.422172, 0.143508, 0.895085,
		-0.098140, 0.988822, -0.112248,
		42.331680, 32.890274, 23.841745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437107, 32.458809, 24.562086>,  <42.400379, 32.198097, 23.920319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437107, 32.458809, 24.562086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219841, 32.678371, 24.307945>,  <42.089481, 32.810108, 24.155460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219841, 32.678371, 24.307945>,  <42.437107, 32.458809, 24.562086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219841, 32.678371, 24.307945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824521, -0.205826, 0.527068,
		0.158538, 0.810147, 0.564382,
		-0.543167, 0.548905, -0.635352,
		42.056892, 32.843044, 24.117340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868225, 32.891090, 24.867712>,  <42.437107, 32.458809, 24.562086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868225, 32.891090, 24.867712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749077, 32.810051, 24.494568>,  <41.677589, 32.761429, 24.270681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749077, 32.810051, 24.494568>,  <41.868225, 32.891090, 24.867712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749077, 32.810051, 24.494568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952988, 0.006223, 0.302945,
		-0.055571, 0.979243, -0.194925,
		-0.297869, -0.202595, -0.932861,
		41.659718, 32.749271, 24.214710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344170, 33.386436, 24.804123>,  <41.868225, 32.891090, 24.867712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344170, 33.386436, 24.804123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314716, 33.070576, 24.560474>,  <41.297043, 32.881058, 24.414286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314716, 33.070576, 24.560474>,  <41.344170, 33.386436, 24.804123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314716, 33.070576, 24.560474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994926, 0.016182, 0.099294,
		-0.068551, 0.613342, -0.786837,
		-0.073634, -0.789652, -0.609121,
		41.292625, 32.833679, 24.377739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438145, 33.584202, 25.518545>,  <41.344170, 33.386436, 24.804123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438145, 33.584202, 25.518545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079910, 33.629013, 25.346321>,  <40.864971, 33.655899, 25.242987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079910, 33.629013, 25.346321>,  <41.438145, 33.584202, 25.518545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079910, 33.629013, 25.346321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299204, 0.564570, 0.769245,
		0.329257, 0.817748, -0.472100,
		-0.895582, 0.112025, -0.430562,
		40.811237, 33.662621, 25.217152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340641, 34.323421, 25.277069>,  <41.438145, 33.584202, 25.518545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340641, 34.323421, 25.277069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995022, 34.135757, 25.350079>,  <40.787651, 34.023159, 25.393885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995022, 34.135757, 25.350079>,  <41.340641, 34.323421, 25.277069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995022, 34.135757, 25.350079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156604, 0.595083, 0.788259,
		-0.478438, 0.652507, -0.587650,
		-0.864044, -0.469161, 0.182525,
		40.735809, 33.995010, 25.404837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800304, 34.927147, 25.369108>,  <41.340641, 34.323421, 25.277069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800304, 34.927147, 25.369108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654961, 34.592335, 25.532745>,  <40.567753, 34.391449, 25.630928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654961, 34.592335, 25.532745>,  <40.800304, 34.927147, 25.369108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654961, 34.592335, 25.532745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302001, 0.521218, 0.798202,
		-0.881343, 0.166487, -0.442172,
		-0.363358, -0.837027, 0.409093,
		40.545952, 34.341228, 25.655474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128429, 35.144222, 25.766123>,  <40.800304, 34.927147, 25.369108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128429, 35.144222, 25.766123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240421, 34.787220, 25.907566>,  <40.307617, 34.573017, 25.992432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240421, 34.787220, 25.907566>,  <40.128429, 35.144222, 25.766123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240421, 34.787220, 25.907566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391865, 0.230008, 0.890808,
		-0.876388, -0.387971, -0.285347,
		0.279976, -0.892510, 0.353608,
		40.324413, 34.519466, 26.013649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539864, 34.886768, 26.026272>,  <40.128429, 35.144222, 25.766123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539864, 34.886768, 26.026272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831379, 34.680096, 26.206005>,  <40.006290, 34.556091, 26.313845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831379, 34.680096, 26.206005>,  <39.539864, 34.886768, 26.026272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831379, 34.680096, 26.206005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496395, 0.053339, 0.866457,
		-0.471650, -0.854514, -0.217606,
		0.728793, -0.516683, 0.449333,
		40.050018, 34.525089, 26.340805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175217, 34.581379, 26.521383>,  <39.539864, 34.886768, 26.026272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175217, 34.581379, 26.521383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544449, 34.514782, 26.660061>,  <39.765987, 34.474823, 26.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544449, 34.514782, 26.660061>,  <39.175217, 34.581379, 26.521383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544449, 34.514782, 26.660061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352611, -0.006436, 0.935748,
		-0.153565, -0.986022, -0.064648,
		0.923084, -0.166494, 0.346694,
		39.821373, 34.464836, 26.764069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196835, 33.974930, 27.049997>,  <39.175217, 34.581379, 26.521383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196835, 33.974930, 27.049997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517067, 34.201256, 27.128902>,  <39.709206, 34.337051, 27.176245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517067, 34.201256, 27.128902>,  <39.196835, 33.974930, 27.049997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517067, 34.201256, 27.128902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322866, 0.129997, 0.937474,
		0.504799, -0.814216, 0.286758,
		0.800584, 0.565820, 0.197260,
		39.757244, 34.371002, 27.188080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491829, 33.724247, 27.708204>,  <39.196835, 33.974930, 27.049997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491829, 33.724247, 27.708204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698917, 34.064823, 27.674709>,  <39.823170, 34.269169, 27.654612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698917, 34.064823, 27.674709>,  <39.491829, 33.724247, 27.708204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698917, 34.064823, 27.674709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043518, 0.071542, 0.996488,
		0.854443, -0.519546, -0.000014,
		0.517720, 0.851442, -0.083738,
		39.854233, 34.320255, 27.649588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040226, 33.815804, 28.206081>,  <39.491829, 33.724247, 27.708204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040226, 33.815804, 28.206081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984482, 34.196918, 28.098171>,  <39.951035, 34.425587, 28.033426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984482, 34.196918, 28.098171>,  <40.040226, 33.815804, 28.206081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984482, 34.196918, 28.098171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062849, 0.263373, 0.962645,
		0.988245, 0.151110, 0.023178,
		-0.139361, 0.952785, -0.269774,
		39.942673, 34.482754, 28.017239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574860, 34.215809, 28.486237>,  <40.040226, 33.815804, 28.206081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574860, 34.215809, 28.486237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264870, 34.464722, 28.442089>,  <40.078876, 34.614067, 28.415600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264870, 34.464722, 28.442089>,  <40.574860, 34.215809, 28.486237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264870, 34.464722, 28.442089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037332, 0.219408, 0.974919,
		0.630887, 0.751419, -0.193267,
		-0.774976, 0.622278, -0.110370,
		40.032375, 34.651405, 28.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722847, 34.765942, 28.965380>,  <40.574860, 34.215809, 28.486237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722847, 34.765942, 28.965380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336182, 34.823273, 28.880501>,  <40.104183, 34.857670, 28.829573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336182, 34.823273, 28.880501>,  <40.722847, 34.765942, 28.965380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336182, 34.823273, 28.880501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186121, 0.175867, 0.966659,
		0.175867, 0.973924, -0.143327,
		-0.966659, 0.143327, -0.212197,
		40.046185, 34.866272, 28.816841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643734, 35.419605, 29.213095>,  <40.722847, 34.765942, 28.965380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643734, 35.419605, 29.213095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278580, 35.257587, 29.192799>,  <40.059486, 35.160378, 29.180620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278580, 35.257587, 29.192799>,  <40.643734, 35.419605, 29.213095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278580, 35.257587, 29.192799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249680, 0.455686, 0.854406,
		-0.322954, 0.792644, -0.517122,
		-0.912886, -0.405049, -0.050741,
		40.004715, 35.136074, 29.177576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271816, 35.980278, 29.400574>,  <40.643734, 35.419605, 29.213095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271816, 35.980278, 29.400574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058308, 35.645596, 29.449581>,  <39.930202, 35.444786, 29.478985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058308, 35.645596, 29.449581>,  <40.271816, 35.980278, 29.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058308, 35.645596, 29.449581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369291, 0.360975, 0.856342,
		-0.760734, 0.411843, -0.501666,
		-0.533767, -0.836709, 0.122516,
		39.898178, 35.394585, 29.486336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635799, 36.229256, 29.547195>,  <40.271816, 35.980278, 29.400574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635799, 36.229256, 29.547195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643940, 35.855118, 29.688457>,  <39.648827, 35.630634, 29.773214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643940, 35.855118, 29.688457>,  <39.635799, 36.229256, 29.547195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643940, 35.855118, 29.688457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347246, 0.324624, 0.879795,
		-0.937553, -0.140538, -0.318187,
		0.020353, -0.935344, 0.353154,
		39.650047, 35.574516, 29.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957523, 36.209061, 29.866827>,  <39.635799, 36.229256, 29.547195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957523, 36.209061, 29.866827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183235, 35.908718, 30.004116>,  <39.318661, 35.728512, 30.086491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183235, 35.908718, 30.004116>,  <38.957523, 36.209061, 29.866827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183235, 35.908718, 30.004116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253642, 0.237958, 0.937572,
		-0.785657, -0.616107, -0.056175,
		0.564278, -0.750858, 0.343224,
		39.352520, 35.683460, 30.107084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515312, 35.781513, 30.256353>,  <38.957523, 36.209061, 29.866827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515312, 35.781513, 30.256353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887005, 35.716942, 30.389301>,  <39.110020, 35.678200, 30.469070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887005, 35.716942, 30.389301>,  <38.515312, 35.781513, 30.256353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887005, 35.716942, 30.389301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313608, 0.131116, 0.940457,
		-0.195392, -0.978136, 0.071213,
		0.929232, -0.161425, 0.332371,
		39.165775, 35.668514, 30.489012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487541, 35.260506, 30.765335>,  <38.515312, 35.781513, 30.256353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487541, 35.260506, 30.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826263, 35.464737, 30.824982>,  <39.029495, 35.587276, 30.860769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826263, 35.464737, 30.824982>,  <38.487541, 35.260506, 30.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826263, 35.464737, 30.824982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309380, 0.244747, 0.918903,
		0.432677, -0.824262, 0.365215,
		0.846802, 0.510579, 0.149114,
		39.080303, 35.617908, 30.869717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714844, 35.069576, 31.439157>,  <38.487541, 35.260506, 30.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714844, 35.069576, 31.439157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942799, 35.392921, 31.380131>,  <39.079571, 35.586929, 31.344715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942799, 35.392921, 31.380131>,  <38.714844, 35.069576, 31.439157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942799, 35.392921, 31.380131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284947, 0.362845, 0.887214,
		0.770733, -0.463567, 0.437122,
		0.569890, 0.808362, -0.147565,
		39.113766, 35.635429, 31.335861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059441, 35.104652, 31.982149>,  <38.714844, 35.069576, 31.439157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059441, 35.104652, 31.982149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138550, 35.482224, 31.876408>,  <39.186016, 35.708767, 31.812962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138550, 35.482224, 31.876408>,  <39.059441, 35.104652, 31.982149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138550, 35.482224, 31.876408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164651, 0.297840, 0.940309,
		0.966320, -0.142443, 0.214324,
		0.197775, 0.943929, -0.264356,
		39.197884, 35.765404, 31.797100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511513, 35.358994, 32.552120>,  <39.059441, 35.104652, 31.982149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511513, 35.358994, 32.552120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304672, 35.655193, 32.380413>,  <39.180569, 35.832912, 32.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304672, 35.655193, 32.380413>,  <39.511513, 35.358994, 32.552120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304672, 35.655193, 32.380413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264129, 0.339000, 0.902948,
		0.814151, 0.580298, 0.020289,
		-0.517101, 0.740495, -0.429271,
		39.149544, 35.877342, 32.251633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673939, 35.977283, 33.002777>,  <39.511513, 35.358994, 32.552120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673939, 35.977283, 33.002777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334576, 36.040794, 32.800789>,  <39.130959, 36.078899, 32.679596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334576, 36.040794, 32.800789>,  <39.673939, 35.977283, 33.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334576, 36.040794, 32.800789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413207, 0.397590, 0.819257,
		0.330850, 0.903721, -0.271711,
		-0.848409, 0.158779, -0.504966,
		39.080051, 36.088428, 32.649300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435970, 36.721012, 32.943535>,  <39.673939, 35.977283, 33.002777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435970, 36.721012, 32.943535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105396, 36.497742, 32.914009>,  <38.907051, 36.363777, 32.896294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105396, 36.497742, 32.914009>,  <39.435970, 36.721012, 32.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105396, 36.497742, 32.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392311, 0.476834, 0.786589,
		-0.403862, 0.679018, -0.613050,
		-0.826431, -0.558179, -0.073811,
		38.857468, 36.330288, 32.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870701, 37.088604, 33.109653>,  <39.435970, 36.721012, 32.943535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870701, 37.088604, 33.109653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689999, 36.732433, 33.131779>,  <38.581577, 36.518730, 33.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689999, 36.732433, 33.131779>,  <38.870701, 37.088604, 33.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689999, 36.732433, 33.131779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576587, 0.338719, 0.743516,
		-0.680781, 0.303996, -0.666426,
		-0.451757, -0.890424, 0.055313,
		38.554470, 36.465305, 33.148373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262756, 37.351391, 33.185219>,  <38.870701, 37.088604, 33.109653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262756, 37.351391, 33.185219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238503, 36.975842, 33.320766>,  <38.223949, 36.750511, 33.402096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238503, 36.975842, 33.320766>,  <38.262756, 37.351391, 33.185219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238503, 36.975842, 33.320766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700086, 0.281991, 0.656018,
		-0.711479, -0.197457, -0.674395,
		-0.060638, -0.938878, 0.338867,
		38.220310, 36.694180, 33.422428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561943, 36.952370, 33.151096>,  <38.262756, 37.351391, 33.185219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561943, 36.952370, 33.151096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796494, 36.843899, 33.456417>,  <37.937222, 36.778816, 33.639610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796494, 36.843899, 33.456417>,  <37.561943, 36.952370, 33.151096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796494, 36.843899, 33.456417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758490, 0.146980, 0.634893,
		-0.284358, -0.951241, -0.119500,
		0.586373, -0.271177, 0.763303,
		37.972404, 36.762547, 33.685410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201378, 36.434177, 33.429108>,  <37.561943, 36.952370, 33.151096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201378, 36.434177, 33.429108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461060, 36.594997, 33.687378>,  <37.616867, 36.691490, 33.842339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461060, 36.594997, 33.687378>,  <37.201378, 36.434177, 33.429108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461060, 36.594997, 33.687378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741998, 0.148091, 0.653842,
		0.167255, -0.903565, 0.394457,
		0.649204, 0.402045, 0.645674,
		37.655819, 36.715611, 33.881081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030334, 36.102837, 34.083878>,  <37.201378, 36.434177, 33.429108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030334, 36.102837, 34.083878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183224, 36.467567, 34.143848>,  <37.274956, 36.686405, 34.179832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183224, 36.467567, 34.143848>,  <37.030334, 36.102837, 34.083878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183224, 36.467567, 34.143848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663648, 0.157963, 0.731176,
		0.643022, -0.378973, 0.665509,
		0.382222, 0.911826, 0.149931,
		37.297890, 36.741116, 34.188828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545197, 35.659702, 33.827744>,  <37.030334, 36.102837, 34.083878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545197, 35.659702, 33.827744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300529, 35.867611, 33.589180>,  <36.153728, 35.992355, 33.446041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300529, 35.867611, 33.589180>,  <36.545197, 35.659702, 33.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300529, 35.867611, 33.589180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172686, -0.647979, -0.741824,
		-0.772036, -0.556742, 0.306592,
		-0.611670, 0.519771, -0.596405,
		36.117027, 36.023540, 33.410259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847431, 35.208881, 33.601723>,  <36.545197, 35.659702, 33.827744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847431, 35.208881, 33.601723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017269, 35.483009, 33.365059>,  <36.119171, 35.647484, 33.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017269, 35.483009, 33.365059>,  <35.847431, 35.208881, 33.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017269, 35.483009, 33.365059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219650, -0.711937, -0.667008,
		-0.878337, 0.153248, -0.452813,
		0.424592, 0.685318, -0.591660,
		36.144646, 35.688606, 33.187561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648792, 35.130478, 32.886444>,  <35.847431, 35.208881, 33.601723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648792, 35.130478, 32.886444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014156, 35.293297, 32.887169>,  <36.233376, 35.390987, 32.887604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014156, 35.293297, 32.887169>,  <35.648792, 35.130478, 32.886444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014156, 35.293297, 32.887169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302171, -0.675073, -0.673030,
		-0.272727, 0.615299, -0.739613,
		0.913407, 0.407043, 0.001815,
		36.288177, 35.415409, 32.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517036, 35.188789, 32.051395>,  <35.648792, 35.130478, 32.886444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517036, 35.188789, 32.051395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877068, 35.145088, 32.220116>,  <36.093086, 35.118866, 32.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877068, 35.145088, 32.220116>,  <35.517036, 35.188789, 32.051395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877068, 35.145088, 32.220116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354283, -0.380017, -0.854442,
		0.253643, 0.918504, -0.303340,
		0.900083, -0.109255, 0.421799,
		36.147091, 35.112312, 32.346657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957779, 35.575195, 31.688444>,  <35.517036, 35.188789, 32.051395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957779, 35.575195, 31.688444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151562, 35.258701, 31.837711>,  <36.267830, 35.068806, 31.927271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151562, 35.258701, 31.837711>,  <35.957779, 35.575195, 31.688444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151562, 35.258701, 31.837711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293691, -0.254708, -0.921341,
		0.824046, 0.555941, 0.108984,
		0.484452, -0.791235, 0.373166,
		36.296898, 35.021332, 31.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604321, 35.615913, 31.359039>,  <35.957779, 35.575195, 31.688444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604321, 35.615913, 31.359039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523335, 35.237453, 31.460087>,  <36.474743, 35.010380, 31.520716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523335, 35.237453, 31.460087>,  <36.604321, 35.615913, 31.359039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523335, 35.237453, 31.460087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299604, -0.305438, -0.903850,
		0.932332, -0.107316, 0.345311,
		-0.202469, -0.946145, 0.252617,
		36.462593, 34.953609, 31.535872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187973, 35.292889, 31.212086>,  <36.604321, 35.615913, 31.359039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187973, 35.292889, 31.212086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915791, 35.000237, 31.195610>,  <36.752480, 34.824646, 31.185724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915791, 35.000237, 31.195610>,  <37.187973, 35.292889, 31.212086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915791, 35.000237, 31.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342564, -0.267910, -0.900486,
		0.647789, -0.626850, 0.432931,
		-0.680456, -0.731631, -0.041187,
		36.711655, 34.780746, 31.183254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503113, 34.639812, 30.925846>,  <37.187973, 35.292889, 31.212086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503113, 34.639812, 30.925846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119091, 34.536743, 30.882214>,  <36.888680, 34.474899, 30.856035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119091, 34.536743, 30.882214>,  <37.503113, 34.639812, 30.925846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119091, 34.536743, 30.882214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219939, -0.453929, -0.863467,
		0.172980, -0.852967, 0.492469,
		-0.960055, -0.257676, -0.109080,
		36.831074, 34.459442, 30.849489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541561, 33.898884, 30.713970>,  <37.503113, 34.639812, 30.925846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541561, 33.898884, 30.713970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207222, 34.095261, 30.615711>,  <37.006618, 34.213085, 30.556755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207222, 34.095261, 30.615711>,  <37.541561, 33.898884, 30.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207222, 34.095261, 30.615711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009978, -0.433812, -0.900948,
		-0.548877, -0.755503, 0.357701,
		-0.835844, 0.490941, -0.245648,
		36.956470, 34.242542, 30.542017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998581, 33.320152, 30.411886>,  <37.541561, 33.898884, 30.713970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998581, 33.320152, 30.411886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885166, 33.676083, 30.268883>,  <36.817116, 33.889641, 30.183081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885166, 33.676083, 30.268883>,  <36.998581, 33.320152, 30.411886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885166, 33.676083, 30.268883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085345, -0.394746, -0.914818,
		-0.955155, -0.228876, 0.187869,
		-0.283541, 0.889826, -0.357511,
		36.800102, 33.943031, 30.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485771, 33.094227, 29.965250>,  <36.998581, 33.320152, 30.411886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485771, 33.094227, 29.965250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592396, 33.464825, 29.859001>,  <36.656368, 33.687183, 29.795252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592396, 33.464825, 29.859001>,  <36.485771, 33.094227, 29.965250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592396, 33.464825, 29.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030326, -0.267393, -0.963110,
		-0.963342, 0.264779, -0.043179,
		0.266557, 0.926495, -0.265621,
		36.672363, 33.742775, 29.779316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158817, 33.296413, 29.350126>,  <36.485771, 33.094227, 29.965250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158817, 33.296413, 29.350126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454571, 33.565540, 29.360153>,  <36.632023, 33.727016, 29.366169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454571, 33.565540, 29.360153>,  <36.158817, 33.296413, 29.350126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454571, 33.565540, 29.360153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110550, -0.084591, -0.990264,
		-0.664145, 0.734958, -0.136925,
		0.739385, 0.672816, 0.025069,
		36.676388, 33.767384, 29.367674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983238, 33.810825, 28.822229>,  <36.158817, 33.296413, 29.350126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983238, 33.810825, 28.822229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 33.877216, 28.886772>,  <36.605858, 33.917053, 28.925497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 33.877216, 28.886772>,  <35.983238, 33.810825, 28.822229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372375, 33.877216, 28.886772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174466, -0.067613, -0.982339,
		-0.152140, 0.983808, -0.094735,
		0.972839, 0.165981, 0.161355,
		36.664227, 33.927010, 28.935179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128906, 34.360592, 28.494484>,  <35.983238, 33.810825, 28.822229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128906, 34.360592, 28.494484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487778, 34.185879, 28.520699>,  <36.703098, 34.081051, 28.536428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487778, 34.185879, 28.520699>,  <36.128906, 34.360592, 28.494484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487778, 34.185879, 28.520699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042011, -0.063320, -0.997109,
		0.439673, 0.897334, -0.038459,
		0.897175, -0.436786, 0.065538,
		36.756931, 34.054844, 28.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603943, 34.753216, 27.949583>,  <36.128906, 34.360592, 28.494484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603943, 34.753216, 27.949583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818298, 34.426666, 28.035702>,  <36.946911, 34.230736, 28.087374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818298, 34.426666, 28.035702>,  <36.603943, 34.753216, 27.949583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818298, 34.426666, 28.035702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347312, -0.019268, -0.937551,
		0.769542, 0.577200, 0.273212,
		0.535891, -0.816375, 0.215296,
		36.979065, 34.181755, 28.100290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260548, 34.905670, 27.721703>,  <36.603943, 34.753216, 27.949583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260548, 34.905670, 27.721703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310505, 34.510094, 27.753719>,  <37.340477, 34.272747, 27.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310505, 34.510094, 27.753719>,  <37.260548, 34.905670, 27.721703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310505, 34.510094, 27.753719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479323, -0.010497, -0.877576,
		0.868707, 0.147967, 0.472709,
		0.124890, -0.988937, 0.080043,
		37.347973, 34.213413, 27.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825531, 34.843189, 27.402313>,  <37.260548, 34.905670, 27.721703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825531, 34.843189, 27.402313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706173, 34.461414, 27.403797>,  <37.634560, 34.232349, 27.404688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706173, 34.461414, 27.403797>,  <37.825531, 34.843189, 27.402313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706173, 34.461414, 27.403797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389759, -0.125400, -0.912339,
		0.871234, -0.270791, 0.409419,
		-0.298395, -0.954435, 0.003710,
		37.616653, 34.175083, 27.404909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466892, 34.407410, 27.101282>,  <37.825531, 34.843189, 27.402313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466892, 34.407410, 27.101282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115585, 34.218941, 27.068691>,  <37.904800, 34.105858, 27.049137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115585, 34.218941, 27.068691>,  <38.466892, 34.407410, 27.101282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115585, 34.218941, 27.068691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158636, -0.126370, -0.979217,
		0.451082, -0.872942, 0.185732,
		-0.878271, -0.471171, -0.081477,
		37.852104, 34.077591, 27.044249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598667, 33.855843, 26.687183>,  <38.466892, 34.407410, 27.101282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598667, 33.855843, 26.687183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203857, 33.909084, 26.651249>,  <37.966972, 33.941029, 26.629688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203857, 33.909084, 26.651249>,  <38.598667, 33.855843, 26.687183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203857, 33.909084, 26.651249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070372, -0.144345, -0.987022,
		-0.144345, -0.980535, 0.133105,
		0.987022, -0.133105, 0.089838,
		37.907749, 33.949017, 26.624298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337914, 33.371746, 26.129604>,  <38.598667, 33.855843, 26.687183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337914, 33.371746, 26.129604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056499, 33.655762, 26.141483>,  <37.887650, 33.826172, 26.148611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056499, 33.655762, 26.141483>,  <38.337914, 33.371746, 26.129604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056499, 33.655762, 26.141483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108881, 0.148989, -0.982826,
		-0.702270, -0.688220, -0.182129,
		-0.703535, 0.710039, 0.029696,
		37.845440, 33.868774, 26.150393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989002, 33.283051, 25.544718>,  <38.337914, 33.371746, 26.129604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989002, 33.283051, 25.544718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876007, 33.649624, 25.658100>,  <37.808208, 33.869568, 25.726130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876007, 33.649624, 25.658100>,  <37.989002, 33.283051, 25.544718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876007, 33.649624, 25.658100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148424, 0.333691, -0.930925,
		-0.947719, -0.220902, -0.230285,
		-0.282487, 0.916435, 0.283458,
		37.791260, 33.924553, 25.743137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576244, 33.435226, 25.001825>,  <37.989002, 33.283051, 25.544718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576244, 33.435226, 25.001825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673969, 33.786301, 25.166744>,  <37.732605, 33.996944, 25.265696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673969, 33.786301, 25.166744>,  <37.576244, 33.435226, 25.001825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673969, 33.786301, 25.166744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095225, 0.401411, -0.910935,
		-0.965010, 0.261812, 0.014492,
		0.244310, 0.877681, 0.412296,
		37.747261, 34.049606, 25.290434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245853, 33.945297, 24.576841>,  <37.576244, 33.435226, 25.001825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245853, 33.945297, 24.576841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546745, 34.129787, 24.765064>,  <37.727280, 34.240482, 24.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546745, 34.129787, 24.765064>,  <37.245853, 33.945297, 24.576841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546745, 34.129787, 24.765064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287942, 0.412247, -0.864374,
		-0.592660, 0.785697, 0.177296,
		0.752226, 0.461229, 0.470557,
		37.772411, 34.268158, 24.906231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184212, 34.711868, 24.411856>,  <37.245853, 33.945297, 24.576841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184212, 34.711868, 24.411856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556530, 34.635609, 24.536606>,  <37.779922, 34.589851, 24.611456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556530, 34.635609, 24.536606>,  <37.184212, 34.711868, 24.411856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556530, 34.635609, 24.536606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364812, 0.431023, -0.825307,
		0.022917, 0.881971, 0.470746,
		0.930799, -0.190648, 0.311876,
		37.835770, 34.578415, 24.630169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405685, 35.264385, 24.279085>,  <37.184212, 34.711868, 24.411856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405685, 35.264385, 24.279085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724339, 35.024654, 24.310551>,  <37.915531, 34.880817, 24.329430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724339, 35.024654, 24.310551>,  <37.405685, 35.264385, 24.279085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724339, 35.024654, 24.310551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430005, 0.470424, -0.770583,
		0.424824, 0.647696, 0.632467,
		0.796631, -0.599326, 0.078665,
		37.963329, 34.844856, 24.334150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004372, 35.636539, 24.356009>,  <37.405685, 35.264385, 24.279085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004372, 35.636539, 24.356009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083248, 35.282295, 24.187813>,  <38.130573, 35.069748, 24.086895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083248, 35.282295, 24.187813>,  <38.004372, 35.636539, 24.356009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083248, 35.282295, 24.187813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407677, 0.464141, -0.786367,
		0.891581, -0.016361, 0.452566,
		0.197189, -0.885610, -0.420489,
		38.142406, 35.016613, 24.061666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542351, 35.463509, 24.953367>,  <38.004372, 35.636539, 24.356009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542351, 35.463509, 24.953367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447956, 35.825844, 24.812649>,  <37.391319, 36.043247, 24.728218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447956, 35.825844, 24.812649>,  <37.542351, 35.463509, 24.953367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447956, 35.825844, 24.812649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875111, -0.355497, -0.328334,
		-0.422481, 0.230380, 0.876604,
		-0.235989, 0.905841, -0.351798,
		37.377159, 36.097595, 24.707109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916920, 35.712574, 25.229147>,  <37.542351, 35.463509, 24.953367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916920, 35.712574, 25.229147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980831, 35.868237, 24.866264>,  <37.019176, 35.961636, 24.648535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980831, 35.868237, 24.866264>,  <36.916920, 35.712574, 25.229147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980831, 35.868237, 24.866264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844779, -0.421549, -0.329611,
		-0.510704, 0.819056, 0.261398,
		0.159778, 0.389158, -0.907208,
		37.028763, 35.984985, 24.594101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323574, 36.157417, 24.953480>,  <36.916920, 35.712574, 25.229147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323574, 36.157417, 24.953480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538555, 35.931805, 24.702717>,  <36.667545, 35.796436, 24.552259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538555, 35.931805, 24.702717>,  <36.323574, 36.157417, 24.953480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538555, 35.931805, 24.702717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795074, -0.586694, -0.153775,
		-0.281069, 0.581085, -0.763767,
		0.537454, -0.564030, -0.626908,
		36.699791, 35.762596, 24.514645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951397, 36.001209, 24.308254>,  <36.323574, 36.157417, 24.953480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951397, 36.001209, 24.308254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198364, 35.707771, 24.421841>,  <36.346542, 35.531708, 24.489992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198364, 35.707771, 24.421841>,  <35.951397, 36.001209, 24.308254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198364, 35.707771, 24.421841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778037, -0.622722, 0.082918,
		0.116003, -0.272131, -0.955242,
		0.617415, -0.733595, 0.283966,
		36.383587, 35.487694, 24.507030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133274, 35.489746, 23.745739>,  <35.951397, 36.001209, 24.308254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133274, 35.489746, 23.745739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079124, 35.351772, 24.117264>,  <36.046635, 35.268990, 24.340179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079124, 35.351772, 24.117264>,  <36.133274, 35.489746, 23.745739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079124, 35.351772, 24.117264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774728, -0.547525, -0.316249,
		0.617633, -0.762389, -0.193111,
		-0.135372, -0.344934, 0.928814,
		36.038513, 35.248291, 24.395908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631550, 35.222191, 23.154646>,  <36.133274, 35.489746, 23.745739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631550, 35.222191, 23.154646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537483, 34.872601, 23.324757>,  <35.481045, 34.662846, 23.426823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537483, 34.872601, 23.324757>,  <35.631550, 35.222191, 23.154646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537483, 34.872601, 23.324757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485408, 0.273469, 0.830418,
		-0.842067, 0.401716, 0.359926,
		-0.235164, -0.873979, 0.425276,
		35.466934, 34.610409, 23.452339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237591, 35.078251, 22.514431>,  <35.631550, 35.222191, 23.154646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237591, 35.078251, 22.514431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913216, 35.022923, 22.741848>,  <34.718590, 34.989727, 22.878298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913216, 35.022923, 22.741848>,  <35.237591, 35.078251, 22.514431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913216, 35.022923, 22.741848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006642, -0.973772, -0.227430,
		0.585090, -0.180657, 0.790590,
		-0.810941, -0.138318, 0.568544,
		34.669933, 34.981426, 22.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367226, 34.462387, 22.864307>,  <35.237591, 35.078251, 22.514431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367226, 34.462387, 22.864307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969578, 34.505657, 22.866455>,  <34.730991, 34.531620, 22.867744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969578, 34.505657, 22.866455>,  <35.367226, 34.462387, 22.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969578, 34.505657, 22.866455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106532, -0.967696, -0.228507,
		-0.019521, -0.227735, 0.973528,
		-0.994118, 0.108172, 0.005370,
		34.671341, 34.538109, 22.868067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111492, 33.937309, 23.315588>,  <35.367226, 34.462387, 22.864307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111492, 33.937309, 23.315588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810955, 34.045059, 23.074615>,  <34.630634, 34.109711, 22.930031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810955, 34.045059, 23.074615>,  <35.111492, 33.937309, 23.315588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810955, 34.045059, 23.074615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153446, -0.959185, -0.237526,
		-0.641828, -0.086022, 0.762009,
		-0.751340, 0.269378, -0.602432,
		34.585552, 34.125874, 22.893887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658714, 33.375671, 23.461021>,  <35.111492, 33.937309, 23.315588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658714, 33.375671, 23.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522480, 33.549870, 23.127712>,  <34.440739, 33.654388, 22.927727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522480, 33.549870, 23.127712>,  <34.658714, 33.375671, 23.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522480, 33.549870, 23.127712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130540, -0.899580, -0.416792,
		-0.931106, -0.033179, 0.363236,
		-0.340588, 0.435494, -0.833274,
		34.420303, 33.680519, 22.877729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060188, 32.963890, 23.200542>,  <34.658714, 33.375671, 23.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060188, 32.963890, 23.200542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210464, 33.162956, 22.887829>,  <34.300629, 33.282398, 22.700201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210464, 33.162956, 22.887829>,  <34.060188, 32.963890, 23.200542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210464, 33.162956, 22.887829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021000, -0.838790, -0.544049,
		-0.926508, 0.220810, -0.304674,
		0.375689, 0.497668, -0.781783,
		34.323170, 33.312256, 22.653294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616180, 32.850204, 22.701197>,  <34.060188, 32.963890, 23.200542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616180, 32.850204, 22.701197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960629, 32.928921, 22.513687>,  <34.167297, 32.976151, 22.401180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960629, 32.928921, 22.513687>,  <33.616180, 32.850204, 22.701197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960629, 32.928921, 22.513687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138269, -0.796639, -0.588429,
		-0.489244, 0.571523, -0.658788,
		0.861117, 0.196795, -0.468775,
		34.218964, 32.987961, 22.373055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627155, 32.392227, 22.202900>,  <33.616180, 32.850204, 22.701197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627155, 32.392227, 22.202900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983589, 32.548965, 22.111305>,  <34.197449, 32.643009, 22.056349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983589, 32.548965, 22.111305>,  <33.627155, 32.392227, 22.202900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983589, 32.548965, 22.111305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188260, -0.778226, -0.599101,
		-0.412956, 0.490738, -0.767231,
		0.891081, 0.391842, -0.228987,
		34.250912, 32.666519, 22.042608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699642, 32.513908, 21.467417>,  <33.627155, 32.392227, 22.202900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699642, 32.513908, 21.467417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060810, 32.475170, 21.634918>,  <34.277512, 32.451927, 21.735418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060810, 32.475170, 21.634918>,  <33.699642, 32.513908, 21.467417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060810, 32.475170, 21.634918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073444, -0.925190, -0.372330,
		0.423485, 0.366940, -0.828260,
		0.902921, -0.096846, 0.418754,
		34.331688, 32.446117, 21.760544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122684, 32.135021, 20.950556>,  <33.699642, 32.513908, 21.467417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122684, 32.135021, 20.950556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316273, 32.079357, 21.296135>,  <34.432426, 32.045959, 21.503483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316273, 32.079357, 21.296135>,  <34.122684, 32.135021, 20.950556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316273, 32.079357, 21.296135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103346, -0.971277, -0.214340,
		0.868958, 0.193021, -0.455692,
		0.483975, -0.139159, 0.863946,
		34.461464, 32.037609, 21.555319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647518, 31.622465, 20.733467>,  <34.122684, 32.135021, 20.950556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647518, 31.622465, 20.733467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636055, 31.609673, 21.133099>,  <34.629177, 31.601997, 21.372877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636055, 31.609673, 21.133099>,  <34.647518, 31.622465, 20.733467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636055, 31.609673, 21.133099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152389, -0.987945, -0.027252,
		0.987905, 0.151468, 0.033181,
		-0.028653, -0.031979, 0.999078,
		34.627460, 31.600079, 21.432821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299515, 31.160721, 21.073717>,  <34.647518, 31.622465, 20.733467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299515, 31.160721, 21.073717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012932, 31.182808, 21.351894>,  <34.840984, 31.196060, 21.518801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012932, 31.182808, 21.351894>,  <35.299515, 31.160721, 21.073717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012932, 31.182808, 21.351894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116507, -0.973392, 0.197315,
		0.687835, 0.222391, 0.690959,
		-0.716456, 0.055219, 0.695444,
		34.797997, 31.199373, 21.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598763, 30.787336, 21.650101>,  <35.299515, 31.160721, 21.073717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598763, 30.787336, 21.650101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198833, 30.794239, 21.653137>,  <34.958878, 30.798380, 21.654959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198833, 30.794239, 21.653137>,  <35.598763, 30.787336, 21.650101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198833, 30.794239, 21.653137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016395, -0.994680, 0.101704,
		0.009306, 0.101562, 0.994786,
		-0.999822, 0.017256, 0.007591,
		34.898888, 30.799416, 21.655415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460941, 30.206385, 22.040871>,  <35.598763, 30.787336, 21.650101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460941, 30.206385, 22.040871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097126, 30.295654, 21.900620>,  <34.878838, 30.349216, 21.816469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097126, 30.295654, 21.900620>,  <35.460941, 30.206385, 22.040871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097126, 30.295654, 21.900620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282883, -0.950462, 0.128835,
		-0.304504, 0.216366, 0.927611,
		-0.909536, 0.223174, -0.350626,
		34.824265, 30.362606, 21.795431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041756, 30.058491, 22.580555>,  <35.460941, 30.206385, 22.040871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041756, 30.058491, 22.580555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804379, 30.031437, 22.259743>,  <34.661953, 30.015203, 22.067255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804379, 30.031437, 22.259743>,  <35.041756, 30.058491, 22.580555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804379, 30.031437, 22.259743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221377, -0.944315, 0.243436,
		-0.773836, 0.322016, 0.545422,
		-0.593440, -0.067636, -0.802031,
		34.626347, 30.011147, 22.019133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439316, 29.830866, 22.884752>,  <35.041756, 30.058491, 22.580555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439316, 29.830866, 22.884752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477077, 29.736355, 22.497917>,  <34.499737, 29.679649, 22.265816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477077, 29.736355, 22.497917>,  <34.439316, 29.830866, 22.884752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477077, 29.736355, 22.497917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440564, -0.881042, 0.172245,
		-0.892743, 0.409804, -0.187270,
		0.094406, -0.236275, -0.967089,
		34.505398, 29.665472, 22.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750423, 29.680723, 22.735680>,  <34.439316, 29.830866, 22.884752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750423, 29.680723, 22.735680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986958, 29.526398, 22.452423>,  <34.128880, 29.433802, 22.282469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986958, 29.526398, 22.452423>,  <33.750423, 29.680723, 22.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986958, 29.526398, 22.452423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477712, -0.875061, 0.077841,
		-0.649700, 0.292257, -0.701766,
		0.591339, -0.385815, -0.708142,
		34.164360, 29.410652, 22.239981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380692, 29.254742, 22.325787>,  <33.750423, 29.680723, 22.735680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380692, 29.254742, 22.325787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751068, 29.119125, 22.259228>,  <33.973293, 29.037756, 22.219292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751068, 29.119125, 22.259228>,  <33.380692, 29.254742, 22.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751068, 29.119125, 22.259228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356451, -0.930127, -0.088356,
		-0.124816, 0.141126, -0.982092,
		0.925939, -0.339039, -0.166399,
		34.028851, 29.017414, 22.209309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238434, 28.622637, 22.026031>,  <33.380692, 29.254742, 22.325787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238434, 28.622637, 22.026031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628223, 28.583179, 22.106689>,  <33.862099, 28.559505, 22.155085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628223, 28.583179, 22.106689>,  <33.238434, 28.622637, 22.026031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628223, 28.583179, 22.106689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125570, -0.984127, 0.125404,
		0.186075, -0.147524, -0.971397,
		0.974478, -0.098644, 0.201646,
		33.920567, 28.553587, 22.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576435, 28.083878, 21.566210>,  <33.238434, 28.622637, 22.026031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576435, 28.083878, 21.566210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798050, 28.117828, 21.897472>,  <33.931019, 28.138199, 22.096230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798050, 28.117828, 21.897472>,  <33.576435, 28.083878, 21.566210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798050, 28.117828, 21.897472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182974, -0.958048, 0.220601,
		0.812137, -0.273752, -0.515261,
		0.554034, 0.084879, 0.828156,
		33.964260, 28.143291, 22.145920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898098, 27.446402, 21.687630>,  <33.576435, 28.083878, 21.566210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898098, 27.446402, 21.687630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053047, 27.553249, 22.040581>,  <34.146019, 27.617357, 22.252352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053047, 27.553249, 22.040581>,  <33.898098, 27.446402, 21.687630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053047, 27.553249, 22.040581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219617, -0.956289, 0.193079,
		0.895381, 0.118991, -0.429108,
		0.387376, 0.267119, 0.882376,
		34.169262, 27.633385, 22.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496273, 27.067982, 21.839926>,  <33.898098, 27.446402, 21.687630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496273, 27.067982, 21.839926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450253, 27.212959, 22.209877>,  <34.422638, 27.299946, 22.431847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450253, 27.212959, 22.209877>,  <34.496273, 27.067982, 21.839926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450253, 27.212959, 22.209877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255547, -0.888924, 0.380144,
		0.959926, 0.280087, 0.009655,
		-0.115056, 0.362443, 0.924877,
		34.415737, 27.321692, 22.487341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096066, 26.835627, 22.296724>,  <34.496273, 27.067982, 21.839926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096066, 26.835627, 22.296724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764133, 26.916000, 22.504955>,  <34.564972, 26.964226, 22.629894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764133, 26.916000, 22.504955>,  <35.096066, 26.835627, 22.296724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764133, 26.916000, 22.504955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149174, -0.819077, 0.553949,
		0.537700, 0.537342, 0.649724,
		-0.829835, 0.200937, 0.520575,
		34.515182, 26.976282, 22.661127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206844, 26.596769, 22.974056>,  <35.096066, 26.835627, 22.296724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206844, 26.596769, 22.974056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809391, 26.641727, 22.977314>,  <34.570919, 26.668701, 22.979269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809391, 26.641727, 22.977314>,  <35.206844, 26.596769, 22.974056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809391, 26.641727, 22.977314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088480, -0.822886, 0.561275,
		0.069784, 0.556980, 0.827589,
		-0.993630, 0.112393, 0.008142,
		34.511303, 26.675446, 22.979757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078758, 26.439386, 23.666119>,  <35.206844, 26.596769, 22.974056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078758, 26.439386, 23.666119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731541, 26.402729, 23.470932>,  <34.523212, 26.380735, 23.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731541, 26.402729, 23.470932>,  <35.078758, 26.439386, 23.666119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731541, 26.402729, 23.470932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221985, -0.807479, 0.546535,
		-0.444106, 0.582735, 0.680580,
		-0.868040, -0.091641, -0.487964,
		34.471130, 26.375237, 23.324543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582069, 26.211969, 24.194738>,  <35.078758, 26.439386, 23.666119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582069, 26.211969, 24.194738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422997, 26.101570, 23.844727>,  <34.327553, 26.035332, 23.634720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422997, 26.101570, 23.844727>,  <34.582069, 26.211969, 24.194738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422997, 26.101570, 23.844727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013831, -0.951774, 0.306489,
		-0.917420, 0.133986, 0.374683,
		-0.397679, -0.275997, -0.875030,
		34.303692, 26.018770, 23.582218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069347, 25.752274, 24.414883>,  <34.582069, 26.211969, 24.194738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069347, 25.752274, 24.414883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163212, 25.673798, 24.034054>,  <34.219532, 25.626711, 23.805557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163212, 25.673798, 24.034054>,  <34.069347, 25.752274, 24.414883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163212, 25.673798, 24.034054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017504, -0.978410, 0.205933,
		-0.971919, -0.064990, -0.226164,
		0.234665, -0.196191, -0.952072,
		34.233612, 25.614941, 23.748432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603962, 25.261992, 24.213282>,  <34.069347, 25.752274, 24.414883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603962, 25.261992, 24.213282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894993, 25.172745, 23.953789>,  <34.069611, 25.119196, 23.798092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894993, 25.172745, 23.953789>,  <33.603962, 25.261992, 24.213282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894993, 25.172745, 23.953789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195490, -0.973858, 0.115688,
		-0.657587, 0.042650, -0.752170,
		0.727573, -0.223117, -0.648734,
		34.113266, 25.105810, 23.759169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366856, 24.721142, 23.985956>,  <33.603962, 25.261992, 24.213282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366856, 24.721142, 23.985956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729351, 24.705708, 23.817554>,  <33.946850, 24.696447, 23.716513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729351, 24.705708, 23.817554>,  <33.366856, 24.721142, 23.985956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729351, 24.705708, 23.817554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108751, -0.983592, -0.143945,
		-0.408543, 0.176233, -0.895564,
		0.906237, -0.038586, -0.421005,
		34.001221, 24.694132, 23.691254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359245, 24.310564, 23.379185>,  <33.366856, 24.721142, 23.985956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359245, 24.310564, 23.379185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749672, 24.318008, 23.465851>,  <33.983929, 24.322475, 23.517851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749672, 24.318008, 23.465851>,  <33.359245, 24.310564, 23.379185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749672, 24.318008, 23.465851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030463, -0.998208, -0.051495,
		0.215318, 0.056863, -0.974887,
		0.976069, 0.018610, 0.216665,
		34.042492, 24.323591, 23.530849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636089, 23.741592, 23.001265>,  <33.359245, 24.310564, 23.379185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636089, 23.741592, 23.001265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875374, 23.813915, 23.313534>,  <34.018944, 23.857309, 23.500895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875374, 23.813915, 23.313534>,  <33.636089, 23.741592, 23.001265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875374, 23.813915, 23.313534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175144, -0.980160, 0.092798,
		0.781962, 0.081217, -0.618012,
		0.598214, 0.180806, 0.780672,
		34.054836, 23.868156, 23.547735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288456, 23.544123, 22.874083>,  <33.636089, 23.741592, 23.001265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288456, 23.544123, 22.874083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259933, 23.531281, 23.272858>,  <34.242821, 23.523575, 23.512123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259933, 23.531281, 23.272858>,  <34.288456, 23.544123, 22.874083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259933, 23.531281, 23.272858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185006, -0.982565, -0.018412,
		0.980147, 0.183127, 0.076004,
		-0.071307, -0.032107, 0.996938,
		34.238541, 23.521648, 23.571939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750488, 23.098055, 23.084120>,  <34.288456, 23.544123, 22.874083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750488, 23.098055, 23.084120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504044, 23.130917, 23.397465>,  <34.356178, 23.150633, 23.585472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504044, 23.130917, 23.397465>,  <34.750488, 23.098055, 23.084120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504044, 23.130917, 23.397465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130768, -0.970075, 0.204582,
		0.776729, 0.228484, 0.586931,
		-0.616111, 0.082152, 0.783364,
		34.319210, 23.155561, 23.632473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079704, 22.695889, 23.554979>,  <34.750488, 23.098055, 23.084120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079704, 22.695889, 23.554979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707382, 22.730553, 23.697018>,  <34.483990, 22.751350, 23.782242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707382, 22.730553, 23.697018>,  <35.079704, 22.695889, 23.554979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707382, 22.730553, 23.697018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, -0.933325, 0.355700,
		0.362246, 0.348416, 0.864514,
		-0.930804, 0.086660, 0.355097,
		34.428143, 22.756550, 23.803547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133579, 22.492645, 24.263636>,  <35.079704, 22.695889, 23.554979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133579, 22.492645, 24.263636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741016, 22.469654, 24.190380>,  <34.505478, 22.455860, 24.146427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741016, 22.469654, 24.190380>,  <35.133579, 22.492645, 24.263636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741016, 22.469654, 24.190380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006167, -0.944178, 0.329377,
		-0.191847, 0.324381, 0.926268,
		-0.981405, -0.057478, -0.183138,
		34.446594, 22.452412, 24.135439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751064, 22.225431, 24.892687>,  <35.133579, 22.492645, 24.263636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751064, 22.225431, 24.892687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531105, 22.158020, 24.565464>,  <34.399132, 22.117573, 24.369131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531105, 22.158020, 24.565464>,  <34.751064, 22.225431, 24.892687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531105, 22.158020, 24.565464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100359, -0.959004, 0.265026,
		-0.829183, 0.227835, 0.510438,
		-0.549894, -0.168528, -0.818056,
		34.366138, 22.107462, 24.320047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184700, 21.859587, 25.127892>,  <34.751064, 22.225431, 24.892687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184700, 21.859587, 25.127892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238190, 21.763348, 24.743343>,  <34.270283, 21.705605, 24.512615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238190, 21.763348, 24.743343>,  <34.184700, 21.859587, 25.127892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238190, 21.763348, 24.743343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008521, -0.969768, 0.243883,
		-0.990982, -0.040805, -0.127633,
		0.133726, -0.240596, -0.961370,
		34.278309, 21.691170, 24.454933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748962, 21.267521, 25.108181>,  <34.184700, 21.859587, 25.127892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748962, 21.267521, 25.108181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992451, 21.242756, 24.791794>,  <34.138542, 21.227898, 24.601961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992451, 21.242756, 24.791794>,  <33.748962, 21.267521, 25.108181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992451, 21.242756, 24.791794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309141, -0.899646, 0.308331,
		-0.730680, -0.432208, -0.528491,
		0.608718, -0.061913, -0.790967,
		34.175068, 21.224182, 24.554504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700230, 20.588398, 24.889854>,  <33.748962, 21.267521, 25.108181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700230, 20.588398, 24.889854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031448, 20.720657, 24.708740>,  <34.230179, 20.800013, 24.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031448, 20.720657, 24.708740>,  <33.700230, 20.588398, 24.889854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031448, 20.720657, 24.708740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458170, -0.864529, 0.206568,
		-0.323145, -0.378500, -0.867361,
		0.828045, 0.330647, -0.452785,
		34.279861, 20.819851, 24.572905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955666, 20.138641, 24.300329>,  <33.700230, 20.588398, 24.889854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955666, 20.138641, 24.300329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297478, 20.320675, 24.400467>,  <34.502567, 20.429895, 24.460550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297478, 20.320675, 24.400467>,  <33.955666, 20.138641, 24.300329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297478, 20.320675, 24.400467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461851, -0.886282, 0.034617,
		0.237629, 0.086040, -0.967538,
		0.854533, 0.455084, 0.250344,
		34.553837, 20.457201, 24.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483788, 19.650532, 24.123287>,  <33.955666, 20.138641, 24.300329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483788, 19.650532, 24.123287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680538, 19.912823, 24.352402>,  <34.798588, 20.070198, 24.489870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680538, 19.912823, 24.352402>,  <34.483788, 19.650532, 24.123287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680538, 19.912823, 24.352402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613954, -0.727686, 0.305832,
		0.617350, 0.201233, -0.760516,
		0.491874, 0.655727, 0.572785,
		34.828102, 20.109541, 24.524237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174698, 19.617739, 23.915150>,  <34.483788, 19.650532, 24.123287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174698, 19.617739, 23.915150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134392, 19.747948, 24.291210>,  <35.110210, 19.826073, 24.516846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134392, 19.747948, 24.291210>,  <35.174698, 19.617739, 23.915150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134392, 19.747948, 24.291210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541412, -0.774848, 0.326317,
		0.834697, 0.541889, -0.098167,
		-0.100763, 0.325524, 0.940149,
		35.104164, 19.845606, 24.573256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871716, 19.646893, 24.171227>,  <35.174698, 19.617739, 23.915150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871716, 19.646893, 24.171227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620975, 19.603401, 24.479832>,  <35.470531, 19.577307, 24.664995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620975, 19.603401, 24.479832>,  <35.871716, 19.646893, 24.171227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620975, 19.603401, 24.479832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476026, -0.837356, 0.268765,
		0.616809, 0.535737, 0.576657,
		-0.626854, -0.108727, 0.771513,
		35.432919, 19.570784, 24.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199257, 19.745090, 24.806696>,  <35.871716, 19.646893, 24.171227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199257, 19.745090, 24.806696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877373, 19.520561, 24.884010>,  <35.684242, 19.385843, 24.930399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877373, 19.520561, 24.884010>,  <36.199257, 19.745090, 24.806696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877373, 19.520561, 24.884010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564402, -0.622389, 0.542294,
		-0.184104, 0.545480, 0.817654,
		-0.804709, -0.561323, 0.193286,
		35.635960, 19.352163, 24.941996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142235, 19.479162, 25.572590>,  <36.199257, 19.745090, 24.806696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142235, 19.479162, 25.572590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952118, 19.216492, 25.338367>,  <35.838047, 19.058889, 25.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952118, 19.216492, 25.338367>,  <36.142235, 19.479162, 25.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952118, 19.216492, 25.338367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266994, -0.741800, 0.615181,
		-0.838340, 0.136049, 0.527898,
		-0.475289, -0.656677, -0.585556,
		35.809532, 19.019489, 25.162701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575939, 19.089161, 25.877712>,  <36.142235, 19.479162, 25.572590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575939, 19.089161, 25.877712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739502, 18.876926, 25.580723>,  <35.837639, 18.749586, 25.402529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739502, 18.876926, 25.580723>,  <35.575939, 19.089161, 25.877712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739502, 18.876926, 25.580723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380074, -0.640664, 0.667154,
		-0.829661, -0.555001, -0.060312,
		0.408911, -0.530588, -0.742475,
		35.862175, 18.717751, 25.357981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156441, 18.555265, 26.036766>,  <35.575939, 19.089161, 25.877712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156441, 18.555265, 26.036766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509991, 18.463943, 25.873482>,  <35.722122, 18.409151, 25.775511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509991, 18.463943, 25.873482>,  <35.156441, 18.555265, 26.036766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509991, 18.463943, 25.873482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165800, -0.663154, 0.729889,
		-0.437341, -0.712815, -0.548295,
		0.883879, -0.228303, -0.408209,
		35.775154, 18.395452, 25.751019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210575, 17.862440, 26.132317>,  <35.156441, 18.555265, 26.036766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210575, 17.862440, 26.132317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587490, 17.989090, 26.088783>,  <35.813641, 18.065079, 26.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587490, 17.989090, 26.088783>,  <35.210575, 17.862440, 26.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587490, 17.989090, 26.088783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281650, -0.573881, 0.768982,
		0.181021, -0.755255, -0.629938,
		0.942287, 0.316624, -0.108833,
		35.870174, 18.084078, 26.056133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863438, 17.496492, 25.558136>,  <35.210575, 17.862440, 26.132317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863438, 17.496492, 25.558136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497715, 17.344563, 25.501877>,  <34.278282, 17.253405, 25.468122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497715, 17.344563, 25.501877>,  <34.863438, 17.496492, 25.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497715, 17.344563, 25.501877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032251, -0.277873, 0.960076,
		-0.403742, 0.882338, 0.241811,
		-0.914304, -0.379824, -0.140646,
		34.223423, 17.230616, 25.459682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329613, 17.739363, 26.014963>,  <34.863438, 17.496492, 25.558136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329613, 17.739363, 26.014963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179726, 17.392517, 25.883694>,  <34.089794, 17.184410, 25.804932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179726, 17.392517, 25.883694>,  <34.329613, 17.739363, 26.014963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179726, 17.392517, 25.883694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133650, -0.299746, 0.944611,
		-0.917455, 0.397824, -0.003570,
		-0.374718, -0.867115, -0.328173,
		34.067310, 17.132383, 25.785242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475758, 17.698444, 26.806789>,  <34.329613, 17.739363, 26.014963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475758, 17.698444, 26.806789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479046, 17.776558, 27.199074>,  <34.481018, 17.823427, 27.434444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479046, 17.776558, 27.199074>,  <34.475758, 17.698444, 26.806789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479046, 17.776558, 27.199074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333991, 0.924959, -0.181383,
		-0.942540, -0.326058, 0.072831,
		0.008224, 0.195285, 0.980712,
		34.481514, 17.835144, 27.493288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851776, 18.103348, 27.096294>,  <34.475758, 17.698444, 26.806789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851776, 18.103348, 27.096294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183380, 18.180885, 27.306122>,  <34.382343, 18.227407, 27.432018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183380, 18.180885, 27.306122>,  <33.851776, 18.103348, 27.096294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183380, 18.180885, 27.306122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151479, 0.980774, -0.123032,
		-0.538332, 0.022533, 0.842432,
		0.829007, 0.193843, 0.524568,
		34.432083, 18.239038, 27.463491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745743, 18.482813, 27.721313>,  <33.851776, 18.103348, 27.096294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745743, 18.482813, 27.721313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110458, 18.548496, 27.570759>,  <34.329288, 18.587906, 27.480425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110458, 18.548496, 27.570759>,  <33.745743, 18.482813, 27.721313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110458, 18.548496, 27.570759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162880, 0.986003, 0.035595,
		0.376966, 0.028851, 0.925777,
		0.911793, 0.164208, -0.376389,
		34.383995, 18.597759, 27.457842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123192, 18.934055, 28.149546>,  <33.745743, 18.482813, 27.721313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123192, 18.934055, 28.149546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207256, 18.958492, 27.759243>,  <34.257694, 18.973154, 27.525061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207256, 18.958492, 27.759243>,  <34.123192, 18.934055, 28.149546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207256, 18.958492, 27.759243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221962, 0.974966, 0.013238,
		0.952138, 0.213798, 0.218460,
		0.210161, 0.061094, -0.975756,
		34.270306, 18.976820, 27.466516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493603, 19.441416, 28.163126>,  <34.123192, 18.934055, 28.149546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493603, 19.441416, 28.163126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381844, 19.428955, 27.779259>,  <34.314789, 19.421478, 27.548939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381844, 19.428955, 27.779259>,  <34.493603, 19.441416, 28.163126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381844, 19.428955, 27.779259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169383, 0.985398, 0.017328,
		0.945116, 0.167393, -0.280598,
		-0.279401, -0.031152, -0.959669,
		34.298023, 19.419609, 27.491358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835094, 20.109856, 27.839792>,  <34.493603, 19.441416, 28.163126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835094, 20.109856, 27.839792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547215, 19.987873, 27.590302>,  <34.374485, 19.914682, 27.440607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547215, 19.987873, 27.590302>,  <34.835094, 20.109856, 27.839792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547215, 19.987873, 27.590302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220340, 0.952253, -0.211340,
		0.658394, -0.014670, -0.752530,
		-0.719699, -0.304957, -0.623726,
		34.331306, 19.896385, 27.403183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923813, 20.449688, 27.154306>,  <34.835094, 20.109856, 27.839792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923813, 20.449688, 27.154306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538944, 20.345898, 27.187546>,  <34.308025, 20.283623, 27.207489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538944, 20.345898, 27.187546>,  <34.923813, 20.449688, 27.154306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538944, 20.345898, 27.187546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270829, 0.944157, -0.187668,
		-0.029763, -0.203074, -0.978711,
		-0.962168, -0.259477, 0.083100,
		34.250294, 20.268055, 27.212475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568844, 20.789160, 26.723289>,  <34.923813, 20.449688, 27.154306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568844, 20.789160, 26.723289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252102, 20.709984, 26.954388>,  <34.062057, 20.662477, 27.093046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252102, 20.709984, 26.954388>,  <34.568844, 20.789160, 26.723289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252102, 20.709984, 26.954388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386053, 0.895268, -0.222392,
		-0.473216, -0.399141, -0.785336,
		-0.791852, -0.197942, 0.577745,
		34.014545, 20.650600, 27.127710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952896, 20.970060, 26.321796>,  <34.568844, 20.789160, 26.723289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952896, 20.970060, 26.321796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771980, 20.923744, 26.675526>,  <33.663429, 20.895954, 26.887762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771980, 20.923744, 26.675526>,  <33.952896, 20.970060, 26.321796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771980, 20.923744, 26.675526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564273, 0.805007, -0.183195,
		-0.690672, -0.581856, -0.429437,
		-0.452293, -0.115792, 0.884321,
		33.636292, 20.889008, 26.940823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214787, 20.966349, 26.214628>,  <33.952896, 20.970060, 26.321796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214787, 20.966349, 26.214628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273800, 21.059734, 26.599072>,  <33.309208, 21.115765, 26.829737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273800, 21.059734, 26.599072>,  <33.214787, 20.966349, 26.214628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273800, 21.059734, 26.599072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557546, 0.822260, -0.114151,
		-0.816931, -0.519021, 0.251475,
		0.147531, 0.233463, 0.961109,
		33.318058, 21.129772, 26.887403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640850, 21.305412, 26.263887>,  <33.214787, 20.966349, 26.214628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640850, 21.305412, 26.263887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826946, 21.416203, 26.600182>,  <32.938602, 21.482677, 26.801958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826946, 21.416203, 26.600182>,  <32.640850, 21.305412, 26.263887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826946, 21.416203, 26.600182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554101, 0.831811, 0.032586,
		-0.690308, -0.481013, 0.540464,
		0.465238, 0.276977, 0.840736,
		32.966518, 21.499296, 26.852402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052677, 21.457718, 26.768431>,  <32.640850, 21.305412, 26.263887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052677, 21.457718, 26.768431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390541, 21.638817, 26.882675>,  <32.593258, 21.747477, 26.951221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390541, 21.638817, 26.882675>,  <32.052677, 21.457718, 26.768431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390541, 21.638817, 26.882675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517246, 0.827706, 0.217620,
		-0.137876, -0.331546, 0.933310,
		0.844658, 0.452746, 0.285611,
		32.643940, 21.774641, 26.968359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763405, 21.926056, 27.315361>,  <32.052677, 21.457718, 26.768431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763405, 21.926056, 27.315361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128441, 22.049778, 27.208393>,  <32.347462, 22.124010, 27.144213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128441, 22.049778, 27.208393>,  <31.763405, 21.926056, 27.315361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128441, 22.049778, 27.208393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291315, 0.950785, 0.105567,
		0.286912, -0.018435, 0.957779,
		0.912588, 0.309304, -0.267422,
		32.402218, 22.142569, 27.128166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847557, 22.410967, 27.847582>,  <31.763405, 21.926056, 27.315361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847557, 22.410967, 27.847582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059929, 22.479733, 27.515663>,  <32.187351, 22.520992, 27.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059929, 22.479733, 27.515663>,  <31.847557, 22.410967, 27.847582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059929, 22.479733, 27.515663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396315, 0.915893, -0.063823,
		0.749032, 0.362746, 0.554406,
		0.530929, 0.171914, -0.829795,
		32.219208, 22.531307, 27.266724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234406, 23.066248, 27.903309>,  <31.847557, 22.410967, 27.847582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234406, 23.066248, 27.903309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178078, 23.005226, 27.512024>,  <32.144279, 22.968613, 27.277254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178078, 23.005226, 27.512024>,  <32.234406, 23.066248, 27.903309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178078, 23.005226, 27.512024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408073, 0.909165, -0.083043,
		0.902023, 0.387487, -0.190284,
		-0.140821, -0.152557, -0.978210,
		32.135830, 22.959459, 27.218561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720661, 23.501387, 27.601768>,  <32.234406, 23.066248, 27.903309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720661, 23.501387, 27.601768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501465, 23.436146, 27.273598>,  <32.369946, 23.397001, 27.076696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501465, 23.436146, 27.273598>,  <32.720661, 23.501387, 27.601768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501465, 23.436146, 27.273598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078936, 0.986512, -0.143396,
		0.832749, -0.013820, -0.553479,
		-0.547996, -0.163102, -0.820426,
		32.337067, 23.387215, 27.027470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012547, 23.878586, 27.021898>,  <32.720661, 23.501387, 27.601768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012547, 23.878586, 27.021898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641708, 23.823349, 26.882515>,  <32.419205, 23.790207, 26.798885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641708, 23.823349, 26.882515>,  <33.012547, 23.878586, 27.021898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641708, 23.823349, 26.882515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116461, 0.989772, -0.082390,
		0.356270, -0.035802, -0.933697,
		-0.927097, -0.138092, -0.348457,
		32.363579, 23.781921, 26.777977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869789, 24.336111, 26.520966>,  <33.012547, 23.878586, 27.021898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869789, 24.336111, 26.520966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492535, 24.238464, 26.611206>,  <32.266182, 24.179876, 26.665350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492535, 24.238464, 26.611206>,  <32.869789, 24.336111, 26.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492535, 24.238464, 26.611206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294776, 0.927901, -0.228270,
		-0.153609, -0.281792, -0.947100,
		-0.943139, -0.244118, 0.225600,
		32.209595, 24.165230, 26.678886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464897, 24.530115, 25.929953>,  <32.869789, 24.336111, 26.520966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464897, 24.530115, 25.929953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261444, 24.522831, 26.274269>,  <32.139374, 24.518461, 26.480860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261444, 24.522831, 26.274269>,  <32.464897, 24.530115, 25.929953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261444, 24.522831, 26.274269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315819, 0.934033, -0.166856,
		-0.800968, -0.356723, -0.480831,
		-0.508634, -0.018209, 0.860790,
		32.108852, 24.517368, 26.532507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856300, 24.778797, 25.779802>,  <32.464897, 24.530115, 25.929953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856300, 24.778797, 25.779802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905005, 24.815990, 26.175079>,  <31.934227, 24.838306, 26.412247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905005, 24.815990, 26.175079>,  <31.856300, 24.778797, 25.779802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905005, 24.815990, 26.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431187, 0.901705, -0.031719,
		-0.894010, -0.422234, 0.149884,
		0.121759, 0.092986, 0.988195,
		31.941532, 24.843885, 26.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328541, 25.185621, 25.967751>,  <31.856300, 24.778797, 25.779802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328541, 25.185621, 25.967751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563784, 25.213047, 26.290100>,  <31.704929, 25.229502, 26.483509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563784, 25.213047, 26.290100>,  <31.328541, 25.185621, 25.967751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563784, 25.213047, 26.290100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118135, 0.992996, 0.001730,
		-0.800109, -0.096219, 0.592088,
		0.588107, 0.068563, 0.805872,
		31.740215, 25.233616, 26.531862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046335, 25.593805, 26.438663>,  <31.328541, 25.185621, 25.967751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046335, 25.593805, 26.438663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440611, 25.613960, 26.503010>,  <31.677176, 25.626053, 26.541616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440611, 25.613960, 26.503010>,  <31.046335, 25.593805, 26.438663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440611, 25.613960, 26.503010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015539, 0.977381, -0.210914,
		-0.167853, 0.205396, 0.964177,
		0.985690, 0.050385, 0.160864,
		31.736319, 25.629076, 26.551270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056494, 26.176586, 26.743145>,  <31.046335, 25.593805, 26.438663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056494, 26.176586, 26.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443785, 26.118916, 26.661415>,  <31.676159, 26.084312, 26.612377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443785, 26.118916, 26.661415>,  <31.056494, 26.176586, 26.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443785, 26.118916, 26.661415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132662, 0.988753, -0.069050,
		0.211981, 0.039750, 0.976465,
		0.968228, -0.144177, -0.204323,
		31.734253, 26.075663, 26.600119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342297, 26.825621, 27.024000>,  <31.056494, 26.176586, 26.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342297, 26.825621, 27.024000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640041, 26.672413, 26.805195>,  <31.818687, 26.580488, 26.673912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640041, 26.672413, 26.805195>,  <31.342297, 26.825621, 27.024000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640041, 26.672413, 26.805195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415084, 0.907064, -0.070289,
		0.523096, -0.174735, 0.834169,
		0.744363, -0.383018, -0.547011,
		31.863350, 26.557507, 26.641092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861130, 27.091684, 27.362492>,  <31.342297, 26.825621, 27.024000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861130, 27.091684, 27.362492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970770, 26.973602, 26.996384>,  <32.036552, 26.902754, 26.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970770, 26.973602, 26.996384>,  <31.861130, 27.091684, 27.362492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970770, 26.973602, 26.996384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375847, 0.908913, -0.180598,
		0.885217, -0.294500, 0.360085,
		0.274100, -0.295205, -0.915272,
		32.053001, 26.885040, 26.721802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561050, 27.349842, 27.277393>,  <31.861130, 27.091684, 27.362492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561050, 27.349842, 27.277393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435150, 27.309788, 26.899841>,  <32.359612, 27.285755, 26.673311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435150, 27.309788, 26.899841>,  <32.561050, 27.349842, 27.277393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435150, 27.309788, 26.899841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382007, 0.896964, -0.222545,
		0.868910, -0.430613, -0.244064,
		-0.314748, -0.100137, -0.943878,
		32.340725, 27.279747, 26.616678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144833, 27.539648, 26.864006>,  <32.561050, 27.349842, 27.277393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144833, 27.539648, 26.864006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853470, 27.571758, 26.591835>,  <32.678654, 27.591024, 26.428532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853470, 27.571758, 26.591835>,  <33.144833, 27.539648, 26.864006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853470, 27.571758, 26.591835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453438, 0.800990, -0.390908,
		0.513635, -0.593271, -0.619845,
		-0.728404, 0.080277, -0.680428,
		32.634949, 27.595842, 26.387707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482670, 27.839350, 26.272980>,  <33.144833, 27.539648, 26.864006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482670, 27.839350, 26.272980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091240, 27.915260, 26.241035>,  <32.856380, 27.960806, 26.221869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091240, 27.915260, 26.241035>,  <33.482670, 27.839350, 26.272980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091240, 27.915260, 26.241035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203409, 0.951162, -0.232199,
		0.031894, -0.243468, -0.969384,
		-0.978574, 0.189776, -0.079860,
		32.797668, 27.972193, 26.217077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333973, 28.258114, 25.668957>,  <33.482670, 27.839350, 26.272980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333973, 28.258114, 25.668957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006596, 28.351025, 25.879177>,  <32.810169, 28.406771, 26.005310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006596, 28.351025, 25.879177>,  <33.333973, 28.258114, 25.668957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006596, 28.351025, 25.879177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173012, 0.971823, -0.160082,
		-0.547927, -0.040091, -0.835565,
		-0.818440, 0.232276, 0.525552,
		32.761063, 28.420708, 26.036842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122833, 28.848936, 25.385933>,  <33.333973, 28.258114, 25.668957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122833, 28.848936, 25.385933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908794, 28.852116, 25.723835>,  <32.780373, 28.854023, 25.926577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908794, 28.852116, 25.723835>,  <33.122833, 28.848936, 25.385933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908794, 28.852116, 25.723835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058218, 0.997925, 0.027487,
		-0.842783, 0.063888, -0.534449,
		-0.535097, 0.007949, 0.844754,
		32.748264, 28.854500, 25.977261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576561, 29.304886, 25.286398>,  <33.122833, 28.848936, 25.385933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576561, 29.304886, 25.286398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585491, 29.279518, 25.685493>,  <32.590851, 29.264297, 25.924950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585491, 29.279518, 25.685493>,  <32.576561, 29.304886, 25.286398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585491, 29.279518, 25.685493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000305, 0.997986, 0.063428,
		-0.999751, -0.001112, 0.022304,
		0.022329, -0.063419, 0.997737,
		32.592190, 29.260492, 25.984814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096264, 29.700159, 25.560665>,  <32.576561, 29.304886, 25.286398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096264, 29.700159, 25.560665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329803, 29.680309, 25.884804>,  <32.469929, 29.668400, 26.079287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329803, 29.680309, 25.884804>,  <32.096264, 29.700159, 25.560665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329803, 29.680309, 25.884804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048075, 0.994266, 0.095523,
		-0.810438, -0.094728, 0.578115,
		0.583848, -0.049622, 0.810345,
		32.504959, 29.665422, 26.127907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805805, 30.105219, 26.069248>,  <32.096264, 29.700159, 25.560665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805805, 30.105219, 26.069248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190937, 30.053539, 26.164127>,  <32.422016, 30.022532, 26.221054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190937, 30.053539, 26.164127>,  <31.805805, 30.105219, 26.069248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190937, 30.053539, 26.164127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116674, 0.990964, 0.066154,
		-0.243602, -0.036020, 0.969206,
		0.962832, -0.129197, 0.237198,
		32.479786, 30.014780, 26.235287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955826, 30.489420, 26.794416>,  <31.805805, 30.105219, 26.069248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955826, 30.489420, 26.794416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295109, 30.445213, 26.587215>,  <32.498680, 30.418690, 26.462894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295109, 30.445213, 26.587215>,  <31.955826, 30.489420, 26.794416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295109, 30.445213, 26.587215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083205, 0.993649, -0.075754,
		0.523084, 0.021155, 0.852018,
		0.848210, -0.110519, -0.518002,
		32.549572, 30.412058, 26.431814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219414, 31.077156, 26.971586>,  <31.955826, 30.489420, 26.794416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219414, 31.077156, 26.971586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443268, 30.950123, 26.665398>,  <32.577579, 30.873903, 26.481684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443268, 30.950123, 26.665398>,  <32.219414, 31.077156, 26.971586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443268, 30.950123, 26.665398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195485, 0.948183, -0.250469,
		0.805351, -0.009466, 0.592722,
		0.559638, -0.317584, -0.765471,
		32.611160, 30.854847, 26.435757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897961, 31.502516, 27.035152>,  <32.219414, 31.077156, 26.971586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897961, 31.502516, 27.035152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892879, 31.372787, 26.656807>,  <32.889832, 31.294950, 26.429800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892879, 31.372787, 26.656807>,  <32.897961, 31.502516, 27.035152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892879, 31.372787, 26.656807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020837, 0.945819, -0.324026,
		0.999702, 0.015595, -0.018768,
		-0.012698, -0.324320, -0.945862,
		32.889069, 31.275492, 26.373049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311737, 31.988142, 26.717735>,  <32.897961, 31.502516, 27.035152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311737, 31.988142, 26.717735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123867, 31.822094, 26.406075>,  <33.011143, 31.722466, 26.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123867, 31.822094, 26.406075>,  <33.311737, 31.988142, 26.717735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123867, 31.822094, 26.406075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058527, 0.895252, -0.441699,
		0.880896, -0.161855, -0.444776,
		-0.469678, -0.415122, -0.779151,
		32.982964, 31.697557, 26.172329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706356, 32.216637, 26.141001>,  <33.311737, 31.988142, 26.717735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706356, 32.216637, 26.141001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335506, 32.124870, 26.022472>,  <33.112995, 32.069809, 25.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335506, 32.124870, 26.022472>,  <33.706356, 32.216637, 26.141001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335506, 32.124870, 26.022472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029167, 0.832487, -0.553276,
		0.373618, -0.504313, -0.778510,
		-0.927124, -0.229421, -0.296323,
		33.057369, 32.056046, 25.933575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625786, 32.531685, 25.475115>,  <33.706356, 32.216637, 26.141001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625786, 32.531685, 25.475115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236614, 32.460480, 25.534061>,  <33.003109, 32.417755, 25.569429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236614, 32.460480, 25.534061>,  <33.625786, 32.531685, 25.475115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236614, 32.460480, 25.534061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229365, 0.821733, -0.521677,
		-0.028231, -0.541356, -0.840319,
		-0.972931, -0.178012, 0.147366,
		32.944736, 32.407078, 25.578272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310566, 32.533909, 24.735680>,  <33.625786, 32.531685, 25.475115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310566, 32.533909, 24.735680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045544, 32.623329, 25.021629>,  <32.886532, 32.676983, 25.193199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045544, 32.623329, 25.021629>,  <33.310566, 32.533909, 24.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045544, 32.623329, 25.021629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383749, 0.718329, -0.580293,
		-0.643241, -0.658808, -0.390145,
		-0.662555, 0.223550, 0.714876,
		32.846779, 32.690395, 25.236092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678364, 32.665688, 24.393568>,  <33.310566, 32.533909, 24.735680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678364, 32.665688, 24.393568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584785, 32.813477, 24.753292>,  <32.528637, 32.902149, 24.969126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584785, 32.813477, 24.753292>,  <32.678364, 32.665688, 24.393568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584785, 32.813477, 24.753292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547781, 0.714101, -0.435886,
		-0.803246, -0.594598, 0.035330,
		-0.233948, 0.369477, 0.899308,
		32.514603, 32.924320, 25.023085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887030, 32.756523, 24.429506>,  <32.678364, 32.665688, 24.393568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887030, 32.756523, 24.429506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059002, 32.992588, 24.702816>,  <32.162186, 33.134228, 24.866802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059002, 32.992588, 24.702816>,  <31.887030, 32.756523, 24.429506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059002, 32.992588, 24.702816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523740, 0.779465, -0.343702,
		-0.735430, -0.210091, 0.644208,
		0.429929, 0.590166, 0.683275,
		32.187981, 33.169640, 24.907799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423641, 33.219379, 24.451536>,  <31.887030, 32.756523, 24.429506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423641, 33.219379, 24.451536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717318, 33.408325, 24.646610>,  <31.893524, 33.521694, 24.763655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717318, 33.408325, 24.646610>,  <31.423641, 33.219379, 24.451536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717318, 33.408325, 24.646610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156809, 0.816854, -0.555121,
		-0.660586, 0.331092, 0.673798,
		0.734191, 0.472363, 0.487685,
		31.937574, 33.550034, 24.792915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581005, 33.144882, 25.135822>,  <31.423641, 33.219379, 24.451536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581005, 33.144882, 25.135822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259396, 33.264603, 24.930313>,  <31.066429, 33.336433, 24.807007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259396, 33.264603, 24.930313>,  <31.581005, 33.144882, 25.135822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259396, 33.264603, 24.930313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423208, -0.895009, 0.140905,
		-0.417658, 0.330723, 0.846276,
		-0.804025, 0.299301, -0.513773,
		31.018188, 33.354393, 24.776182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998474, 32.888023, 25.461142>,  <31.581005, 33.144882, 25.135822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998474, 32.888023, 25.461142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827131, 32.977169, 25.110863>,  <30.724325, 33.030655, 24.900696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827131, 32.977169, 25.110863>,  <30.998474, 32.888023, 25.461142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827131, 32.977169, 25.110863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512231, -0.858246, 0.032139,
		-0.744400, 0.462325, 0.481792,
		-0.428355, 0.222865, -0.875696,
		30.698626, 33.044029, 24.848154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304344, 32.798553, 25.577831>,  <30.998474, 32.888023, 25.461142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304344, 32.798553, 25.577831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342361, 32.780205, 25.180065>,  <30.365173, 32.769196, 24.941406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342361, 32.780205, 25.180065>,  <30.304344, 32.798553, 25.577831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342361, 32.780205, 25.180065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563264, -0.826127, -0.015729,
		-0.820792, 0.561614, -0.104357,
		0.095046, -0.045871, -0.994415,
		30.370874, 32.766445, 24.881741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626402, 32.804092, 25.303579>,  <30.304344, 32.798553, 25.577831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626402, 32.804092, 25.303579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859703, 32.641903, 25.022038>,  <29.999683, 32.544590, 24.853113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859703, 32.641903, 25.022038>,  <29.626402, 32.804092, 25.303579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859703, 32.641903, 25.022038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583016, -0.812319, -0.015158,
		-0.565606, 0.419199, -0.710185,
		0.583251, -0.405475, -0.703852,
		30.034678, 32.520260, 24.810883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038330, 32.546513, 25.022907>,  <29.626402, 32.804092, 25.303579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038330, 32.546513, 25.022907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378441, 32.372044, 24.905075>,  <29.582508, 32.267361, 24.834375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378441, 32.372044, 24.905075>,  <29.038330, 32.546513, 25.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378441, 32.372044, 24.905075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454408, -0.890764, 0.007317,
		-0.265594, 0.127639, -0.955598,
		0.850278, -0.436175, -0.294582,
		29.633524, 32.241192, 24.816700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865671, 32.073158, 24.567883>,  <29.038330, 32.546513, 25.022907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865671, 32.073158, 24.567883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228985, 31.937466, 24.665821>,  <29.446972, 31.856050, 24.724585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228985, 31.937466, 24.665821>,  <28.865671, 32.073158, 24.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228985, 31.937466, 24.665821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352868, -0.935586, 0.012776,
		0.224740, -0.098002, -0.969478,
		0.908282, -0.339227, 0.244845,
		29.501469, 31.835697, 24.739275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029535, 31.571613, 24.068762>,  <28.865671, 32.073158, 24.567883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029535, 31.571613, 24.068762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244410, 31.494926, 24.397316>,  <29.373335, 31.448914, 24.594448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244410, 31.494926, 24.397316>,  <29.029535, 31.571613, 24.068762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244410, 31.494926, 24.397316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264883, -0.962903, -0.051515,
		0.800792, -0.189899, -0.568041,
		0.537186, -0.191717, 0.821387,
		29.405565, 31.437412, 24.643732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346849, 30.914848, 23.926836>,  <29.029535, 31.571613, 24.068762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346849, 30.914848, 23.926836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397470, 30.934303, 24.323143>,  <29.427843, 30.945976, 24.560926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397470, 30.934303, 24.323143>,  <29.346849, 30.914848, 23.926836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397470, 30.934303, 24.323143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189312, -0.979255, 0.072252,
		0.973727, -0.196708, -0.114721,
		0.126553, 0.048635, 0.990767,
		29.435436, 30.948895, 24.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814653, 30.360365, 24.111403>,  <29.346849, 30.914848, 23.926836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814653, 30.360365, 24.111403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619591, 30.471672, 24.442402>,  <29.502552, 30.538456, 24.641003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619591, 30.471672, 24.442402>,  <29.814653, 30.360365, 24.111403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619591, 30.471672, 24.442402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205237, -0.957821, 0.201140,
		0.848567, -0.071746, 0.524200,
		-0.487659, 0.278267, 0.827500,
		29.473293, 30.555153, 24.690653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052351, 29.867887, 24.722910>,  <29.814653, 30.360365, 24.111403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052351, 29.867887, 24.722910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686781, 30.018665, 24.783115>,  <29.467440, 30.109133, 24.819239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686781, 30.018665, 24.783115>,  <30.052351, 29.867887, 24.722910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686781, 30.018665, 24.783115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336107, -0.910735, 0.239987,
		0.227541, 0.168741, 0.959037,
		-0.913924, 0.376946, 0.150514,
		29.412603, 30.131748, 24.828270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879444, 29.571299, 25.320236>,  <30.052351, 29.867887, 24.722910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879444, 29.571299, 25.320236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532866, 29.705261, 25.172123>,  <29.324919, 29.785639, 25.083256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532866, 29.705261, 25.172123>,  <29.879444, 29.571299, 25.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532866, 29.705261, 25.172123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450133, -0.844849, 0.289156,
		-0.215991, 0.417213, 0.882769,
		-0.866446, 0.334908, -0.370281,
		29.272932, 29.805735, 25.061039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372877, 29.565145, 25.868504>,  <29.879444, 29.571299, 25.320236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372877, 29.565145, 25.868504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232109, 29.533329, 25.495445>,  <29.147648, 29.514238, 25.271610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232109, 29.533329, 25.495445>,  <29.372877, 29.565145, 25.868504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232109, 29.533329, 25.495445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377555, -0.899670, 0.219196,
		-0.856507, 0.429264, 0.286580,
		-0.351920, -0.079543, -0.932644,
		29.126534, 29.509466, 25.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760353, 29.155615, 26.026136>,  <29.372877, 29.565145, 25.868504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760353, 29.155615, 26.026136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831093, 29.147659, 25.632523>,  <28.873537, 29.142885, 25.396355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831093, 29.147659, 25.632523>,  <28.760353, 29.155615, 26.026136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831093, 29.147659, 25.632523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340034, -0.939469, -0.042123,
		-0.923634, 0.342055, -0.172909,
		0.176851, -0.019889, -0.984037,
		28.884148, 29.141693, 25.337311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113626, 28.820835, 25.774912>,  <28.760353, 29.155615, 26.026136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113626, 28.820835, 25.774912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412073, 28.752171, 25.517590>,  <28.591141, 28.710972, 25.363195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412073, 28.752171, 25.517590>,  <28.113626, 28.820835, 25.774912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412073, 28.752171, 25.517590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042108, -0.952094, 0.302893,
		-0.664484, -0.253081, -0.703144,
		0.746115, -0.171660, -0.643308,
		28.635908, 28.700672, 25.324596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994383, 28.078491, 25.522259>,  <28.113626, 28.820835, 25.774912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994383, 28.078491, 25.522259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352188, 28.175549, 25.372074>,  <28.566872, 28.233784, 25.281963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352188, 28.175549, 25.372074>,  <27.994383, 28.078491, 25.522259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352188, 28.175549, 25.372074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303555, -0.946246, 0.111684,
		-0.328180, -0.213876, -0.920084,
		0.894512, 0.242644, -0.375462,
		28.620543, 28.248343, 25.259436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075586, 27.612371, 24.972752>,  <27.994383, 28.078491, 25.522259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075586, 27.612371, 24.972752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432583, 27.725468, 25.113331>,  <28.646780, 27.793325, 25.197680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432583, 27.725468, 25.113331>,  <28.075586, 27.612371, 24.972752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432583, 27.725468, 25.113331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237645, -0.956991, 0.166410,
		0.383385, -0.065000, -0.921298,
		0.892491, 0.282742, 0.351450,
		28.700331, 27.810289, 25.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588324, 27.058813, 24.628151>,  <28.075586, 27.612371, 24.972752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588324, 27.058813, 24.628151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781849, 27.222794, 24.937439>,  <28.897964, 27.321182, 25.123011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781849, 27.222794, 24.937439>,  <28.588324, 27.058813, 24.628151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781849, 27.222794, 24.937439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477553, -0.864042, 0.159292,
		0.733395, 0.292185, -0.613808,
		0.483813, 0.409950, 0.773218,
		28.926992, 27.345779, 25.169405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389755, 26.899502, 24.585537>,  <28.588324, 27.058813, 24.628151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389755, 26.899502, 24.585537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315338, 26.996300, 24.966446>,  <29.270687, 27.054379, 25.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315338, 26.996300, 24.966446>,  <29.389755, 26.899502, 24.585537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315338, 26.996300, 24.966446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421264, -0.855947, 0.299819,
		0.887651, 0.456938, 0.057300,
		-0.186045, 0.241996, 0.952274,
		29.259525, 27.068899, 25.252129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997663, 26.798784, 24.996969>,  <29.389755, 26.899502, 24.585537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997663, 26.798784, 24.996969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688456, 26.769875, 25.249069>,  <29.502932, 26.752529, 25.400330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688456, 26.769875, 25.249069>,  <29.997663, 26.798784, 24.996969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688456, 26.769875, 25.249069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412709, -0.811797, 0.413107,
		0.481779, 0.579450, 0.657363,
		-0.773020, -0.072274, 0.630251,
		29.456549, 26.748192, 25.438145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208549, 26.913620, 25.666113>,  <29.997663, 26.798784, 24.996969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208549, 26.913620, 25.666113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869425, 26.702137, 25.682518>,  <29.665951, 26.575247, 25.692360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869425, 26.702137, 25.682518>,  <30.208549, 26.913620, 25.666113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869425, 26.702137, 25.682518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503963, -0.779229, 0.372589,
		-0.165034, 0.336553, 0.927090,
		-0.847812, -0.528709, 0.041011,
		29.615082, 26.543524, 25.694820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447624, 26.348396, 26.092421>,  <30.208549, 26.913620, 25.666113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447624, 26.348396, 26.092421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074568, 26.239021, 25.998264>,  <29.850733, 26.173397, 25.941771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074568, 26.239021, 25.998264>,  <30.447624, 26.348396, 26.092421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074568, 26.239021, 25.998264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, -0.950879, 0.212441,
		-0.281918, 0.145130, 0.948398,
		-0.932643, -0.273435, -0.235392,
		29.794775, 26.156990, 25.927647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159651, 25.951893, 26.630697>,  <30.447624, 26.348396, 26.092421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159651, 25.951893, 26.630697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943762, 25.820889, 26.320488>,  <29.814228, 25.742287, 26.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943762, 25.820889, 26.320488>,  <30.159651, 25.951893, 26.630697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943762, 25.820889, 26.320488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121539, -0.941884, 0.313182,
		-0.833024, 0.074774, 0.548160,
		-0.539721, -0.327511, -0.775524,
		29.781845, 25.722635, 26.087831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597660, 25.540693, 26.975149>,  <30.159651, 25.951893, 26.630697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597660, 25.540693, 26.975149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609457, 25.398376, 26.601509>,  <29.616535, 25.312986, 26.377325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609457, 25.398376, 26.601509>,  <29.597660, 25.540693, 26.975149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609457, 25.398376, 26.601509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075641, -0.931033, 0.357010,
		-0.996699, -0.081186, -0.000547,
		0.029493, -0.355790, -0.934100,
		29.618305, 25.291639, 26.321280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098122, 24.936949, 26.857992>,  <29.597660, 25.540693, 26.975149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098122, 24.936949, 26.857992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375511, 24.905144, 26.571560>,  <29.541945, 24.886061, 26.399700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375511, 24.905144, 26.571560>,  <29.098122, 24.936949, 26.857992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375511, 24.905144, 26.571560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032084, -0.989498, 0.140943,
		-0.719766, -0.120715, -0.683641,
		0.693475, -0.079512, -0.716079,
		29.583553, 24.881290, 26.356735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796621, 24.391514, 26.372725>,  <29.098122, 24.936949, 26.857992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796621, 24.391514, 26.372725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192562, 24.416786, 26.321812>,  <29.430126, 24.431950, 26.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192562, 24.416786, 26.321812>,  <28.796621, 24.391514, 26.372725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192562, 24.416786, 26.321812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053967, -0.995754, -0.074576,
		-0.131454, 0.066951, -0.989059,
		0.989852, 0.063180, -0.127282,
		29.489517, 24.435740, 26.283627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972279, 23.907776, 25.831678>,  <28.796621, 24.391514, 26.372725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972279, 23.907776, 25.831678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328430, 23.951523, 26.008434>,  <29.542122, 23.977772, 26.114487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328430, 23.951523, 26.008434>,  <28.972279, 23.907776, 25.831678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328430, 23.951523, 26.008434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213494, -0.957659, -0.193154,
		0.402053, 0.266321, -0.876029,
		0.890378, 0.109369, 0.441888,
		29.595543, 23.984333, 26.141001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400620, 23.970541, 25.280859>,  <28.972279, 23.907776, 25.831678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400620, 23.970541, 25.280859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632765, 23.860405, 25.587418>,  <29.772053, 23.794323, 25.771353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632765, 23.860405, 25.587418>,  <29.400620, 23.970541, 25.280859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632765, 23.860405, 25.587418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257090, -0.831033, -0.493244,
		0.772712, 0.483294, -0.411514,
		0.580363, -0.275339, 0.766399,
		29.806873, 23.777803, 25.817337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949709, 23.652502, 24.896069>,  <29.400620, 23.970541, 25.280859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949709, 23.652502, 24.896069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969929, 23.514462, 25.270950>,  <29.982059, 23.431637, 25.495878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969929, 23.514462, 25.270950>,  <29.949709, 23.652502, 24.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969929, 23.514462, 25.270950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304940, -0.888257, -0.343527,
		0.951029, 0.303156, 0.060336,
		0.050548, -0.345103, 0.937203,
		29.985094, 23.410931, 25.552111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633213, 23.286066, 24.929064>,  <29.949709, 23.652502, 24.896069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633213, 23.286066, 24.929064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443880, 23.154823, 25.256062>,  <30.330280, 23.076078, 25.452261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443880, 23.154823, 25.256062>,  <30.633213, 23.286066, 24.929064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443880, 23.154823, 25.256062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306340, -0.931428, -0.196461,
		0.825900, 0.157440, 0.541389,
		-0.473334, -0.328106, 0.817497,
		30.301880, 23.056391, 25.501310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090021, 22.763430, 25.096350>,  <30.633213, 23.286066, 24.929064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090021, 22.763430, 25.096350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744879, 22.701511, 25.288815>,  <30.537792, 22.664360, 25.404293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744879, 22.701511, 25.288815>,  <31.090021, 22.763430, 25.096350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744879, 22.701511, 25.288815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129882, -0.987888, -0.084904,
		0.488475, -0.010766, 0.872511,
		-0.862857, -0.154797, 0.481160,
		30.486021, 22.655071, 25.433163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267214, 22.307400, 25.501364>,  <31.090021, 22.763430, 25.096350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267214, 22.307400, 25.501364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868401, 22.276684, 25.499336>,  <30.629112, 22.258255, 25.498119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868401, 22.276684, 25.499336>,  <31.267214, 22.307400, 25.501364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868401, 22.276684, 25.499336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076413, -0.980064, -0.183400,
		0.009117, -0.183244, 0.983025,
		-0.997035, -0.076788, -0.005067,
		30.569290, 22.253647, 25.497816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003727, 21.847612, 25.973598>,  <31.267214, 22.307400, 25.501364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003727, 21.847612, 25.973598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746304, 21.869366, 25.668213>,  <30.591850, 21.882418, 25.484982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746304, 21.869366, 25.668213>,  <31.003727, 21.847612, 25.973598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746304, 21.869366, 25.668213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099607, -0.983039, -0.153991,
		-0.758889, -0.175148, 0.627225,
		-0.643557, 0.054385, -0.763463,
		30.553236, 21.885681, 25.439175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665203, 21.105375, 25.876656>,  <31.003727, 21.847612, 25.973598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665203, 21.105375, 25.876656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562290, 21.286339, 25.535099>,  <30.500542, 21.394917, 25.330164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562290, 21.286339, 25.535099>,  <30.665203, 21.105375, 25.876656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562290, 21.286339, 25.535099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007541, -0.882673, -0.469927,
		-0.966307, -0.127343, 0.223685,
		-0.257282, 0.452406, -0.853893,
		30.485106, 21.422060, 25.278931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162914, 20.626678, 25.678297>,  <30.665203, 21.105375, 25.876656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162914, 20.626678, 25.678297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240662, 20.822910, 25.338520>,  <30.287310, 20.940649, 25.134653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240662, 20.822910, 25.338520>,  <30.162914, 20.626678, 25.678297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240662, 20.822910, 25.338520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021423, -0.863627, -0.503676,
		-0.980695, 0.116095, -0.157351,
		0.194367, 0.490581, -0.849442,
		30.298971, 20.970085, 25.083687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600754, 20.481861, 25.142250>,  <30.162914, 20.626678, 25.678297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600754, 20.481861, 25.142250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918879, 20.597473, 24.929104>,  <30.109753, 20.666842, 24.801216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918879, 20.597473, 24.929104>,  <29.600754, 20.481861, 25.142250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918879, 20.597473, 24.929104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109148, -0.796377, -0.594869,
		-0.596296, 0.531266, -0.601820,
		0.795310, 0.289031, -0.532863,
		30.157471, 20.684183, 24.769245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396248, 20.550932, 24.431179>,  <29.600754, 20.481861, 25.142250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396248, 20.550932, 24.431179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790018, 20.481846, 24.444290>,  <30.026281, 20.440395, 24.452156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790018, 20.481846, 24.444290>,  <29.396248, 20.550932, 24.431179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790018, 20.481846, 24.444290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113917, -0.768738, -0.629337,
		0.133893, 0.615802, -0.776441,
		0.984426, -0.172714, 0.032778,
		30.085346, 20.430031, 24.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573460, 20.154602, 23.786314>,  <29.396248, 20.550932, 24.431179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573460, 20.154602, 23.786314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918962, 20.110222, 23.982929>,  <30.126265, 20.083593, 24.100899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918962, 20.110222, 23.982929>,  <29.573460, 20.154602, 23.786314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918962, 20.110222, 23.982929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177913, -0.845490, -0.503482,
		0.471452, 0.522338, -0.710560,
		0.863759, -0.110950, 0.491539,
		30.178091, 20.076937, 24.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133589, 20.221415, 23.318354>,  <29.573460, 20.154602, 23.786314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133589, 20.221415, 23.318354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281942, 19.997242, 23.614559>,  <30.370955, 19.862738, 23.792282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281942, 19.997242, 23.614559>,  <30.133589, 20.221415, 23.318354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281942, 19.997242, 23.614559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381109, -0.635297, -0.671680,
		0.846877, 0.531332, -0.022035,
		0.370884, -0.560433, 0.740514,
		30.393208, 19.829113, 23.836714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294010, 19.514221, 23.166218>,  <30.133589, 20.221415, 23.318354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294010, 19.514221, 23.166218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119488, 19.410408, 22.821594>,  <30.014774, 19.348120, 22.614820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119488, 19.410408, 22.821594>,  <30.294010, 19.514221, 23.166218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119488, 19.410408, 22.821594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165592, 0.964305, -0.206629,
		0.884430, 0.052514, -0.463708,
		-0.436305, -0.259535, -0.861556,
		29.988596, 19.332548, 22.563128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760771, 19.724226, 22.588152>,  <30.294010, 19.514221, 23.166218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760771, 19.724226, 22.588152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380720, 19.680115, 22.471466>,  <30.152689, 19.653648, 22.401455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380720, 19.680115, 22.471466>,  <30.760771, 19.724226, 22.588152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380720, 19.680115, 22.471466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051147, 0.977828, -0.203067,
		0.307639, -0.178020, -0.934702,
		-0.950127, -0.110278, -0.291713,
		30.095682, 19.647032, 22.383951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775810, 20.104706, 22.046030>,  <30.760771, 19.724226, 22.588152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775810, 20.104706, 22.046030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400257, 20.075615, 22.180618>,  <30.174925, 20.058161, 22.261372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400257, 20.075615, 22.180618>,  <30.775810, 20.104706, 22.046030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400257, 20.075615, 22.180618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089671, 0.995354, -0.035070,
		-0.332358, -0.063098, -0.941040,
		-0.938881, -0.072728, 0.336472,
		30.118593, 20.053797, 22.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525936, 20.764479, 21.739376>,  <30.775810, 20.104706, 22.046030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525936, 20.764479, 21.739376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242893, 20.653702, 21.999405>,  <30.073067, 20.587236, 22.155422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242893, 20.653702, 21.999405>,  <30.525936, 20.764479, 21.739376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242893, 20.653702, 21.999405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340344, 0.939825, 0.029912,
		-0.619240, -0.200083, -0.759282,
		-0.707607, -0.276940, 0.650074,
		30.030611, 20.570620, 22.194427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863297, 20.843643, 21.467268>,  <30.525936, 20.764479, 21.739376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863297, 20.843643, 21.467268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841709, 20.872738, 21.865623>,  <29.828756, 20.890194, 22.104637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841709, 20.872738, 21.865623>,  <29.863297, 20.843643, 21.467268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841709, 20.872738, 21.865623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411514, 0.907092, -0.088551,
		-0.909804, -0.414601, -0.019020,
		-0.053966, 0.072738, 0.995890,
		29.825520, 20.894560, 22.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214775, 21.292257, 21.537155>,  <29.863297, 20.843643, 21.467268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214775, 21.292257, 21.537155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391533, 21.294613, 21.895973>,  <29.497587, 21.296026, 22.111265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391533, 21.294613, 21.895973>,  <29.214775, 21.292257, 21.537155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391533, 21.294613, 21.895973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281593, 0.950345, 0.132479,
		-0.851724, -0.311144, 0.421610,
		0.441895, 0.005887, 0.897047,
		29.524101, 21.296379, 22.165087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819248, 21.752186, 21.847427>,  <29.214775, 21.292257, 21.537155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819248, 21.752186, 21.847427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128937, 21.746681, 22.100533>,  <29.314751, 21.743380, 22.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128937, 21.746681, 22.100533>,  <28.819248, 21.752186, 21.847427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128937, 21.746681, 22.100533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144713, 0.969431, 0.198146,
		-0.616147, -0.244978, 0.748564,
		0.774223, -0.013760, 0.632764,
		29.361204, 21.742554, 22.290361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615074, 22.132755, 22.454605>,  <28.819248, 21.752186, 21.847427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615074, 22.132755, 22.454605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013994, 22.109230, 22.472172>,  <29.253347, 22.095114, 22.482712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013994, 22.109230, 22.472172>,  <28.615074, 22.132755, 22.454605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013994, 22.109230, 22.472172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041026, 0.942763, 0.330929,
		-0.060865, -0.328235, 0.942633,
		0.997302, -0.058815, 0.043915,
		29.313185, 22.091585, 22.485346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831837, 22.489315, 23.083641>,  <28.615074, 22.132755, 22.454605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831837, 22.489315, 23.083641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165009, 22.494312, 22.862347>,  <29.364912, 22.497311, 22.729570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165009, 22.494312, 22.862347>,  <28.831837, 22.489315, 23.083641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165009, 22.494312, 22.862347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137098, 0.963919, 0.228174,
		0.536125, -0.265900, 0.801166,
		0.832931, 0.012492, -0.553236,
		29.414888, 22.498060, 22.696377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413568, 22.758169, 23.449606>,  <28.831837, 22.489315, 23.083641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413568, 22.758169, 23.449606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524973, 22.796402, 23.067341>,  <29.591816, 22.819342, 22.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524973, 22.796402, 23.067341>,  <29.413568, 22.758169, 23.449606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524973, 22.796402, 23.067341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219412, 0.962390, 0.160201,
		0.935034, -0.254303, 0.247066,
		0.278513, 0.095584, -0.955664,
		29.608526, 22.825077, 22.780642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965120, 23.217009, 23.461761>,  <29.413568, 22.758169, 23.449606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965120, 23.217009, 23.461761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867735, 23.232456, 23.074104>,  <29.809303, 23.241724, 22.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867735, 23.232456, 23.074104>,  <29.965120, 23.217009, 23.461761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867735, 23.232456, 23.074104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013294, 0.999246, 0.036478,
		0.969820, -0.004002, -0.243791,
		-0.243461, 0.038618, -0.969142,
		29.794697, 23.244041, 22.783361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418539, 23.709326, 23.202913>,  <29.965120, 23.217009, 23.461761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418539, 23.709326, 23.202913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106319, 23.701065, 22.953011>,  <29.918987, 23.696108, 22.803068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106319, 23.701065, 22.953011>,  <30.418539, 23.709326, 23.202913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106319, 23.701065, 22.953011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051371, 0.993954, -0.097038,
		0.622983, -0.107837, -0.774767,
		-0.780547, -0.020652, -0.624756,
		29.872156, 23.694870, 22.765583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591024, 24.126343, 22.666000>,  <30.418539, 23.709326, 23.202913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591024, 24.126343, 22.666000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194654, 24.093323, 22.623569>,  <29.956833, 24.073511, 22.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194654, 24.093323, 22.623569>,  <30.591024, 24.126343, 22.666000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194654, 24.093323, 22.623569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060215, 0.978197, -0.198757,
		0.120174, -0.190565, -0.974291,
		-0.990925, -0.082552, -0.106079,
		29.897377, 24.068558, 22.591745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394751, 24.560577, 22.068474>,  <30.591024, 24.126343, 22.666000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394751, 24.560577, 22.068474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060677, 24.499985, 22.279953>,  <29.860231, 24.463629, 22.406839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060677, 24.499985, 22.279953>,  <30.394751, 24.560577, 22.068474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060677, 24.499985, 22.279953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204085, 0.978045, -0.042161,
		-0.510702, -0.143111, -0.847764,
		-0.835185, -0.151484, 0.528696,
		29.810122, 24.454540, 22.438562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827517, 24.897177, 21.631954>,  <30.394751, 24.560577, 22.068474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827517, 24.897177, 21.631954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690306, 24.869507, 22.006664>,  <29.607979, 24.852905, 22.231491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690306, 24.869507, 22.006664>,  <29.827517, 24.897177, 21.631954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690306, 24.869507, 22.006664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445381, 0.890032, -0.097365,
		-0.827025, -0.450620, -0.336112,
		-0.343025, -0.069175, 0.936776,
		29.587399, 24.848755, 22.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106573, 25.080980, 21.573227>,  <29.827517, 24.897177, 21.631954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106573, 25.080980, 21.573227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184803, 25.119640, 21.963593>,  <29.231741, 25.142836, 22.197813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184803, 25.119640, 21.963593>,  <29.106573, 25.080980, 21.573227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184803, 25.119640, 21.963593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420136, 0.907443, -0.005673,
		-0.886136, -0.408907, 0.218077,
		0.195573, 0.096650, 0.975915,
		29.243475, 25.148636, 22.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545292, 25.393810, 21.865871>,  <29.106573, 25.080980, 21.573227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545292, 25.393810, 21.865871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796785, 25.485874, 22.162983>,  <28.947681, 25.541113, 22.341249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796785, 25.485874, 22.162983>,  <28.545292, 25.393810, 21.865871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796785, 25.485874, 22.162983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376006, 0.926088, 0.031313,
		-0.680672, -0.298977, 0.668804,
		0.628733, 0.230160, 0.742779,
		28.985405, 25.554922, 22.385817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114246, 25.685648, 22.385321>,  <28.545292, 25.393810, 21.865871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114246, 25.685648, 22.385321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493475, 25.797112, 22.446651>,  <28.721012, 25.863991, 22.483450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493475, 25.797112, 22.446651>,  <28.114246, 25.685648, 22.385321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493475, 25.797112, 22.446651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277088, 0.960312, -0.031971,
		-0.156149, -0.012174, 0.987659,
		0.948072, 0.278661, 0.153325,
		28.777897, 25.880711, 22.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105490, 26.142466, 22.934252>,  <28.114246, 25.685648, 22.385321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105490, 26.142466, 22.934252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447590, 26.219830, 22.741943>,  <28.652849, 26.266247, 22.626558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447590, 26.219830, 22.741943>,  <28.105490, 26.142466, 22.934252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447590, 26.219830, 22.741943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120476, 0.976531, 0.178531,
		0.504018, -0.094767, 0.858478,
		0.855249, 0.193409, -0.480772,
		28.704165, 26.277853, 22.597712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400803, 26.586449, 23.404072>,  <28.105490, 26.142466, 22.934252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400803, 26.586449, 23.404072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568975, 26.628147, 23.043545>,  <28.669880, 26.653166, 22.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568975, 26.628147, 23.043545>,  <28.400803, 26.586449, 23.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568975, 26.628147, 23.043545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053939, 0.988749, 0.139520,
		0.905719, -0.107275, 0.410079,
		0.420432, 0.104246, -0.901315,
		28.695105, 26.659420, 22.773149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817059, 27.051565, 23.555546>,  <28.400803, 26.586449, 23.404072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817059, 27.051565, 23.555546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800779, 27.059368, 23.155952>,  <28.791012, 27.064051, 22.916197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800779, 27.059368, 23.155952>,  <28.817059, 27.051565, 23.555546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800779, 27.059368, 23.155952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044028, 0.998873, 0.017712,
		0.998201, -0.043263, -0.041507,
		-0.040694, 0.019507, -0.998981,
		28.788570, 27.065220, 22.856258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333080, 27.554609, 23.329750>,  <28.817059, 27.051565, 23.555546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333080, 27.554609, 23.329750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051497, 27.531734, 23.046577>,  <28.882545, 27.518009, 22.876673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051497, 27.531734, 23.046577>,  <29.333080, 27.554609, 23.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051497, 27.531734, 23.046577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010055, 0.995851, -0.090444,
		0.710169, -0.070787, -0.700464,
		-0.703960, -0.057188, -0.707934,
		28.840309, 27.514578, 22.834198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556864, 28.036358, 22.780664>,  <29.333080, 27.554609, 23.329750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556864, 28.036358, 22.780664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172724, 27.969242, 22.691605>,  <28.942240, 27.928972, 22.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172724, 27.969242, 22.691605>,  <29.556864, 28.036358, 22.780664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172724, 27.969242, 22.691605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095880, 0.948675, -0.301369,
		0.261788, -0.268072, -0.927148,
		-0.960351, -0.167790, -0.222649,
		28.884619, 27.918905, 22.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419752, 28.563503, 22.270491>,  <29.556864, 28.036358, 22.780664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419752, 28.563503, 22.270491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044716, 28.448837, 22.349224>,  <28.819695, 28.380037, 22.396465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044716, 28.448837, 22.349224>,  <29.419752, 28.563503, 22.270491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044716, 28.448837, 22.349224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309717, 0.945776, -0.097896,
		-0.158099, -0.152750, -0.975537,
		-0.937593, -0.286664, 0.196835,
		28.763437, 28.362839, 22.408276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928268, 28.926565, 21.760990>,  <29.419752, 28.563503, 22.270491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928268, 28.926565, 21.760990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716419, 28.819668, 22.083004>,  <28.589310, 28.755529, 22.276213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716419, 28.819668, 22.083004>,  <28.928268, 28.926565, 21.760990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716419, 28.819668, 22.083004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540960, 0.837434, -0.077891,
		-0.653348, -0.476744, -0.588091,
		-0.529621, -0.267244, 0.805035,
		28.557533, 28.739494, 22.324514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369452, 29.205170, 21.620682>,  <28.928268, 28.926565, 21.760990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369452, 29.205170, 21.620682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299736, 29.116428, 22.004433>,  <28.257906, 29.063183, 22.234684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299736, 29.116428, 22.004433>,  <28.369452, 29.205170, 21.620682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299736, 29.116428, 22.004433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586806, 0.805792, 0.079734,
		-0.790748, -0.549072, -0.270626,
		-0.174289, -0.221854, 0.959377,
		28.247450, 29.049871, 22.292246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620962, 29.164261, 21.753176>,  <28.369452, 29.205170, 21.620682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620962, 29.164261, 21.753176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781305, 29.249096, 22.109676>,  <27.877512, 29.299997, 22.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781305, 29.249096, 22.109676>,  <27.620962, 29.164261, 21.753176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781305, 29.249096, 22.109676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671305, 0.730007, 0.128217,
		-0.623428, -0.649699, 0.435003,
		0.400858, 0.212086, 0.891253,
		27.901562, 29.312721, 22.377052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121862, 29.242912, 22.230911>,  <27.620962, 29.164261, 21.753176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121862, 29.242912, 22.230911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412807, 29.454800, 22.405422>,  <27.587376, 29.581932, 22.510128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412807, 29.454800, 22.405422>,  <27.121862, 29.242912, 22.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412807, 29.454800, 22.405422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673305, 0.673771, 0.304456,
		-0.132674, -0.515198, 0.846740,
		0.727364, 0.529720, 0.436277,
		27.631016, 29.613716, 22.536306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881508, 29.415956, 22.928247>,  <27.121862, 29.242912, 22.230911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881508, 29.415956, 22.928247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154148, 29.688087, 22.820488>,  <27.317732, 29.851366, 22.755833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154148, 29.688087, 22.820488>,  <26.881508, 29.415956, 22.928247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154148, 29.688087, 22.820488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663886, 0.729787, 0.163299,
		0.307699, 0.067545, 0.949083,
		0.681599, 0.680330, -0.269397,
		27.358627, 29.892187, 22.739670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719290, 30.030607, 23.252609>,  <26.881508, 29.415956, 22.928247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719290, 30.030607, 23.252609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978666, 30.178345, 22.986343>,  <27.134293, 30.266987, 22.826584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978666, 30.178345, 22.986343>,  <26.719290, 30.030607, 23.252609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978666, 30.178345, 22.986343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590316, 0.796084, -0.133331,
		0.480680, 0.479410, 0.734243,
		0.648439, 0.369346, -0.665665,
		27.173199, 30.289148, 22.786644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620255, 30.832169, 23.254189>,  <26.719290, 30.030607, 23.252609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620255, 30.832169, 23.254189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812347, 30.763958, 22.910027>,  <26.927603, 30.723032, 22.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812347, 30.763958, 22.910027>,  <26.620255, 30.832169, 23.254189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812347, 30.763958, 22.910027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379751, 0.843802, -0.379192,
		0.790674, 0.508840, 0.340465,
		0.480234, -0.170526, -0.860405,
		26.956417, 30.712801, 22.651905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089024, 31.357342, 23.195263>,  <26.620255, 30.832169, 23.254189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089024, 31.357342, 23.195263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006590, 31.205612, 22.834454>,  <26.957130, 31.114574, 22.617968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006590, 31.205612, 22.834454>,  <27.089024, 31.357342, 23.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006590, 31.205612, 22.834454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437908, 0.860103, -0.261648,
		0.875081, 0.341082, -0.343362,
		-0.206083, -0.379324, -0.902022,
		26.944765, 31.091816, 22.563847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006186, 31.964554, 22.847998>,  <27.089024, 31.357342, 23.195263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006186, 31.964554, 22.847998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899864, 31.710270, 22.558109>,  <26.836071, 31.557699, 22.384176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899864, 31.710270, 22.558109>,  <27.006186, 31.964554, 22.847998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899864, 31.710270, 22.558109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335211, 0.765801, -0.548800,
		0.903871, 0.097063, -0.416648,
		-0.265802, -0.635710, -0.724723,
		26.820124, 31.519558, 22.340693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073061, 32.345249, 22.276766>,  <27.006186, 31.964554, 22.847998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073061, 32.345249, 22.276766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837534, 32.043331, 22.161125>,  <26.696218, 31.862181, 22.091742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837534, 32.043331, 22.161125>,  <27.073061, 32.345249, 22.276766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837534, 32.043331, 22.161125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437360, 0.598328, -0.671357,
		0.679714, -0.268865, -0.682423,
		-0.588817, -0.754795, -0.289101,
		26.660889, 31.816893, 22.074396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049871, 32.215393, 21.481579>,  <27.073061, 32.345249, 22.276766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049871, 32.215393, 21.481579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694843, 32.094284, 21.620461>,  <26.481827, 32.021618, 21.703789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694843, 32.094284, 21.620461>,  <27.049871, 32.215393, 21.481579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694843, 32.094284, 21.620461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458419, 0.654961, -0.600731,
		-0.045521, -0.692356, -0.720119,
		-0.887570, -0.302770, 0.347204,
		26.428572, 32.003452, 21.724621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667923, 32.215359, 20.867006>,  <27.049871, 32.215393, 21.481579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667923, 32.215359, 20.867006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409477, 32.208061, 21.172215>,  <26.254410, 32.203682, 21.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409477, 32.208061, 21.172215>,  <26.667923, 32.215359, 20.867006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409477, 32.208061, 21.172215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503472, 0.761543, -0.408127,
		-0.573631, -0.647857, -0.501227,
		-0.646115, -0.018239, 0.763023,
		26.215643, 32.202591, 21.401121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033739, 32.217873, 20.528118>,  <26.667923, 32.215359, 20.867006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033739, 32.217873, 20.528118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992357, 32.340679, 20.906544>,  <25.967527, 32.414364, 21.133598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992357, 32.340679, 20.906544>,  <26.033739, 32.217873, 20.528118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992357, 32.340679, 20.906544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370764, 0.870709, -0.323109,
		-0.922947, -0.384194, 0.023750,
		-0.103457, 0.307018, 0.946064,
		25.961321, 32.432785, 21.190363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377962, 32.426056, 20.642498>,  <26.033739, 32.217873, 20.528118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377962, 32.426056, 20.642498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594435, 32.615906, 20.920158>,  <25.724319, 32.729816, 21.086756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594435, 32.615906, 20.920158>,  <25.377962, 32.426056, 20.642498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594435, 32.615906, 20.920158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342042, 0.878356, -0.333911,
		-0.768198, -0.056722, 0.637695,
		0.541183, 0.474628, 0.694153,
		25.756790, 32.758293, 21.128405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953131, 32.961903, 20.839291>,  <25.377962, 32.426056, 20.642498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953131, 32.961903, 20.839291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322577, 33.063656, 20.953987>,  <25.544245, 33.124710, 21.022806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322577, 33.063656, 20.953987>,  <24.953131, 32.961903, 20.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322577, 33.063656, 20.953987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159576, 0.935320, -0.315772,
		-0.348524, 0.245895, 0.904470,
		0.923616, 0.254386, 0.286742,
		25.599661, 33.139973, 21.040010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894329, 33.576664, 21.264322>,  <24.953131, 32.961903, 20.839291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894329, 33.576664, 21.264322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265850, 33.560215, 21.117008>,  <25.488762, 33.550346, 21.028620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265850, 33.560215, 21.117008>,  <24.894329, 33.576664, 21.264322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265850, 33.560215, 21.117008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096480, 0.932715, -0.347469,
		0.357793, 0.358263, 0.862341,
		0.928803, -0.041124, -0.368284,
		25.544491, 33.547878, 21.006523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155500, 34.242878, 21.433779>,  <24.894329, 33.576664, 21.264322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155500, 34.242878, 21.433779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330257, 34.041012, 21.135937>,  <25.435112, 33.919891, 20.957232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330257, 34.041012, 21.135937>,  <25.155500, 34.242878, 21.433779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330257, 34.041012, 21.135937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252613, 0.725639, -0.640027,
		0.863315, 0.467720, 0.189540,
		0.436891, -0.504665, -0.744607,
		25.461325, 33.889614, 20.912554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710554, 34.584740, 20.913782>,  <25.155500, 34.242878, 21.433779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710554, 34.584740, 20.913782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613272, 34.948528, 20.778896>,  <24.554903, 35.166801, 20.697966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613272, 34.948528, 20.778896>,  <24.710554, 34.584740, 20.913782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.613272, 34.948528, 20.778896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712792, -0.403360, -0.573784,
		-0.657859, 0.100816, 0.746363,
		-0.243206, 0.909470, -0.337214,
		24.540310, 35.221371, 20.677732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962595, 34.660526, 20.886618>,  <24.710554, 34.584740, 20.913782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962595, 34.660526, 20.886618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124800, 34.913792, 20.622902>,  <24.222122, 35.065750, 20.464672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124800, 34.913792, 20.622902>,  <23.962595, 34.660526, 20.886618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124800, 34.913792, 20.622902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599658, -0.360096, -0.714661,
		-0.689904, 0.685154, 0.233657,
		0.405514, 0.633162, -0.659290,
		24.246454, 35.103741, 20.425116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.434561, 35.045135, 20.536669>,  <23.962595, 34.660526, 20.886618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.434561, 35.045135, 20.536669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741858, 35.020752, 20.281769>,  <23.926235, 35.006123, 20.128830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741858, 35.020752, 20.281769>,  <23.434561, 35.045135, 20.536669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741858, 35.020752, 20.281769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626362, -0.277124, -0.728610,
		-0.132181, 0.958899, -0.251082,
		0.768244, -0.060960, -0.637248,
		23.972330, 35.002464, 20.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671160, 35.699890, 20.843367>,  <23.434561, 35.045135, 20.536669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671160, 35.699890, 20.843367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.558447, 35.536991, 21.190872>,  <23.490820, 35.439251, 21.399376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.558447, 35.536991, 21.190872>,  <23.671160, 35.699890, 20.843367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.558447, 35.536991, 21.190872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391174, 0.778027, 0.491586,
		-0.876117, 0.478358, -0.059930,
		-0.281782, -0.407244, 0.868764,
		23.473913, 35.414818, 21.451502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.522987, 36.287270, 21.192732>,  <23.671160, 35.699890, 20.843367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.522987, 36.287270, 21.192732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.586235, 35.977482, 21.437744>,  <23.624184, 35.791611, 21.584751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.586235, 35.977482, 21.437744>,  <23.522987, 36.287270, 21.192732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.586235, 35.977482, 21.437744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308993, 0.627989, 0.714250,
		-0.937828, 0.076332, 0.338603,
		0.158119, -0.774469, 0.612532,
		23.633671, 35.745140, 21.621504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936979, 36.610439, 21.714441>,  <23.522987, 36.287270, 21.192732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936979, 36.610439, 21.714441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.616343, 36.746410, 21.517708>,  <22.423960, 36.827991, 21.399668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.616343, 36.746410, 21.517708>,  <22.936979, 36.610439, 21.714441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.616343, 36.746410, 21.517708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307450, 0.939903, 0.148516,
		0.512759, -0.032164, -0.857930,
		-0.801594, 0.339923, -0.491833,
		22.375864, 36.848389, 21.370157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.948074, 36.853828, 21.085981>,  <22.936979, 36.610439, 21.714441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.948074, 36.853828, 21.085981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678782, 37.057030, 21.300903>,  <22.517206, 37.178951, 21.429857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678782, 37.057030, 21.300903>,  <22.948074, 36.853828, 21.085981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678782, 37.057030, 21.300903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597762, 0.801624, -0.008919,
		-0.435248, 0.315177, -0.843340,
		-0.673231, 0.507999, 0.537306,
		22.476812, 37.209431, 21.462095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.975304, 37.456051, 20.754026>,  <22.948074, 36.853828, 21.085981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.975304, 37.456051, 20.754026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.741041, 37.572365, 21.056667>,  <22.600483, 37.642155, 21.238253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.741041, 37.572365, 21.056667>,  <22.975304, 37.456051, 20.754026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.741041, 37.572365, 21.056667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612517, 0.770122, 0.178144,
		-0.530876, 0.567764, -0.629139,
		-0.585657, 0.290785, 0.756604,
		22.565344, 37.659599, 21.283648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772570, 38.029026, 20.508526>,  <22.975304, 37.456051, 20.754026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772570, 38.029026, 20.508526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755848, 38.059647, 20.907001>,  <22.745815, 38.078018, 21.146088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755848, 38.059647, 20.907001>,  <22.772570, 38.029026, 20.508526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755848, 38.059647, 20.907001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625648, 0.779380, -0.033635,
		-0.778985, 0.621858, -0.080473,
		-0.041803, 0.076549, 0.996189,
		22.743307, 38.082611, 21.205858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649017, 38.695591, 20.630756>,  <22.772570, 38.029026, 20.508526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649017, 38.695591, 20.630756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810255, 38.584988, 20.979710>,  <22.906998, 38.518623, 21.189081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810255, 38.584988, 20.979710>,  <22.649017, 38.695591, 20.630756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.810255, 38.584988, 20.979710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504575, 0.862431, 0.040210,
		-0.763490, 0.423976, 0.487163,
		0.403096, -0.276510, 0.872385,
		22.931185, 38.502033, 21.241425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673912, 39.312744, 21.040503>,  <22.649017, 38.695591, 20.630756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673912, 39.312744, 21.040503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928541, 39.076115, 21.238419>,  <23.081318, 38.934135, 21.357168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928541, 39.076115, 21.238419>,  <22.673912, 39.312744, 21.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.928541, 39.076115, 21.238419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627231, 0.770422, 0.114157,
		-0.448731, 0.237680, 0.861480,
		0.636570, -0.591573, 0.494792,
		23.119513, 38.898643, 21.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.265560, 39.771469, 21.093740>,  <22.673912, 39.312744, 21.040503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.265560, 39.771469, 21.093740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432207, 39.440777, 21.244976>,  <23.532196, 39.242363, 21.335716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432207, 39.440777, 21.244976>,  <23.265560, 39.771469, 21.093740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432207, 39.440777, 21.244976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899054, 0.313098, -0.306057,
		0.134647, 0.467430, 0.873715,
		0.416619, -0.826728, 0.378088,
		23.557192, 39.192757, 21.358402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.801126, 39.940922, 21.455658>,  <23.265560, 39.771469, 21.093740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.801126, 39.940922, 21.455658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885500, 39.560596, 21.364925>,  <23.936125, 39.332401, 21.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885500, 39.560596, 21.364925>,  <23.801126, 39.940922, 21.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885500, 39.560596, 21.364925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942452, 0.259402, -0.210936,
		0.259402, -0.169283, 0.950817,
		0.210936, -0.950817, -0.226831,
		23.948780, 39.275352, 21.296877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438808, 39.820805, 21.907164>,  <23.801126, 39.940922, 21.455658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438808, 39.820805, 21.907164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384809, 39.588211, 21.586250>,  <24.352409, 39.448654, 21.393703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384809, 39.588211, 21.586250>,  <24.438808, 39.820805, 21.907164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384809, 39.588211, 21.586250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912508, 0.242584, -0.329366,
		0.386141, -0.776552, 0.497858,
		-0.134997, -0.581481, -0.802281,
		24.344311, 39.413765, 21.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101894, 39.441223, 21.785295>,  <24.438808, 39.820805, 21.907164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101894, 39.441223, 21.785295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944044, 39.384502, 21.422161>,  <24.849335, 39.350468, 21.204281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944044, 39.384502, 21.422161>,  <25.101894, 39.441223, 21.785295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944044, 39.384502, 21.422161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902667, 0.124742, -0.411863,
		0.171650, -0.982003, 0.078778,
		-0.394624, -0.141806, -0.907834,
		24.825657, 39.341961, 21.149811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544682, 38.918102, 21.419004>,  <25.101894, 39.441223, 21.785295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544682, 38.918102, 21.419004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339561, 39.114605, 21.137379>,  <25.216490, 39.232506, 20.968403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339561, 39.114605, 21.137379>,  <25.544682, 38.918102, 21.419004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339561, 39.114605, 21.137379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794720, -0.038582, -0.605749,
		-0.324741, -0.870161, -0.370625,
		-0.512800, 0.491255, -0.704063,
		25.185722, 39.261982, 20.926159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645948, 38.522194, 20.700434>,  <25.544682, 38.918102, 21.419004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645948, 38.522194, 20.700434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535208, 38.888248, 20.583210>,  <25.468763, 39.107880, 20.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535208, 38.888248, 20.583210>,  <25.645948, 38.522194, 20.700434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535208, 38.888248, 20.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856538, 0.096786, -0.506927,
		-0.435542, -0.391360, -0.810642,
		-0.276850, 0.915134, -0.293060,
		25.452152, 39.162788, 20.495293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802860, 38.560608, 19.933289>,  <25.645948, 38.522194, 20.700434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802860, 38.560608, 19.933289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792532, 38.931187, 20.083508>,  <25.786335, 39.153534, 20.173639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792532, 38.931187, 20.083508>,  <25.802860, 38.560608, 19.933289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792532, 38.931187, 20.083508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875902, 0.202027, -0.438157,
		-0.481798, 0.317630, -0.816689,
		-0.025822, 0.926443, 0.375549,
		25.784786, 39.209118, 20.196173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728518, 39.059700, 19.337265>,  <25.802860, 38.560608, 19.933289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728518, 39.059700, 19.337265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881493, 39.268223, 19.642414>,  <25.973278, 39.393337, 19.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881493, 39.268223, 19.642414>,  <25.728518, 39.059700, 19.337265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881493, 39.268223, 19.642414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793742, 0.237283, -0.560062,
		-0.472983, 0.819715, -0.323039,
		0.382440, 0.521309, 0.762874,
		25.996225, 39.424614, 19.871277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009287, 39.659328, 19.037180>,  <25.728518, 39.059700, 19.337265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009287, 39.659328, 19.037180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187405, 39.629181, 19.394062>,  <26.294275, 39.611092, 19.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187405, 39.629181, 19.394062>,  <26.009287, 39.659328, 19.037180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187405, 39.629181, 19.394062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868263, 0.279743, -0.409711,
		-0.218710, 0.957112, 0.190007,
		0.445293, -0.075368, 0.892207,
		26.320992, 39.606571, 19.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349930, 40.292313, 19.254040>,  <26.009287, 39.659328, 19.037180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349930, 40.292313, 19.254040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538404, 39.987762, 19.432156>,  <26.651489, 39.805031, 19.539026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538404, 39.987762, 19.432156>,  <26.349930, 40.292313, 19.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538404, 39.987762, 19.432156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818953, 0.190158, -0.541439,
		0.327565, 0.619792, 0.713133,
		0.471188, -0.761379, 0.445291,
		26.679760, 39.759350, 19.565742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900133, 40.519955, 19.395727>,  <26.349930, 40.292313, 19.254040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900133, 40.519955, 19.395727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994158, 40.133205, 19.435539>,  <27.050573, 39.901157, 19.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994158, 40.133205, 19.435539>,  <26.900133, 40.519955, 19.395727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994158, 40.133205, 19.435539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840569, 0.150797, -0.520292,
		0.488047, 0.205962, 0.848169,
		0.235062, -0.966871, 0.099529,
		27.064676, 39.843143, 19.465399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641470, 40.533085, 19.504128>,  <26.900133, 40.519955, 19.395727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641470, 40.533085, 19.504128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546400, 40.160549, 19.393764>,  <27.489359, 39.937027, 19.327547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546400, 40.160549, 19.393764>,  <27.641470, 40.533085, 19.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546400, 40.160549, 19.393764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726751, 0.017961, -0.686666,
		0.644473, -0.363718, 0.672580,
		-0.237673, -0.931336, -0.275907,
		27.475098, 39.881149, 19.310993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275063, 40.185570, 19.502592>,  <27.641470, 40.533085, 19.504128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275063, 40.185570, 19.502592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039673, 39.940449, 19.291626>,  <27.898439, 39.793377, 19.165047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039673, 39.940449, 19.291626>,  <28.275063, 40.185570, 19.502592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039673, 39.940449, 19.291626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715627, -0.091207, -0.692502,
		0.376264, -0.784954, 0.492212,
		-0.588476, -0.612804, -0.527416,
		27.863131, 39.756607, 19.133402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705433, 39.655838, 19.267603>,  <28.275063, 40.185570, 19.502592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705433, 39.655838, 19.267603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414154, 39.610916, 18.997162>,  <28.239388, 39.583961, 18.834896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414154, 39.610916, 18.997162>,  <28.705433, 39.655838, 19.267603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414154, 39.610916, 18.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681621, -0.015659, -0.731538,
		0.071568, -0.993550, 0.087953,
		-0.728197, -0.112305, -0.676104,
		28.195696, 39.577225, 18.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881060, 39.111557, 18.803101>,  <28.705433, 39.655838, 19.267603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881060, 39.111557, 18.803101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613960, 39.330513, 18.601315>,  <28.453701, 39.461887, 18.480244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613960, 39.330513, 18.601315>,  <28.881060, 39.111557, 18.803101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613960, 39.330513, 18.601315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570427, -0.059125, -0.819218,
		-0.478255, -0.834789, -0.272763,
		-0.667747, 0.547386, -0.504463,
		28.413637, 39.494728, 18.449976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229532, 39.202076, 18.175459>,  <28.881060, 39.111557, 18.803101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229532, 39.202076, 18.175459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884220, 39.394470, 18.114273>,  <28.677032, 39.509907, 18.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884220, 39.394470, 18.114273>,  <29.229532, 39.202076, 18.175459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884220, 39.394470, 18.114273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245573, 0.135496, -0.959862,
		-0.440954, -0.866195, -0.235088,
		-0.863281, 0.480987, -0.152966,
		28.625237, 39.538765, 18.068382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891350, 38.867935, 17.757317>,  <29.229532, 39.202076, 18.175459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891350, 38.867935, 17.757317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774677, 39.249367, 17.727364>,  <28.704674, 39.478226, 17.709393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774677, 39.249367, 17.727364>,  <28.891350, 38.867935, 17.757317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774677, 39.249367, 17.727364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295754, 0.015460, -0.955139,
		-0.909644, -0.300742, -0.286535,
		-0.291680, 0.953580, -0.074883,
		28.687174, 39.535442, 17.704899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422585, 39.019463, 17.109921>,  <28.891350, 38.867935, 17.757317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422585, 39.019463, 17.109921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624090, 39.346916, 17.220230>,  <28.744993, 39.543388, 17.286417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624090, 39.346916, 17.220230>,  <28.422585, 39.019463, 17.109921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624090, 39.346916, 17.220230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278633, 0.148194, -0.948895,
		-0.817670, 0.554861, -0.153445,
		0.503766, 0.818638, 0.275776,
		28.775219, 39.592506, 17.302963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635799, 39.172794, 16.964462>,  <28.422585, 39.019463, 17.109921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635799, 39.172794, 16.964462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897448, 38.870319, 16.971455>,  <28.054436, 38.688835, 16.975651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897448, 38.870319, 16.971455>,  <27.635799, 39.172794, 16.964462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897448, 38.870319, 16.971455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679093, -0.576938, 0.453845,
		-0.333106, -0.308741, -0.890909,
		0.654120, -0.756189, 0.017483,
		28.093683, 38.643463, 16.976700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613195, 38.557510, 16.461569>,  <27.635799, 39.172794, 16.964462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613195, 38.557510, 16.461569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805206, 38.420284, 16.784527>,  <27.920412, 38.337948, 16.978302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805206, 38.420284, 16.784527>,  <27.613195, 38.557510, 16.461569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805206, 38.420284, 16.784527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803126, -0.542139, 0.247132,
		0.352938, -0.767068, -0.535763,
		0.480025, -0.343063, 0.807393,
		27.949213, 38.317364, 17.026745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638590, 37.815945, 16.442108>,  <27.613195, 38.557510, 16.461569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638590, 37.815945, 16.442108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573759, 37.979240, 16.801456>,  <27.534861, 38.077217, 17.017065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573759, 37.979240, 16.801456>,  <27.638590, 37.815945, 16.442108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573759, 37.979240, 16.801456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868848, -0.490633, 0.066205,
		0.467798, -0.769817, 0.434221,
		-0.162077, 0.408243, 0.898370,
		27.525135, 38.101715, 17.070967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651333, 37.260319, 17.000200>,  <27.638590, 37.815945, 16.442108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651333, 37.260319, 17.000200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411306, 37.575504, 17.055397>,  <27.267290, 37.764614, 17.088514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411306, 37.575504, 17.055397>,  <27.651333, 37.260319, 17.000200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411306, 37.575504, 17.055397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799908, -0.589256, -0.113687,
		-0.008268, -0.178600, 0.983887,
		-0.600065, 0.787960, 0.137991,
		27.231287, 37.811893, 17.096794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857672, 36.663464, 16.793859>,  <27.651333, 37.260319, 17.000200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857672, 36.663464, 16.793859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725164, 36.367123, 16.560143>,  <27.645660, 36.189320, 16.419912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725164, 36.367123, 16.560143>,  <27.857672, 36.663464, 16.793859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725164, 36.367123, 16.560143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927349, 0.141432, 0.346441,
		-0.174024, 0.656607, -0.733882,
		-0.331270, -0.740854, -0.584291,
		27.625784, 36.144867, 16.384855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147497, 36.802818, 16.549957>,  <27.857672, 36.663464, 16.793859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147497, 36.802818, 16.549957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129055, 36.404045, 16.524681>,  <27.117990, 36.164780, 16.509516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129055, 36.404045, 16.524681>,  <27.147497, 36.802818, 16.549957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129055, 36.404045, 16.524681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926662, 0.019059, 0.375412,
		-0.373057, 0.075866, -0.924702,
		-0.046105, -0.996936, -0.063192,
		27.115223, 36.104965, 16.505724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511459, 36.500580, 16.227247>,  <27.147497, 36.802818, 16.549957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511459, 36.500580, 16.227247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677164, 36.257244, 16.498043>,  <26.776587, 36.111244, 16.660521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677164, 36.257244, 16.498043>,  <26.511459, 36.500580, 16.227247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677164, 36.257244, 16.498043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809855, 0.093072, 0.579199,
		-0.415357, -0.788203, -0.454109,
		0.414262, -0.608337, 0.676988,
		26.801443, 36.074741, 16.701139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104290, 35.847977, 16.240213>,  <26.511459, 36.500580, 16.227247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104290, 35.847977, 16.240213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299072, 35.976631, 16.565033>,  <26.415941, 36.053822, 16.759926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299072, 35.976631, 16.565033>,  <26.104290, 35.847977, 16.240213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299072, 35.976631, 16.565033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865474, 0.302863, 0.399036,
		-0.117596, -0.897121, 0.425846,
		0.486957, 0.321633, 0.812051,
		26.445160, 36.073120, 16.808647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731152, 35.530006, 16.819199>,  <26.104290, 35.847977, 16.240213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731152, 35.530006, 16.819199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927967, 35.864956, 16.914444>,  <26.046057, 36.065926, 16.971592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927967, 35.864956, 16.914444>,  <25.731152, 35.530006, 16.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927967, 35.864956, 16.914444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789711, 0.314198, 0.526912,
		0.366411, -0.447299, 0.815884,
		0.492036, 0.837379, 0.238111,
		26.075579, 36.116169, 16.985878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590548, 35.616550, 17.510056>,  <25.731152, 35.530006, 16.819199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590548, 35.616550, 17.510056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687998, 35.988956, 17.401356>,  <25.746468, 36.212402, 17.336136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687998, 35.988956, 17.401356>,  <25.590548, 35.616550, 17.510056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687998, 35.988956, 17.401356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616634, 0.364962, 0.697542,
		0.748604, -0.002369, 0.663013,
		0.243627, 0.931019, -0.271752,
		25.761086, 36.268261, 17.319830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509932, 35.971767, 18.078535>,  <25.590548, 35.616550, 17.510056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509932, 35.971767, 18.078535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535694, 36.279274, 17.824024>,  <25.551151, 36.463779, 17.671318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535694, 36.279274, 17.824024>,  <25.509932, 35.971767, 18.078535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535694, 36.279274, 17.824024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567907, 0.552519, 0.610085,
		0.820569, 0.322053, 0.472174,
		0.064406, 0.768768, -0.636276,
		25.555016, 36.509903, 17.633141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593317, 36.549458, 18.538494>,  <25.509932, 35.971767, 18.078535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593317, 36.549458, 18.538494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471188, 36.675175, 18.178940>,  <25.397909, 36.750603, 17.963207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471188, 36.675175, 18.178940>,  <25.593317, 36.549458, 18.538494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471188, 36.675175, 18.178940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669015, 0.600944, 0.437362,
		0.677639, 0.734906, 0.026782,
		-0.305325, 0.314291, -0.898887,
		25.379589, 36.769463, 17.909273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294209, 37.093319, 18.780912>,  <25.593317, 36.549458, 18.538494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294209, 37.093319, 18.780912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150639, 37.044392, 18.410786>,  <25.064497, 37.015034, 18.188709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150639, 37.044392, 18.410786>,  <25.294209, 37.093319, 18.780912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150639, 37.044392, 18.410786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858445, 0.432427, 0.275825,
		0.366393, 0.893334, -0.260212,
		-0.358927, -0.122317, -0.925316,
		25.042961, 37.007698, 18.133190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003920, 37.677967, 18.552385>,  <25.294209, 37.093319, 18.780912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003920, 37.677967, 18.552385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814445, 37.398415, 18.338024>,  <24.700762, 37.230682, 18.209408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814445, 37.398415, 18.338024>,  <25.003920, 37.677967, 18.552385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814445, 37.398415, 18.338024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880627, 0.383446, 0.278326,
		0.010972, 0.603767, -0.797085,
		-0.473683, -0.698881, -0.535901,
		24.672340, 37.188751, 18.177254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490978, 38.041725, 18.214487>,  <25.003920, 37.677967, 18.552385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490978, 38.041725, 18.214487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375708, 37.658897, 18.202034>,  <24.306545, 37.429199, 18.194563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375708, 37.658897, 18.202034>,  <24.490978, 38.041725, 18.214487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375708, 37.658897, 18.202034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939954, 0.276512, 0.200067,
		-0.182870, 0.086918, -0.979288,
		-0.288175, -0.957072, -0.031133,
		24.289255, 37.371777, 18.192694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852169, 38.065407, 18.079239>,  <24.490978, 38.041725, 18.214487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852169, 38.065407, 18.079239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860460, 37.685261, 18.203419>,  <23.865435, 37.457172, 18.277925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860460, 37.685261, 18.203419>,  <23.852169, 38.065407, 18.079239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.860460, 37.685261, 18.203419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944786, 0.082950, 0.317014,
		-0.327031, -0.299878, -0.896172,
		0.020729, -0.950364, 0.310448,
		23.866678, 37.400150, 18.296553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.205870, 37.672005, 17.808483>,  <23.852169, 38.065407, 18.079239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.205870, 37.672005, 17.808483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322147, 37.489979, 18.145153>,  <23.391914, 37.380764, 18.347155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322147, 37.489979, 18.145153>,  <23.205870, 37.672005, 17.808483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322147, 37.489979, 18.145153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949722, -0.030302, 0.311626,
		-0.116306, -0.889943, -0.440993,
		0.290692, -0.455064, 0.841674,
		23.409355, 37.353462, 18.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634562, 37.288696, 17.954309>,  <23.205870, 37.672005, 17.808483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634562, 37.288696, 17.954309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841011, 37.270439, 18.296429>,  <22.964880, 37.259483, 18.501699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841011, 37.270439, 18.296429>,  <22.634562, 37.288696, 17.954309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841011, 37.270439, 18.296429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855191, -0.082936, 0.511634,
		0.047581, -0.995509, -0.081841,
		0.516124, -0.045645, 0.855297,
		22.995848, 37.256744, 18.553019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417971, 36.751015, 18.324467>,  <22.634562, 37.288696, 17.954309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417971, 36.751015, 18.324467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581104, 37.003410, 18.588444>,  <22.678984, 37.154846, 18.746830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581104, 37.003410, 18.588444>,  <22.417971, 36.751015, 18.324467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581104, 37.003410, 18.588444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837731, -0.028882, 0.545318,
		0.363149, -0.775255, 0.516819,
		0.407834, 0.630987, 0.659944,
		22.703455, 37.192707, 18.786427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.317947, 36.413589, 19.037817>,  <22.417971, 36.751015, 18.324467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.317947, 36.413589, 19.037817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.409592, 36.799095, 19.092464>,  <22.464579, 37.030399, 19.125252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.409592, 36.799095, 19.092464>,  <22.317947, 36.413589, 19.037817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.409592, 36.799095, 19.092464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816793, 0.114004, 0.565554,
		0.529487, -0.241163, 0.813317,
		0.229112, 0.963765, 0.136617,
		22.478325, 37.088226, 19.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172668, 36.482891, 19.834654>,  <22.317947, 36.413589, 19.037817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172668, 36.482891, 19.834654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.182285, 36.852474, 19.681957>,  <22.188055, 37.074223, 19.590340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.182285, 36.852474, 19.681957>,  <22.172668, 36.482891, 19.834654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.182285, 36.852474, 19.681957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792110, 0.250567, 0.556578,
		0.609905, 0.289002, 0.737898,
		0.024041, 0.923956, -0.381744,
		22.189497, 37.129662, 19.567434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211571, 36.882061, 20.449310>,  <22.172668, 36.482891, 19.834654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211571, 36.882061, 20.449310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102093, 37.130444, 20.155506>,  <22.036406, 37.279472, 19.979223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102093, 37.130444, 20.155506>,  <22.211571, 36.882061, 20.449310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102093, 37.130444, 20.155506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657458, 0.436613, 0.614100,
		0.702025, 0.650985, 0.288755,
		-0.273695, 0.620957, -0.734509,
		22.019983, 37.316730, 19.935154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108850, 37.483570, 20.842875>,  <22.211571, 36.882061, 20.449310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108850, 37.483570, 20.842875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929638, 37.562740, 20.494141>,  <21.822111, 37.610241, 20.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929638, 37.562740, 20.494141>,  <22.108850, 37.483570, 20.842875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929638, 37.562740, 20.494141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676190, 0.562913, 0.475286,
		0.584837, 0.802467, -0.118368,
		-0.448032, 0.197926, -0.871833,
		21.795229, 37.622120, 20.232592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921150, 38.191811, 20.844994>,  <22.108850, 37.483570, 20.842875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921150, 38.191811, 20.844994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664865, 38.016125, 20.593094>,  <21.511095, 37.910713, 20.441954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664865, 38.016125, 20.593094>,  <21.921150, 38.191811, 20.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664865, 38.016125, 20.593094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753276, 0.200903, 0.626269,
		-0.148545, 0.875632, -0.459568,
		-0.640710, -0.439211, -0.629750,
		21.472652, 37.884361, 20.404169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391062, 38.691734, 20.664209>,  <21.921150, 38.191811, 20.844994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391062, 38.691734, 20.664209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.249113, 38.321484, 20.611614>,  <21.163944, 38.099335, 20.580057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.249113, 38.321484, 20.611614>,  <21.391062, 38.691734, 20.664209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.249113, 38.321484, 20.611614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658797, 0.147788, 0.737662,
		-0.663364, 0.348399, -0.662243,
		-0.354872, -0.925622, -0.131487,
		21.142651, 38.043797, 20.572168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666338, 38.685146, 20.620081>,  <21.391062, 38.691734, 20.664209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666338, 38.685146, 20.620081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710997, 38.295208, 20.697235>,  <20.737791, 38.061245, 20.743528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710997, 38.295208, 20.697235>,  <20.666338, 38.685146, 20.620081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710997, 38.295208, 20.697235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763095, 0.040234, 0.645032,
		-0.636570, -0.219204, -0.739411,
		0.111644, -0.974849, 0.192885,
		20.744490, 38.002754, 20.755100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.003197, 38.419598, 20.547005>,  <20.666338, 38.685146, 20.620081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.003197, 38.419598, 20.547005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194698, 38.145206, 20.766178>,  <20.309599, 37.980572, 20.897682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194698, 38.145206, 20.766178>,  <20.003197, 38.419598, 20.547005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194698, 38.145206, 20.766178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780986, -0.047648, 0.622728,
		-0.401069, -0.726062, -0.558550,
		0.478753, -0.685977, 0.547934,
		20.338324, 37.939415, 20.930559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.552794, 37.965500, 20.750099>,  <20.003197, 38.419598, 20.547005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.552794, 37.965500, 20.750099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840445, 37.901821, 21.020657>,  <20.013035, 37.863613, 21.182991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840445, 37.901821, 21.020657>,  <19.552794, 37.965500, 20.750099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840445, 37.901821, 21.020657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694794, -0.179741, 0.696387,
		0.010714, -0.970747, -0.239866,
		0.719129, -0.159196, 0.676395,
		20.056183, 37.854061, 21.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267178, 37.494522, 21.232267>,  <19.552794, 37.965500, 20.750099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267178, 37.494522, 21.232267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569084, 37.661430, 21.434738>,  <19.750229, 37.761574, 21.556221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569084, 37.661430, 21.434738>,  <19.267178, 37.494522, 21.232267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569084, 37.661430, 21.434738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630262, 0.247280, 0.735950,
		0.181917, -0.874496, 0.449625,
		0.754768, 0.417263, 0.506177,
		19.795515, 37.786610, 21.586592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273512, 37.220131, 21.888372>,  <19.267178, 37.494522, 21.232267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273512, 37.220131, 21.888372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.429970, 37.587261, 21.915489>,  <19.523844, 37.807541, 21.931759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.429970, 37.587261, 21.915489>,  <19.273512, 37.220131, 21.888372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.429970, 37.587261, 21.915489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695378, 0.246482, 0.675052,
		0.602873, -0.311184, 0.734649,
		0.391143, 0.917830, 0.067793,
		19.547314, 37.862610, 21.935827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545366, 37.367264, 22.463850>,  <19.273512, 37.220131, 21.888372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545366, 37.367264, 22.463850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.403234, 37.694351, 22.282707>,  <19.317955, 37.890602, 22.174021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.403234, 37.694351, 22.282707>,  <19.545366, 37.367264, 22.463850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403234, 37.694351, 22.282707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735409, 0.054493, 0.675429,
		0.576987, 0.573036, 0.581993,
		-0.355331, 0.817717, -0.452857,
		19.296635, 37.939667, 22.146851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536118, 37.948196, 22.982389>,  <19.545366, 37.367264, 22.463850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536118, 37.948196, 22.982389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270956, 37.894760, 22.687714>,  <19.111858, 37.862698, 22.510908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270956, 37.894760, 22.687714>,  <19.536118, 37.948196, 22.982389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270956, 37.894760, 22.687714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731889, -0.091739, 0.675220,
		-0.157783, 0.986782, -0.036957,
		-0.662904, -0.133587, -0.736690,
		19.072084, 37.854683, 22.466707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093222, 38.511322, 22.986908>,  <19.536118, 37.948196, 22.982389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093222, 38.511322, 22.986908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967199, 38.149883, 22.870804>,  <18.891586, 37.933022, 22.801142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967199, 38.149883, 22.870804>,  <19.093222, 38.511322, 22.986908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967199, 38.149883, 22.870804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593784, -0.050918, 0.803012,
		-0.740378, 0.425347, -0.520500,
		-0.315056, -0.903597, -0.290263,
		18.872683, 37.878803, 22.783726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469265, 38.583572, 22.999901>,  <19.093222, 38.511322, 22.986908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469265, 38.583572, 22.999901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582333, 38.206566, 23.071182>,  <18.650173, 37.980362, 23.113951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582333, 38.206566, 23.071182>,  <18.469265, 38.583572, 22.999901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582333, 38.206566, 23.071182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490268, 0.017721, 0.871392,
		-0.824461, -0.333682, -0.457078,
		0.282668, -0.942519, 0.178203,
		18.667133, 37.923809, 23.124643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.162590, 25.896429, 19.706625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508400, 25.884357, 19.907299>,  <32.715885, 25.877113, 20.027702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508400, 25.884357, 19.907299>,  <32.162590, 25.896429, 19.706625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508400, 25.884357, 19.907299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068434, 0.995968, -0.058011,
		-0.497909, 0.084485, 0.863104,
		0.864525, -0.030181, 0.501683,
		32.767757, 25.875303, 20.057804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145294, 26.466196, 20.115767>,  <32.162590, 25.896429, 19.706625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145294, 26.466196, 20.115767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.535824, 26.379692, 20.113945>,  <32.770142, 26.327789, 20.112852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.535824, 26.379692, 20.113945>,  <32.145294, 26.466196, 20.115767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535824, 26.379692, 20.113945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215885, 0.972890, 0.082935,
		-0.013507, -0.081954, 0.996545,
		0.976325, -0.216259, -0.004552,
		32.828720, 26.314814, 20.112579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515175, 26.888664, 20.638973>,  <32.145294, 26.466196, 20.115767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515175, 26.888664, 20.638973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796505, 26.776440, 20.377708>,  <32.965302, 26.709105, 20.220951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796505, 26.776440, 20.377708>,  <32.515175, 26.888664, 20.638973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796505, 26.776440, 20.377708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319901, 0.945444, -0.061643,
		0.634820, -0.165591, 0.754707,
		0.703325, -0.280564, -0.653159,
		33.007504, 26.692270, 20.181761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047047, 27.288151, 20.832182>,  <32.515175, 26.888664, 20.638973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047047, 27.288151, 20.832182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116051, 27.192863, 20.449875>,  <33.157455, 27.135691, 20.220491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116051, 27.192863, 20.449875>,  <33.047047, 27.288151, 20.832182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116051, 27.192863, 20.449875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460401, 0.877300, -0.135558,
		0.870787, -0.416651, 0.261021,
		0.172513, -0.238216, -0.955768,
		33.167805, 27.121399, 20.163145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708179, 27.554403, 20.686621>,  <33.047047, 27.288151, 20.832182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708179, 27.554403, 20.686621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.542683, 27.521263, 20.323975>,  <33.443382, 27.501379, 20.106386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.542683, 27.521263, 20.323975>,  <33.708179, 27.554403, 20.686621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542683, 27.521263, 20.323975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395666, 0.880518, -0.261031,
		0.819918, -0.466717, -0.331528,
		-0.413744, -0.082850, -0.906616,
		33.418560, 27.496408, 20.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239914, 27.879604, 20.196184>,  <33.708179, 27.554403, 20.686621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239914, 27.879604, 20.196184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895771, 27.857262, 19.993534>,  <33.689285, 27.843857, 19.871944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895771, 27.857262, 19.993534>,  <34.239914, 27.879604, 20.196184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895771, 27.857262, 19.993534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062809, 0.974783, -0.214136,
		0.505812, -0.216053, -0.835150,
		-0.860354, -0.055857, -0.506627,
		33.637665, 27.840504, 19.841545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394165, 28.188541, 19.641628>,  <34.239914, 27.879604, 20.196184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394165, 28.188541, 19.641628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994522, 28.172054, 19.637753>,  <33.754738, 28.162161, 19.635427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994522, 28.172054, 19.637753>,  <34.394165, 28.188541, 19.641628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994522, 28.172054, 19.637753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038967, 0.984592, -0.170469,
		0.016567, -0.169939, -0.985315,
		-0.999103, -0.041219, -0.009690,
		33.694790, 28.159689, 19.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160427, 28.562553, 18.988531>,  <34.394165, 28.188541, 19.641628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160427, 28.562553, 18.988531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845215, 28.549973, 19.234467>,  <33.656090, 28.542423, 19.382029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845215, 28.549973, 19.234467>,  <34.160427, 28.562553, 18.988531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845215, 28.549973, 19.234467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165708, 0.972673, -0.162627,
		-0.592921, -0.230038, -0.771704,
		-0.788026, -0.031453, 0.614838,
		33.608807, 28.540537, 19.418919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650425, 28.919107, 18.656673>,  <34.160427, 28.562553, 18.988531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650425, 28.919107, 18.656673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544449, 28.913624, 19.042339>,  <33.480862, 28.910334, 19.273739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544449, 28.913624, 19.042339>,  <33.650425, 28.919107, 18.656673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544449, 28.913624, 19.042339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224008, 0.973419, -0.047717,
		-0.937884, -0.228623, -0.260971,
		-0.264943, -0.013707, 0.964167,
		33.464966, 28.909512, 19.331589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964832, 29.312855, 18.734716>,  <33.650425, 28.919107, 18.656673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964832, 29.312855, 18.734716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132767, 29.324417, 19.097572>,  <33.233528, 29.331354, 19.315287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132767, 29.324417, 19.097572>,  <32.964832, 29.312855, 18.734716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132767, 29.324417, 19.097572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280110, 0.954827, 0.099212,
		-0.863295, -0.295752, 0.408966,
		0.419834, 0.028906, 0.907140,
		33.258717, 29.333090, 19.369715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487804, 29.721233, 19.088135>,  <32.964832, 29.312855, 18.734716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487804, 29.721233, 19.088135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784554, 29.740719, 19.355640>,  <32.962605, 29.752409, 19.516144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784554, 29.740719, 19.355640>,  <32.487804, 29.721233, 19.088135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784554, 29.740719, 19.355640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176222, 0.976463, 0.124363,
		-0.646967, -0.210113, 0.732998,
		0.741875, 0.048712, 0.668766,
		33.007114, 29.755333, 19.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183815, 30.167974, 19.618317>,  <32.487804, 29.721233, 19.088135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183815, 30.167974, 19.618317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582554, 30.164291, 19.649834>,  <32.821796, 30.162081, 19.668743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582554, 30.164291, 19.649834>,  <32.183815, 30.167974, 19.618317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582554, 30.164291, 19.649834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003894, 0.997724, 0.067321,
		-0.079233, -0.066802, 0.994615,
		0.996849, -0.009207, 0.078793,
		32.881607, 30.161530, 19.673471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328697, 30.395258, 20.283766>,  <32.183815, 30.167974, 19.618317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328697, 30.395258, 20.283766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638817, 30.468639, 20.042023>,  <32.824890, 30.512669, 19.896976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638817, 30.468639, 20.042023>,  <32.328697, 30.395258, 20.283766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638817, 30.468639, 20.042023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029740, 0.966430, 0.255205,
		0.630889, -0.179887, 0.754732,
		0.775303, 0.183452, -0.604360,
		32.871407, 30.523674, 19.860714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800426, 30.714323, 20.654636>,  <32.328697, 30.395258, 20.283766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800426, 30.714323, 20.654636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896160, 30.824894, 20.282333>,  <32.953602, 30.891235, 20.058952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896160, 30.824894, 20.282333>,  <32.800426, 30.714323, 20.654636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896160, 30.824894, 20.282333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030141, 0.956040, 0.291684,
		0.970470, -0.097863, 0.220479,
		0.239331, 0.276426, -0.930757,
		32.967960, 30.907822, 20.003107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272785, 31.242851, 20.733852>,  <32.800426, 30.714323, 20.654636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272785, 31.242851, 20.733852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169788, 31.303677, 20.352158>,  <33.107990, 31.340172, 20.123140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169788, 31.303677, 20.352158>,  <33.272785, 31.242851, 20.733852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169788, 31.303677, 20.352158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011450, 0.986990, 0.160373,
		0.966211, 0.052221, -0.252404,
		-0.257495, 0.152064, -0.954239,
		33.092541, 31.349297, 20.065886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616219, 31.810862, 20.526251>,  <33.272785, 31.242851, 20.733852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616219, 31.810862, 20.526251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310081, 31.777153, 20.271019>,  <33.126400, 31.756927, 20.117880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310081, 31.777153, 20.271019>,  <33.616219, 31.810862, 20.526251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310081, 31.777153, 20.271019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120583, 0.992611, 0.013541,
		0.632223, 0.087305, -0.769851,
		-0.765345, -0.084270, -0.638079,
		33.080479, 31.751873, 20.079596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609089, 32.445541, 20.283329>,  <33.616219, 31.810862, 20.526251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609089, 32.445541, 20.283329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.249458, 32.341839, 20.142223>,  <33.033680, 32.279617, 20.057560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.249458, 32.341839, 20.142223>,  <33.609089, 32.445541, 20.283329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249458, 32.341839, 20.142223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307220, 0.947699, 0.086504,
		0.311885, 0.186150, -0.931706,
		-0.899079, -0.259260, -0.352762,
		32.979736, 32.264061, 20.036394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417439, 32.966873, 19.816713>,  <33.609089, 32.445541, 20.283329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417439, 32.966873, 19.816713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.069904, 32.784336, 19.893528>,  <32.861385, 32.674812, 19.939617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.069904, 32.784336, 19.893528>,  <33.417439, 32.966873, 19.816713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069904, 32.784336, 19.893528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470842, 0.881505, -0.035463,
		-0.153097, -0.121230, -0.980747,
		-0.868832, -0.456347, 0.192036,
		32.809254, 32.647430, 19.951139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901096, 33.150204, 19.310829>,  <33.417439, 32.966873, 19.816713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901096, 33.150204, 19.310829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699520, 33.036304, 19.637009>,  <32.578575, 32.967964, 19.832716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699520, 33.036304, 19.637009>,  <32.901096, 33.150204, 19.310829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699520, 33.036304, 19.637009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576654, 0.813792, -0.072200,
		-0.643048, -0.506617, -0.574307,
		-0.503944, -0.284748, 0.815450,
		32.548336, 32.950878, 19.881643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219376, 33.306217, 19.132000>,  <32.901096, 33.150204, 19.310829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219376, 33.306217, 19.132000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.241611, 33.290161, 19.531059>,  <32.254951, 33.280529, 19.770494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.241611, 33.290161, 19.531059>,  <32.219376, 33.306217, 19.132000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241611, 33.290161, 19.531059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658130, 0.749931, 0.066843,
		-0.750849, -0.660297, 0.015274,
		0.055591, -0.040137, 0.997646,
		32.258289, 33.278122, 19.830353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507919, 33.442654, 19.381327>,  <32.219376, 33.306217, 19.132000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507919, 33.442654, 19.381327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713369, 33.498753, 19.719917>,  <31.836639, 33.532413, 19.923071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713369, 33.498753, 19.719917>,  <31.507919, 33.442654, 19.381327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713369, 33.498753, 19.719917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549091, 0.811805, 0.198673,
		-0.659309, -0.566835, 0.493973,
		0.513625, 0.140249, 0.846475,
		31.867456, 33.540829, 19.973860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042059, 33.472054, 19.994593>,  <31.507919, 33.442654, 19.381327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042059, 33.472054, 19.994593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374813, 33.675446, 20.083511>,  <31.574465, 33.797482, 20.136864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374813, 33.675446, 20.083511>,  <31.042059, 33.472054, 19.994593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374813, 33.675446, 20.083511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552325, 0.797520, 0.242691,
		-0.053884, -0.324672, 0.944291,
		0.831885, 0.508478, 0.222298,
		31.624378, 33.827988, 20.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085556, 33.707233, 20.728039>,  <31.042059, 33.472054, 19.994593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085556, 33.707233, 20.728039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287970, 33.974277, 20.509598>,  <31.409418, 34.134502, 20.378532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287970, 33.974277, 20.509598>,  <31.085556, 33.707233, 20.728039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287970, 33.974277, 20.509598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480299, 0.744015, 0.464495,
		0.716408, 0.027242, 0.697149,
		0.506036, 0.667608, -0.546102,
		31.439779, 34.174561, 20.345766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354725, 33.748981, 20.503187>,  <31.085556, 33.707233, 20.728039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354725, 33.748981, 20.503187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.972986, 33.715008, 20.388638>,  <29.743942, 33.694626, 20.319908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.972986, 33.715008, 20.388638>,  <30.354725, 33.748981, 20.503187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972986, 33.715008, 20.388638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017330, -0.972854, 0.230770,
		-0.298197, 0.215271, 0.929912,
		-0.954347, -0.084930, -0.286372,
		29.686682, 33.689529, 20.302727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012268, 33.317280, 20.998625>,  <30.354725, 33.748981, 20.503187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012268, 33.317280, 20.998625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.802881, 33.260834, 20.662514>,  <29.677250, 33.226967, 20.460848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.802881, 33.260834, 20.662514>,  <30.012268, 33.317280, 20.998625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802881, 33.260834, 20.662514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074721, -0.989993, 0.119710,
		-0.848763, -0.000122, 0.528774,
		-0.523468, -0.141116, -0.840278,
		29.645842, 33.218498, 20.410431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347839, 32.920074, 21.161554>,  <30.012268, 33.317280, 20.998625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347839, 32.920074, 21.161554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.463419, 32.869900, 20.781918>,  <29.532766, 32.839794, 20.554136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.463419, 32.869900, 20.781918>,  <29.347839, 32.920074, 21.161554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463419, 32.869900, 20.781918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163839, -0.983232, 0.080065,
		-0.943220, 0.132364, -0.304657,
		0.288951, -0.125433, -0.949091,
		29.550104, 32.832272, 20.497190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791697, 32.481480, 20.889013>,  <29.347839, 32.920074, 21.161554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791697, 32.481480, 20.889013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079531, 32.466579, 20.611652>,  <29.252232, 32.457638, 20.445236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079531, 32.466579, 20.611652>,  <28.791697, 32.481480, 20.889013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079531, 32.466579, 20.611652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317225, -0.905908, -0.280534,
		-0.617708, 0.421834, -0.663697,
		0.719587, -0.037253, -0.693403,
		29.295406, 32.455402, 20.403631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467976, 32.229755, 20.313362>,  <28.791697, 32.481480, 20.889013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467976, 32.229755, 20.313362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854136, 32.164776, 20.231770>,  <29.085833, 32.125786, 20.182814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854136, 32.164776, 20.231770>,  <28.467976, 32.229755, 20.313362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854136, 32.164776, 20.231770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222843, -0.920204, -0.321816,
		-0.135426, 0.356138, -0.924568,
		0.965402, -0.162451, -0.203982,
		29.143757, 32.116039, 20.170574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502810, 31.862812, 19.630753>,  <28.467976, 32.229755, 20.313362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502810, 31.862812, 19.630753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.844725, 31.778255, 19.820343>,  <29.049873, 31.727522, 19.934097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.844725, 31.778255, 19.820343>,  <28.502810, 31.862812, 19.630753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844725, 31.778255, 19.820343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135023, -0.972418, -0.190188,
		0.501108, 0.098572, -0.859752,
		0.854786, -0.211391, 0.473978,
		29.101160, 31.714838, 19.962536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795609, 31.349873, 19.250729>,  <28.502810, 31.862812, 19.630753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795609, 31.349873, 19.250729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.974842, 31.341976, 19.608238>,  <29.082382, 31.337238, 19.822744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.974842, 31.341976, 19.608238>,  <28.795609, 31.349873, 19.250729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974842, 31.341976, 19.608238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281419, -0.945816, -0.161976,
		0.848544, 0.324104, -0.418247,
		0.448082, -0.019741, 0.893775,
		29.109266, 31.336054, 19.876371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521271, 31.061089, 19.242691>,  <28.795609, 31.349873, 19.250729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521271, 31.061089, 19.242691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389009, 30.986774, 19.612804>,  <29.309652, 30.942186, 19.834873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389009, 30.986774, 19.612804>,  <29.521271, 31.061089, 19.242691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389009, 30.986774, 19.612804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206270, -0.970955, -0.121243,
		0.920935, 0.150769, 0.359371,
		-0.330654, -0.185784, 0.925285,
		29.289814, 30.931040, 19.890390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003229, 30.619019, 19.434139>,  <29.521271, 31.061089, 19.242691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003229, 30.619019, 19.434139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.694502, 30.578022, 19.685150>,  <29.509266, 30.553425, 19.835756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.694502, 30.578022, 19.685150>,  <30.003229, 30.619019, 19.434139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694502, 30.578022, 19.685150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155889, -0.987304, 0.030484,
		0.616438, 0.121353, 0.777996,
		-0.771818, -0.102490, 0.627529,
		29.462957, 30.547276, 19.873409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254786, 30.203440, 19.841732>,  <30.003229, 30.619019, 19.434139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254786, 30.203440, 19.841732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.867554, 30.158585, 19.931396>,  <29.635214, 30.131672, 19.985195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.867554, 30.158585, 19.931396>,  <30.254786, 30.203440, 19.841732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867554, 30.158585, 19.931396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114529, -0.993417, -0.002342,
		0.222949, 0.023406, 0.974549,
		-0.968079, -0.112136, 0.224162,
		29.577129, 30.124945, 19.998646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147669, 29.923119, 20.530180>,  <30.254786, 30.203440, 19.841732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147669, 29.923119, 20.530180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.826532, 29.833298, 20.309265>,  <29.633850, 29.779406, 20.176716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.826532, 29.833298, 20.309265>,  <30.147669, 29.923119, 20.530180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826532, 29.833298, 20.309265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098092, -0.963486, 0.249145,
		-0.588068, 0.145849, 0.795553,
		-0.802841, -0.224552, -0.552288,
		29.585680, 29.765932, 20.143578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948835, 29.330744, 20.797922>,  <30.147669, 29.923119, 20.530180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948835, 29.330744, 20.797922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718519, 29.332413, 20.470886>,  <29.580330, 29.333414, 20.274666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718519, 29.332413, 20.470886>,  <29.948835, 29.330744, 20.797922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718519, 29.332413, 20.470886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057801, -0.997693, 0.035614,
		-0.815553, 0.067764, 0.574701,
		-0.575789, 0.004173, -0.817588,
		29.545782, 29.333664, 20.225611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474834, 28.765007, 20.880835>,  <29.948835, 29.330744, 20.797922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474834, 28.765007, 20.880835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.454340, 28.830849, 20.486824>,  <29.442043, 28.870354, 20.250418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.454340, 28.830849, 20.486824>,  <29.474834, 28.765007, 20.880835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454340, 28.830849, 20.486824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105385, -0.981708, -0.158566,
		-0.993111, 0.095683, 0.067645,
		-0.051235, 0.164603, -0.985029,
		29.438969, 28.880230, 20.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819807, 28.443201, 20.556902>,  <29.474834, 28.765007, 20.880835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819807, 28.443201, 20.556902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.060627, 28.494595, 20.241680>,  <29.205118, 28.525431, 20.052547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.060627, 28.494595, 20.241680>,  <28.819807, 28.443201, 20.556902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060627, 28.494595, 20.241680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027769, -0.983002, -0.181485,
		-0.797977, 0.131146, -0.588246,
		0.602048, 0.128486, -0.788055,
		29.241241, 28.533140, 20.005264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630842, 27.912781, 20.115843>,  <28.819807, 28.443201, 20.556902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630842, 27.912781, 20.115843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.990278, 28.027336, 19.982868>,  <29.205940, 28.096069, 19.903084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.990278, 28.027336, 19.982868>,  <28.630842, 27.912781, 20.115843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990278, 28.027336, 19.982868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223997, -0.950875, -0.213686,
		-0.377303, 0.117551, -0.918599,
		0.898592, 0.286388, -0.332437,
		29.259855, 28.113253, 19.883137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704702, 27.564198, 19.530867>,  <28.630842, 27.912781, 20.115843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704702, 27.564198, 19.530867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.077450, 27.688351, 19.606007>,  <29.301098, 27.762842, 19.651091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.077450, 27.688351, 19.606007>,  <28.704702, 27.564198, 19.530867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077450, 27.688351, 19.606007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326328, -0.943342, -0.060138,
		0.158540, 0.117341, -0.980355,
		0.931866, 0.310383, 0.187849,
		29.357010, 27.781466, 19.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137562, 27.228434, 19.103394>,  <28.704702, 27.564198, 19.530867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137562, 27.228434, 19.103394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.386093, 27.336636, 19.397545>,  <29.535212, 27.401556, 19.574036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.386093, 27.336636, 19.397545>,  <29.137562, 27.228434, 19.103394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386093, 27.336636, 19.397545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387833, -0.921660, 0.011342,
		0.680835, 0.278156, -0.677564,
		0.621329, 0.270504, 0.735377,
		29.572493, 27.417788, 19.618158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.653198, 27.589552, 19.073400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470346, 27.446873, 19.399296>,  <30.360636, 27.361265, 19.594833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470346, 27.446873, 19.399296>,  <30.653198, 27.589552, 19.073400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470346, 27.446873, 19.399296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577932, -0.815428, -0.032738,
		0.676039, 0.455899, 0.578902,
		-0.457127, -0.356698, 0.814740,
		30.333208, 27.339863, 19.643717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221218, 27.153118, 19.482351>,  <30.653198, 27.589552, 19.073400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221218, 27.153118, 19.482351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872496, 27.034637, 19.638412>,  <30.663263, 26.963549, 19.732050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872496, 27.034637, 19.638412>,  <31.221218, 27.153118, 19.482351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872496, 27.034637, 19.638412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351770, -0.932846, 0.077826,
		0.340902, 0.205094, 0.917454,
		-0.871805, -0.296202, 0.390155,
		30.610954, 26.945776, 19.755459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296101, 26.730288, 20.124691>,  <31.221218, 27.153118, 19.482351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296101, 26.730288, 20.124691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939201, 26.607082, 19.992619>,  <30.725061, 26.533159, 19.913374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939201, 26.607082, 19.992619>,  <31.296101, 26.730288, 20.124691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939201, 26.607082, 19.992619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257796, -0.947824, 0.187540,
		-0.370719, 0.082213, 0.925099,
		-0.892249, -0.308012, -0.330182,
		30.671526, 26.514679, 19.893564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081579, 26.333158, 20.610825>,  <31.296101, 26.730288, 20.124691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081579, 26.333158, 20.610825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867432, 26.231949, 20.288494>,  <30.738943, 26.171223, 20.095095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867432, 26.231949, 20.288494>,  <31.081579, 26.333158, 20.610825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867432, 26.231949, 20.288494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193993, -0.965404, 0.174246,
		-0.822039, -0.063039, 0.565932,
		-0.535369, -0.253024, -0.805828,
		30.706821, 26.156042, 20.046745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565254, 25.865307, 20.964167>,  <31.081579, 26.333158, 20.610825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565254, 25.865307, 20.964167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598780, 25.801624, 20.570694>,  <30.618895, 25.763414, 20.334610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598780, 25.801624, 20.570694>,  <30.565254, 25.865307, 20.964167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598780, 25.801624, 20.570694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055276, -0.986377, 0.154935,
		-0.994947, 0.041388, -0.091470,
		0.083811, -0.159208, -0.983681,
		30.623922, 25.753862, 20.275589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000359, 25.394138, 20.727871>,  <30.565254, 25.865307, 20.964167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000359, 25.394138, 20.727871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267036, 25.363541, 20.431313>,  <30.427042, 25.345182, 20.253378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267036, 25.363541, 20.431313>,  <30.000359, 25.394138, 20.727871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267036, 25.363541, 20.431313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119228, -0.992855, -0.004776,
		-0.735735, 0.091579, -0.671050,
		0.666692, -0.076494, -0.741397,
		30.467045, 25.340593, 20.208893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746532, 24.896416, 20.285545>,  <30.000359, 25.394138, 20.727871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746532, 24.896416, 20.285545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125986, 24.930008, 20.163536>,  <30.353659, 24.950163, 20.090330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125986, 24.930008, 20.163536>,  <29.746532, 24.896416, 20.285545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125986, 24.930008, 20.163536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075935, -0.996382, -0.038174,
		-0.307124, 0.013052, -0.951580,
		0.948635, 0.083983, -0.305021,
		30.410576, 24.955202, 20.072029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835363, 24.599346, 19.552784>,  <29.746532, 24.896416, 20.285545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835363, 24.599346, 19.552784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192717, 24.560368, 19.728226>,  <30.407127, 24.536980, 19.833490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192717, 24.560368, 19.728226>,  <29.835363, 24.599346, 19.552784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192717, 24.560368, 19.728226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114258, -0.993378, 0.012023,
		0.434527, -0.060855, -0.898601,
		0.893382, -0.097448, 0.438603,
		30.460732, 24.531134, 19.859806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175362, 24.124788, 19.208103>,  <29.835363, 24.599346, 19.552784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175362, 24.124788, 19.208103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.392242, 24.127827, 19.544189>,  <30.522371, 24.129650, 19.745840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.392242, 24.127827, 19.544189>,  <30.175362, 24.124788, 19.208103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392242, 24.127827, 19.544189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204536, -0.971074, -0.123209,
		0.814975, 0.238658, -0.528071,
		0.542200, 0.007598, 0.840215,
		30.554903, 24.130106, 19.796253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705057, 23.675323, 19.064663>,  <30.175362, 24.124788, 19.208103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705057, 23.675323, 19.064663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737593, 23.699551, 19.462601>,  <30.757114, 23.714087, 19.701363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737593, 23.699551, 19.462601>,  <30.705057, 23.675323, 19.064663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737593, 23.699551, 19.462601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278541, -0.959762, 0.035656,
		0.956974, 0.274205, -0.094936,
		0.081339, 0.060566, 0.994845,
		30.761995, 23.717720, 19.761055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332184, 23.372007, 19.247253>,  <30.705057, 23.675323, 19.064663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332184, 23.372007, 19.247253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132408, 23.340046, 19.592316>,  <31.012543, 23.320869, 19.799353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132408, 23.340046, 19.592316>,  <31.332184, 23.372007, 19.247253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132408, 23.340046, 19.592316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136693, -0.990533, -0.012610,
		0.855498, 0.111621, 0.505632,
		-0.499438, -0.079904, 0.862657,
		30.982576, 23.316074, 19.851112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754238, 23.105469, 19.843328>,  <31.332184, 23.372007, 19.247253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754238, 23.105469, 19.843328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387066, 22.994370, 19.956650>,  <31.166763, 22.927710, 20.024643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387066, 22.994370, 19.956650>,  <31.754238, 23.105469, 19.843328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387066, 22.994370, 19.956650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330561, -0.930295, 0.158999,
		0.219396, 0.239599, 0.945758,
		-0.917930, -0.277746, 0.283305,
		31.111687, 22.911045, 20.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851135, 22.580278, 20.402905>,  <31.754238, 23.105469, 19.843328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851135, 22.580278, 20.402905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460411, 22.537609, 20.328651>,  <31.225977, 22.512007, 20.284100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460411, 22.537609, 20.328651>,  <31.851135, 22.580278, 20.402905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460411, 22.537609, 20.328651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060115, -0.968812, 0.240396,
		-0.205486, 0.223662, 0.952760,
		-0.976812, -0.106673, -0.185631,
		31.167368, 22.505608, 20.272963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523163, 22.272751, 20.947182>,  <31.851135, 22.580278, 20.402905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523163, 22.272751, 20.947182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303349, 22.174217, 20.627850>,  <31.171459, 22.115097, 20.436251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303349, 22.174217, 20.627850>,  <31.523163, 22.272751, 20.947182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303349, 22.174217, 20.627850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177497, -0.968155, 0.176553,
		-0.816397, -0.044679, 0.575760,
		-0.549536, -0.246333, -0.798329,
		31.138487, 22.100317, 20.388351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267931, 21.632738, 21.147850>,  <31.523163, 22.272751, 20.947182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267931, 21.632738, 21.147850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181625, 21.625648, 20.757336>,  <31.129841, 21.621395, 20.523027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181625, 21.625648, 20.757336>,  <31.267931, 21.632738, 21.147850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181625, 21.625648, 20.757336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140010, -0.988942, 0.048897,
		-0.966355, 0.147240, 0.210899,
		-0.215766, -0.017724, -0.976284,
		31.116896, 21.620331, 20.464451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560183, 21.368488, 21.064713>,  <31.267931, 21.632738, 21.147850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560183, 21.368488, 21.064713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750904, 21.311806, 20.717709>,  <30.865337, 21.277796, 20.509506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750904, 21.311806, 20.717709>,  <30.560183, 21.368488, 21.064713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750904, 21.311806, 20.717709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167673, -0.983460, 0.068492,
		-0.862868, 0.112801, -0.492680,
		0.476806, -0.141709, -0.867511,
		30.893946, 21.269293, 20.457455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399588, 20.754578, 20.855614>,  <30.560183, 21.368488, 21.064713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399588, 20.754578, 20.855614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693821, 20.798126, 20.588161>,  <30.870361, 20.824255, 20.427691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693821, 20.798126, 20.588161>,  <30.399588, 20.754578, 20.855614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693821, 20.798126, 20.588161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025994, -0.981739, -0.188448,
		-0.676935, 0.155999, -0.719321,
		0.735583, 0.108869, -0.668629,
		30.914495, 20.830788, 20.387573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311895, 20.309902, 20.406479>,  <30.399588, 20.754578, 20.855614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311895, 20.309902, 20.406479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700581, 20.382053, 20.345505>,  <30.933792, 20.425344, 20.308920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700581, 20.382053, 20.345505>,  <30.311895, 20.309902, 20.406479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700581, 20.382053, 20.345505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149624, -0.969613, -0.193555,
		-0.182716, 0.165272, -0.969175,
		0.971714, 0.180377, -0.152435,
		30.992094, 20.436167, 20.299774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549774, 19.818018, 19.900051>,  <30.311895, 20.309902, 20.406479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549774, 19.818018, 19.900051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870348, 19.934086, 20.109241>,  <31.062693, 20.003727, 20.234756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870348, 19.934086, 20.109241>,  <30.549774, 19.818018, 19.900051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870348, 19.934086, 20.109241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224225, -0.956418, 0.187052,
		0.554463, -0.032644, -0.831568,
		0.801432, 0.290171, 0.522978,
		31.110777, 20.021137, 20.266134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114275, 19.408028, 19.613718>,  <30.549774, 19.818018, 19.900051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114275, 19.408028, 19.613718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237627, 19.563324, 19.961090>,  <31.311638, 19.656502, 20.169514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237627, 19.563324, 19.961090>,  <31.114275, 19.408028, 19.613718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237627, 19.563324, 19.961090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406243, -0.879236, 0.248816,
		0.860156, 0.276064, -0.428860,
		0.308380, 0.388242, 0.868429,
		31.330141, 19.679796, 20.221619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773743, 19.228508, 19.602446>,  <31.114275, 19.408028, 19.613718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773743, 19.228508, 19.602446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674061, 19.272530, 19.987316>,  <31.614252, 19.298943, 20.218239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674061, 19.272530, 19.987316>,  <31.773743, 19.228508, 19.602446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674061, 19.272530, 19.987316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513174, -0.827565, 0.227570,
		0.821309, 0.550476, 0.149758,
		-0.249206, 0.110054, 0.962177,
		31.599298, 19.305546, 20.275969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327248, 19.017426, 19.946608>,  <31.773743, 19.228508, 19.602446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327248, 19.017426, 19.946608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037907, 18.989075, 20.221340>,  <31.864302, 18.972063, 20.386179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037907, 18.989075, 20.221340>,  <32.327248, 19.017426, 19.946608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037907, 18.989075, 20.221340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296122, -0.930441, 0.215851,
		0.623755, 0.359522, 0.694027,
		-0.723354, -0.070878, 0.686830,
		31.820900, 18.967812, 20.427389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682968, 18.756668, 20.618090>,  <32.327248, 19.017426, 19.946608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682968, 18.756668, 20.618090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289154, 18.691551, 20.592209>,  <32.052864, 18.652481, 20.576681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289154, 18.691551, 20.592209>,  <32.682968, 18.756668, 20.618090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289154, 18.691551, 20.592209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136784, -0.945146, 0.296629,
		-0.109442, 0.283192, 0.952798,
		-0.984537, -0.162791, -0.064703,
		31.993793, 18.642714, 20.572798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101162, 18.087751, 20.658180>,  <32.682968, 18.756668, 20.618090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101162, 18.087751, 20.658180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356102, 17.962357, 20.939751>,  <33.509068, 17.887119, 21.108692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356102, 17.962357, 20.939751>,  <33.101162, 18.087751, 20.658180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356102, 17.962357, 20.939751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048278, 0.927957, 0.369547,
		-0.769060, -0.201547, 0.606569,
		0.637351, -0.313488, 0.703924,
		33.547306, 17.868311, 21.150928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952721, 18.271183, 21.356041>,  <33.101162, 18.087751, 20.658180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952721, 18.271183, 21.356041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351143, 18.245480, 21.331570>,  <33.590195, 18.230057, 21.316887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351143, 18.245480, 21.331570>,  <32.952721, 18.271183, 21.356041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351143, 18.245480, 21.331570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078113, 0.962125, 0.261179,
		0.042079, -0.264928, 0.963350,
		0.996056, -0.064260, -0.061180,
		33.649960, 18.226202, 21.313215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198421, 18.573202, 22.040556>,  <32.952721, 18.271183, 21.356041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198421, 18.573202, 22.040556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482407, 18.578411, 21.758907>,  <33.652798, 18.581537, 21.589918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482407, 18.578411, 21.758907>,  <33.198421, 18.573202, 22.040556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482407, 18.578411, 21.758907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159278, 0.970952, 0.178555,
		0.685995, -0.238918, 0.687262,
		0.709958, 0.013023, -0.704123,
		33.695393, 18.582317, 21.547670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584953, 18.971441, 22.346849>,  <33.198421, 18.573202, 22.040556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584953, 18.971441, 22.346849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689697, 18.963749, 21.960884>,  <33.752544, 18.959133, 21.729305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689697, 18.963749, 21.960884>,  <33.584953, 18.971441, 22.346849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689697, 18.963749, 21.960884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192363, 0.980780, 0.032657,
		0.945742, -0.194166, 0.260521,
		0.261855, -0.019229, -0.964916,
		33.768253, 18.957979, 21.671410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177326, 19.249048, 22.404831>,  <33.584953, 18.971441, 22.346849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177326, 19.249048, 22.404831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025887, 19.311596, 22.039928>,  <33.935024, 19.349125, 21.820986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025887, 19.311596, 22.039928>,  <34.177326, 19.249048, 22.404831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025887, 19.311596, 22.039928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041615, 0.987505, 0.151994,
		0.924625, 0.019581, -0.380374,
		-0.378597, 0.156367, -0.912257,
		33.912308, 19.358505, 21.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456074, 19.853664, 22.262495>,  <34.177326, 19.249048, 22.404831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456074, 19.853664, 22.262495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156052, 19.817677, 22.000404>,  <33.976036, 19.796083, 21.843151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156052, 19.817677, 22.000404>,  <34.456074, 19.853664, 22.262495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156052, 19.817677, 22.000404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120711, 0.992686, 0.001878,
		0.650263, 0.080501, -0.755432,
		-0.750058, -0.089968, -0.655225,
		33.931034, 19.790686, 21.803837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555870, 20.409309, 21.831968>,  <34.456074, 19.853664, 22.262495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555870, 20.409309, 21.831968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178318, 20.291237, 21.772686>,  <33.951786, 20.220394, 21.737116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178318, 20.291237, 21.772686>,  <34.555870, 20.409309, 21.831968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178318, 20.291237, 21.772686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273302, 0.949937, -0.151413,
		0.185483, -0.102410, -0.977297,
		-0.943877, -0.295182, -0.148208,
		33.895157, 20.202682, 21.728224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298008, 20.714384, 21.181805>,  <34.555870, 20.409309, 21.831968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298008, 20.714384, 21.181805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998138, 20.622860, 21.430202>,  <33.818214, 20.567945, 21.579241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998138, 20.622860, 21.430202>,  <34.298008, 20.714384, 21.181805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998138, 20.622860, 21.430202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256618, 0.965422, 0.045920,
		-0.610027, -0.124932, -0.782470,
		-0.749676, -0.228808, 0.620993,
		33.773235, 20.554218, 21.616501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868477, 21.190773, 20.996611>,  <34.298008, 20.714384, 21.181805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868477, 21.190773, 20.996611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712090, 21.077156, 21.346802>,  <33.618256, 21.008986, 21.556917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712090, 21.077156, 21.346802>,  <33.868477, 21.190773, 20.996611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712090, 21.077156, 21.346802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230806, 0.951054, 0.205488,
		-0.890995, -0.121727, -0.437390,
		-0.390968, -0.284041, 0.875480,
		33.594799, 20.991943, 21.609446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210644, 21.441729, 20.987560>,  <33.868477, 21.190773, 20.996611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210644, 21.441729, 20.987560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266521, 21.384399, 21.379467>,  <33.300049, 21.350002, 21.614611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266521, 21.384399, 21.379467>,  <33.210644, 21.441729, 20.987560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266521, 21.384399, 21.379467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280043, 0.943355, 0.177923,
		-0.949769, -0.299232, 0.091644,
		0.139693, -0.143321, 0.979768,
		33.308430, 21.341404, 21.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514854, 21.490841, 21.352217>,  <33.210644, 21.441729, 20.987560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514854, 21.490841, 21.352217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829464, 21.576752, 21.583820>,  <33.018230, 21.628298, 21.722782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829464, 21.576752, 21.583820>,  <32.514854, 21.490841, 21.352217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829464, 21.576752, 21.583820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244758, 0.969207, -0.027040,
		-0.566986, -0.120449, 0.814874,
		0.786525, 0.214778, 0.579007,
		33.065422, 21.641186, 21.757523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261406, 22.019140, 21.878881>,  <32.514854, 21.490841, 21.352217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261406, 22.019140, 21.878881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659092, 22.060795, 21.889473>,  <32.897701, 22.085787, 21.895828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659092, 22.060795, 21.889473>,  <32.261406, 22.019140, 21.878881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659092, 22.060795, 21.889473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106703, 0.985858, 0.129221,
		-0.012649, -0.131299, 0.991262,
		0.994210, 0.104136, 0.026480,
		32.957355, 22.092035, 21.897417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315510, 22.582090, 22.341127>,  <32.261406, 22.019140, 21.878881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315510, 22.582090, 22.341127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650433, 22.557087, 22.123871>,  <32.851387, 22.542086, 21.993517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650433, 22.557087, 22.123871>,  <32.315510, 22.582090, 22.341127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650433, 22.557087, 22.123871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046055, 0.981848, -0.183995,
		0.544784, 0.179076, 0.819233,
		0.837311, -0.062508, -0.543142,
		32.901627, 22.538334, 21.960928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595688, 23.249842, 22.406923>,  <32.315510, 22.582090, 22.341127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595688, 23.249842, 22.406923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806122, 23.109997, 22.096825>,  <32.932381, 23.026091, 21.910765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806122, 23.109997, 22.096825>,  <32.595688, 23.249842, 22.406923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806122, 23.109997, 22.096825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158144, 0.935908, -0.314748,
		0.835599, 0.042983, 0.547655,
		0.526083, -0.349612, -0.775247,
		32.963947, 23.005114, 21.864250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151154, 23.679775, 22.361027>,  <32.595688, 23.249842, 22.406923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151154, 23.679775, 22.361027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110233, 23.535664, 21.990139>,  <33.085682, 23.449196, 21.767607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110233, 23.535664, 21.990139>,  <33.151154, 23.679775, 22.361027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110233, 23.535664, 21.990139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132739, 0.918828, -0.371666,
		0.985857, -0.161100, -0.046173,
		-0.102301, -0.360281, -0.927218,
		33.079544, 23.427580, 21.711973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592323, 24.129847, 21.909384>,  <33.151154, 23.679775, 22.361027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592323, 24.129847, 21.909384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381695, 23.946686, 21.622875>,  <33.255318, 23.836790, 21.450970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381695, 23.946686, 21.622875>,  <33.592323, 24.129847, 21.909384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381695, 23.946686, 21.622875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129586, 0.789466, -0.599959,
		0.840197, -0.408740, -0.356372,
		-0.526571, -0.457903, -0.716274,
		33.223724, 23.809315, 21.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955463, 24.234562, 21.316338>,  <33.592323, 24.129847, 21.909384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955463, 24.234562, 21.316338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571358, 24.188381, 21.214695>,  <33.340897, 24.160673, 21.153709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571358, 24.188381, 21.214695>,  <33.955463, 24.234562, 21.316338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571358, 24.188381, 21.214695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036657, 0.850381, -0.524888,
		0.276686, -0.513344, -0.812356,
		-0.960261, -0.115451, -0.254106,
		33.283279, 24.153746, 21.138464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899021, 24.398458, 20.592203>,  <33.955463, 24.234562, 21.316338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899021, 24.398458, 20.592203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521175, 24.425468, 20.720665>,  <33.294468, 24.441673, 20.797741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521175, 24.425468, 20.720665>,  <33.899021, 24.398458, 20.592203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521175, 24.425468, 20.720665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154892, 0.771013, -0.617695,
		-0.289322, -0.633229, -0.717853,
		-0.944617, 0.067524, 0.321153,
		33.237789, 24.445726, 20.817011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556591, 24.513433, 19.975725>,  <33.899021, 24.398458, 20.592203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556591, 24.513433, 19.975725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291061, 24.618217, 20.255928>,  <33.131744, 24.681087, 20.424049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291061, 24.618217, 20.255928>,  <33.556591, 24.513433, 19.975725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291061, 24.618217, 20.255928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234438, 0.816556, -0.527517,
		-0.710192, -0.514406, -0.480640,
		-0.663827, 0.261958, 0.700508,
		33.091911, 24.696804, 20.466080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993340, 24.738270, 19.611605>,  <33.556591, 24.513433, 19.975725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993340, 24.738270, 19.611605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979465, 24.923878, 19.965664>,  <32.971142, 25.035242, 20.178099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979465, 24.923878, 19.965664>,  <32.993340, 24.738270, 19.611605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979465, 24.923878, 19.965664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190543, 0.866363, -0.461638,
		-0.981066, -0.184671, 0.058365,
		-0.034686, 0.464018, 0.885146,
		32.969059, 25.063084, 20.231209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381218, 25.165337, 19.534595>,  <32.993340, 24.738270, 19.611605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381218, 25.165337, 19.534595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599804, 25.294704, 19.843601>,  <32.730957, 25.372324, 20.029005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599804, 25.294704, 19.843601>,  <32.381218, 25.165337, 19.534595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599804, 25.294704, 19.843601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029721, 0.929332, -0.368046,
		-0.836956, 0.178164, 0.517458,
		0.546463, 0.323418, 0.772514,
		32.763744, 25.391729, 20.075356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.951237, 40.476074, 17.724253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.103716, 40.116299, 17.809769>,  <28.195204, 39.900433, 17.861078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.103716, 40.116299, 17.809769>,  <27.951237, 40.476074, 17.724253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103716, 40.116299, 17.809769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559866, -0.040567, 0.827590,
		-0.735690, -0.435168, -0.519027,
		0.381196, -0.899435, 0.213791,
		28.218075, 39.846470, 17.873905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423923, 40.100029, 17.907652>,  <27.951237, 40.476074, 17.724253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423923, 40.100029, 17.907652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.744984, 39.913994, 18.057022>,  <27.937620, 39.802372, 18.146645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.744984, 39.913994, 18.057022>,  <27.423923, 40.100029, 17.907652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744984, 39.913994, 18.057022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461791, -0.088319, 0.882581,
		-0.377500, -0.880846, -0.285664,
		0.802648, -0.465091, 0.373426,
		27.985779, 39.774467, 18.169050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137650, 39.570408, 18.106800>,  <27.423923, 40.100029, 17.907652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137650, 39.570408, 18.106800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.471169, 39.562691, 18.327492>,  <27.671280, 39.558060, 18.459908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.471169, 39.562691, 18.327492>,  <27.137650, 39.570408, 18.106800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471169, 39.562691, 18.327492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539049, -0.244203, 0.806096,
		0.119185, -0.969532, -0.214015,
		0.833799, -0.019290, 0.551731,
		27.721308, 39.556904, 18.493011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082260, 38.948078, 18.475365>,  <27.137650, 39.570408, 18.106800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082260, 38.948078, 18.475365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.335407, 39.185387, 18.674366>,  <27.487295, 39.327770, 18.793766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.335407, 39.185387, 18.674366>,  <27.082260, 38.948078, 18.475365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335407, 39.185387, 18.674366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518512, -0.152435, 0.841373,
		0.574998, -0.790439, 0.211147,
		0.632868, 0.593270, 0.497502,
		27.525269, 39.363369, 18.823616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340542, 38.585060, 19.063684>,  <27.082260, 38.948078, 18.475365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340542, 38.585060, 19.063684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.337297, 38.977596, 19.140522>,  <27.335352, 39.213120, 19.186625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.337297, 38.977596, 19.140522>,  <27.340542, 38.585060, 19.063684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337297, 38.977596, 19.140522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484124, -0.171938, 0.857940,
		0.874961, -0.086039, 0.476487,
		-0.008110, 0.981343, 0.192093,
		27.334864, 39.271999, 19.198151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122932, 38.578831, 19.744488>,  <27.340542, 38.585060, 19.063684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122932, 38.578831, 19.744488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.133574, 38.970463, 19.663788>,  <27.139959, 39.205441, 19.615368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.133574, 38.970463, 19.663788>,  <27.122932, 38.578831, 19.744488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133574, 38.970463, 19.663788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678161, 0.165952, 0.715931,
		0.734432, 0.117771, 0.668386,
		0.026604, 0.979076, -0.201748,
		27.141554, 39.264187, 19.603264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225264, 38.904945, 20.341978>,  <27.122932, 38.578831, 19.744488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225264, 38.904945, 20.341978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.046986, 39.158833, 20.089474>,  <26.940020, 39.311165, 19.937971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.046986, 39.158833, 20.089474>,  <27.225264, 38.904945, 20.341978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046986, 39.158833, 20.089474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723860, 0.159348, 0.671293,
		0.526671, 0.756137, 0.388425,
		-0.445695, 0.634716, -0.631261,
		26.913277, 39.349247, 19.900095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096893, 39.460518, 20.776457>,  <27.225264, 38.904945, 20.341978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096893, 39.460518, 20.776457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.854267, 39.498409, 20.460709>,  <26.708691, 39.521145, 20.271259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.854267, 39.498409, 20.460709>,  <27.096893, 39.460518, 20.776457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854267, 39.498409, 20.460709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781019, 0.114603, 0.613901,
		0.148618, 0.988884, 0.004471,
		-0.606565, 0.094729, -0.789370,
		26.672298, 39.526829, 20.223898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480251, 39.950649, 20.931511>,  <27.096893, 39.460518, 20.776457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480251, 39.950649, 20.931511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.333437, 39.807419, 20.588100>,  <26.245348, 39.721481, 20.382055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.333437, 39.807419, 20.588100>,  <26.480251, 39.950649, 20.931511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333437, 39.807419, 20.588100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904383, 0.353323, 0.239279,
		0.217656, 0.864260, -0.453521,
		-0.367038, -0.358076, -0.858525,
		26.223326, 39.699997, 20.330544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863167, 40.382774, 20.659298>,  <26.480251, 39.950649, 20.931511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863167, 40.382774, 20.659298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.818676, 40.021595, 20.493252>,  <25.791981, 39.804890, 20.393623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.818676, 40.021595, 20.493252>,  <25.863167, 40.382774, 20.659298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818676, 40.021595, 20.493252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973358, 0.014707, 0.228819,
		-0.200505, 0.429506, -0.880524,
		-0.111229, -0.902944, -0.415115,
		25.785307, 39.750713, 20.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161257, 40.367081, 20.175083>,  <25.863167, 40.382774, 20.659298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161257, 40.367081, 20.175083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.254789, 39.997478, 20.296101>,  <25.310909, 39.775715, 20.368711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.254789, 39.997478, 20.296101>,  <25.161257, 40.367081, 20.175083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254789, 39.997478, 20.296101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936671, -0.130643, 0.324931,
		-0.260713, -0.359364, -0.896039,
		0.233830, -0.924008, 0.302545,
		25.324938, 39.720276, 20.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589695, 39.938332, 20.047470>,  <25.161257, 40.367081, 20.175083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589695, 39.938332, 20.047470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.773043, 39.738647, 20.341595>,  <24.883051, 39.618835, 20.518070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.773043, 39.738647, 20.341595>,  <24.589695, 39.938332, 20.047470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773043, 39.738647, 20.341595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887883, -0.293992, 0.353881,
		0.039514, -0.815080, -0.577999,
		0.458369, -0.499212, 0.735313,
		24.910553, 39.588882, 20.562189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295311, 39.305809, 20.022257>,  <24.589695, 39.938332, 20.047470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295311, 39.305809, 20.022257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.460613, 39.331646, 20.385586>,  <24.559795, 39.347149, 20.603582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.460613, 39.331646, 20.385586>,  <24.295311, 39.305809, 20.022257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460613, 39.331646, 20.385586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750214, -0.541225, 0.379808,
		0.516137, -0.838394, -0.175210,
		0.413257, 0.064588, 0.908321,
		24.584591, 39.351021, 20.658083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170160, 38.693012, 20.282461>,  <24.295311, 39.305809, 20.022257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170160, 38.693012, 20.282461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.254370, 38.915722, 20.603878>,  <24.304895, 39.049347, 20.796728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.254370, 38.915722, 20.603878>,  <24.170160, 38.693012, 20.282461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254370, 38.915722, 20.603878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676515, -0.510377, 0.530888,
		0.705696, -0.655373, 0.269221,
		0.210526, 0.556777, 0.803541,
		24.317528, 39.082756, 20.844940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238289, 38.170815, 20.766809>,  <24.170160, 38.693012, 20.282461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238289, 38.170815, 20.766809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.178259, 38.523914, 20.944901>,  <24.142241, 38.735775, 21.051756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.178259, 38.523914, 20.944901>,  <24.238289, 38.170815, 20.766809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178259, 38.523914, 20.944901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617311, -0.435425, 0.655234,
		0.772273, -0.176513, 0.610277,
		-0.150073, 0.882751, 0.445230,
		24.133238, 38.788738, 21.078470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077969, 38.011738, 21.472055>,  <24.238289, 38.170815, 20.766809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077969, 38.011738, 21.472055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.924307, 38.380402, 21.450233>,  <23.832109, 38.601601, 21.437141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.924307, 38.380402, 21.450233>,  <24.077969, 38.011738, 21.472055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.924307, 38.380402, 21.450233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720617, -0.262372, 0.641773,
		0.577181, 0.285852, 0.764952,
		-0.384153, 0.921656, -0.054554,
		23.809061, 38.656898, 21.433867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867575, 38.260189, 22.197596>,  <24.077969, 38.011738, 21.472055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867575, 38.260189, 22.197596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648552, 38.440395, 21.915539>,  <23.517139, 38.548519, 21.746305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648552, 38.440395, 21.915539>,  <23.867575, 38.260189, 22.197596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.648552, 38.440395, 21.915539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833500, -0.368070, 0.412070,
		-0.073898, 0.813366, 0.577040,
		-0.547555, 0.450511, -0.705141,
		23.484285, 38.575550, 21.703997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.306313, 38.181477, 22.444838>,  <23.867575, 38.260189, 22.197596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.306313, 38.181477, 22.444838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176451, 38.299263, 22.085308>,  <23.098534, 38.369934, 21.869591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176451, 38.299263, 22.085308>,  <23.306313, 38.181477, 22.444838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.176451, 38.299263, 22.085308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839107, -0.528194, 0.130041,
		-0.436461, 0.796429, 0.418574,
		-0.324656, 0.294471, -0.898825,
		23.079054, 38.387604, 21.815660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649952, 38.258560, 22.494986>,  <23.306313, 38.181477, 22.444838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649952, 38.258560, 22.494986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.696156, 38.187084, 22.104145>,  <22.723877, 38.144199, 21.869640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.696156, 38.187084, 22.104145>,  <22.649952, 38.258560, 22.494986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.696156, 38.187084, 22.104145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863769, -0.503789, -0.009981,
		-0.490470, 0.845144, -0.212536,
		0.115509, -0.178687, -0.977102,
		22.730808, 38.133476, 21.811014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.989843, 38.161160, 22.355455>,  <22.649952, 38.258560, 22.494986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.989843, 38.161160, 22.355455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168148, 37.987198, 22.042496>,  <22.275131, 37.882820, 21.854719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168148, 37.987198, 22.042496>,  <21.989843, 38.161160, 22.355455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168148, 37.987198, 22.042496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770170, -0.631794, -0.087604,
		-0.456215, 0.641632, -0.616583,
		0.445763, -0.434908, -0.782400,
		22.301878, 37.856724, 21.807775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448174, 38.002037, 21.882214>,  <21.989843, 38.161160, 22.355455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448174, 38.002037, 21.882214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752966, 37.759007, 21.792557>,  <21.935843, 37.613190, 21.738762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752966, 37.759007, 21.792557>,  <21.448174, 38.002037, 21.882214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752966, 37.759007, 21.792557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637820, -0.764010, -0.097332,
		-0.112112, 0.217129, -0.969684,
		0.761982, -0.607571, -0.224144,
		21.981560, 37.576736, 21.725313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760527, 38.203194, 22.304420>,  <21.448174, 38.002037, 21.882214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760527, 38.203194, 22.304420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463169, 38.064621, 22.075562>,  <20.284754, 37.981480, 21.938246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463169, 38.064621, 22.075562>,  <20.760527, 38.203194, 22.304420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463169, 38.064621, 22.075562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662494, -0.499040, -0.558624,
		-0.092001, -0.794322, 0.600490,
		-0.743396, -0.346427, -0.572145,
		20.240150, 37.960693, 21.903917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900482, 37.539116, 22.138996>,  <20.760527, 38.203194, 22.304420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900482, 37.539116, 22.138996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.642601, 37.635227, 21.848721>,  <20.487871, 37.692894, 21.674555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.642601, 37.635227, 21.848721>,  <20.900482, 37.539116, 22.138996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642601, 37.635227, 21.848721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616164, -0.398519, -0.679356,
		-0.452439, -0.885125, 0.108872,
		-0.644703, 0.240284, -0.725687,
		20.449190, 37.707310, 21.631014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.012939, 37.029629, 21.551525>,  <20.900482, 37.539116, 22.138996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.012939, 37.029629, 21.551525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795586, 37.292679, 21.342812>,  <20.665173, 37.450508, 21.217583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795586, 37.292679, 21.342812>,  <21.012939, 37.029629, 21.551525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795586, 37.292679, 21.342812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584194, -0.150141, -0.797606,
		-0.602869, -0.738231, -0.302597,
		-0.543385, 0.657627, -0.521785,
		20.632570, 37.489967, 21.186275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932241, 36.765854, 20.970812>,  <21.012939, 37.029629, 21.551525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932241, 36.765854, 20.970812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.887211, 37.158920, 20.911903>,  <20.860191, 37.394760, 20.876558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.887211, 37.158920, 20.911903>,  <20.932241, 36.765854, 20.970812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887211, 37.158920, 20.911903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479656, -0.076059, -0.874154,
		-0.870205, -0.169051, -0.462780,
		-0.112578, 0.982668, -0.147273,
		20.853437, 37.453720, 20.867722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.614485, 36.868565, 20.328312>,  <20.932241, 36.765854, 20.970812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.614485, 36.868565, 20.328312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789198, 37.219551, 20.407578>,  <20.894026, 37.430145, 20.455137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789198, 37.219551, 20.407578>,  <20.614485, 36.868565, 20.328312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789198, 37.219551, 20.407578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415191, -0.001223, -0.909734,
		-0.798021, 0.479632, -0.364851,
		0.436783, 0.877469, 0.198163,
		20.920233, 37.482792, 20.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632706, 37.235020, 19.649208>,  <20.614485, 36.868565, 20.328312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632706, 37.235020, 19.649208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.898140, 37.427727, 19.878136>,  <21.057400, 37.543350, 20.015493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.898140, 37.427727, 19.878136>,  <20.632706, 37.235020, 19.649208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.898140, 37.427727, 19.878136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611040, 0.092325, -0.786198,
		-0.431607, 0.871419, -0.233117,
		0.663585, 0.481772, 0.572320,
		21.097216, 37.572258, 20.049831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930136, 37.792492, 19.299150>,  <20.632706, 37.235020, 19.649208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930136, 37.792492, 19.299150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205650, 37.709270, 19.576939>,  <21.370958, 37.659340, 19.743612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205650, 37.709270, 19.576939>,  <20.930136, 37.792492, 19.299150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205650, 37.709270, 19.576939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714230, 0.030499, -0.699246,
		0.124297, 0.977643, 0.169603,
		0.688785, -0.208050, 0.694471,
		21.412287, 37.646854, 19.785280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507566, 38.040909, 19.050463>,  <20.930136, 37.792492, 19.299150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507566, 38.040909, 19.050463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699476, 37.844154, 19.341080>,  <21.814623, 37.726101, 19.515450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699476, 37.844154, 19.341080>,  <21.507566, 38.040909, 19.050463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699476, 37.844154, 19.341080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821478, -0.039048, -0.568902,
		0.308207, 0.869782, 0.385342,
		0.479774, -0.491890, 0.726541,
		21.843409, 37.696587, 19.559042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117556, 38.340912, 19.024822>,  <21.507566, 38.040909, 19.050463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117556, 38.340912, 19.024822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157103, 37.976994, 19.186066>,  <22.180832, 37.758644, 19.282812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157103, 37.976994, 19.186066>,  <22.117556, 38.340912, 19.024822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157103, 37.976994, 19.186066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902813, -0.088363, -0.420858,
		0.418514, 0.405542, 0.812639,
		0.098868, -0.909796, 0.403109,
		22.186764, 37.704056, 19.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688168, 38.335712, 19.451433>,  <22.117556, 38.340912, 19.024822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688168, 38.335712, 19.451433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631073, 37.957745, 19.333614>,  <22.596815, 37.730965, 19.262922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631073, 37.957745, 19.333614>,  <22.688168, 38.335712, 19.451433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631073, 37.957745, 19.333614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953040, -0.050907, -0.298533,
		0.267094, -0.323329, 0.907810,
		-0.142739, -0.944916, -0.294549,
		22.588251, 37.674271, 19.245249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269718, 37.873180, 19.724672>,  <22.688168, 38.335712, 19.451433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269718, 37.873180, 19.724672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.108561, 37.656483, 19.429596>,  <23.011866, 37.526463, 19.252550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.108561, 37.656483, 19.429596>,  <23.269718, 37.873180, 19.724672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.108561, 37.656483, 19.429596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904387, -0.111857, -0.411790,
		0.140569, -0.833068, 0.535012,
		-0.402894, -0.541743, -0.737693,
		22.987692, 37.493961, 19.208288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.635138, 37.225533, 19.675684>,  <23.269718, 37.873180, 19.724672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.635138, 37.225533, 19.675684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433296, 37.264809, 19.332584>,  <23.312191, 37.288376, 19.126724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433296, 37.264809, 19.332584>,  <23.635138, 37.225533, 19.675684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.433296, 37.264809, 19.332584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775170, -0.385895, -0.500197,
		-0.380108, -0.917304, 0.118624,
		-0.504609, 0.098175, -0.857748,
		23.281916, 37.294266, 19.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838270, 36.635635, 19.378391>,  <23.635138, 37.225533, 19.675684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838270, 36.635635, 19.378391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.676041, 36.828201, 19.067585>,  <23.578703, 36.943741, 18.881102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.676041, 36.828201, 19.067585>,  <23.838270, 36.635635, 19.378391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.676041, 36.828201, 19.067585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799419, -0.225371, -0.556900,
		-0.443215, -0.847025, -0.293445,
		-0.405574, 0.481412, -0.777015,
		23.554369, 36.972626, 18.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761066, 36.207104, 18.802284>,  <23.838270, 36.635635, 19.378391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761066, 36.207104, 18.802284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796455, 36.576813, 18.653748>,  <23.817688, 36.798637, 18.564625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796455, 36.576813, 18.653748>,  <23.761066, 36.207104, 18.802284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796455, 36.576813, 18.653748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789937, -0.292204, -0.539090,
		-0.606773, -0.245643, -0.755967,
		0.088473, 0.924271, -0.371344,
		23.822998, 36.854095, 18.542345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086258, 36.076820, 18.179052>,  <23.761066, 36.207104, 18.802284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086258, 36.076820, 18.179052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133352, 36.474007, 18.174023>,  <24.161610, 36.712318, 18.171005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133352, 36.474007, 18.174023>,  <24.086258, 36.076820, 18.179052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133352, 36.474007, 18.174023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723051, -0.094398, -0.684314,
		-0.680687, 0.071478, -0.729079,
		0.117737, 0.992965, -0.012573,
		24.168673, 36.771896, 18.170250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.017841, 36.323467, 17.500326>,  <24.086258, 36.076820, 18.179052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.017841, 36.323467, 17.500326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.232618, 36.591068, 17.705902>,  <24.361485, 36.751629, 17.829247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.232618, 36.591068, 17.705902>,  <24.017841, 36.323467, 17.500326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232618, 36.591068, 17.705902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708262, -0.026516, -0.705452,
		-0.458318, 0.742791, -0.488063,
		0.536945, 0.668998, 0.513938,
		24.393702, 36.791767, 17.860083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343882, 36.740170, 17.049028>,  <24.017841, 36.323467, 17.500326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343882, 36.740170, 17.049028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.577427, 36.829060, 17.361366>,  <24.717554, 36.882393, 17.548769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.577427, 36.829060, 17.361366>,  <24.343882, 36.740170, 17.049028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577427, 36.829060, 17.361366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795109, 0.037808, -0.605286,
		-0.164033, 0.974262, -0.154620,
		0.583861, 0.222226, 0.780847,
		24.752584, 36.895729, 17.595621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851952, 37.144024, 16.810667>,  <24.343882, 36.740170, 17.049028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851952, 37.144024, 16.810667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.017254, 37.017349, 17.152176>,  <25.116436, 36.941345, 17.357082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.017254, 37.017349, 17.152176>,  <24.851952, 37.144024, 16.810667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017254, 37.017349, 17.152176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855569, -0.186003, -0.483119,
		0.311801, 0.930115, 0.194077,
		0.413257, -0.316683, 0.853774,
		25.141232, 36.922344, 17.408308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541754, 37.442577, 16.706882>,  <24.851952, 37.144024, 16.810667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541754, 37.442577, 16.706882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.552015, 37.155888, 16.985638>,  <25.558172, 36.983875, 17.152891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.552015, 37.155888, 16.985638>,  <25.541754, 37.442577, 16.706882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552015, 37.155888, 16.985638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880453, -0.313950, -0.355300,
		0.473439, 0.622690, 0.622986,
		0.025656, -0.716723, 0.696886,
		25.559711, 36.940872, 17.194704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211525, 37.437817, 16.922760>,  <25.541754, 37.442577, 16.706882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211525, 37.437817, 16.922760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.077305, 37.085728, 17.056992>,  <25.996773, 36.874474, 17.137529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.077305, 37.085728, 17.056992>,  <26.211525, 37.437817, 16.922760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077305, 37.085728, 17.056992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863743, -0.429659, -0.263329,
		0.375972, 0.201492, 0.904459,
		-0.335550, -0.880224, 0.335577,
		25.976641, 36.821659, 17.157665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809093, 37.181042, 17.259516>,  <26.211525, 37.437817, 16.922760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809093, 37.181042, 17.259516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575642, 36.872086, 17.159290>,  <26.435570, 36.686710, 17.099155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575642, 36.872086, 17.159290>,  <26.809093, 37.181042, 17.259516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575642, 36.872086, 17.159290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770335, -0.429060, -0.471689,
		0.256823, -0.468312, 0.845415,
		-0.583631, -0.772393, -0.250565,
		26.400553, 36.640369, 17.084122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.378794, 29.696245, 19.621941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742029, 29.706661, 19.789127>,  <28.959970, 29.712910, 19.889439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742029, 29.706661, 19.789127>,  <28.378794, 29.696245, 19.621941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742029, 29.706661, 19.789127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176890, 0.928506, 0.326477,
		-0.379582, -0.370404, 0.847772,
		0.908090, 0.026038, 0.417965,
		29.014456, 29.714472, 19.914516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278233, 30.042021, 20.170765>,  <28.378794, 29.696245, 19.621941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278233, 30.042021, 20.170765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675819, 30.061535, 20.131474>,  <28.914371, 30.073242, 20.107899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675819, 30.061535, 20.131474>,  <28.278233, 30.042021, 20.170765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675819, 30.061535, 20.131474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018596, 0.957624, 0.287421,
		0.108085, -0.283860, 0.952754,
		0.993968, 0.048783, -0.098226,
		28.974010, 30.076170, 20.102005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533712, 30.349010, 20.774498>,  <28.278233, 30.042021, 20.170765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533712, 30.349010, 20.774498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800812, 30.409058, 20.482861>,  <28.961071, 30.445086, 20.307878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800812, 30.409058, 20.482861>,  <28.533712, 30.349010, 20.774498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800812, 30.409058, 20.482861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016898, 0.982258, 0.186769,
		0.744196, -0.112394, 0.658437,
		0.667747, 0.150119, -0.729094,
		29.001137, 30.454094, 20.264132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935812, 30.913462, 21.100107>,  <28.533712, 30.349010, 20.774498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935812, 30.913462, 21.100107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054632, 30.928238, 20.718449>,  <29.125925, 30.937103, 20.489454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054632, 30.928238, 20.718449>,  <28.935812, 30.913462, 21.100107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054632, 30.928238, 20.718449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255645, 0.959696, 0.116744,
		0.920003, -0.278602, 0.275635,
		0.297051, 0.036940, -0.954147,
		29.143747, 30.939320, 20.432205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666138, 31.237350, 21.066671>,  <28.935812, 30.913462, 21.100107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666138, 31.237350, 21.066671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481949, 31.277454, 20.713875>,  <29.371435, 31.301517, 20.502197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481949, 31.277454, 20.713875>,  <29.666138, 31.237350, 21.066671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481949, 31.277454, 20.713875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477142, 0.865811, -0.150687,
		0.748531, -0.490223, -0.446522,
		-0.460474, 0.100261, -0.881993,
		29.343807, 31.307533, 20.449276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252708, 31.503487, 20.549017>,  <29.666138, 31.237350, 21.066671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252708, 31.503487, 20.549017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896759, 31.562447, 20.376324>,  <29.683189, 31.597822, 20.272707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896759, 31.562447, 20.376324>,  <30.252708, 31.503487, 20.549017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896759, 31.562447, 20.376324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222440, 0.966437, -0.128526,
		0.398298, -0.210407, -0.892798,
		-0.889876, 0.147402, -0.431733,
		29.629797, 31.606667, 20.246803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463917, 31.897581, 20.007233>,  <30.252708, 31.503487, 20.549017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463917, 31.897581, 20.007233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076538, 31.946896, 20.093868>,  <29.844110, 31.976484, 20.145849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076538, 31.946896, 20.093868>,  <30.463917, 31.897581, 20.007233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076538, 31.946896, 20.093868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107079, 0.990603, -0.085089,
		-0.225042, -0.059212, -0.972548,
		-0.968447, 0.123288, 0.216587,
		29.786003, 31.983883, 20.158844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275850, 32.382103, 19.541059>,  <30.463917, 31.897581, 20.007233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275850, 32.382103, 19.541059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971010, 32.397659, 19.799576>,  <29.788107, 32.406994, 19.954685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971010, 32.397659, 19.799576>,  <30.275850, 32.382103, 19.541059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971010, 32.397659, 19.799576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104871, 0.977600, -0.182485,
		-0.638911, -0.206849, -0.740949,
		-0.762099, 0.038887, 0.646292,
		29.742380, 32.409325, 19.993464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726318, 32.657944, 19.191547>,  <30.275850, 32.382103, 19.541059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726318, 32.657944, 19.191547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691359, 32.732433, 19.582993>,  <29.670382, 32.777126, 19.817860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691359, 32.732433, 19.582993>,  <29.726318, 32.657944, 19.191547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691359, 32.732433, 19.582993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359176, 0.910404, -0.205321,
		-0.929168, -0.369439, -0.012682,
		-0.087400, 0.186222, 0.978613,
		29.665138, 32.788300, 19.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142992, 33.079304, 19.261757>,  <29.726318, 32.657944, 19.191547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142992, 33.079304, 19.261757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333160, 33.130501, 19.609917>,  <29.447262, 33.161221, 19.818813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333160, 33.130501, 19.609917>,  <29.142992, 33.079304, 19.261757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333160, 33.130501, 19.609917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216628, 0.975929, -0.025187,
		-0.852672, -0.176578, 0.491702,
		0.475419, 0.127993, 0.870399,
		29.475786, 33.168900, 19.871037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632320, 33.378277, 19.723000>,  <29.142992, 33.079304, 19.261757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632320, 33.378277, 19.723000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995010, 33.483440, 19.854893>,  <29.212626, 33.546539, 19.934029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995010, 33.483440, 19.854893>,  <28.632320, 33.378277, 19.723000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995010, 33.483440, 19.854893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222999, 0.962536, -0.154259,
		-0.357938, 0.066340, 0.931386,
		0.906726, 0.262913, 0.329734,
		29.267029, 33.562313, 19.953814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564861, 33.942303, 20.193312>,  <28.632320, 33.378277, 19.723000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564861, 33.942303, 20.193312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909142, 33.973701, 19.992104>,  <29.115709, 33.992538, 19.871378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909142, 33.973701, 19.992104>,  <28.564861, 33.942303, 20.193312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909142, 33.973701, 19.992104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247584, 0.927873, -0.278844,
		0.444853, 0.364542, 0.818056,
		0.860702, 0.078493, -0.503021,
		29.167353, 33.997250, 19.841198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161520, 33.959846, 20.900375>,  <28.564861, 33.942303, 20.193312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161520, 33.959846, 20.900375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044331, 33.839737, 21.263474>,  <27.974016, 33.767673, 21.481333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044331, 33.839737, 21.263474>,  <28.161520, 33.959846, 20.900375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044331, 33.839737, 21.263474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912881, 0.370131, -0.172196,
		-0.284280, -0.879113, -0.382550,
		-0.292973, -0.300271, 0.907747,
		27.956438, 33.749657, 21.535797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527868, 33.686722, 20.880957>,  <28.161520, 33.959846, 20.900375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527868, 33.686722, 20.880957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538429, 33.830788, 21.253963>,  <27.544765, 33.917229, 21.477768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538429, 33.830788, 21.253963>,  <27.527868, 33.686722, 20.880957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538429, 33.830788, 21.253963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982216, 0.182809, -0.042797,
		-0.185886, -0.914802, 0.358585,
		0.026402, 0.360163, 0.932515,
		27.546350, 33.938835, 21.533718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807928, 33.600941, 20.690508>,  <27.527868, 33.686722, 20.880957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807928, 33.600941, 20.690508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428053, 33.580173, 20.814053>,  <26.200129, 33.567715, 20.888180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428053, 33.580173, 20.814053>,  <26.807928, 33.600941, 20.690508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428053, 33.580173, 20.814053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189735, -0.879977, 0.435479,
		0.249185, 0.472171, 0.845554,
		-0.949688, -0.051916, 0.308864,
		26.143147, 33.564598, 20.906712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730587, 33.593361, 21.441889>,  <26.807928, 33.600941, 20.690508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730587, 33.593361, 21.441889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373098, 33.445091, 21.340801>,  <26.158606, 33.356129, 21.280149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373098, 33.445091, 21.340801>,  <26.730587, 33.593361, 21.441889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373098, 33.445091, 21.340801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136658, -0.761485, 0.633613,
		-0.427302, 0.531737, 0.731210,
		-0.893721, -0.370670, -0.252718,
		26.104982, 33.333889, 21.264986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444696, 33.317032, 22.016577>,  <26.730587, 33.593361, 21.441889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444696, 33.317032, 22.016577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193090, 33.141876, 21.759644>,  <26.042128, 33.036781, 21.605484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193090, 33.141876, 21.759644>,  <26.444696, 33.317032, 22.016577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193090, 33.141876, 21.759644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011908, -0.831596, 0.555254,
		-0.777302, 0.341614, 0.528301,
		-0.629015, -0.437891, -0.642333,
		26.004385, 33.010509, 21.566944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863844, 32.882309, 22.433016>,  <26.444696, 33.317032, 22.016577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863844, 32.882309, 22.433016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873905, 32.746552, 22.056892>,  <25.879942, 32.665096, 21.831219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873905, 32.746552, 22.056892>,  <25.863844, 32.882309, 22.433016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873905, 32.746552, 22.056892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234087, -0.912454, 0.335606,
		-0.971890, -0.228555, 0.056497,
		0.025153, -0.339397, -0.940307,
		25.881451, 32.644733, 21.774801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489548, 32.369850, 22.451723>,  <25.863844, 32.882309, 22.433016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489548, 32.369850, 22.451723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702942, 32.299957, 22.120697>,  <25.830978, 32.258022, 21.922081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702942, 32.299957, 22.120697>,  <25.489548, 32.369850, 22.451723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702942, 32.299957, 22.120697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073004, -0.965265, 0.250868,
		-0.842653, -0.194249, -0.502199,
		0.533486, -0.174732, -0.827564,
		25.862988, 32.247540, 21.872429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334768, 31.695698, 22.272238>,  <25.489548, 32.369850, 22.451723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334768, 31.695698, 22.272238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674961, 31.766911, 22.074253>,  <25.879076, 31.809639, 21.955462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674961, 31.766911, 22.074253>,  <25.334768, 31.695698, 22.272238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674961, 31.766911, 22.074253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343620, -0.900490, 0.266538,
		-0.398255, -0.396765, -0.827025,
		0.850481, 0.178032, -0.494961,
		25.930105, 31.820320, 21.925764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520096, 31.051428, 22.043148>,  <25.334768, 31.695698, 22.272238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520096, 31.051428, 22.043148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853632, 31.268681, 22.003723>,  <26.053755, 31.399033, 21.980068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853632, 31.268681, 22.003723>,  <25.520096, 31.051428, 22.043148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853632, 31.268681, 22.003723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543138, -0.775393, 0.322128,
		0.098535, -0.322137, -0.941551,
		0.833841, 0.543134, -0.098562,
		26.103785, 31.431622, 21.974155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083502, 30.659956, 21.676718>,  <25.520096, 31.051428, 22.043148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083502, 30.659956, 21.676718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306522, 30.915134, 21.889194>,  <26.440334, 31.068241, 22.016680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306522, 30.915134, 21.889194>,  <26.083502, 30.659956, 21.676718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306522, 30.915134, 21.889194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774447, -0.630148, -0.056090,
		0.298946, 0.442653, -0.845393,
		0.557551, 0.637944, 0.531191,
		26.473787, 31.106518, 22.048552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713045, 30.532467, 21.441404>,  <26.083502, 30.659956, 21.676718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713045, 30.532467, 21.441404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765863, 30.705986, 21.797916>,  <26.797554, 30.810099, 22.011824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765863, 30.705986, 21.797916>,  <26.713045, 30.532467, 21.441404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765863, 30.705986, 21.797916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781965, -0.598167, 0.175288,
		0.609175, 0.673805, -0.418201,
		0.132044, 0.433800, 0.891281,
		26.805477, 30.836126, 22.065300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483807, 30.611172, 21.496889>,  <26.713045, 30.532467, 21.441404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483807, 30.611172, 21.496889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339771, 30.639946, 21.868946>,  <27.253349, 30.657211, 22.092180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339771, 30.639946, 21.868946>,  <27.483807, 30.611172, 21.496889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339771, 30.639946, 21.868946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741555, -0.582893, 0.332163,
		0.566067, 0.809358, 0.156548,
		-0.360089, 0.071938, 0.930140,
		27.231745, 30.661528, 22.147987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057951, 30.691942, 21.836054>,  <27.483807, 30.611172, 21.496889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057951, 30.691942, 21.836054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790804, 30.585346, 22.114029>,  <27.630516, 30.521389, 22.280813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790804, 30.585346, 22.114029>,  <28.057951, 30.691942, 21.836054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790804, 30.585346, 22.114029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598360, -0.747525, 0.288395,
		0.442627, 0.608432, 0.658705,
		-0.667867, -0.266491, 0.694936,
		27.590445, 30.505400, 22.322510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377029, 30.686525, 22.484299>,  <28.057951, 30.691942, 21.836054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377029, 30.686525, 22.484299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077858, 30.426773, 22.539299>,  <27.898355, 30.270922, 22.572300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077858, 30.426773, 22.539299>,  <28.377029, 30.686525, 22.484299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077858, 30.426773, 22.539299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663433, -0.738021, 0.123213,
		0.021467, 0.183377, 0.982808,
		-0.747928, -0.649383, 0.137501,
		27.853479, 30.231958, 22.580549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568439, 30.251661, 23.009102>,  <28.377029, 30.686525, 22.484299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568439, 30.251661, 23.009102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291424, 30.038204, 22.814941>,  <28.125214, 29.910130, 22.698446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291424, 30.038204, 22.814941>,  <28.568439, 30.251661, 23.009102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291424, 30.038204, 22.814941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573931, -0.815237, 0.077412,
		-0.437025, -0.224975, 0.870859,
		-0.692541, -0.533643, -0.485399,
		28.083662, 29.878111, 22.669321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572550, 29.693937, 23.458532>,  <28.568439, 30.251661, 23.009102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572550, 29.693937, 23.458532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349577, 29.563442, 23.153156>,  <28.215794, 29.485146, 22.969931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349577, 29.563442, 23.153156>,  <28.572550, 29.693937, 23.458532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349577, 29.563442, 23.153156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425348, -0.901930, 0.074845,
		-0.712985, -0.283006, 0.641529,
		-0.557432, -0.326236, -0.763439,
		28.182346, 29.465572, 22.924124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337793, 29.529066, 24.167782>,  <28.572550, 29.693937, 23.458532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337793, 29.529066, 24.167782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522284, 29.504555, 24.521847>,  <28.632978, 29.489847, 24.734285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522284, 29.504555, 24.521847>,  <28.337793, 29.529066, 24.167782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522284, 29.504555, 24.521847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126088, 0.992015, 0.002976,
		-0.878278, 0.110236, 0.465269,
		0.461226, -0.061279, 0.885164,
		28.660652, 29.486172, 24.787395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115341, 30.177191, 24.560991>,  <28.337793, 29.529066, 24.167782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115341, 30.177191, 24.560991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461781, 30.054661, 24.718998>,  <28.669645, 29.981142, 24.813801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461781, 30.054661, 24.718998>,  <28.115341, 30.177191, 24.560991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461781, 30.054661, 24.718998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305932, 0.949780, 0.065754,
		-0.395319, 0.063898, 0.916318,
		0.866100, -0.306324, 0.395015,
		28.721611, 29.962763, 24.837502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229586, 30.677197, 25.119225>,  <28.115341, 30.177191, 24.560991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229586, 30.677197, 25.119225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573372, 30.499908, 25.017342>,  <28.779644, 30.393536, 24.956213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573372, 30.499908, 25.017342>,  <28.229586, 30.677197, 25.119225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573372, 30.499908, 25.017342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496247, 0.842998, 0.207590,
		0.122708, -0.304814, 0.944474,
		0.859466, -0.443220, -0.254706,
		28.831211, 30.366943, 24.940929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717716, 30.847204, 25.737825>,  <28.229586, 30.677197, 25.119225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717716, 30.847204, 25.737825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958202, 30.768936, 25.427921>,  <29.102495, 30.721975, 25.241980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958202, 30.768936, 25.427921>,  <28.717716, 30.847204, 25.737825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958202, 30.768936, 25.427921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468064, 0.872051, 0.142980,
		0.647652, -0.448599, 0.615878,
		0.601218, -0.195670, -0.774758,
		29.138567, 30.710236, 25.195494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461025, 31.123194, 25.859961>,  <28.717716, 30.847204, 25.737825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461025, 31.123194, 25.859961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456652, 31.065670, 25.464142>,  <29.454027, 31.031157, 25.226650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456652, 31.065670, 25.464142>,  <29.461025, 31.123194, 25.859961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456652, 31.065670, 25.464142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540604, 0.831661, -0.126839,
		0.841206, -0.536339, 0.068649,
		-0.010936, -0.143809, -0.989545,
		29.453371, 31.022528, 25.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129745, 31.257147, 25.644386>,  <29.461025, 31.123194, 25.859961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129745, 31.257147, 25.644386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911224, 31.303852, 25.312622>,  <29.780111, 31.331875, 25.113564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911224, 31.303852, 25.312622>,  <30.129745, 31.257147, 25.644386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911224, 31.303852, 25.312622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481475, 0.854057, -0.196897,
		0.685373, -0.506906, -0.522792,
		-0.546302, 0.116764, -0.829410,
		29.747334, 31.338881, 25.063799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604441, 31.304165, 25.137459>,  <30.129745, 31.257147, 25.644386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604441, 31.304165, 25.137459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259153, 31.476696, 25.032528>,  <30.051981, 31.580215, 24.969570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259153, 31.476696, 25.032528>,  <30.604441, 31.304165, 25.137459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259153, 31.476696, 25.032528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485600, 0.851494, -0.197866,
		0.138023, -0.298186, -0.944476,
		-0.863216, 0.431327, -0.262325,
		30.000189, 31.606094, 24.953831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831051, 31.736382, 24.519964>,  <30.604441, 31.304165, 25.137459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831051, 31.736382, 24.519964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460266, 31.869717, 24.588818>,  <30.237795, 31.949718, 24.630129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460266, 31.869717, 24.588818>,  <30.831051, 31.736382, 24.519964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460266, 31.869717, 24.588818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238080, 0.877278, -0.416776,
		-0.289937, -0.345353, -0.892563,
		-0.926960, 0.333340, 0.172134,
		30.182178, 31.969719, 24.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728651, 31.941179, 23.841301>,  <30.831051, 31.736382, 24.519964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728651, 31.941179, 23.841301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508915, 32.134781, 24.113762>,  <30.377073, 32.250942, 24.277239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508915, 32.134781, 24.113762>,  <30.728651, 31.941179, 23.841301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508915, 32.134781, 24.113762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335607, 0.874326, -0.350604,
		-0.765242, 0.035999, -0.642735,
		-0.549339, 0.484003, 0.681152,
		30.344114, 32.279984, 24.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558741, 32.620811, 23.601877>,  <30.728651, 31.941179, 23.841301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558741, 32.620811, 23.601877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469976, 32.695683, 23.984650>,  <30.416718, 32.740604, 24.214314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469976, 32.695683, 23.984650>,  <30.558741, 32.620811, 23.601877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469976, 32.695683, 23.984650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273853, 0.953864, -0.123076,
		-0.935821, 0.234747, -0.262932,
		-0.221910, 0.187182, 0.956932,
		30.403404, 32.751839, 24.271729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394474, 33.238686, 23.628513>,  <30.558741, 32.620811, 23.601877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394474, 33.238686, 23.628513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459200, 33.175632, 24.018173>,  <30.498035, 33.137798, 24.251968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459200, 33.175632, 24.018173>,  <30.394474, 33.238686, 23.628513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459200, 33.175632, 24.018173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138788, 0.980982, 0.135689,
		-0.977013, 0.113244, 0.180615,
		0.161814, -0.157637, 0.974149,
		30.507744, 33.128342, 24.310417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074217, 33.785183, 23.988983>,  <30.394474, 33.238686, 23.628513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074217, 33.785183, 23.988983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365070, 33.649811, 24.227894>,  <30.539583, 33.568588, 24.371241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365070, 33.649811, 24.227894>,  <30.074217, 33.785183, 23.988983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365070, 33.649811, 24.227894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404960, 0.913996, 0.024892,
		-0.554333, 0.223774, 0.801648,
		0.727133, -0.338434, 0.597277,
		30.583210, 33.548279, 24.407078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.578125, 25.808691, 25.489737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.947111, 25.891220, 25.620266>,  <29.168503, 25.940737, 25.698584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.947111, 25.891220, 25.620266>,  <28.578125, 25.808691, 25.489737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947111, 25.891220, 25.620266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233165, 0.971398, 0.044943,
		-0.307718, -0.117546, 0.944189,
		0.922467, 0.206322, 0.326324,
		29.223850, 25.953117, 25.718163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530626, 26.227365, 26.206463>,  <28.578125, 25.808691, 25.489737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530626, 26.227365, 26.206463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.872852, 26.268127, 26.003437>,  <29.078188, 26.292585, 25.881620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.872852, 26.268127, 26.003437>,  <28.530626, 26.227365, 26.206463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872852, 26.268127, 26.003437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100055, 0.994499, 0.031012,
		0.507934, 0.024252, 0.861055,
		0.855565, 0.101905, -0.507566,
		29.129522, 26.298698, 25.851168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503147, 26.930447, 26.310394>,  <28.530626, 26.227365, 26.206463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503147, 26.930447, 26.310394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.807039, 26.842937, 26.065464>,  <28.989376, 26.790432, 25.918505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.807039, 26.842937, 26.065464>,  <28.503147, 26.930447, 26.310394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807039, 26.842937, 26.065464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136318, 0.974362, -0.178987,
		0.635786, 0.052511, 0.770077,
		0.759733, -0.218772, -0.612327,
		29.034960, 26.777306, 25.881765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889702, 27.498779, 26.426231>,  <28.503147, 26.930447, 26.310394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889702, 27.498779, 26.426231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.982361, 27.358093, 26.063435>,  <29.037956, 27.273682, 25.845757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.982361, 27.358093, 26.063435>,  <28.889702, 27.498779, 26.426231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982361, 27.358093, 26.063435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055157, 0.926105, -0.373213,
		0.971234, 0.136481, 0.195132,
		0.231649, -0.351714, -0.906993,
		29.051855, 27.252579, 25.791336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499798, 27.928457, 26.173019>,  <28.889702, 27.498779, 26.426231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499798, 27.928457, 26.173019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.308470, 27.748158, 25.871548>,  <29.193672, 27.639978, 25.690664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.308470, 27.748158, 25.871548>,  <29.499798, 27.928457, 26.173019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308470, 27.748158, 25.871548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182882, 0.890537, -0.416531,
		0.858932, -0.061400, -0.508395,
		-0.478320, -0.450748, -0.753682,
		29.164974, 27.612932, 25.645443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884684, 28.225882, 25.585022>,  <29.499798, 27.928457, 26.173019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884684, 28.225882, 25.585022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.520432, 28.091934, 25.488178>,  <29.301880, 28.011566, 25.430073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.520432, 28.091934, 25.488178>,  <29.884684, 28.225882, 25.585022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520432, 28.091934, 25.488178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144197, 0.806586, -0.573259,
		0.387249, -0.487114, -0.782788,
		-0.910629, -0.334870, -0.242109,
		29.247242, 27.991472, 25.415545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819248, 28.378061, 24.890251>,  <29.884684, 28.225882, 25.585022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819248, 28.378061, 24.890251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.429955, 28.341091, 24.974415>,  <29.196379, 28.318909, 25.024914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.429955, 28.341091, 24.974415>,  <29.819248, 28.378061, 24.890251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429955, 28.341091, 24.974415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155243, 0.939487, -0.305392,
		-0.169451, -0.329882, -0.928689,
		-0.973234, -0.092424, 0.210409,
		29.137983, 28.313364, 25.037537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440300, 28.663490, 24.301912>,  <29.819248, 28.378061, 24.890251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440300, 28.663490, 24.301912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195438, 28.675491, 24.617981>,  <29.048521, 28.682692, 24.807621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195438, 28.675491, 24.617981>,  <29.440300, 28.663490, 24.301912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195438, 28.675491, 24.617981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198187, 0.961564, -0.190046,
		-0.765500, -0.272939, -0.582678,
		-0.612153, 0.030001, 0.790170,
		29.011793, 28.684492, 24.855032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854298, 28.979738, 24.069849>,  <29.440300, 28.663490, 24.301912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854298, 28.979738, 24.069849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850121, 29.026928, 24.467033>,  <28.847614, 29.055241, 24.705345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850121, 29.026928, 24.467033>,  <28.854298, 28.979738, 24.069849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850121, 29.026928, 24.467033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248595, 0.961533, -0.116854,
		-0.968551, -0.248066, 0.019285,
		-0.010444, 0.117973, 0.992962,
		28.846987, 29.062321, 24.764921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198212, 29.042812, 23.576216>,  <28.854298, 28.979738, 24.069849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198212, 29.042812, 23.576216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194145, 29.022186, 23.176769>,  <28.191706, 29.009811, 22.937101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194145, 29.022186, 23.176769>,  <28.198212, 29.042812, 23.576216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194145, 29.022186, 23.176769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247393, -0.967753, 0.047453,
		-0.968862, -0.246569, 0.022597,
		-0.010167, -0.051566, -0.998618,
		28.191095, 29.006716, 22.877184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752367, 28.554655, 23.331455>,  <28.198212, 29.042812, 23.576216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752367, 28.554655, 23.331455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000256, 28.593044, 23.019882>,  <28.148989, 28.616077, 22.832939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000256, 28.593044, 23.019882>,  <27.752367, 28.554655, 23.331455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000256, 28.593044, 23.019882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071992, -0.995262, -0.065354,
		-0.781512, -0.015575, -0.623695,
		0.619722, 0.095975, -0.778931,
		28.186172, 28.621838, 22.786203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607418, 28.050943, 22.818733>,  <27.752367, 28.554655, 23.331455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607418, 28.050943, 22.818733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.973984, 28.142132, 22.687149>,  <28.193924, 28.196844, 22.608198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.973984, 28.142132, 22.687149>,  <27.607418, 28.050943, 22.818733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973984, 28.142132, 22.687149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200003, -0.972787, -0.116977,
		-0.346674, 0.041406, -0.937071,
		0.916415, 0.227969, -0.328959,
		28.248909, 28.210524, 22.588461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619244, 27.622679, 22.307249>,  <27.607418, 28.050943, 22.818733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619244, 27.622679, 22.307249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.992058, 27.718842, 22.415703>,  <28.215746, 27.776539, 22.480776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.992058, 27.718842, 22.415703>,  <27.619244, 27.622679, 22.307249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992058, 27.718842, 22.415703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284748, -0.948664, -0.137680,
		0.224119, 0.205528, -0.952643,
		0.932035, 0.240406, 0.271137,
		28.271667, 27.790964, 22.497044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018564, 27.303976, 21.830702>,  <27.619244, 27.622679, 22.307249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018564, 27.303976, 21.830702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290140, 27.380100, 22.114342>,  <28.453085, 27.425776, 22.284527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290140, 27.380100, 22.114342>,  <28.018564, 27.303976, 21.830702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290140, 27.380100, 22.114342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441332, -0.877640, -0.187013,
		0.586745, 0.439919, -0.679854,
		0.678938, 0.190313, 0.709101,
		28.493822, 27.437195, 22.327072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670078, 27.220417, 21.577778>,  <28.018564, 27.303976, 21.830702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670078, 27.220417, 21.577778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.712957, 27.171017, 21.972393>,  <28.738684, 27.141376, 22.209162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.712957, 27.171017, 21.972393>,  <28.670078, 27.220417, 21.577778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712957, 27.171017, 21.972393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459605, -0.873717, -0.159315,
		0.881630, 0.470496, -0.036898,
		0.107196, -0.123499, 0.986538,
		28.745115, 27.133966, 22.268354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292843, 26.868895, 21.601995>,  <28.670078, 27.220417, 21.577778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292843, 26.868895, 21.601995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.117477, 26.803722, 21.955547>,  <29.012259, 26.764620, 22.167679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.117477, 26.803722, 21.955547>,  <29.292843, 26.868895, 21.601995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117477, 26.803722, 21.955547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569888, -0.810854, 0.133200,
		0.694997, 0.562111, 0.448342,
		-0.438413, -0.162931, 0.883882,
		28.985954, 26.754843, 22.220713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793356, 26.558994, 21.971498>,  <29.292843, 26.868895, 21.601995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793356, 26.558994, 21.971498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.475285, 26.480545, 22.201012>,  <29.284441, 26.433475, 22.338720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.475285, 26.480545, 22.201012>,  <29.793356, 26.558994, 21.971498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475285, 26.480545, 22.201012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390845, -0.889232, 0.237711,
		0.463606, 0.413283, 0.783752,
		-0.795179, -0.196121, 0.573783,
		29.236731, 26.421709, 22.373146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030121, 26.248320, 22.539160>,  <29.793356, 26.558994, 21.971498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030121, 26.248320, 22.539160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647823, 26.130657, 22.541363>,  <29.418446, 26.060061, 22.542685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647823, 26.130657, 22.541363>,  <30.030121, 26.248320, 22.539160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647823, 26.130657, 22.541363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281110, -0.907518, 0.312071,
		-0.086801, 0.299807, 0.950043,
		-0.955742, -0.294154, 0.005506,
		29.361101, 26.042412, 22.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930498, 25.800976, 23.166443>,  <30.030121, 26.248320, 22.539160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930498, 25.800976, 23.166443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.611532, 25.723080, 22.937984>,  <29.420153, 25.676342, 22.800909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.611532, 25.723080, 22.937984>,  <29.930498, 25.800976, 23.166443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611532, 25.723080, 22.937984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031274, -0.958559, 0.283173,
		-0.602624, 0.207944, 0.770457,
		-0.797412, -0.194742, -0.571147,
		29.372309, 25.664658, 22.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536825, 25.341688, 23.507715>,  <29.930498, 25.800976, 23.166443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536825, 25.341688, 23.507715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442585, 25.283195, 23.123402>,  <29.386042, 25.248100, 22.892813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442585, 25.283195, 23.123402>,  <29.536825, 25.341688, 23.507715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442585, 25.283195, 23.123402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210252, -0.972872, 0.096512,
		-0.948834, -0.179269, 0.259954,
		-0.235600, -0.146230, -0.960786,
		29.371904, 25.239326, 22.835165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032412, 24.854105, 23.437826>,  <29.536825, 25.341688, 23.507715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032412, 24.854105, 23.437826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.214104, 24.843491, 23.081631>,  <29.323118, 24.837122, 22.867912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.214104, 24.843491, 23.081631>,  <29.032412, 24.854105, 23.437826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214104, 24.843491, 23.081631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019180, -0.999616, 0.020002,
		-0.890679, 0.007994, -0.454563,
		0.454229, -0.026534, -0.890490,
		29.350372, 24.835531, 22.814484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725952, 24.276396, 23.156584>,  <29.032412, 24.854105, 23.437826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725952, 24.276396, 23.156584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.053925, 24.347889, 22.939045>,  <29.250708, 24.390785, 22.808521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.053925, 24.347889, 22.939045>,  <28.725952, 24.276396, 23.156584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053925, 24.347889, 22.939045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037805, -0.964843, -0.260095,
		-0.571214, 0.192700, -0.797861,
		0.819930, 0.178733, -0.543846,
		29.299904, 24.401508, 22.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608839, 23.930386, 22.551666>,  <28.725952, 24.276396, 23.156584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608839, 23.930386, 22.551666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.005186, 23.974949, 22.582058>,  <29.242994, 24.001688, 22.600292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.005186, 23.974949, 22.582058>,  <28.608839, 23.930386, 22.551666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005186, 23.974949, 22.582058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119444, -0.986617, -0.110996,
		0.062597, 0.119058, -0.990912,
		0.990866, 0.111410, 0.075980,
		29.302446, 24.008371, 22.604853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.194164, 24.630135, 23.183901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835178, 24.659435, 23.357883>,  <34.619785, 24.677015, 23.462273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835178, 24.659435, 23.357883>,  <35.194164, 24.630135, 23.183901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835178, 24.659435, 23.357883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086845, 0.937464, -0.337074,
		-0.432448, -0.340286, -0.834982,
		-0.897467, 0.073253, 0.434956,
		34.565937, 24.681412, 23.488371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855228, 24.928217, 22.701269>,  <35.194164, 24.630135, 23.183901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855228, 24.928217, 22.701269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645798, 24.991547, 23.036125>,  <34.520138, 25.029545, 23.237038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645798, 24.991547, 23.036125>,  <34.855228, 24.928217, 22.701269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645798, 24.991547, 23.036125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033645, 0.977973, -0.206001,
		-0.851313, -0.136023, -0.506719,
		-0.523578, 0.158322, 0.837138,
		34.488724, 25.039043, 23.287266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502945, 25.436626, 22.467642>,  <34.855228, 24.928217, 22.701269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502945, 25.436626, 22.467642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386948, 25.470959, 22.848911>,  <34.317348, 25.491558, 23.077673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386948, 25.470959, 22.848911>,  <34.502945, 25.436626, 22.467642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386948, 25.470959, 22.848911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329299, 0.926206, -0.183589,
		-0.898591, -0.367118, -0.240330,
		-0.289994, 0.085831, 0.953172,
		34.299950, 25.496708, 23.134863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748581, 25.653452, 22.494564>,  <34.502945, 25.436626, 22.467642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748581, 25.653452, 22.494564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919479, 25.764694, 22.838684>,  <34.022018, 25.831440, 23.045156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919479, 25.764694, 22.838684>,  <33.748581, 25.653452, 22.494564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919479, 25.764694, 22.838684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240294, 0.952224, -0.188487,
		-0.871620, -0.126195, 0.473660,
		0.427245, 0.278107, 0.860301,
		34.047653, 25.848125, 23.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344215, 26.241724, 22.708382>,  <33.748581, 25.653452, 22.494564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344215, 26.241724, 22.708382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684841, 26.287796, 22.912960>,  <33.889217, 26.315439, 23.035707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684841, 26.287796, 22.912960>,  <33.344215, 26.241724, 22.708382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684841, 26.287796, 22.912960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032979, 0.961864, -0.271532,
		-0.523216, 0.248093, 0.815288,
		0.851562, 0.115182, 0.511445,
		33.940311, 26.322351, 23.066393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238716, 26.843069, 23.118540>,  <33.344215, 26.241724, 22.708382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238716, 26.843069, 23.118540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631294, 26.773727, 23.085762>,  <33.866840, 26.732122, 23.066095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631294, 26.773727, 23.085762>,  <33.238716, 26.843069, 23.118540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631294, 26.773727, 23.085762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142117, 0.944537, -0.296060,
		0.128723, 0.278921, 0.951648,
		0.981444, -0.173356, -0.081944,
		33.925728, 26.721722, 23.061178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602650, 27.243389, 23.681807>,  <33.238716, 26.843069, 23.118540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602650, 27.243389, 23.681807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822037, 27.191498, 23.351387>,  <33.953667, 27.160362, 23.153135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822037, 27.191498, 23.351387>,  <33.602650, 27.243389, 23.681807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822037, 27.191498, 23.351387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193987, 0.980680, -0.025215,
		0.813360, -0.146413, 0.563035,
		0.548465, -0.129730, -0.826049,
		33.986576, 27.152578, 23.103573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938332, 27.850668, 23.598129>,  <33.602650, 27.243389, 23.681807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938332, 27.850668, 23.598129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073334, 27.667557, 23.269123>,  <34.154335, 27.557690, 23.071720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073334, 27.667557, 23.269123>,  <33.938332, 27.850668, 23.598129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073334, 27.667557, 23.269123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302133, 0.880235, -0.365925,
		0.891517, -0.125005, 0.435397,
		0.337509, -0.457777, -0.822513,
		34.174587, 27.530224, 23.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498428, 28.149115, 23.459995>,  <33.938332, 27.850668, 23.598129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498428, 28.149115, 23.459995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422485, 27.988110, 23.101791>,  <34.376919, 27.891506, 22.886869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422485, 27.988110, 23.101791>,  <34.498428, 28.149115, 23.459995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422485, 27.988110, 23.101791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216184, 0.872576, -0.438037,
		0.957715, -0.276760, -0.078650,
		-0.189859, -0.402512, -0.895510,
		34.365528, 27.867355, 22.833138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930229, 28.410204, 23.036787>,  <34.498428, 28.149115, 23.459995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930229, 28.410204, 23.036787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652447, 28.288906, 22.775780>,  <34.485779, 28.216127, 22.619175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652447, 28.288906, 22.775780>,  <34.930229, 28.410204, 23.036787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652447, 28.288906, 22.775780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226017, 0.769024, -0.597928,
		0.683119, -0.562713, -0.465513,
		-0.694453, -0.303242, -0.652518,
		34.444111, 28.197933, 22.580025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198593, 28.275990, 22.348530>,  <34.930229, 28.410204, 23.036787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198593, 28.275990, 22.348530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816086, 28.388988, 22.318192>,  <34.586582, 28.456787, 22.299988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816086, 28.388988, 22.318192>,  <35.198593, 28.275990, 22.348530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816086, 28.388988, 22.318192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273046, 0.769149, -0.577803,
		-0.104891, -0.573242, -0.812644,
		-0.956265, 0.282495, -0.075845,
		34.529205, 28.473738, 22.295439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144009, 28.549484, 21.725758>,  <35.198593, 28.275990, 22.348530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144009, 28.549484, 21.725758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820415, 28.697502, 21.908451>,  <34.626259, 28.786314, 22.018066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820415, 28.697502, 21.908451>,  <35.144009, 28.549484, 21.725758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820415, 28.697502, 21.908451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157947, 0.885252, -0.437471,
		-0.566209, -0.281769, -0.774605,
		-0.808987, 0.370047, 0.456733,
		34.577721, 28.808516, 22.045471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818821, 28.948048, 21.203522>,  <35.144009, 28.549484, 21.725758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818821, 28.948048, 21.203522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622227, 29.086277, 21.523277>,  <34.504269, 29.169214, 21.715130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622227, 29.086277, 21.523277>,  <34.818821, 28.948048, 21.203522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622227, 29.086277, 21.523277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038216, 0.908460, -0.416222,
		-0.870046, -0.235117, -0.433289,
		-0.491486, 0.345574, 0.799387,
		34.474781, 29.189949, 21.763094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386158, 29.362534, 20.933712>,  <34.818821, 28.948048, 21.203522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386158, 29.362534, 20.933712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407257, 29.468246, 21.318913>,  <34.419918, 29.531673, 21.550034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407257, 29.468246, 21.318913>,  <34.386158, 29.362534, 20.933712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407257, 29.468246, 21.318913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048169, 0.962549, -0.266794,
		-0.997445, 0.060460, 0.038045,
		0.052751, 0.264280, 0.963002,
		34.423080, 29.547531, 21.607813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687691, 29.295351, 20.615793>,  <34.386158, 29.362534, 20.933712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687691, 29.295351, 20.615793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552135, 29.318710, 20.240189>,  <33.470802, 29.332726, 20.014826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552135, 29.318710, 20.240189>,  <33.687691, 29.295351, 20.615793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552135, 29.318710, 20.240189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091711, -0.995369, -0.028805,
		-0.936347, 0.076356, 0.342674,
		-0.338887, 0.058398, -0.939013,
		33.450470, 29.336229, 19.958485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161079, 28.905487, 20.599829>,  <33.687691, 29.295351, 20.615793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161079, 28.905487, 20.599829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222839, 28.918198, 20.204830>,  <33.259895, 28.925825, 19.967831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222839, 28.918198, 20.204830>,  <33.161079, 28.905487, 20.599829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222839, 28.918198, 20.204830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151704, -0.986868, -0.055479,
		-0.976291, 0.158373, -0.147556,
		0.154405, 0.031779, -0.987496,
		33.269161, 28.927731, 19.908581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570530, 28.558084, 20.269693>,  <33.161079, 28.905487, 20.599829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570530, 28.558084, 20.269693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878376, 28.543251, 20.014721>,  <33.063084, 28.534351, 19.861738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878376, 28.543251, 20.014721>,  <32.570530, 28.558084, 20.269693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878376, 28.543251, 20.014721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140644, -0.983638, -0.112584,
		-0.622827, 0.176298, -0.762238,
		0.769614, -0.037084, -0.637431,
		33.109261, 28.532125, 19.823492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391998, 28.086990, 19.646641>,  <32.570530, 28.558084, 20.269693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391998, 28.086990, 19.646641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785450, 28.153122, 19.617950>,  <33.021519, 28.192801, 19.600737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785450, 28.153122, 19.617950>,  <32.391998, 28.086990, 19.646641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785450, 28.153122, 19.617950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134213, -0.937622, -0.320704,
		-0.120273, 0.305826, -0.944460,
		0.983627, 0.165331, -0.071725,
		33.080540, 28.202721, 19.596434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583607, 27.692635, 19.066078>,  <32.391998, 28.086990, 19.646641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583607, 27.692635, 19.066078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920094, 27.743431, 19.276306>,  <33.121986, 27.773909, 19.402443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920094, 27.743431, 19.276306>,  <32.583607, 27.692635, 19.066078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920094, 27.743431, 19.276306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028293, -0.981034, 0.191759,
		0.539956, -0.146441, -0.828856,
		0.841218, 0.126993, 0.525572,
		33.172459, 27.781528, 19.433977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078671, 27.257225, 18.853184>,  <32.583607, 27.692635, 19.066078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078671, 27.257225, 18.853184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182156, 27.336601, 19.231323>,  <33.244247, 27.384228, 19.458208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182156, 27.336601, 19.231323>,  <33.078671, 27.257225, 18.853184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182156, 27.336601, 19.231323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099357, -0.978946, 0.178303,
		0.960831, 0.047798, -0.272982,
		0.258712, 0.198442, 0.945351,
		33.259769, 27.396133, 19.514929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326794, 26.657875, 18.951458>,  <33.078671, 27.257225, 18.853184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326794, 26.657875, 18.951458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345573, 26.816193, 19.318314>,  <33.356842, 26.911182, 19.538427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345573, 26.816193, 19.318314>,  <33.326794, 26.657875, 18.951458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345573, 26.816193, 19.318314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056531, -0.915627, 0.398033,
		0.997296, -0.070534, -0.020612,
		0.046948, 0.395792, 0.917139,
		33.359657, 26.934931, 19.593456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955624, 26.427990, 19.357473>,  <33.326794, 26.657875, 18.951458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955624, 26.427990, 19.357473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656574, 26.513000, 19.609154>,  <33.477146, 26.564007, 19.760162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656574, 26.513000, 19.609154>,  <33.955624, 26.427990, 19.357473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656574, 26.513000, 19.609154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024553, -0.955611, 0.293606,
		0.663670, 0.204058, 0.719654,
		-0.747622, 0.212527, 0.629200,
		33.432289, 26.576759, 19.797915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090660, 25.998392, 19.908997>,  <33.955624, 26.427990, 19.357473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090660, 25.998392, 19.908997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706799, 26.098057, 19.961124>,  <33.476482, 26.157856, 19.992401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706799, 26.098057, 19.961124>,  <34.090660, 25.998392, 19.908997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706799, 26.098057, 19.961124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190818, -0.917485, 0.349012,
		0.206525, 0.310064, 0.928013,
		-0.959654, 0.249161, 0.130318,
		33.418903, 26.172806, 20.000219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962517, 25.638144, 20.529165>,  <34.090660, 25.998392, 19.908997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962517, 25.638144, 20.529165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597214, 25.738258, 20.400589>,  <33.378033, 25.798326, 20.323442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597214, 25.738258, 20.400589>,  <33.962517, 25.638144, 20.529165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597214, 25.738258, 20.400589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385213, -0.787309, 0.481410,
		-0.132583, 0.563473, 0.815426,
		-0.913254, 0.250285, -0.321441,
		33.323238, 25.813343, 20.304157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495594, 25.719128, 21.048952>,  <33.962517, 25.638144, 20.529165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495594, 25.719128, 21.048952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273392, 25.615723, 20.732830>,  <33.140068, 25.553680, 20.543158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273392, 25.615723, 20.732830>,  <33.495594, 25.719128, 21.048952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273392, 25.615723, 20.732830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293147, -0.828534, 0.477071,
		-0.778122, 0.496693, 0.384476,
		-0.555509, -0.258512, -0.790305,
		33.106739, 25.538170, 20.495739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831181, 25.572172, 21.394615>,  <33.495594, 25.719128, 21.048952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831181, 25.572172, 21.394615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873283, 25.416821, 21.028427>,  <32.898544, 25.323610, 20.808714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873283, 25.416821, 21.028427>,  <32.831181, 25.572172, 21.394615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873283, 25.416821, 21.028427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140924, -0.917118, 0.372874,
		-0.984409, 0.089762, -0.151268,
		0.105261, -0.388377, -0.915469,
		32.904861, 25.300308, 20.753786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284153, 25.126143, 21.467045>,  <32.831181, 25.572172, 21.394615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284153, 25.126143, 21.467045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520203, 25.005184, 21.167629>,  <32.661831, 24.932610, 20.987980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520203, 25.005184, 21.167629>,  <32.284153, 25.126143, 21.467045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520203, 25.005184, 21.167629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026304, -0.933909, 0.356542,
		-0.806885, -0.190714, -0.559075,
		0.590122, -0.302394, -0.748540,
		32.697239, 24.914465, 20.943068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940329, 24.585705, 21.049498>,  <32.284153, 25.126143, 21.467045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940329, 24.585705, 21.049498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333096, 24.529285, 20.998989>,  <32.568756, 24.495434, 20.968683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333096, 24.529285, 20.998989>,  <31.940329, 24.585705, 21.049498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333096, 24.529285, 20.998989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091535, -0.937579, 0.335511,
		-0.165714, -0.317885, -0.933535,
		0.981916, -0.141050, -0.126272,
		32.627670, 24.486971, 20.961107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673065, 24.572451, 20.363440>,  <31.940329, 24.585705, 21.049498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673065, 24.572451, 20.363440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315670, 24.548302, 20.185436>,  <31.101233, 24.533812, 20.078634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315670, 24.548302, 20.185436>,  <31.673065, 24.572451, 20.363440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315670, 24.548302, 20.185436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047577, 0.972621, -0.227476,
		0.446558, -0.224419, -0.866153,
		-0.893489, -0.060372, -0.445009,
		31.047623, 24.530190, 20.051933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712622, 25.109442, 19.897877>,  <31.673065, 24.572451, 20.363440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712622, 25.109442, 19.897877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.318459, 25.059376, 19.944019>,  <31.081961, 25.029335, 19.971704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.318459, 25.059376, 19.944019>,  <31.712622, 25.109442, 19.897877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318459, 25.059376, 19.944019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152030, 0.951982, -0.265738,
		-0.076556, -0.279397, -0.957119,
		-0.985406, -0.125167, 0.115357,
		31.022837, 25.021826, 19.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330439, 25.388752, 19.273737>,  <31.712622, 25.109442, 19.897877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330439, 25.388752, 19.273737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066790, 25.364323, 19.573559>,  <30.908600, 25.349665, 19.753452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066790, 25.364323, 19.573559>,  <31.330439, 25.388752, 19.273737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066790, 25.364323, 19.573559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282712, 0.943711, -0.171708,
		-0.696874, -0.325084, -0.639286,
		-0.659121, -0.061075, 0.749553,
		30.869053, 25.346001, 19.798424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553690, 25.507822, 19.011665>,  <31.330439, 25.388752, 19.273737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553690, 25.507822, 19.011665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612930, 25.597801, 19.396885>,  <30.648474, 25.651789, 19.628017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612930, 25.597801, 19.396885>,  <30.553690, 25.507822, 19.011665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612930, 25.597801, 19.396885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419871, 0.895973, -0.144712,
		-0.895419, -0.382924, 0.227144,
		0.148100, 0.224949, 0.963050,
		30.657360, 25.665285, 19.685801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939156, 25.796604, 19.118057>,  <30.553690, 25.507822, 19.011665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939156, 25.796604, 19.118057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180296, 25.912151, 19.415546>,  <30.324980, 25.981480, 19.594040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180296, 25.912151, 19.415546>,  <29.939156, 25.796604, 19.118057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180296, 25.912151, 19.415546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513746, 0.853737, 0.084840,
		-0.610438, -0.433231, 0.663081,
		0.602853, 0.288866, 0.743724,
		30.361153, 25.998812, 19.638664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490479, 26.214064, 19.572824>,  <29.939156, 25.796604, 19.118057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490479, 26.214064, 19.572824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.864471, 26.288280, 19.693745>,  <30.088867, 26.332811, 19.766296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.864471, 26.288280, 19.693745>,  <29.490479, 26.214064, 19.572824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864471, 26.288280, 19.693745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265291, 0.931522, 0.248773,
		-0.235443, -0.312795, 0.920177,
		0.934980, 0.185543, 0.302302,
		30.144966, 26.343943, 19.784435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473318, 26.531235, 20.252878>,  <29.490479, 26.214064, 19.572824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473318, 26.531235, 20.252878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.817131, 26.666344, 20.099457>,  <30.023418, 26.747410, 20.007404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.817131, 26.666344, 20.099457>,  <29.473318, 26.531235, 20.252878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817131, 26.666344, 20.099457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287113, 0.939985, 0.184376,
		0.422813, -0.048353, 0.904926,
		0.859532, 0.337772, -0.383555,
		30.074991, 26.767675, 19.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866138, 26.956406, 20.709858>,  <29.473318, 26.531235, 20.252878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866138, 26.956406, 20.709858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.977486, 27.072075, 20.343494>,  <30.044294, 27.141476, 20.123676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.977486, 27.072075, 20.343494>,  <29.866138, 26.956406, 20.709858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977486, 27.072075, 20.343494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310541, 0.929480, 0.199076,
		0.908887, 0.229011, 0.348536,
		0.278367, 0.289172, -0.915910,
		30.060995, 27.158827, 20.068722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166685, 27.681242, 20.742311>,  <29.866138, 26.956406, 20.709858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166685, 27.681242, 20.742311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000496, 27.611382, 20.385239>,  <29.900782, 27.569466, 20.170996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000496, 27.611382, 20.385239>,  <30.166685, 27.681242, 20.742311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000496, 27.611382, 20.385239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209984, 0.973301, -0.092695,
		0.885035, 0.148936, -0.441056,
		-0.415475, -0.174653, -0.892680,
		29.875853, 27.558987, 20.117435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540684, 28.119339, 20.197416>,  <30.166685, 27.681242, 20.742311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540684, 28.119339, 20.197416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.184053, 28.018227, 20.047112>,  <29.970076, 27.957560, 19.956928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.184053, 28.018227, 20.047112>,  <30.540684, 28.119339, 20.197416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184053, 28.018227, 20.047112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135006, 0.940356, -0.312256,
		0.432282, -0.227670, -0.872524,
		-0.891575, -0.252779, -0.375762,
		29.916580, 27.942392, 19.934383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473629, 28.443205, 19.462425>,  <30.540684, 28.119339, 20.197416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473629, 28.443205, 19.462425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.107973, 28.368416, 19.606308>,  <29.888580, 28.323544, 19.692638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.107973, 28.368416, 19.606308>,  <30.473629, 28.443205, 19.462425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107973, 28.368416, 19.606308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268940, 0.943626, -0.192982,
		-0.303348, -0.273153, -0.912890,
		-0.914140, -0.186972, 0.359708,
		29.833731, 28.312325, 19.714220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008837, 28.719934, 18.978268>,  <30.473629, 28.443205, 19.462425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008837, 28.719934, 18.978268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.800117, 28.666183, 19.315235>,  <29.674887, 28.633932, 19.517416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.800117, 28.666183, 19.315235>,  <30.008837, 28.719934, 18.978268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800117, 28.666183, 19.315235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364069, 0.928146, -0.077454,
		-0.771480, -0.347113, -0.533227,
		-0.521798, -0.134377, 0.842419,
		29.643578, 28.625870, 19.567961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465837, 29.125868, 18.944065>,  <30.008837, 28.719934, 18.978268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465837, 29.125868, 18.944065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422096, 29.052670, 19.334869>,  <29.395851, 29.008751, 19.569353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422096, 29.052670, 19.334869>,  <29.465837, 29.125868, 18.944065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422096, 29.052670, 19.334869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395214, 0.909881, 0.126186,
		-0.912057, -0.372331, -0.171822,
		-0.109354, -0.182995, 0.977013,
		29.389290, 28.997770, 19.627974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802494, 29.324511, 19.184967>,  <29.465837, 29.125868, 18.944065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802494, 29.324511, 19.184967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.029577, 29.342361, 19.513775>,  <29.165827, 29.353071, 19.711060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.029577, 29.342361, 19.513775>,  <28.802494, 29.324511, 19.184967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029577, 29.342361, 19.513775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369482, 0.906120, 0.205982,
		-0.735658, -0.420660, 0.530899,
		0.567707, 0.044625, 0.822021,
		29.199890, 29.355749, 19.760382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.037407, 36.460075, 31.906891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360264, 36.372684, 32.126266>,  <38.553978, 36.320251, 32.257893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360264, 36.372684, 32.126266>,  <38.037407, 36.460075, 31.906891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360264, 36.372684, 32.126266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461162, -0.346664, -0.816794,
		0.368573, 0.912191, -0.179056,
		0.807145, -0.218474, 0.548439,
		38.602406, 36.307140, 32.290798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605019, 36.764343, 31.577028>,  <38.037407, 36.460075, 31.906891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605019, 36.764343, 31.577028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.803017, 36.514328, 31.818459>,  <38.921814, 36.364319, 31.963316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.803017, 36.514328, 31.818459>,  <38.605019, 36.764343, 31.577028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803017, 36.514328, 31.818459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678933, -0.155273, -0.717593,
		0.542244, 0.764993, 0.347501,
		0.494996, -0.625041, 0.603575,
		38.951515, 36.326817, 31.999531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166687, 36.994274, 31.380077>,  <38.605019, 36.764343, 31.577028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166687, 36.994274, 31.380077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.221222, 36.618996, 31.507328>,  <39.253944, 36.393829, 31.583679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.221222, 36.618996, 31.507328>,  <39.166687, 36.994274, 31.380077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221222, 36.618996, 31.507328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337880, -0.257834, -0.905184,
		0.931262, 0.230900, 0.281845,
		0.136338, -0.938193, 0.318128,
		39.262123, 36.337536, 31.602766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821011, 36.711632, 31.197535>,  <39.166687, 36.994274, 31.380077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821011, 36.711632, 31.197535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597248, 36.381401, 31.227169>,  <39.462990, 36.183262, 31.244949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597248, 36.381401, 31.227169>,  <39.821011, 36.711632, 31.197535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597248, 36.381401, 31.227169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348123, -0.315116, -0.882900,
		0.752246, -0.468109, 0.463680,
		-0.559406, -0.825576, 0.074085,
		39.429428, 36.133728, 31.249395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297661, 36.028969, 31.097065>,  <39.821011, 36.711632, 31.197535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297661, 36.028969, 31.097065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915920, 35.923134, 31.041637>,  <39.686874, 35.859631, 31.008381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915920, 35.923134, 31.041637>,  <40.297661, 36.028969, 31.097065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915920, 35.923134, 31.041637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265300, -0.537810, -0.800235,
		0.137211, -0.800470, 0.583457,
		-0.954353, -0.264592, -0.138571,
		39.629616, 35.843758, 31.000067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376640, 35.335899, 30.864220>,  <40.297661, 36.028969, 31.097065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376640, 35.335899, 30.864220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000385, 35.426296, 30.762924>,  <39.774632, 35.480534, 30.702147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000385, 35.426296, 30.762924>,  <40.376640, 35.335899, 30.864220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000385, 35.426296, 30.762924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084090, -0.567672, -0.818949,
		-0.328835, -0.791628, 0.514969,
		-0.940636, 0.225995, -0.253238,
		39.718193, 35.494095, 30.686953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172466, 34.752289, 30.645363>,  <40.376640, 35.335899, 30.864220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172466, 34.752289, 30.645363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916576, 35.022011, 30.497818>,  <39.763042, 35.183846, 30.409290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916576, 35.022011, 30.497818>,  <40.172466, 34.752289, 30.645363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916576, 35.022011, 30.497818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013330, -0.470108, -0.882508,
		-0.768488, -0.569480, 0.291751,
		-0.639725, 0.674308, -0.368863,
		39.724659, 35.224304, 30.387159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627476, 34.374199, 30.242437>,  <40.172466, 34.752289, 30.645363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627476, 34.374199, 30.242437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 34.751137, 30.110680>,  <39.665291, 34.977299, 30.031626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 34.751137, 30.110680>,  <39.627476, 34.374199, 30.242437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651112, 34.751137, 30.110680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022782, -0.328610, -0.944191,
		-0.997993, 0.063294, 0.002052,
		0.059088, 0.942343, -0.329392,
		39.668839, 35.033840, 30.011862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207867, 34.245518, 29.679134>,  <39.627476, 34.374199, 30.242437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207867, 34.245518, 29.679134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396248, 34.594208, 29.625042>,  <39.509277, 34.803421, 29.592587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396248, 34.594208, 29.625042>,  <39.207867, 34.245518, 29.679134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396248, 34.594208, 29.625042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090072, -0.200014, -0.975644,
		-0.877545, 0.447306, -0.172716,
		0.470958, 0.871729, -0.135232,
		39.537537, 34.855728, 29.584473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882362, 34.417919, 29.050381>,  <39.207867, 34.245518, 29.679134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882362, 34.417919, 29.050381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208462, 34.645287, 29.094707>,  <39.404121, 34.781708, 29.121304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208462, 34.645287, 29.094707>,  <38.882362, 34.417919, 29.050381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208462, 34.645287, 29.094707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156784, -0.032427, -0.987100,
		-0.557489, 0.822103, -0.115554,
		0.815245, 0.568415, 0.110815,
		39.453033, 34.815811, 29.127953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792294, 34.954296, 28.601688>,  <38.882362, 34.417919, 29.050381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792294, 34.954296, 28.601688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185493, 34.931625, 28.671547>,  <39.421413, 34.918022, 28.713463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185493, 34.931625, 28.671547>,  <38.792294, 34.954296, 28.601688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185493, 34.931625, 28.671547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167240, -0.116266, -0.979037,
		0.075796, 0.991599, -0.104811,
		0.982998, -0.056679, 0.174648,
		39.480392, 34.914623, 28.723942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070705, 35.483635, 28.147943>,  <38.792294, 34.954296, 28.601688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070705, 35.483635, 28.147943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351109, 35.209858, 28.228058>,  <39.519352, 35.045589, 28.276127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351109, 35.209858, 28.228058>,  <39.070705, 35.483635, 28.147943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351109, 35.209858, 28.228058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367236, 0.105707, -0.924101,
		0.611326, 0.721360, 0.325455,
		0.701012, -0.684446, 0.200288,
		39.561413, 35.004524, 28.288145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631058, 35.654404, 27.716658>,  <39.070705, 35.483635, 28.147943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631058, 35.654404, 27.716658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.716541, 35.274723, 27.809036>,  <39.767834, 35.046913, 27.864464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.716541, 35.274723, 27.809036>,  <39.631058, 35.654404, 27.716658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716541, 35.274723, 27.809036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501628, -0.096232, -0.859715,
		0.838270, 0.299580, 0.455582,
		0.213712, -0.949206, 0.230946,
		39.780655, 34.989960, 27.878321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262913, 35.555851, 27.455679>,  <39.631058, 35.654404, 27.716658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262913, 35.555851, 27.455679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.139221, 35.180695, 27.518597>,  <40.065006, 34.955601, 27.556347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.139221, 35.180695, 27.518597>,  <40.262913, 35.555851, 27.455679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139221, 35.180695, 27.518597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335891, -0.262455, -0.904596,
		0.889695, -0.226889, 0.396186,
		-0.309224, -0.937890, 0.157295,
		40.046455, 34.899326, 27.565784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799915, 35.094063, 27.466078>,  <40.262913, 35.555851, 27.455679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799915, 35.094063, 27.466078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.471737, 34.895760, 27.352165>,  <40.274830, 34.776779, 27.283817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.471737, 34.895760, 27.352165>,  <40.799915, 35.094063, 27.466078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471737, 34.895760, 27.352165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511849, -0.414988, -0.752194,
		0.254723, -0.762898, 0.594225,
		-0.820443, -0.495754, -0.284781,
		40.225605, 34.747032, 27.266731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066292, 34.427853, 27.145658>,  <40.799915, 35.094063, 27.466078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066292, 34.427853, 27.145658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684406, 34.437565, 27.027050>,  <40.455273, 34.443394, 26.955885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684406, 34.437565, 27.027050>,  <41.066292, 34.427853, 27.145658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684406, 34.437565, 27.027050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240789, -0.522323, -0.818046,
		-0.174743, -0.852402, 0.492824,
		-0.954718, 0.024281, -0.296521,
		40.397991, 34.444851, 26.938093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991886, 33.770123, 26.918110>,  <41.066292, 34.427853, 27.145658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991886, 33.770123, 26.918110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710644, 33.999863, 26.750412>,  <40.541901, 34.137707, 26.649794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710644, 33.999863, 26.750412>,  <40.991886, 33.770123, 26.918110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710644, 33.999863, 26.750412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185621, -0.420899, -0.887913,
		-0.686433, -0.702116, 0.189324,
		-0.703104, 0.574350, -0.419246,
		40.499714, 34.172169, 26.624638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413986, 33.356861, 26.655630>,  <40.991886, 33.770123, 26.918110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413986, 33.356861, 26.655630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408813, 33.702202, 26.453857>,  <40.405712, 33.909409, 26.332794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408813, 33.702202, 26.453857>,  <40.413986, 33.356861, 26.655630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408813, 33.702202, 26.453857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020893, -0.504131, -0.863374,
		-0.999698, -0.021702, -0.011520,
		-0.012929, 0.863354, -0.504433,
		40.404934, 33.961208, 26.302528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914471, 33.224876, 26.174988>,  <40.413986, 33.356861, 26.655630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914471, 33.224876, 26.174988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074429, 33.555840, 26.017265>,  <40.170403, 33.754417, 25.922632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074429, 33.555840, 26.017265>,  <39.914471, 33.224876, 26.174988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074429, 33.555840, 26.017265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053625, -0.450588, -0.891120,
		-0.914989, 0.335213, -0.224560,
		0.399899, 0.827407, -0.394308,
		40.194397, 33.804062, 25.898973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565536, 33.378201, 25.500381>,  <39.914471, 33.224876, 26.174988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565536, 33.378201, 25.500381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902973, 33.586857, 25.449406>,  <40.105434, 33.712051, 25.418821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902973, 33.586857, 25.449406>,  <39.565536, 33.378201, 25.500381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902973, 33.586857, 25.449406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137031, -0.438585, -0.888181,
		-0.519207, 0.731799, -0.441468,
		0.843592, 0.521644, -0.127437,
		40.156052, 33.743351, 25.411175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564358, 33.800774, 24.864342>,  <39.565536, 33.378201, 25.500381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564358, 33.800774, 24.864342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929157, 33.686874, 24.982437>,  <40.148037, 33.618534, 25.053295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929157, 33.686874, 24.982437>,  <39.564358, 33.800774, 24.864342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929157, 33.686874, 24.982437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132331, -0.477036, -0.868864,
		0.388252, 0.831476, -0.397376,
		0.912003, -0.284753, 0.295240,
		40.202759, 33.601448, 25.071009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953434, 34.042057, 24.500862>,  <39.564358, 33.800774, 24.864342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953434, 34.042057, 24.500862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687088, 34.336540, 24.452480>,  <38.527283, 34.513229, 24.423452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687088, 34.336540, 24.452480>,  <38.953434, 34.042057, 24.500862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687088, 34.336540, 24.452480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391377, -0.206654, 0.896727,
		0.635180, 0.644433, 0.425737,
		-0.665861, 0.736207, -0.120953,
		38.487331, 34.557404, 24.416195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050739, 34.442295, 25.020159>,  <38.953434, 34.042057, 24.500862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050739, 34.442295, 25.020159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669289, 34.474709, 24.904205>,  <38.440418, 34.494156, 24.834633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669289, 34.474709, 24.904205>,  <39.050739, 34.442295, 25.020159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669289, 34.474709, 24.904205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300994, -0.262163, 0.916882,
		-0.001696, 0.961615, 0.274396,
		-0.953625, 0.081036, -0.289885,
		38.383202, 34.499020, 24.817240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737835, 34.873753, 25.560209>,  <39.050739, 34.442295, 25.020159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737835, 34.873753, 25.560209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457539, 34.668644, 25.361801>,  <38.289360, 34.545578, 25.242756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457539, 34.668644, 25.361801>,  <38.737835, 34.873753, 25.560209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457539, 34.668644, 25.361801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435307, -0.243529, 0.866719,
		-0.565222, 0.823263, -0.052563,
		-0.700737, -0.512770, -0.496020,
		38.247318, 34.514812, 25.212996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078541, 35.175117, 25.795639>,  <38.737835, 34.873753, 25.560209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078541, 35.175117, 25.795639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989967, 34.818104, 25.638485>,  <37.936821, 34.603897, 25.544193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989967, 34.818104, 25.638485>,  <38.078541, 35.175117, 25.795639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989967, 34.818104, 25.638485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463344, -0.258207, 0.847727,
		-0.858067, 0.369757, -0.356372,
		-0.221436, -0.892529, -0.392884,
		37.923538, 34.550346, 25.520620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435440, 35.142281, 25.941296>,  <38.078541, 35.175117, 25.795639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435440, 35.142281, 25.941296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551842, 34.761852, 25.899742>,  <37.621681, 34.533596, 25.874811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551842, 34.761852, 25.899742>,  <37.435440, 35.142281, 25.941296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551842, 34.761852, 25.899742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433951, -0.227980, 0.871614,
		-0.852646, -0.208560, -0.479059,
		0.291000, -0.951066, -0.103882,
		37.639141, 34.476532, 25.868578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843658, 34.720901, 26.218678>,  <37.435440, 35.142281, 25.941296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843658, 34.720901, 26.218678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142639, 34.455673, 26.202404>,  <37.322029, 34.296535, 26.192640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142639, 34.455673, 26.202404>,  <36.843658, 34.720901, 26.218678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142639, 34.455673, 26.202404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299179, -0.390670, 0.870557,
		-0.593135, -0.638526, -0.490383,
		0.747451, -0.663070, -0.040686,
		37.366875, 34.256752, 26.190199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610752, 34.152103, 26.535442>,  <36.843658, 34.720901, 26.218678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610752, 34.152103, 26.535442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004978, 34.085766, 26.549023>,  <37.241516, 34.045963, 26.557171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004978, 34.085766, 26.549023>,  <36.610752, 34.152103, 26.535442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004978, 34.085766, 26.549023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106687, -0.452811, 0.885201,
		-0.131430, -0.876047, -0.463969,
		0.985568, -0.165842, 0.033950,
		37.300648, 34.036015, 26.559208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679646, 33.516621, 26.718304>,  <36.610752, 34.152103, 26.535442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679646, 33.516621, 26.718304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035694, 33.666660, 26.821823>,  <37.249325, 33.756683, 26.883936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035694, 33.666660, 26.821823>,  <36.679646, 33.516621, 26.718304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035694, 33.666660, 26.821823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175557, -0.241825, 0.954306,
		0.420543, -0.894887, -0.149403,
		0.890125, 0.375098, 0.258801,
		37.302731, 33.779190, 26.899464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894135, 33.070744, 27.297518>,  <36.679646, 33.516621, 26.718304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894135, 33.070744, 27.297518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134102, 33.388969, 27.331371>,  <37.278084, 33.579906, 27.351685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134102, 33.388969, 27.331371>,  <36.894135, 33.070744, 27.297518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134102, 33.388969, 27.331371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039746, -0.076019, 0.996314,
		0.799070, -0.601075, -0.013985,
		0.599922, 0.795569, 0.084635,
		37.314079, 33.627640, 27.356762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245560, 32.927265, 27.862818>,  <36.894135, 33.070744, 27.297518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245560, 32.927265, 27.862818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301811, 33.322781, 27.842766>,  <37.335564, 33.560089, 27.830734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301811, 33.322781, 27.842766>,  <37.245560, 32.927265, 27.862818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301811, 33.322781, 27.842766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239464, 0.083100, 0.967342,
		0.960667, -0.124031, 0.248466,
		0.140628, 0.988793, -0.050130,
		37.343998, 33.619419, 27.827726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584755, 33.106693, 28.408787>,  <37.245560, 32.927265, 27.862818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584755, 33.106693, 28.408787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393307, 33.446758, 28.321022>,  <37.278439, 33.650799, 28.268364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393307, 33.446758, 28.321022>,  <37.584755, 33.106693, 28.408787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393307, 33.446758, 28.321022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151389, 0.166245, 0.974394,
		0.864870, 0.499585, 0.049137,
		-0.478624, 0.850163, -0.219412,
		37.249718, 33.701809, 28.255198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937038, 33.699463, 28.689762>,  <37.584755, 33.106693, 28.408787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937038, 33.699463, 28.689762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.545876, 33.775658, 28.655319>,  <37.311176, 33.821373, 28.634653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.545876, 33.775658, 28.655319>,  <37.937038, 33.699463, 28.689762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545876, 33.775658, 28.655319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035662, 0.253859, 0.966584,
		0.205978, 0.948299, -0.241457,
		-0.977907, 0.190484, -0.086107,
		37.252502, 33.832802, 28.629488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925400, 34.166733, 29.185228>,  <37.937038, 33.699463, 28.689762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925400, 34.166733, 29.185228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.539455, 34.089058, 29.114410>,  <37.307888, 34.042454, 29.071920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.539455, 34.089058, 29.114410>,  <37.925400, 34.166733, 29.185228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539455, 34.089058, 29.114410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246624, 0.436599, 0.865192,
		-0.090709, 0.878450, -0.469146,
		-0.964857, -0.194183, -0.177043,
		37.250000, 34.030804, 29.061296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570915, 34.726704, 29.387493>,  <37.925400, 34.166733, 29.185228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570915, 34.726704, 29.387493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292999, 34.439102, 29.380615>,  <37.126247, 34.266541, 29.376490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292999, 34.439102, 29.380615>,  <37.570915, 34.726704, 29.387493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292999, 34.439102, 29.380615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354531, 0.321597, 0.878000,
		-0.625757, 0.616123, -0.478352,
		-0.694793, -0.719005, -0.017193,
		37.084560, 34.223400, 29.375458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857418, 35.047039, 29.503365>,  <37.570915, 34.726704, 29.387493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857418, 35.047039, 29.503365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.810879, 34.659683, 29.591621>,  <36.782955, 34.427269, 29.644575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.810879, 34.659683, 29.591621>,  <36.857418, 35.047039, 29.503365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810879, 34.659683, 29.591621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457671, 0.249434, 0.853417,
		-0.881476, -0.001688, -0.472225,
		-0.116348, -0.968390, 0.220643,
		36.775974, 34.369167, 29.657814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142986, 34.961075, 29.693975>,  <36.857418, 35.047039, 29.503365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142986, 34.961075, 29.693975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.347031, 34.651218, 29.843487>,  <36.469460, 34.465305, 29.933193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.347031, 34.651218, 29.843487>,  <36.142986, 34.961075, 29.693975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347031, 34.651218, 29.843487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387947, 0.180633, 0.903808,
		-0.767646, -0.606052, -0.208377,
		0.510115, -0.774644, 0.373778,
		36.500065, 34.418827, 29.955620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749531, 34.550518, 30.113247>,  <36.142986, 34.961075, 29.693975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749531, 34.550518, 30.113247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109940, 34.444695, 30.250751>,  <36.326183, 34.381203, 30.333254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109940, 34.444695, 30.250751>,  <35.749531, 34.550518, 30.113247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109940, 34.444695, 30.250751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297159, 0.200867, 0.933461,
		-0.316002, -0.943220, 0.102370,
		0.901021, -0.264555, 0.343761,
		36.380245, 34.365330, 30.353880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635841, 34.125290, 30.706264>,  <35.749531, 34.550518, 30.113247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635841, 34.125290, 30.706264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.016964, 34.243324, 30.734760>,  <36.245640, 34.314144, 30.751858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.016964, 34.243324, 30.734760>,  <35.635841, 34.125290, 30.706264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016964, 34.243324, 30.734760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113323, 0.128051, 0.985272,
		0.281621, -0.946850, 0.155449,
		0.952811, 0.295089, 0.071238,
		36.302807, 34.331852, 30.756132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878651, 33.826084, 31.370735>,  <35.635841, 34.125290, 30.706264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878651, 33.826084, 31.370735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.088902, 34.152260, 31.273762>,  <36.215054, 34.347965, 31.215578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.088902, 34.152260, 31.273762>,  <35.878651, 33.826084, 31.370735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088902, 34.152260, 31.273762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017514, 0.274544, 0.961415,
		0.850535, -0.509591, 0.130025,
		0.525626, 0.815440, -0.242434,
		36.246590, 34.396893, 31.201031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225071, 33.797112, 31.987574>,  <35.878651, 33.826084, 31.370735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225071, 33.797112, 31.987574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.336063, 34.151726, 31.839489>,  <36.402660, 34.364494, 31.750639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.336063, 34.151726, 31.839489>,  <36.225071, 33.797112, 31.987574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336063, 34.151726, 31.839489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008654, 0.383020, 0.923700,
		0.960692, -0.259514, 0.098609,
		0.277482, 0.886537, -0.370210,
		36.419308, 34.417686, 31.728426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921413, 33.979252, 32.374428>,  <36.225071, 33.797112, 31.987574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921413, 33.979252, 32.374428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708027, 34.296886, 32.257923>,  <36.579994, 34.487469, 32.188019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708027, 34.296886, 32.257923>,  <36.921413, 33.979252, 32.374428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708027, 34.296886, 32.257923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023725, 0.358269, 0.933317,
		0.845490, 0.490981, -0.209964,
		-0.533464, 0.794091, -0.291265,
		36.547989, 34.535114, 32.170544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.878525, 23.635300, 21.901196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.170544, 23.653042, 22.173977>,  <29.345755, 23.663687, 22.337646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.170544, 23.653042, 22.173977>,  <28.878525, 23.635300, 21.901196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170544, 23.653042, 22.173977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161513, -0.980821, -0.109106,
		0.664037, 0.189797, -0.723210,
		0.730047, 0.044357, 0.681956,
		29.389559, 23.666349, 22.378563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430870, 23.249180, 21.577854>,  <28.878525, 23.635300, 21.901196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430870, 23.249180, 21.577854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.534090, 23.262417, 21.964081>,  <29.596022, 23.270359, 22.195816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.534090, 23.262417, 21.964081>,  <29.430870, 23.249180, 21.577854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534090, 23.262417, 21.964081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201655, -0.979246, -0.020330,
		0.944852, 0.199957, -0.259368,
		0.258050, 0.033094, 0.965565,
		29.611506, 23.272345, 22.253750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264503, 22.927164, 21.665045>,  <29.430870, 23.249180, 21.577854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264503, 22.927164, 21.665045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035179, 22.902264, 21.991833>,  <29.897585, 22.887323, 22.187906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035179, 22.902264, 21.991833>,  <30.264503, 22.927164, 21.665045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035179, 22.902264, 21.991833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222423, -0.971491, 0.082060,
		0.788571, 0.228759, 0.570811,
		-0.573309, -0.062251, 0.816971,
		29.863186, 22.883589, 22.236923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589481, 22.430624, 22.078957>,  <30.264503, 22.927164, 21.665045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589481, 22.430624, 22.078957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239321, 22.474770, 22.267208>,  <30.029224, 22.501257, 22.380159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239321, 22.474770, 22.267208>,  <30.589481, 22.430624, 22.078957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239321, 22.474770, 22.267208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030567, -0.959003, 0.281744,
		0.482429, 0.261025, 0.836139,
		-0.875401, 0.110363, 0.470630,
		29.976700, 22.507879, 22.408398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585844, 21.948868, 22.540869>,  <30.589481, 22.430624, 22.078957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585844, 21.948868, 22.540869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190416, 22.006683, 22.558044>,  <29.953159, 22.041372, 22.568350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190416, 22.006683, 22.558044>,  <30.585844, 21.948868, 22.540869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190416, 22.006683, 22.558044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131209, -0.964939, 0.227323,
		0.074289, 0.219090, 0.972872,
		-0.988567, 0.144537, 0.042938,
		29.893847, 22.050045, 22.570927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359827, 21.566538, 23.081491>,  <30.585844, 21.948868, 22.540869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359827, 21.566538, 23.081491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.037872, 21.625069, 22.851448>,  <29.844700, 21.660187, 22.713423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.037872, 21.625069, 22.851448>,  <30.359827, 21.566538, 23.081491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037872, 21.625069, 22.851448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263112, -0.956655, 0.124831,
		-0.531913, 0.251792, 0.808498,
		-0.804886, 0.146326, -0.575107,
		29.796406, 21.668966, 22.678915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759289, 21.288820, 23.409571>,  <30.359827, 21.566538, 23.081491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759289, 21.288820, 23.409571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688162, 21.269386, 23.016426>,  <29.645487, 21.257727, 22.780539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688162, 21.269386, 23.016426>,  <29.759289, 21.288820, 23.409571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688162, 21.269386, 23.016426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095622, -0.994907, 0.031879,
		-0.979407, -0.088315, 0.181556,
		-0.177816, -0.048584, -0.982864,
		29.634817, 21.254810, 22.721567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363903, 20.691162, 23.356718>,  <29.759289, 21.288820, 23.409571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363903, 20.691162, 23.356718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476973, 20.758537, 22.978992>,  <29.544813, 20.798962, 22.752357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476973, 20.758537, 22.978992>,  <29.363903, 20.691162, 23.356718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476973, 20.758537, 22.978992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143862, -0.980771, -0.131877,
		-0.948367, -0.098573, -0.301468,
		0.282672, 0.168437, -0.944312,
		29.561773, 20.809069, 22.695700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042841, 20.243097, 22.997778>,  <29.363903, 20.691162, 23.356718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042841, 20.243097, 22.997778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.331371, 20.321079, 22.731941>,  <29.504490, 20.367868, 22.572439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.331371, 20.321079, 22.731941>,  <29.042841, 20.243097, 22.997778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331371, 20.321079, 22.731941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099974, -0.978825, -0.178623,
		-0.685342, 0.062403, -0.725543,
		0.721327, 0.194953, -0.664591,
		29.547770, 20.379564, 22.532564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857525, 19.855358, 22.445915>,  <29.042841, 20.243097, 22.997778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857525, 19.855358, 22.445915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245640, 19.937126, 22.394138>,  <29.478508, 19.986187, 22.363073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245640, 19.937126, 22.394138>,  <28.857525, 19.855358, 22.445915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245640, 19.937126, 22.394138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170574, -0.957337, -0.233261,
		-0.171602, 0.204251, -0.963761,
		0.970287, 0.204420, -0.129441,
		29.536726, 19.998451, 22.355307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971149, 19.473410, 21.809656>,  <28.857525, 19.855358, 22.445915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971149, 19.473410, 21.809656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318893, 19.527596, 21.999756>,  <29.527540, 19.560108, 22.113815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318893, 19.527596, 21.999756>,  <28.971149, 19.473410, 21.809656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318893, 19.527596, 21.999756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221514, -0.966491, -0.129717,
		0.441752, 0.218045, -0.870236,
		0.869360, 0.135466, 0.475250,
		29.579700, 19.568235, 22.142330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400505, 19.088602, 21.361313>,  <28.971149, 19.473410, 21.809656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400505, 19.088602, 21.361313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563046, 19.160465, 21.719666>,  <29.660570, 19.203583, 21.934677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563046, 19.160465, 21.719666>,  <29.400505, 19.088602, 21.361313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563046, 19.160465, 21.719666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102804, -0.983243, 0.150549,
		0.907915, 0.030924, -0.418013,
		0.406352, 0.179659, 0.895880,
		29.684952, 19.214363, 21.988430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925346, 18.654533, 21.284254>,  <29.400505, 19.088602, 21.361313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925346, 18.654533, 21.284254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834743, 18.715775, 21.669014>,  <29.780382, 18.752520, 21.899870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834743, 18.715775, 21.669014>,  <29.925346, 18.654533, 21.284254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834743, 18.715775, 21.669014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057239, -0.983770, 0.170060,
		0.972326, 0.093578, 0.214068,
		-0.226508, 0.153101, 0.961901,
		29.766790, 18.761705, 21.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287460, 19.157675, 21.598427>,  <29.925346, 18.654533, 21.284254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287460, 19.157675, 21.598427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.216139, 18.984200, 21.951725>,  <30.173346, 18.880114, 22.163704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.216139, 18.984200, 21.951725>,  <30.287460, 19.157675, 21.598427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216139, 18.984200, 21.951725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517089, -0.804990, -0.290878,
		0.837154, 0.404853, 0.367787,
		-0.178302, -0.433688, 0.883246,
		30.162647, 18.854094, 22.216700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870687, 18.910801, 21.343498>,  <30.287460, 19.157675, 21.598427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870687, 18.910801, 21.343498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174921, 18.914768, 21.083832>,  <31.357462, 18.917149, 20.928032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174921, 18.914768, 21.083832>,  <30.870687, 18.910801, 21.343498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174921, 18.914768, 21.083832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018297, 0.999814, -0.006160,
		0.648983, 0.016563, 0.760623,
		0.760583, 0.009920, -0.649165,
		31.403095, 18.917744, 20.889082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363132, 19.464384, 21.518847>,  <30.870687, 18.910801, 21.343498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363132, 19.464384, 21.518847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462317, 19.421696, 21.133698>,  <31.521826, 19.396084, 20.902607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462317, 19.421696, 21.133698>,  <31.363132, 19.464384, 21.518847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462317, 19.421696, 21.133698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078030, 0.988484, -0.129653,
		0.965623, 0.107281, 0.236775,
		0.247958, -0.106720, -0.962875,
		31.536703, 19.389679, 20.844835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707968, 20.002913, 21.432629>,  <31.363132, 19.464384, 21.518847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707968, 20.002913, 21.432629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607777, 19.896084, 21.060406>,  <31.547661, 19.831987, 20.837072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607777, 19.896084, 21.060406>,  <31.707968, 20.002913, 21.432629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607777, 19.896084, 21.060406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002890, 0.960986, -0.276584,
		0.968119, -0.071967, -0.239932,
		-0.250476, -0.267072, -0.930556,
		31.532633, 19.815962, 20.781239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139175, 20.353363, 21.000885>,  <31.707968, 20.002913, 21.432629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139175, 20.353363, 21.000885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804873, 20.273220, 20.796387>,  <31.604292, 20.225134, 20.673687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804873, 20.273220, 20.796387>,  <32.139175, 20.353363, 21.000885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804873, 20.273220, 20.796387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136090, 0.977586, -0.160642,
		0.531974, -0.064682, -0.844287,
		-0.835753, -0.200357, -0.511248,
		31.554146, 20.213114, 20.643013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271671, 20.712299, 20.296366>,  <32.139175, 20.353363, 21.000885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271671, 20.712299, 20.296366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883070, 20.617508, 20.294334>,  <31.649910, 20.560633, 20.293116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883070, 20.617508, 20.294334>,  <32.271671, 20.712299, 20.296366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883070, 20.617508, 20.294334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225426, 0.930338, -0.289231,
		0.073268, -0.279843, -0.957246,
		-0.971501, -0.236979, -0.005080,
		31.591619, 20.546413, 20.292810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000191, 20.960821, 19.711374>,  <32.271671, 20.712299, 20.296366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000191, 20.960821, 19.711374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670198, 20.936680, 19.936146>,  <31.472202, 20.922195, 20.071009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670198, 20.936680, 19.936146>,  <32.000191, 20.960821, 19.711374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670198, 20.936680, 19.936146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251935, 0.929300, -0.270057,
		-0.505901, -0.364361, -0.781860,
		-0.824981, -0.060355, 0.561929,
		31.422705, 20.918573, 20.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500555, 21.243404, 19.271864>,  <32.000191, 20.960821, 19.711374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500555, 21.243404, 19.271864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326149, 21.245049, 19.631836>,  <31.221506, 21.246035, 19.847818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326149, 21.245049, 19.631836>,  <31.500555, 21.243404, 19.271864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326149, 21.245049, 19.631836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321984, 0.933082, -0.160260,
		-0.840367, -0.359639, -0.405515,
		-0.436015, 0.004108, 0.899930,
		31.195345, 21.246281, 19.901815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803528, 21.552660, 19.185755>,  <31.500555, 21.243404, 19.271864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803528, 21.552660, 19.185755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880062, 21.596001, 19.575966>,  <30.925983, 21.622005, 19.810093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880062, 21.596001, 19.575966>,  <30.803528, 21.552660, 19.185755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880062, 21.596001, 19.575966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308425, 0.950181, -0.045041,
		-0.931807, -0.292259, 0.215221,
		0.191336, 0.108350, 0.975526,
		30.937464, 21.628506, 19.868624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259188, 21.898983, 19.493679>,  <30.803528, 21.552660, 19.185755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259188, 21.898983, 19.493679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.535891, 21.945160, 19.778816>,  <30.701912, 21.972866, 19.949900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.535891, 21.945160, 19.778816>,  <30.259188, 21.898983, 19.493679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535891, 21.945160, 19.778816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142794, 0.989515, -0.021676,
		-0.707873, -0.086795, 0.700987,
		0.691755, 0.115440, 0.712845,
		30.743418, 21.979792, 19.992670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954145, 22.353607, 19.880457>,  <30.259188, 21.898983, 19.493679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954145, 22.353607, 19.880457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331226, 22.390274, 20.008774>,  <30.557476, 22.412275, 20.085764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331226, 22.390274, 20.008774>,  <29.954145, 22.353607, 19.880457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331226, 22.390274, 20.008774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087228, 0.995789, -0.028218,
		-0.322028, -0.001381, 0.946729,
		0.942703, 0.091669, 0.320792,
		30.614037, 22.417774, 20.105011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890100, 22.730320, 20.503334>,  <29.954145, 22.353607, 19.880457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890100, 22.730320, 20.503334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265516, 22.788624, 20.378181>,  <30.490767, 22.823606, 20.303091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265516, 22.788624, 20.378181>,  <29.890100, 22.730320, 20.503334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265516, 22.788624, 20.378181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135695, 0.989287, 0.053827,
		0.317374, -0.008062, 0.948266,
		0.938542, 0.145758, -0.312880,
		30.547079, 22.832352, 20.284317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180490, 23.244953, 20.860174>,  <29.890100, 22.730320, 20.503334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180490, 23.244953, 20.860174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443851, 23.257755, 20.559380>,  <30.601868, 23.265436, 20.378902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443851, 23.257755, 20.559380>,  <30.180490, 23.244953, 20.860174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443851, 23.257755, 20.559380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032656, 0.996940, 0.071024,
		0.751957, -0.071320, 0.655343,
		0.658403, 0.032006, -0.751985,
		30.641373, 23.267357, 20.333784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670950, 23.809248, 21.047836>,  <30.180490, 23.244953, 20.860174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670950, 23.809248, 21.047836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706980, 23.760986, 20.652397>,  <30.728598, 23.732029, 20.415133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706980, 23.760986, 20.652397>,  <30.670950, 23.809248, 21.047836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706980, 23.760986, 20.652397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219807, 0.970565, -0.098426,
		0.971376, -0.208435, 0.113947,
		0.090077, -0.120655, -0.988599,
		30.734003, 23.724791, 20.355818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344498, 23.992090, 20.828608>,  <30.670950, 23.809248, 21.047836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344498, 23.992090, 20.828608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.100180, 24.051594, 20.517532>,  <30.953588, 24.087296, 20.330887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.100180, 24.051594, 20.517532>,  <31.344498, 23.992090, 20.828608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100180, 24.051594, 20.517532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420955, 0.892890, -0.159825,
		0.670615, -0.424992, -0.607994,
		-0.610797, 0.148757, -0.777688,
		30.916941, 24.096220, 20.284225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042183, 23.931265, 20.809069>,  <31.344498, 23.992090, 20.828608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042183, 23.931265, 20.809069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417515, 24.013947, 20.919922>,  <32.642715, 24.063555, 20.986433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417515, 24.013947, 20.919922>,  <32.042183, 23.931265, 20.809069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417515, 24.013947, 20.919922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106138, -0.935110, 0.338090,
		0.329034, -0.287827, -0.899384,
		0.938334, 0.206702, 0.277134,
		32.699017, 24.075956, 21.003061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397038, 23.264265, 20.522943>,  <32.042183, 23.931265, 20.809069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397038, 23.264265, 20.522943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668251, 23.413067, 20.776520>,  <32.830978, 23.502348, 20.928665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668251, 23.413067, 20.776520>,  <32.397038, 23.264265, 20.522943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668251, 23.413067, 20.776520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097711, -0.900433, 0.423878,
		0.728507, -0.225461, -0.646874,
		0.678034, 0.372005, 0.633942,
		32.871662, 23.524668, 20.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075066, 22.805439, 20.548317>,  <32.397038, 23.264265, 20.522943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075066, 22.805439, 20.548317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062229, 22.991928, 20.901951>,  <33.054527, 23.103821, 21.114132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062229, 22.991928, 20.901951>,  <33.075066, 22.805439, 20.548317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062229, 22.991928, 20.901951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066439, -0.881590, 0.467318,
		0.997274, 0.073735, -0.002683,
		-0.032092, 0.466222, 0.884085,
		33.052601, 23.131794, 21.167177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651016, 22.504704, 20.854982>,  <33.075066, 22.805439, 20.548317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651016, 22.504704, 20.854982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444294, 22.667477, 21.156265>,  <33.320263, 22.765141, 21.337034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444294, 22.667477, 21.156265>,  <33.651016, 22.504704, 20.854982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444294, 22.667477, 21.156265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118659, -0.837266, 0.533765,
		0.847841, 0.365226, 0.384416,
		-0.516803, 0.406933, 0.753206,
		33.289253, 22.789557, 21.382227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084484, 22.680092, 21.454254>,  <33.651016, 22.504704, 20.854982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084484, 22.680092, 21.454254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714268, 22.600277, 21.582973>,  <33.492138, 22.552389, 21.660206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714268, 22.600277, 21.582973>,  <34.084484, 22.680092, 21.454254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714268, 22.600277, 21.582973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342451, -0.803713, 0.486593,
		0.161541, 0.560564, 0.812203,
		-0.925544, -0.199535, 0.321798,
		33.436604, 22.540417, 21.679514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212589, 22.317276, 22.058643>,  <34.084484, 22.680092, 21.454254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212589, 22.317276, 22.058643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828804, 22.230484, 21.986706>,  <33.598534, 22.178410, 21.943542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828804, 22.230484, 21.986706>,  <34.212589, 22.317276, 22.058643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828804, 22.230484, 21.986706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141236, -0.922430, 0.359410,
		-0.243879, 0.319441, 0.915686,
		-0.959466, -0.216980, -0.179845,
		33.540966, 22.165390, 21.932753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975822, 21.975161, 22.622736>,  <34.212589, 22.317276, 22.058643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975822, 21.975161, 22.622736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721416, 21.860294, 22.336235>,  <33.568771, 21.791374, 22.164333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721416, 21.860294, 22.336235>,  <33.975822, 21.975161, 22.622736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721416, 21.860294, 22.336235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171224, -0.957559, 0.231869,
		-0.752440, 0.024833, 0.658193,
		-0.636016, -0.287166, -0.716253,
		33.530613, 21.774145, 22.121359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620518, 21.910120, 23.276741>,  <33.975822, 21.975161, 22.622736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620518, 21.910120, 23.276741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839542, 21.963783, 23.607117>,  <33.970959, 21.995981, 23.805344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839542, 21.963783, 23.607117>,  <33.620518, 21.910120, 23.276741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839542, 21.963783, 23.607117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285194, 0.957885, 0.033481,
		-0.786665, -0.253886, 0.562760,
		0.547560, 0.134157, 0.825942,
		34.003811, 22.004030, 23.854898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236488, 22.293501, 23.739534>,  <33.620518, 21.910120, 23.276741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236488, 22.293501, 23.739534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597198, 22.373596, 23.892746>,  <33.813625, 22.421654, 23.984673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597198, 22.373596, 23.892746>,  <33.236488, 22.293501, 23.739534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597198, 22.373596, 23.892746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266622, 0.955217, 0.128348,
		-0.340174, -0.217864, 0.914777,
		0.901773, 0.200239, 0.383027,
		33.867729, 22.433668, 24.007654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180920, 22.850071, 24.260887>,  <33.236488, 22.293501, 23.739534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180920, 22.850071, 24.260887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566818, 22.840347, 24.156059>,  <33.798355, 22.834513, 24.093163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566818, 22.840347, 24.156059>,  <33.180920, 22.850071, 24.260887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566818, 22.840347, 24.156059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056941, 0.991422, 0.117647,
		0.256960, -0.128421, 0.957851,
		0.964743, -0.024311, -0.262068,
		33.856239, 22.833054, 24.077438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617390, 23.372091, 24.652269>,  <33.180920, 22.850071, 24.260887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617390, 23.372091, 24.652269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858807, 23.286041, 24.345165>,  <34.003658, 23.234411, 24.160902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858807, 23.286041, 24.345165>,  <33.617390, 23.372091, 24.652269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858807, 23.286041, 24.345165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000733, 0.962765, -0.270338,
		0.797330, 0.163724, 0.580913,
		0.603543, -0.215123, -0.767761,
		34.039871, 23.221504, 24.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246593, 23.713989, 24.820808>,  <33.617390, 23.372091, 24.652269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246593, 23.713989, 24.820808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234200, 23.642956, 24.427361>,  <34.226765, 23.600336, 24.191292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234200, 23.642956, 24.427361>,  <34.246593, 23.713989, 24.820808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234200, 23.642956, 24.427361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093701, 0.979241, -0.179746,
		0.995118, -0.097736, -0.013702,
		-0.030985, -0.177584, -0.983618,
		34.224903, 23.589680, 24.132275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791134, 24.103331, 24.567816>,  <34.246593, 23.713989, 24.820808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791134, 24.103331, 24.567816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576378, 24.028385, 24.238781>,  <34.447525, 23.983418, 24.041361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576378, 24.028385, 24.238781>,  <34.791134, 24.103331, 24.567816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576378, 24.028385, 24.238781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291872, 0.873566, -0.389477,
		0.791558, -0.449195, -0.414319,
		-0.536886, -0.187365, -0.822586,
		34.415314, 23.972176, 23.992004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227818, 24.294666, 24.005766>,  <34.791134, 24.103331, 24.567816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227818, 24.294666, 24.005766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849033, 24.297813, 23.877266>,  <34.621761, 24.299702, 23.800165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849033, 24.297813, 23.877266>,  <35.227818, 24.294666, 24.005766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849033, 24.297813, 23.877266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159208, 0.879867, -0.447757,
		0.279135, -0.475155, -0.834453,
		-0.946962, 0.007867, -0.321251,
		34.564945, 24.300173, 23.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.755966, 19.290508, 24.959574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681711, 19.452606, 24.601509>,  <30.637157, 19.549866, 24.386671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681711, 19.452606, 24.601509>,  <30.755966, 19.290508, 24.959574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681711, 19.452606, 24.601509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180639, 0.881397, 0.436474,
		0.965871, 0.242728, -0.090419,
		-0.185640, 0.405244, -0.895162,
		30.626019, 19.574179, 24.332960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246975, 19.837261, 24.793646>,  <30.755966, 19.290508, 24.959574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246975, 19.837261, 24.793646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920343, 19.916264, 24.576687>,  <30.724365, 19.963665, 24.446512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920343, 19.916264, 24.576687>,  <31.246975, 19.837261, 24.793646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920343, 19.916264, 24.576687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067211, 0.965783, 0.250490,
		0.573310, 0.168090, -0.801911,
		-0.816577, 0.197506, -0.542396,
		30.675371, 19.975515, 24.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367876, 20.377020, 24.333790>,  <31.246975, 19.837261, 24.793646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367876, 20.377020, 24.333790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.969692, 20.387024, 24.370525>,  <30.730782, 20.393026, 24.392567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.969692, 20.387024, 24.370525>,  <31.367876, 20.377020, 24.333790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969692, 20.387024, 24.370525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061661, 0.904478, 0.422040,
		-0.072513, 0.425787, -0.901913,
		-0.995459, 0.025010, 0.091841,
		30.671055, 20.394527, 24.398077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168068, 21.066383, 24.106554>,  <31.367876, 20.377020, 24.333790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168068, 21.066383, 24.106554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859325, 20.949600, 24.332474>,  <30.674080, 20.879530, 24.468025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859325, 20.949600, 24.332474>,  <31.168068, 21.066383, 24.106554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859325, 20.949600, 24.332474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143863, 0.945491, 0.292146,
		-0.619308, 0.144241, -0.771785,
		-0.771856, -0.291960, 0.564799,
		30.627769, 20.862013, 24.501913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627531, 21.509605, 23.962664>,  <31.168068, 21.066383, 24.106554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627531, 21.509605, 23.962664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.563162, 21.353996, 24.325489>,  <30.524540, 21.260632, 24.543184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.563162, 21.353996, 24.325489>,  <30.627531, 21.509605, 23.962664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563162, 21.353996, 24.325489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200050, 0.912822, 0.355999,
		-0.966480, -0.124171, -0.224716,
		-0.160921, -0.389021, 0.907065,
		30.514885, 21.237289, 24.597609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077147, 21.950924, 24.175428>,  <30.627531, 21.509605, 23.962664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077147, 21.950924, 24.175428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.215635, 21.777832, 24.508385>,  <30.298729, 21.673977, 24.708158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.215635, 21.777832, 24.508385>,  <30.077147, 21.950924, 24.175428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215635, 21.777832, 24.508385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365349, 0.755028, 0.544475,
		-0.864089, -0.492623, 0.103310,
		0.346223, -0.432730, 0.832391,
		30.319502, 21.648012, 24.758102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541100, 21.945282, 24.636580>,  <30.077147, 21.950924, 24.175428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541100, 21.945282, 24.636580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.858845, 21.928570, 24.878983>,  <30.049492, 21.918543, 25.024424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.858845, 21.928570, 24.878983>,  <29.541100, 21.945282, 24.636580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858845, 21.928570, 24.878983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362726, 0.767614, 0.528392,
		-0.487257, -0.639549, 0.594608,
		0.794362, -0.041783, 0.606006,
		30.097153, 21.916035, 25.060785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312519, 22.100611, 25.293646>,  <29.541100, 21.945282, 24.636580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312519, 22.100611, 25.293646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705471, 22.148052, 25.351425>,  <29.941242, 22.176517, 25.386093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705471, 22.148052, 25.351425>,  <29.312519, 22.100611, 25.293646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705471, 22.148052, 25.351425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174117, 0.861703, 0.476605,
		-0.067945, -0.493357, 0.867169,
		0.982378, 0.118606, 0.144450,
		30.000185, 22.183634, 25.394760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407032, 22.162748, 26.062334>,  <29.312519, 22.100611, 25.293646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407032, 22.162748, 26.062334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719332, 22.323063, 25.870583>,  <29.906712, 22.419250, 25.755531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719332, 22.323063, 25.870583>,  <29.407032, 22.162748, 26.062334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719332, 22.323063, 25.870583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099917, 0.837402, 0.537378,
		0.616804, -0.371660, 0.693846,
		0.780749, 0.400784, -0.479377,
		29.953556, 22.443298, 25.726768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653366, 22.588741, 26.467443>,  <29.407032, 22.162748, 26.062334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653366, 22.588741, 26.467443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872778, 22.745235, 26.171864>,  <30.004425, 22.839132, 25.994516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872778, 22.745235, 26.171864>,  <29.653366, 22.588741, 26.467443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872778, 22.745235, 26.171864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057148, 0.864166, 0.499952,
		0.834172, -0.316470, 0.451667,
		0.548535, 0.391234, -0.738948,
		30.037338, 22.862606, 25.950178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146168, 22.989120, 26.798143>,  <29.653366, 22.588741, 26.467443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146168, 22.989120, 26.798143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094961, 23.123554, 26.424908>,  <30.064238, 23.204214, 26.200966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094961, 23.123554, 26.424908>,  <30.146168, 22.989120, 26.798143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094961, 23.123554, 26.424908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142318, 0.937320, 0.318084,
		0.981508, -0.092075, -0.167824,
		-0.128017, 0.336086, -0.933090,
		30.056557, 23.224380, 26.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620615, 23.563799, 26.854156>,  <30.146168, 22.989120, 26.798143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620615, 23.563799, 26.854156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386534, 23.618221, 26.534401>,  <30.246084, 23.650875, 26.342546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386534, 23.618221, 26.534401>,  <30.620615, 23.563799, 26.854156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386534, 23.618221, 26.534401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083564, 0.990693, 0.107444,
		0.806569, -0.003924, -0.591126,
		-0.585203, 0.136058, -0.799390,
		30.210972, 23.659039, 26.294584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179789, 23.599373, 26.354733>,  <30.620615, 23.563799, 26.854156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179789, 23.599373, 26.354733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557188, 23.649414, 26.477474>,  <31.783628, 23.679440, 26.551119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557188, 23.649414, 26.477474>,  <31.179789, 23.599373, 26.354733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557188, 23.649414, 26.477474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126573, -0.991841, 0.015191,
		0.306253, 0.024507, -0.951635,
		0.943498, 0.125103, 0.306856,
		31.840237, 23.686945, 26.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549795, 23.040272, 26.044685>,  <31.179789, 23.599373, 26.354733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549795, 23.040272, 26.044685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.786402, 23.147373, 26.348900>,  <31.928366, 23.211634, 26.531429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.786402, 23.147373, 26.348900>,  <31.549795, 23.040272, 26.044685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786402, 23.147373, 26.348900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376872, -0.925685, 0.032780,
		0.712794, 0.267234, -0.648468,
		0.591517, 0.267755, 0.760536,
		31.963858, 23.227699, 26.577061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248779, 22.694643, 25.957735>,  <31.549795, 23.040272, 26.044685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248779, 22.694643, 25.957735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231377, 22.803398, 26.342274>,  <32.220936, 22.868650, 26.572996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231377, 22.803398, 26.342274>,  <32.248779, 22.694643, 25.957735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231377, 22.803398, 26.342274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489216, -0.833196, 0.257785,
		0.871077, 0.481522, -0.096758,
		-0.043511, 0.271886, 0.961345,
		32.218323, 22.884964, 26.630678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985989, 22.786854, 26.274214>,  <32.248779, 22.694643, 25.957735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985989, 22.786854, 26.274214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727955, 22.700489, 26.567402>,  <32.573135, 22.648670, 26.743315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727955, 22.700489, 26.567402>,  <32.985989, 22.786854, 26.274214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727955, 22.700489, 26.567402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457939, -0.877136, 0.144654,
		0.611681, 0.428970, 0.664703,
		-0.645087, -0.215911, 0.732970,
		32.534428, 22.635715, 26.787292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537979, 22.638254, 26.780096>,  <32.985989, 22.786854, 26.274214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537979, 22.638254, 26.780096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181110, 22.488491, 26.881165>,  <32.966988, 22.398634, 26.941805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181110, 22.488491, 26.881165>,  <33.537979, 22.638254, 26.780096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181110, 22.488491, 26.881165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429235, -0.876943, 0.216168,
		0.140642, 0.301315, 0.943096,
		-0.892176, -0.374407, 0.252670,
		32.913456, 22.376169, 26.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725510, 22.344973, 27.433296>,  <33.537979, 22.638254, 26.780096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725510, 22.344973, 27.433296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385391, 22.187027, 27.294113>,  <33.181320, 22.092260, 27.210604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385391, 22.187027, 27.294113>,  <33.725510, 22.344973, 27.433296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385391, 22.187027, 27.294113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342534, -0.917149, 0.203734,
		-0.399575, 0.054048, 0.915106,
		-0.850300, -0.394862, -0.347956,
		33.130302, 22.068569, 27.189726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630669, 21.910866, 27.902884>,  <33.725510, 22.344973, 27.433296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630669, 21.910866, 27.902884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412926, 21.772541, 27.597179>,  <33.282280, 21.689547, 27.413757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412926, 21.772541, 27.597179>,  <33.630669, 21.910866, 27.902884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412926, 21.772541, 27.597179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327060, -0.926468, 0.186252,
		-0.772470, -0.148571, 0.617428,
		-0.544355, -0.345810, -0.764260,
		33.249619, 21.668798, 27.367901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362324, 21.345854, 28.192936>,  <33.630669, 21.910866, 27.902884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362324, 21.345854, 28.192936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344955, 21.286198, 27.797791>,  <33.334534, 21.250404, 27.560703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344955, 21.286198, 27.797791>,  <33.362324, 21.345854, 28.192936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344955, 21.286198, 27.797791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269608, -0.953859, 0.132157,
		-0.961991, -0.260597, 0.081629,
		-0.043423, -0.149142, -0.987862,
		33.331928, 21.241455, 27.501432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258995, 20.673927, 28.139219>,  <33.362324, 21.345854, 28.192936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258995, 20.673927, 28.139219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375141, 20.770767, 27.768906>,  <33.444828, 20.828871, 27.546719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375141, 20.770767, 27.768906>,  <33.258995, 20.673927, 28.139219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375141, 20.770767, 27.768906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357419, -0.924886, -0.129761,
		-0.887658, -0.293215, -0.355088,
		0.290368, 0.242099, -0.925783,
		33.462250, 20.843397, 27.491171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860226, 20.302004, 27.666054>,  <33.258995, 20.673927, 28.139219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860226, 20.302004, 27.666054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226944, 20.399490, 27.539509>,  <33.446976, 20.457983, 27.463581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226944, 20.399490, 27.539509>,  <32.860226, 20.302004, 27.666054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226944, 20.399490, 27.539509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171029, -0.955477, -0.240443,
		-0.360877, 0.166330, -0.917661,
		0.916797, 0.243717, -0.316363,
		33.501984, 20.472605, 27.444599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024391, 19.772230, 27.343832>,  <32.860226, 20.302004, 27.666054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024391, 19.772230, 27.343832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388763, 19.935390, 27.319126>,  <33.607388, 20.033287, 27.304302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388763, 19.935390, 27.319126>,  <33.024391, 19.772230, 27.343832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388763, 19.935390, 27.319126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374416, -0.880281, -0.291407,
		-0.173233, 0.242328, -0.954603,
		0.910935, 0.407900, -0.061763,
		33.662045, 20.057760, 27.300598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257446, 19.537762, 26.699152>,  <33.024391, 19.772230, 27.343832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257446, 19.537762, 26.699152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589554, 19.636906, 26.898838>,  <33.788818, 19.696392, 27.018650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589554, 19.636906, 26.898838>,  <33.257446, 19.537762, 26.699152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589554, 19.636906, 26.898838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441506, -0.839146, -0.317657,
		0.340178, 0.484147, -0.806152,
		0.830272, 0.247861, 0.499213,
		33.838634, 19.711264, 27.048601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876812, 19.367039, 26.292191>,  <33.257446, 19.537762, 26.699152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876812, 19.367039, 26.292191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999786, 19.386089, 26.672340>,  <34.073570, 19.397520, 26.900431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999786, 19.386089, 26.672340>,  <33.876812, 19.367039, 26.292191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999786, 19.386089, 26.672340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462618, -0.880253, -0.105541,
		0.831544, 0.472108, -0.292657,
		0.307439, 0.047626, 0.950375,
		34.092018, 19.400377, 26.957453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633343, 19.187231, 26.241350>,  <33.876812, 19.367039, 26.292191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633343, 19.187231, 26.241350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.509178, 19.094872, 26.610203>,  <34.434677, 19.039455, 26.831514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.509178, 19.094872, 26.610203>,  <34.633343, 19.187231, 26.241350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509178, 19.094872, 26.610203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442790, -0.893510, -0.074677,
		0.841178, 0.385130, 0.379597,
		-0.310414, -0.230898, 0.922133,
		34.416054, 19.025602, 26.886843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845150, 19.770012, 25.807650>,  <34.633343, 19.187231, 26.241350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845150, 19.770012, 25.807650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042355, 19.720749, 25.463146>,  <35.160679, 19.691191, 25.256443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042355, 19.720749, 25.463146>,  <34.845150, 19.770012, 25.807650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042355, 19.720749, 25.463146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146315, 0.964095, -0.221616,
		0.857629, 0.235275, 0.457294,
		0.493016, -0.123155, -0.861260,
		35.190258, 19.683802, 25.204769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211555, 20.347843, 25.810844>,  <34.845150, 19.770012, 25.807650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211555, 20.347843, 25.810844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179321, 20.196201, 25.442108>,  <35.159981, 20.105217, 25.220867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179321, 20.196201, 25.442108>,  <35.211555, 20.347843, 25.810844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179321, 20.196201, 25.442108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253490, 0.902233, -0.348884,
		0.963976, 0.205563, -0.168802,
		-0.080581, -0.379105, -0.921838,
		35.155148, 20.082470, 25.165556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597740, 20.764841, 25.343956>,  <35.211555, 20.347843, 25.810844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597740, 20.764841, 25.343956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340706, 20.573700, 25.104378>,  <35.186485, 20.459015, 24.960630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340706, 20.573700, 25.104378>,  <35.597740, 20.764841, 25.343956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340706, 20.573700, 25.104378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434766, 0.871068, -0.228515,
		0.630920, 0.113561, -0.767492,
		-0.642587, -0.477854, -0.598947,
		35.147930, 20.430344, 24.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638241, 21.109606, 24.782032>,  <35.597740, 20.764841, 25.343956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638241, 21.109606, 24.782032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288086, 20.934517, 24.699959>,  <35.077995, 20.829464, 24.650715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288086, 20.934517, 24.699959>,  <35.638241, 21.109606, 24.782032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288086, 20.934517, 24.699959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336417, 0.856391, -0.391685,
		0.347168, -0.273848, -0.896929,
		-0.875384, -0.437723, -0.205185,
		35.025471, 20.803200, 24.638403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378304, 21.282196, 24.092997>,  <35.638241, 21.109606, 24.782032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378304, 21.282196, 24.092997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.036175, 21.126320, 24.229561>,  <34.830898, 21.032795, 24.311499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.036175, 21.126320, 24.229561>,  <35.378304, 21.282196, 24.092997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036175, 21.126320, 24.229561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497445, 0.801888, -0.330945,
		-0.144807, -0.452899, -0.879724,
		-0.855324, -0.389691, 0.341411,
		34.779579, 21.009413, 24.331984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919701, 21.266531, 23.510426>,  <35.378304, 21.282196, 24.092997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919701, 21.266531, 23.510426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709499, 21.241711, 23.849834>,  <34.583378, 21.226818, 24.053480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709499, 21.241711, 23.849834>,  <34.919701, 21.266531, 23.510426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709499, 21.241711, 23.849834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473032, 0.850284, -0.230776,
		-0.707167, -0.522654, -0.476181,
		-0.525505, -0.062052, 0.848525,
		34.551849, 21.223095, 24.104391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215252, 21.325911, 23.227976>,  <34.919701, 21.266531, 23.510426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215252, 21.325911, 23.227976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237129, 21.445290, 23.609119>,  <34.250256, 21.516916, 23.837805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237129, 21.445290, 23.609119>,  <34.215252, 21.325911, 23.227976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237129, 21.445290, 23.609119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345235, 0.901083, -0.262414,
		-0.936921, -0.314607, 0.152322,
		0.054697, 0.298448, 0.952857,
		34.253540, 21.534824, 23.894978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577999, 21.247761, 22.943966>,  <34.215252, 21.325911, 23.227976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577999, 21.247761, 22.943966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498417, 21.269085, 22.552544>,  <33.450668, 21.281879, 22.317690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498417, 21.269085, 22.552544>,  <33.577999, 21.247761, 22.943966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498417, 21.269085, 22.552544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104872, -0.991627, -0.075347,
		-0.974380, -0.117614, 0.191703,
		-0.198960, 0.053312, -0.978557,
		33.438728, 21.285078, 22.258976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088173, 20.639994, 22.747463>,  <33.577999, 21.247761, 22.943966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088173, 20.639994, 22.747463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249611, 20.742043, 22.396004>,  <33.346474, 20.803272, 22.185127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249611, 20.742043, 22.396004>,  <33.088173, 20.639994, 22.747463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249611, 20.742043, 22.396004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011118, -0.961634, -0.274111,
		-0.914872, 0.100860, -0.390943,
		0.403591, 0.255123, -0.878651,
		33.370689, 20.818579, 22.132408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706470, 20.356173, 22.330494>,  <33.088173, 20.639994, 22.747463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706470, 20.356173, 22.330494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052376, 20.387527, 22.132084>,  <33.259918, 20.406340, 22.013037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052376, 20.387527, 22.132084>,  <32.706470, 20.356173, 22.330494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052376, 20.387527, 22.132084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017482, -0.982445, -0.185732,
		-0.501878, 0.169286, -0.848210,
		0.864762, 0.078387, -0.496027,
		33.311806, 20.411043, 21.983276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609184, 19.978695, 21.655323>,  <32.706470, 20.356173, 22.330494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609184, 19.978695, 21.655323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004631, 20.029800, 21.687119>,  <33.241898, 20.060463, 21.706196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004631, 20.029800, 21.687119>,  <32.609184, 19.978695, 21.655323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004631, 20.029800, 21.687119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146032, -0.942016, -0.302127,
		0.036279, 0.310295, -0.949948,
		0.988614, 0.127762, 0.079488,
		33.301216, 20.068129, 21.710964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905239, 19.778564, 20.959869>,  <32.609184, 19.978695, 21.655323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905239, 19.778564, 20.959869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.212872, 19.761745, 21.214977>,  <33.397449, 19.751654, 21.368042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.212872, 19.761745, 21.214977>,  <32.905239, 19.778564, 20.959869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212872, 19.761745, 21.214977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236560, -0.908249, -0.345143,
		0.593765, 0.416313, -0.688568,
		0.769079, -0.042046, 0.637770,
		33.443596, 19.749132, 21.406307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420254, 19.481272, 20.547970>,  <32.905239, 19.778564, 20.959869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420254, 19.481272, 20.547970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549042, 19.438713, 20.924271>,  <33.626316, 19.413177, 21.150051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549042, 19.438713, 20.924271>,  <33.420254, 19.481272, 20.547970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549042, 19.438713, 20.924271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313094, -0.925790, -0.211860,
		0.893480, 0.362757, -0.264765,
		0.321970, -0.106396, 0.940752,
		33.645634, 19.406794, 21.206497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077900, 19.128233, 20.465836>,  <33.420254, 19.481272, 20.547970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077900, 19.128233, 20.465836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963715, 19.056709, 20.842461>,  <33.895203, 19.013796, 21.068436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963715, 19.056709, 20.842461>,  <34.077900, 19.128233, 20.465836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963715, 19.056709, 20.842461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339669, -0.937545, -0.075064,
		0.896179, 0.298392, 0.328367,
		-0.285461, -0.178807, 0.941563,
		33.878075, 19.003067, 21.124929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579487, 18.709938, 20.571484>,  <34.077900, 19.128233, 20.465836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579487, 18.709938, 20.571484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311974, 18.658226, 20.864334>,  <34.151466, 18.627199, 21.040045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311974, 18.658226, 20.864334>,  <34.579487, 18.709938, 20.571484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311974, 18.658226, 20.864334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255521, -0.964745, 0.063057,
		0.698165, 0.229246, 0.678242,
		-0.668786, -0.129281, 0.732128,
		34.111340, 18.619442, 21.083973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948158, 18.291779, 21.100803>,  <34.579487, 18.709938, 20.571484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948158, 18.291779, 21.100803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552170, 18.265690, 21.150928>,  <34.314575, 18.250036, 21.181004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552170, 18.265690, 21.150928>,  <34.948158, 18.291779, 21.100803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552170, 18.265690, 21.150928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072488, -0.995888, 0.054333,
		0.121252, 0.062872, 0.990628,
		-0.989971, -0.065221, 0.125311,
		34.255177, 18.246124, 21.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.720757, 34.391895, 20.468544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368099, 34.214447, 20.404171>,  <32.156506, 34.107979, 20.365547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368099, 34.214447, 20.404171>,  <32.720757, 34.391895, 20.468544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368099, 34.214447, 20.404171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460600, -0.883144, -0.088906,
		-0.102688, -0.152510, 0.982953,
		-0.881648, -0.443619, -0.160934,
		32.103603, 34.081360, 20.355890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584694, 33.809906, 20.965139>,  <32.720757, 34.391895, 20.468544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584694, 33.809906, 20.965139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339855, 33.705265, 20.666637>,  <32.192951, 33.642483, 20.487535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339855, 33.705265, 20.666637>,  <32.584694, 33.809906, 20.965139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339855, 33.705265, 20.666637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358013, -0.933117, 0.033451,
		-0.705096, -0.246694, 0.664817,
		-0.612101, -0.261599, -0.746256,
		32.156223, 33.626785, 20.442760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277554, 33.131557, 21.150618>,  <32.584694, 33.809906, 20.965139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277554, 33.131557, 21.150618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257530, 33.179562, 20.754013>,  <32.245514, 33.208363, 20.516050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257530, 33.179562, 20.754013>,  <32.277554, 33.131557, 21.150618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257530, 33.179562, 20.754013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456227, -0.880376, -0.129595,
		-0.888454, -0.458842, -0.010678,
		-0.050063, 0.120010, -0.991509,
		32.242512, 33.215565, 20.456560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897377, 32.607639, 20.902193>,  <32.277554, 33.131557, 21.150618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897377, 32.607639, 20.902193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074169, 32.716999, 20.560455>,  <32.180244, 32.782616, 20.355412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074169, 32.716999, 20.560455>,  <31.897377, 32.607639, 20.902193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074169, 32.716999, 20.560455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358661, -0.926839, -0.111049,
		-0.822201, -0.257338, -0.507703,
		0.441982, 0.273398, -0.854345,
		32.206764, 32.799019, 20.304152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660578, 32.240986, 20.393141>,  <31.897377, 32.607639, 20.902193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660578, 32.240986, 20.393141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015755, 32.360142, 20.252956>,  <32.228859, 32.431637, 20.168846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015755, 32.360142, 20.252956>,  <31.660578, 32.240986, 20.393141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015755, 32.360142, 20.252956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235998, -0.949064, -0.208765,
		-0.394800, 0.102662, -0.913013,
		0.887940, 0.297890, -0.350462,
		32.282135, 32.449509, 20.147818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798998, 31.851124, 19.837166>,  <31.660578, 32.240986, 20.393141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798998, 31.851124, 19.837166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170925, 31.977333, 19.912937>,  <32.394081, 32.053059, 19.958399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170925, 31.977333, 19.912937>,  <31.798998, 31.851124, 19.837166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170925, 31.977333, 19.912937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360720, -0.883382, -0.299196,
		0.072932, 0.346527, -0.935200,
		0.929819, 0.315524, 0.189426,
		32.449871, 32.071991, 19.969765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151672, 31.838966, 19.228798>,  <31.798998, 31.851124, 19.837166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151672, 31.838966, 19.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436405, 31.801346, 19.507206>,  <32.607246, 31.778772, 19.674250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436405, 31.801346, 19.507206>,  <32.151672, 31.838966, 19.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436405, 31.801346, 19.507206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190303, -0.928095, -0.320040,
		0.676072, 0.360270, -0.642753,
		0.711837, -0.094052, 0.696019,
		32.649956, 31.773130, 19.716011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599854, 31.478090, 18.837111>,  <32.151672, 31.838966, 19.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599854, 31.478090, 18.837111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764107, 31.447411, 19.200539>,  <32.862659, 31.429003, 19.418596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764107, 31.447411, 19.200539>,  <32.599854, 31.478090, 18.837111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764107, 31.447411, 19.200539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312857, -0.924111, -0.219405,
		0.856448, 0.374347, -0.355473,
		0.410630, -0.076697, 0.908570,
		32.887295, 31.424402, 19.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286392, 31.120033, 18.759504>,  <32.599854, 31.478090, 18.837111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286392, 31.120033, 18.759504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191368, 31.061531, 19.143623>,  <33.134354, 31.026430, 19.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191368, 31.061531, 19.143623>,  <33.286392, 31.120033, 18.759504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191368, 31.061531, 19.143623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142546, -0.983146, -0.114474,
		0.960858, 0.109693, 0.254401,
		-0.237556, -0.146257, 0.960300,
		33.120102, 31.017654, 19.431713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819981, 30.650200, 19.025841>,  <33.286392, 31.120033, 18.759504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819981, 30.650200, 19.025841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503277, 30.624229, 19.268787>,  <33.313255, 30.608646, 19.414557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503277, 30.624229, 19.268787>,  <33.819981, 30.650200, 19.025841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503277, 30.624229, 19.268787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121021, -0.991298, 0.051794,
		0.598720, 0.114513, 0.792730,
		-0.791763, -0.064927, 0.607368,
		33.265747, 30.604752, 19.450998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119576, 30.381025, 19.649210>,  <33.819981, 30.650200, 19.025841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119576, 30.381025, 19.649210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730942, 30.287968, 19.631748>,  <33.497761, 30.232134, 19.621271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730942, 30.287968, 19.631748>,  <34.119576, 30.381025, 19.649210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730942, 30.287968, 19.631748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220500, -0.956611, 0.190460,
		-0.086071, 0.175422, 0.980724,
		-0.971582, -0.232643, -0.043656,
		33.439468, 30.218174, 19.618650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183594, 29.870659, 20.156279>,  <34.119576, 30.381025, 19.649210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183594, 29.870659, 20.156279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817986, 29.825314, 20.000473>,  <33.598621, 29.798107, 19.906990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817986, 29.825314, 20.000473>,  <34.183594, 29.870659, 20.156279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817986, 29.825314, 20.000473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048505, -0.983813, 0.172507,
		-0.402765, 0.138781, 0.904721,
		-0.914017, -0.113363, -0.389514,
		33.543781, 29.791304, 19.883619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972805, 30.017712, 20.901468>,  <34.183594, 29.870659, 20.156279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972805, 30.017712, 20.901468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167629, 29.997467, 21.250229>,  <34.284523, 29.985319, 21.459484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167629, 29.997467, 21.250229>,  <33.972805, 30.017712, 20.901468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167629, 29.997467, 21.250229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067121, 0.997536, 0.020412,
		-0.870785, 0.048581, 0.489257,
		0.487060, -0.050614, 0.871901,
		34.313747, 29.982283, 21.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657440, 30.580132, 21.237885>,  <33.972805, 30.017712, 20.901468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657440, 30.580132, 21.237885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004181, 30.506672, 21.423290>,  <34.212223, 30.462595, 21.534534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004181, 30.506672, 21.423290>,  <33.657440, 30.580132, 21.237885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004181, 30.506672, 21.423290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142167, 0.982138, 0.123260,
		-0.477874, -0.040951, 0.877473,
		0.866848, -0.183650, 0.463516,
		34.264236, 30.451576, 21.562346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538177, 30.896360, 21.811344>,  <33.657440, 30.580132, 21.237885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538177, 30.896360, 21.811344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934837, 30.870758, 21.766552>,  <34.172832, 30.855396, 21.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934837, 30.870758, 21.766552>,  <33.538177, 30.896360, 21.811344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934837, 30.870758, 21.766552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080103, 0.986073, 0.145748,
		0.101090, -0.153500, 0.982964,
		0.991647, -0.064005, -0.111978,
		34.232330, 30.851557, 21.732958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825512, 31.244959, 22.439369>,  <33.538177, 30.896360, 21.811344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825512, 31.244959, 22.439369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118576, 31.233627, 22.167370>,  <34.294415, 31.226828, 22.004169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118576, 31.233627, 22.167370>,  <33.825512, 31.244959, 22.439369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118576, 31.233627, 22.167370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194288, 0.966264, 0.169076,
		0.652270, -0.255992, 0.713451,
		0.732664, -0.028331, -0.680001,
		34.338375, 31.225128, 21.963369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458389, 31.467707, 22.755550>,  <33.825512, 31.244959, 22.439369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458389, 31.467707, 22.755550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520817, 31.524994, 22.364628>,  <34.558273, 31.559366, 22.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520817, 31.524994, 22.364628>,  <34.458389, 31.467707, 22.755550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520817, 31.524994, 22.364628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157140, 0.973231, 0.167717,
		0.975167, -0.179749, 0.129383,
		0.156066, 0.143221, -0.977308,
		34.567638, 31.567959, 22.071436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025833, 31.868412, 22.694384>,  <34.458389, 31.467707, 22.755550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025833, 31.868412, 22.694384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836876, 31.914856, 22.344902>,  <34.723499, 31.942722, 22.135214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836876, 31.914856, 22.344902>,  <35.025833, 31.868412, 22.694384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836876, 31.914856, 22.344902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097051, 0.992110, 0.079369,
		0.876026, -0.047300, -0.479939,
		-0.472398, 0.116107, -0.873704,
		34.695156, 31.949688, 22.082790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469074, 32.258190, 22.350145>,  <35.025833, 31.868412, 22.694384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469074, 32.258190, 22.350145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100956, 32.311279, 22.202938>,  <34.880085, 32.343132, 22.114614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100956, 32.311279, 22.202938>,  <35.469074, 32.258190, 22.350145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100956, 32.311279, 22.202938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080537, 0.984819, 0.153773,
		0.382839, 0.111878, -0.917015,
		-0.920298, 0.132724, -0.368017,
		34.824867, 32.351097, 22.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526714, 32.795448, 21.880533>,  <35.469074, 32.258190, 22.350145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526714, 32.795448, 21.880533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134815, 32.786343, 21.960102>,  <34.899673, 32.780880, 22.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134815, 32.786343, 21.960102>,  <35.526714, 32.795448, 21.880533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134815, 32.786343, 21.960102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000016, 0.993509, 0.113751,
		-0.200220, 0.111450, -0.973391,
		-0.979751, -0.022760, 0.198923,
		34.840889, 32.779514, 22.019779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336983, 33.405399, 21.800152>,  <35.526714, 32.795448, 21.880533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336983, 33.405399, 21.800152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994373, 33.275761, 21.960819>,  <34.788807, 33.197979, 22.057220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994373, 33.275761, 21.960819>,  <35.336983, 33.405399, 21.800152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994373, 33.275761, 21.960819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255079, 0.942383, 0.216447,
		-0.448674, 0.082934, -0.889839,
		-0.856520, -0.324094, 0.401668,
		34.737419, 33.178532, 22.081320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861656, 33.919312, 21.612823>,  <35.336983, 33.405399, 21.800152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861656, 33.919312, 21.612823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681587, 33.721291, 21.910084>,  <34.573547, 33.602478, 22.088440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681587, 33.721291, 21.910084>,  <34.861656, 33.919312, 21.612823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681587, 33.721291, 21.910084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293940, 0.868021, 0.400174,
		-0.843176, -0.038295, -0.536271,
		-0.450170, -0.495049, 0.743151,
		34.546535, 33.572777, 22.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196636, 34.247459, 21.696634>,  <34.861656, 33.919312, 21.612823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196636, 34.247459, 21.696634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270802, 34.079990, 22.052238>,  <34.315300, 33.979511, 22.265600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270802, 34.079990, 22.052238>,  <34.196636, 34.247459, 21.696634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270802, 34.079990, 22.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220203, 0.863986, 0.452811,
		-0.957670, -0.279720, 0.068001,
		0.185412, -0.418670, 0.889009,
		34.326424, 33.954388, 22.318941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556087, 34.481277, 22.206367>,  <34.196636, 34.247459, 21.696634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556087, 34.481277, 22.206367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887177, 34.367653, 22.399937>,  <34.085831, 34.299480, 22.516079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887177, 34.367653, 22.399937>,  <33.556087, 34.481277, 22.206367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887177, 34.367653, 22.399937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047484, 0.894769, 0.443998,
		-0.559121, -0.344529, 0.754111,
		0.827725, -0.284057, 0.483924,
		34.135494, 34.282436, 22.545115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390411, 34.619617, 22.837875>,  <33.556087, 34.481277, 22.206367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390411, 34.619617, 22.837875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789642, 34.596478, 22.846786>,  <34.029182, 34.582592, 22.852133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789642, 34.596478, 22.846786>,  <33.390411, 34.619617, 22.837875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789642, 34.596478, 22.846786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036907, 0.843250, 0.536253,
		-0.049810, -0.534400, 0.843763,
		0.998077, -0.057852, 0.022279,
		34.089066, 34.579121, 22.853470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568367, 34.728352, 23.588820>,  <33.390411, 34.619617, 22.837875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568367, 34.728352, 23.588820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887234, 34.814266, 23.363113>,  <34.078552, 34.865814, 23.227690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887234, 34.814266, 23.363113>,  <33.568367, 34.728352, 23.588820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887234, 34.814266, 23.363113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084868, 0.885443, 0.456934,
		0.597765, -0.412141, 0.687617,
		0.797166, 0.214783, -0.564264,
		34.126385, 34.878700, 23.193834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303055, 34.550827, 24.276217>,  <33.568367, 34.728352, 23.588820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303055, 34.550827, 24.276217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659401, 34.596436, 24.100330>,  <33.873211, 34.623802, 23.994799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659401, 34.596436, 24.100330>,  <33.303055, 34.550827, 24.276217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659401, 34.596436, 24.100330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403923, -0.244048, -0.881639,
		-0.207839, 0.963036, -0.171359,
		0.890870, 0.114024, -0.439715,
		33.926662, 34.630642, 23.968416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011604, 33.822926, 24.578724>,  <33.303055, 34.550827, 24.276217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011604, 33.822926, 24.578724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655411, 33.968071, 24.688534>,  <32.441692, 34.055157, 24.754419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655411, 33.968071, 24.688534>,  <33.011604, 33.822926, 24.578724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655411, 33.968071, 24.688534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034288, -0.655138, 0.754730,
		0.453712, 0.662666, 0.595835,
		-0.890488, 0.362861, 0.274523,
		32.388264, 34.076931, 24.770891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085491, 33.992859, 25.241381>,  <33.011604, 33.822926, 24.578724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085491, 33.992859, 25.241381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723423, 33.865005, 25.129311>,  <32.506180, 33.788292, 25.062069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723423, 33.865005, 25.129311>,  <33.085491, 33.992859, 25.241381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723423, 33.865005, 25.129311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008116, -0.672041, 0.740470,
		-0.424967, 0.667979, 0.610907,
		-0.905172, -0.319634, -0.280174,
		32.451870, 33.769115, 25.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725872, 33.849442, 25.815985>,  <33.085491, 33.992859, 25.241381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725872, 33.849442, 25.815985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515736, 33.641808, 25.546299>,  <32.389656, 33.517227, 25.384487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515736, 33.641808, 25.546299>,  <32.725872, 33.849442, 25.815985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515736, 33.641808, 25.546299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056806, -0.811990, 0.580900,
		-0.848995, 0.266870, 0.456057,
		-0.525338, -0.519088, -0.674216,
		32.358135, 33.486080, 25.344034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197006, 33.465370, 26.120749>,  <32.725872, 33.849442, 25.815985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197006, 33.465370, 26.120749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287800, 33.276974, 25.779774>,  <32.342278, 33.163937, 25.575190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287800, 33.276974, 25.779774>,  <32.197006, 33.465370, 26.120749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287800, 33.276974, 25.779774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114487, -0.856310, 0.503614,
		-0.967145, -0.211906, -0.140449,
		0.226986, -0.470988, -0.852436,
		32.355896, 33.135677, 25.524042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908388, 32.835136, 26.214338>,  <32.197006, 33.465370, 26.120749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908388, 32.835136, 26.214338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157486, 32.802021, 25.903126>,  <32.306946, 32.782150, 25.716398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157486, 32.802021, 25.903126>,  <31.908388, 32.835136, 26.214338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157486, 32.802021, 25.903126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195628, -0.946328, 0.257279,
		-0.757574, -0.312424, -0.573125,
		0.622745, -0.082789, -0.778033,
		32.344311, 32.777184, 25.669716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701252, 32.242668, 25.879469>,  <31.908388, 32.835136, 26.214338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701252, 32.242668, 25.879469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089573, 32.301365, 25.803562>,  <32.322563, 32.336582, 25.758018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089573, 32.301365, 25.803562>,  <31.701252, 32.242668, 25.879469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089573, 32.301365, 25.803562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208411, -0.907670, 0.364280,
		-0.118791, -0.393193, -0.911749,
		0.970800, 0.146746, -0.189769,
		32.380814, 32.345390, 25.746632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890646, 31.693655, 25.575356>,  <31.701252, 32.242668, 25.879469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890646, 31.693655, 25.575356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262955, 31.807259, 25.667442>,  <32.486340, 31.875420, 25.722694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262955, 31.807259, 25.667442>,  <31.890646, 31.693655, 25.575356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262955, 31.807259, 25.667442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250954, -0.954246, 0.162594,
		0.265861, -0.093565, -0.959460,
		0.930774, 0.284008, 0.230217,
		32.542187, 31.892462, 25.736507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283268, 31.192728, 25.212236>,  <31.890646, 31.693655, 25.575356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283268, 31.192728, 25.212236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526268, 31.352749, 25.486725>,  <32.672070, 31.448761, 25.651419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526268, 31.352749, 25.486725>,  <32.283268, 31.192728, 25.212236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526268, 31.352749, 25.486725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437194, -0.889684, 0.131622,
		0.663176, 0.220052, -0.715384,
		0.607502, 0.400050, 0.686222,
		32.708519, 31.472763, 25.692591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051006, 31.037046, 25.048300>,  <32.283268, 31.192728, 25.212236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051006, 31.037046, 25.048300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984879, 31.098148, 25.438034>,  <32.945202, 31.134809, 25.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984879, 31.098148, 25.438034>,  <33.051006, 31.037046, 25.048300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984879, 31.098148, 25.438034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117944, -0.977780, 0.173307,
		0.979162, 0.143569, 0.143634,
		-0.165324, 0.152754, 0.974338,
		32.935280, 31.143974, 25.730335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403095, 30.556898, 25.438206>,  <33.051006, 31.037046, 25.048300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403095, 30.556898, 25.438206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166130, 30.646736, 25.747684>,  <33.023952, 30.700638, 25.933371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166130, 30.646736, 25.747684>,  <33.403095, 30.556898, 25.438206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166130, 30.646736, 25.747684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038192, -0.951446, 0.305436,
		0.804728, 0.210493, 0.555072,
		-0.592414, 0.224594, 0.773695,
		32.988407, 30.714115, 25.979794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758430, 30.213980, 25.896070>,  <33.403095, 30.556898, 25.438206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758430, 30.213980, 25.896070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402245, 30.273746, 26.068001>,  <33.188534, 30.309607, 26.171158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402245, 30.273746, 26.068001>,  <33.758430, 30.213980, 25.896070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402245, 30.273746, 26.068001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060444, -0.975023, 0.213720,
		0.451022, 0.164330, 0.877254,
		-0.890464, 0.149417, 0.429824,
		33.135105, 30.318571, 26.196947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762642, 29.837927, 26.545332>,  <33.758430, 30.213980, 25.896070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762642, 29.837927, 26.545332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380970, 29.890194, 26.437653>,  <33.151966, 29.921555, 26.373045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380970, 29.890194, 26.437653>,  <33.762642, 29.837927, 26.545332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380970, 29.890194, 26.437653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207153, -0.937644, 0.279127,
		-0.215940, 0.322102, 0.921748,
		-0.954179, 0.130668, -0.269199,
		33.094715, 29.929394, 26.356894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366993, 29.518579, 27.082829>,  <33.762642, 29.837927, 26.545332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366993, 29.518579, 27.082829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095875, 29.567223, 26.792778>,  <32.933205, 29.596409, 26.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095875, 29.567223, 26.792778>,  <33.366993, 29.518579, 27.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095875, 29.567223, 26.792778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173269, -0.984869, -0.003212,
		-0.714545, 0.123464, 0.688610,
		-0.677794, 0.121610, -0.725125,
		32.892536, 29.603706, 26.575241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685738, 29.185638, 27.250689>,  <33.366993, 29.518579, 27.082829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685738, 29.185638, 27.250689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659180, 29.219170, 26.852982>,  <32.643246, 29.239288, 26.614357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659180, 29.219170, 26.852982>,  <32.685738, 29.185638, 27.250689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659180, 29.219170, 26.852982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213878, -0.974499, -0.067881,
		-0.974602, 0.208145, 0.082623,
		-0.066387, 0.083828, -0.994266,
		32.639263, 29.244318, 26.554703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993717, 28.924831, 27.097597>,  <32.685738, 29.185638, 27.250689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993717, 28.924831, 27.097597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243362, 28.900940, 26.785976>,  <32.393150, 28.886606, 26.599005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243362, 28.900940, 26.785976>,  <31.993717, 28.924831, 27.097597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243362, 28.900940, 26.785976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193087, -0.977938, -0.079711,
		-0.757102, 0.200173, -0.621874,
		0.624111, -0.059726, -0.779050,
		32.430595, 28.883022, 26.552261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605164, 28.705429, 26.565861>,  <31.993717, 28.924831, 27.097597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605164, 28.705429, 26.565861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967485, 28.593151, 26.438911>,  <32.184879, 28.525784, 26.362741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967485, 28.593151, 26.438911>,  <31.605164, 28.705429, 26.565861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967485, 28.593151, 26.438911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334988, -0.933097, -0.130819,
		-0.259420, 0.224813, -0.939234,
		0.905806, -0.280695, -0.317373,
		32.239227, 28.508942, 26.343699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466122, 28.078236, 26.150656>,  <31.605164, 28.705429, 26.565861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466122, 28.078236, 26.150656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866076, 28.074230, 26.146069>,  <32.106049, 28.071827, 26.143316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866076, 28.074230, 26.146069>,  <31.466122, 28.078236, 26.150656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866076, 28.074230, 26.146069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, -0.988219, -0.152601,
		-0.009803, 0.152716, -0.988222,
		0.999884, -0.010016, -0.011466,
		32.166042, 28.071226, 26.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680103, 27.774689, 25.546780>,  <31.466122, 28.078236, 26.150656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680103, 27.774689, 25.546780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947870, 27.701839, 25.834866>,  <32.108532, 27.658131, 26.007717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947870, 27.701839, 25.834866>,  <31.680103, 27.774689, 25.546780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947870, 27.701839, 25.834866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223776, -0.973889, -0.038276,
		0.708382, -0.135545, -0.692692,
		0.669417, -0.182122, 0.720217,
		32.148697, 27.647203, 26.050930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708670, 27.119186, 25.459028>,  <31.680103, 27.774689, 25.546780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708670, 27.119186, 25.459028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937834, 27.149025, 25.785515>,  <32.075333, 27.166927, 25.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937834, 27.149025, 25.785515>,  <31.708670, 27.119186, 25.459028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937834, 27.149025, 25.785515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017610, -0.994500, 0.103249,
		0.819428, -0.073526, -0.568447,
		0.572912, 0.074595, 0.816215,
		32.109707, 27.171404, 26.030380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306572, 26.619286, 25.458456>,  <31.708670, 27.119186, 25.459028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306572, 26.619286, 25.458456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259804, 26.693890, 25.848644>,  <32.231743, 26.738653, 26.082758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259804, 26.693890, 25.848644>,  <32.306572, 26.619286, 25.458456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259804, 26.693890, 25.848644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063270, -0.981611, 0.180102,
		0.991124, -0.040660, 0.126571,
		-0.116921, 0.186511, 0.975471,
		32.224728, 26.749844, 26.141285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767368, 26.133543, 25.776573>,  <32.306572, 26.619286, 25.458456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767368, 26.133543, 25.776573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490799, 26.256344, 26.038162>,  <32.324856, 26.330025, 26.195116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490799, 26.256344, 26.038162>,  <32.767368, 26.133543, 25.776573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490799, 26.256344, 26.038162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042507, -0.920937, 0.387387,
		0.721199, 0.240050, 0.649806,
		-0.691423, 0.307004, 0.653974,
		32.283371, 26.348446, 26.234354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006435, 25.911001, 26.464176>,  <32.767368, 26.133543, 25.776573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006435, 25.911001, 26.464176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609188, 25.955986, 26.477200>,  <32.370838, 25.982977, 26.485014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609188, 25.955986, 26.477200>,  <33.006435, 25.911001, 26.464176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609188, 25.955986, 26.477200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075966, -0.830565, 0.551716,
		0.089090, 0.545448, 0.833396,
		-0.993122, 0.112462, 0.032559,
		32.311253, 25.989725, 26.486967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910572, 25.666536, 27.114780>,  <33.006435, 25.911001, 26.464176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910572, 25.666536, 27.114780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553108, 25.646500, 26.936401>,  <32.338631, 25.634478, 26.829374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553108, 25.646500, 26.936401>,  <32.910572, 25.666536, 27.114780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553108, 25.646500, 26.936401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223816, -0.811573, 0.539681,
		-0.388952, 0.582099, 0.714057,
		-0.893657, -0.050093, -0.445946,
		32.285011, 25.631472, 26.802618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556385, 25.290926, 27.572382>,  <32.910572, 25.666536, 27.114780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556385, 25.290926, 27.572382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305042, 25.279652, 27.261417>,  <32.154236, 25.272886, 27.074839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305042, 25.279652, 27.261417>,  <32.556385, 25.290926, 27.572382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305042, 25.279652, 27.261417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200743, -0.959622, 0.197047,
		-0.751577, 0.279876, 0.597328,
		-0.628358, -0.028187, -0.777413,
		32.116535, 25.271196, 27.028193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987606, 24.890926, 27.808331>,  <32.556385, 25.290926, 27.572382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987606, 24.890926, 27.808331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966574, 24.889900, 27.408886>,  <31.953955, 24.889284, 27.169218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966574, 24.889900, 27.408886>,  <31.987606, 24.890926, 27.808331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966574, 24.889900, 27.408886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239215, -0.970849, 0.015089,
		-0.969542, 0.239677, 0.050434,
		-0.052581, -0.002565, -0.998613,
		31.950800, 24.889132, 27.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474737, 24.456764, 27.673763>,  <31.987606, 24.890926, 27.808331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474737, 24.456764, 27.673763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660778, 24.470810, 27.319939>,  <31.772402, 24.479239, 27.107643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660778, 24.470810, 27.319939>,  <31.474737, 24.456764, 27.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660778, 24.470810, 27.319939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067127, -0.994937, -0.074793,
		-0.882709, 0.094164, -0.460389,
		0.465101, 0.035116, -0.884561,
		31.800308, 24.481344, 27.054571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068756, 24.049641, 27.238695>,  <31.474737, 24.456764, 27.673763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068756, 24.049641, 27.238695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431990, 24.080929, 27.074127>,  <31.649929, 24.099701, 26.975386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431990, 24.080929, 27.074127>,  <31.068756, 24.049641, 27.238695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431990, 24.080929, 27.074127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061106, -0.996636, -0.054610,
		-0.414309, 0.024450, -0.909808,
		0.908083, 0.078220, -0.411421,
		31.704414, 24.104395, 26.950701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743011, 24.259157, 26.623058>,  <31.068756, 24.049641, 27.238695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743011, 24.259157, 26.623058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417494, 24.156914, 26.414288>,  <30.222183, 24.095568, 26.289026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417494, 24.156914, 26.414288>,  <30.743011, 24.259157, 26.623058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417494, 24.156914, 26.414288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246122, 0.965151, -0.088921,
		0.526465, 0.056094, -0.848344,
		-0.813792, -0.255610, -0.521925,
		30.173357, 24.080231, 26.257710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812803, 24.476490, 25.838882>,  <30.743011, 24.259157, 26.623058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812803, 24.476490, 25.838882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436769, 24.440151, 25.970329>,  <30.211149, 24.418348, 26.049198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436769, 24.440151, 25.970329>,  <30.812803, 24.476490, 25.838882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436769, 24.440151, 25.970329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195893, 0.932792, -0.302529,
		-0.279048, -0.348777, -0.894699,
		-0.940084, -0.090845, 0.328617,
		30.154745, 24.412897, 26.068914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409998, 24.840750, 25.399218>,  <30.812803, 24.476490, 25.838882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409998, 24.840750, 25.399218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136000, 24.831730, 25.690498>,  <29.971601, 24.826319, 25.865267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136000, 24.831730, 25.690498>,  <30.409998, 24.840750, 25.399218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136000, 24.831730, 25.690498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331049, 0.900006, -0.283540,
		-0.648992, -0.435293, -0.623963,
		-0.684994, -0.022547, 0.728200,
		29.930502, 24.824966, 25.908958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770191, 25.045271, 25.078939>,  <30.409998, 24.840750, 25.399218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770191, 25.045271, 25.078939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726414, 25.111408, 25.470997>,  <29.700148, 25.151091, 25.706232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726414, 25.111408, 25.470997>,  <29.770191, 25.045271, 25.078939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726414, 25.111408, 25.470997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438110, 0.877096, -0.196882,
		-0.892234, -0.450959, -0.023555,
		-0.109446, 0.165345, 0.980144,
		29.693581, 25.161013, 25.765039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059687, 25.241516, 25.178854>,  <29.770191, 25.045271, 25.078939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059687, 25.241516, 25.178854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277258, 25.383591, 25.482956>,  <29.407801, 25.468836, 25.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277258, 25.383591, 25.482956>,  <29.059687, 25.241516, 25.178854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277258, 25.383591, 25.482956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392686, 0.908415, -0.143458,
		-0.741580, -0.220510, 0.633589,
		0.543927, 0.355187, 0.760253,
		29.440435, 25.490147, 25.711033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
